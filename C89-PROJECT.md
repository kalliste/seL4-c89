# C89 Porting Project

## Overview
We are exploring the changes required to build the preconfigured seL4 kernel sources
with a compiler restricted to C89/C90 compliance. The first step is to force the
existing replay build script to use strict C90 flags and then catalogue the
resulting compiler diagnostics.

## Status
- [x] Update `preconfigured/replay_preconfigured_build.sh` to compile with
  `-std=c90 -pedantic -Wall -Wextra` (keeping the original CFLAGS commented).
- [x] Run the replay build to capture the resulting diagnostics.
- [ ] Update the source tree to resolve the new C90 compilation issues.
  - [x] Introduce compatibility shims for inline and attribute annotations.
  - [x] Replace obvious C99-only integer literals in shared headers with
    portable constructors.
  - [x] Route the generated capability tables and x86 helpers through the new
    portable constant macros.
  - [ ] Address the remaining diagnostics reported by the strict build.
    - [x] Replace the configuration helpers in `util.h` that relied on
      anonymous variadic macros.
    - [x] Tidy the libsel4 size/enumeration assertion macros so they no longer
      emit pedantic diagnostics under strict C90.
  - [x] Replace the compound literal helpers in `machine.h` with explicit
    temporaries.
  - [x] Replace the remaining anonymous variadic logging helpers with
    explicit C89-compatible shims.
  - [x] Rework the PC99 interrupt helpers to hoist declarations, normalise
    inline specifiers, and tighten their predicate logic for C90.

## Build Attempt Summary
- **Command**: `./preconfigured/replay_preconfigured_build.sh`
- **Outcome**: The libsel4 enumerations now carry an explicit
  `__mode__(__word__)` attribute instead of depending on `__extension__`, the
  multiboot2 tag list no longer ends with a trailing comma, and the SKIM window
  mapper hoists its declarations and iterates with like-signed indices. The TLB
  invalidation wrappers now cast their unused parameters, the boot-time x86
  mappers avoid compound literals, and the CR3 helpers compare against named
  temporaries. The strict build consequently pressed on to the remaining
  blockers in the virtual memory code: several decode helpers declared locals
  after executable statements, the MMU invocation path left a handful of
  parameters unused and fell off the end without returning, and the generated
  cap accessor for the mapped ASID still needed an explicit return path. Those
  shims now hoist their declarations, cast their unused arguments, and return
  explicit errors, allowing the pedantic build to reach the next blocker: the
  generated `capdl_wrapper.c` translation unit triggers `-Wpedantic` because it
  compiles down to an empty source file.

### Key Diagnostic Themes
1. **C99 integer literals**: The generated capability helpers and several x86
   machine shims still emit `ULL` and `LL` constants that trigger
   `-Werror=long-long` under strict C90. We converted the obvious library and
   userspace headers to portable constructors, but the architecture generators
   still need dedicated helpers.
   - *Potential remedies*: route these constants through macros that expand to
     `unsigned long` arithmetic, or provide custom constructors that avoid
     `long long` suffixes when C99 is unavailable, and teach the code
     generators to use them.
2. **Preprocessor usage assumes variadic macros** *(resolved)*: The stubbed
   logging macros (`printf(...)`, `userError(...)`, etc.) relied on anonymous
   `__VA_ARGS__`, triggering strict C90 diagnostics. They now funnel through
   helper functions that keep the logging behaviour while remaining valid in
   C89 mode.
3. **Modern C layout rules** *(progress)*: Several functions declared variables
   mid-block, causing "mixed declarations and code" errors with C90. The
   interrupt paths and syscall handlers now hoist their locals, but the SKIM
   window mappers and the page-table decode helpers still mix declarations and
   rely on C99-style loop initialisers.
4. **Unused parameter clean-ups** *(progress)*: Architecture stubs rely on the
   compiler to discard unused parameters via attributes; once those attributes
   collapse under C89, the warnings become hard errors. Most helpers now cast
   their unused arguments to `(void)`, but the boot-time paging helpers and
   decode shims surfaced by the latest build still need the same treatment.
   - *Potential remedies*: cast parameters to `(void)` or reintroduce
     conditional attribute shims that keep the compiler quiet.
5. **Control-flow expectations** *(progress)*: Several helpers need explicit
   returns under the stricter warning set. `setMRs_lookup_failure` is now
   patched, but the mode-specific cap helpers and X86 decode routines still fall
   off the end once the attribute shims collapse.
   - *Potential remedies*: add explicit returns or refactor the control flow so
     that the compiler can prove a value is always produced.
6. **Kernel/libsel4 type duplication** *(resolved)*: both the kernel headers
   and `libsel4` published typedefs for the fundamental seL4 types. Under
   pedantic C90 the duplicate definitions were treated as hard errors. We now
   gate the typedef blocks behind a shared `SEL4_BASIC_TYPES_DEFINED` marker so
   only the first header included in a translation unit defines the aliases.
7. **Enumeration and macro hygiene** *(progress)*: the latest pass reworked the
   libsel4 compile-time helpers (`SEL4_SIZE_SANITY`, `SEL4_FORCE_LONG_ENUM`,
   etc.) so they expand cleanly under strict C90 without trailing commas or
   pedantic diagnostics. The remaining blockers now live in the bootinfo and
   multiboot headers where `LIBSEL4_ENUM_EXT` still expands to `__extension__`
   and the multiboot2 tag enumeration keeps a trailing comma.
8. **Structure packing guarantees**: strict mode exposes that the ACPI RSDP
   assertions rely on packing attributes that collapse under C89, causing the
   compile-time size check to fail.
9. **Preprocessor directives in macro arguments** *(resolved)*: the syscall
   handlers no longer embed `#ifdef`/`#endif` pairs inside the budget macros, so
   the strict build progresses past those call sites.

## Next Steps
- Replace the remaining C99 constructs uncovered by the latest strict build
  run:
  - [x] Drop the C++-style comments emitted in the generated wrapper sources.
  - [x] Provide C89-friendly definitions for the 64-bit typedefs and helpers in
        `stdint.h`/`util.h` so they no longer rely on `long long`.
  - [x] Resolve the duplicated seL4 basic types between `simple_types.h` and
        the shared kernel headers by coordinating on a shared
        `SEL4_BASIC_TYPES_DEFINED` guard.
  - [x] Replace the configuration helpers in `util.h` that rely on anonymous
        variadic macros with C89-compatible shims.
- [x] Tidy the libsel4 size/enumeration assertion macros so that
  `SEL4_SIZE_SANITY`, `SEL4_FORCE_LONG_ENUM`, and related helpers no longer
  emit pedantic diagnostics or trailing commas in strict C90 mode.
- Catalogue the diagnostics from the latest strict build run and plan the
  follow-up fixes:
  - [x] scrub trailing commas from kernel enumerations (`sel4/objecttype.h`,
    machine register sets, generated syscall tables).
  - [x] extend the enumeration cleanup to the remaining pedantic offenders
    surfaced by the latest build (e.g. `X86_MappingVSpace`, `irqInvalid`, and
    the `thread_control_update` flags).
  - [x] revisit the packing assertions in the PC99 ACPI/GDT helpers now that the
    attribute shims collapse under C90, so the compile-time size checks no
    longer fail under pedantic mode.
  - [x] replace compound literals and designated initialisers in
    `include/machine.h` with explicit temporaries to satisfy C90.
  - [x] normalise the `NODE_STATE_*` macros so they do not expand to stray
    semicolons.
  - [x] Add `(void)` casts or other shims for the numerous unused parameters
    (e.g. the FS/GS base accessors, APIC helpers, and IRQ stubs) and reorder
    declarations that appear after executable statements in the interrupt and
    machine helpers.
- [x] Rework the PC99 interrupt helpers so that the generated statements avoid
  declaration-after-statement issues, inline-specifier ordering problems,
  always-true comparisons, and variadic macro misuse under strict C90.
- [x] Adjust the CR3 and translation invalidation helpers so that the inline
  assembly operates on named temporaries instead of subscripting the temporary
  returned by `makeCR3(...)`, avoiding the pedantic C90 error.
- Address the syscall preprocessor and layout issues surfaced by the latest
  build:
  - [x] Rework `handleUnknownSyscall`/`handleSyscall` so the capability logging
        macros no longer wrap `#ifdef` directives inside their argument lists.
  - [x] Hoist the `cptr` declaration in `handleInvocation` above the existing
        statements so the function satisfies C90's declaration rules.
- [x] Make `setMRs_lookup_failure` return explicitly so the strict warnings stop
  flagging it as falling off the end.
- Audit architecture helpers for unused parameters and modern inline idioms
  (e.g. `static inline` placement) that now surface as errors.
- Make the shared libsel4 macros and enum definitions pedantic-friendly so that
  the generated headers compile cleanly under C90.
- Tackle the new diagnostics exposed by the latest strict build run:
  - [x] Replace `LIBSEL4_ENUM_EXT` with a pedantic-friendly shim and scrub the
        remaining trailing commas from the multiboot2 tag enumeration.
  - [x] Rework the SKIM window mapping helpers so they hoist declarations,
        avoid C99 `for`-loop initialisers, and compare like-signed values.
  - [x] Cast the unused parameters in the x86 TLB invalidation wrappers and
        related boot helpers so the pedantic build stays quiet.
- [x] Hoist declarations and add `(void)` casts in the x86 boot-time paging
        helpers (`map_temp_boot_page`, `create_mapped_it_frame_cap`, and the
        slot region initialiser) so they satisfy pedantic C90.
  - [x] Adjust the CR3 comparison helpers and boot-time mapping routines to
        operate on named temporaries instead of subscripting compound literals.
  - [x] Audit the x86 decode and mode-specific cap helpers to provide explicit
        returns and `(void)` casts for unused parameters now that the attribute
        shims collapse under C90.
  - [ ] Teach the generated capDL wrapper sources to emit a benign definition
        when no kernel objects are present so the strict build no longer flags
        the empty translation unit under `-Wpedantic`.
- Continue iterating on the remaining compilation blockers (assembly helpers,
  missing returns, etc.) surfaced by the latest build.
