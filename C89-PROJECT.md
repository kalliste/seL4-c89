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
    - [ ] Replace the remaining anonymous variadic logging helpers with
      explicit C89-compatible shims.

## Build Attempt Summary
- **Command**: `./preconfigured/replay_preconfigured_build.sh`
- **Outcome**: The build now clears the earlier enum-related pedantic errors but
  still stops in the shared headers. Strict C90 mode rejects the remaining
  variadic logging shims, the packed-structure assertions, the `NODE_STATE_*`
  macros, several unused-parameter stubs (including the FS/GS base accessors),
  declaration-after-statement violations in the interrupt helpers, inline
  specifier ordering in the PC99 IRQ helpers, the always-true comparison in
  `maskInterrupt`, the inline assembly that subscripts temporaries, and the
  lingering missing return in `setMRs_lookup_failure`.

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
2. **Preprocessor usage assumes variadic macros**: The stubbed logging macros
   (`printf(...)`, `userError(...)`, etc.) still rely on anonymous
   `__VA_ARGS__`, triggering strict C90 diagnostics.
   - *Potential remedies*: provide explicit helper functions or fixed-argument
     shims that preserve the current behaviour without anonymous varargs.
3. **Modern C layout rules**: Several functions declare variables mid-block,
   causing "mixed declarations and code" errors with C90.
   - *Potential remedies*: hoist declarations to the top of the scope.
4. **Unused parameter clean-ups**: Architecture stubs rely on the compiler to
   discard unused parameters via attributes; once those attributes collapse
   under C89, the warnings become hard errors.
   - *Potential remedies*: cast parameters to `(void)` or reintroduce
     conditional attribute shims that keep the compiler quiet.
5. **Control-flow expectations**: A few helper functions (e.g.
   `setMRs_lookup_failure`) still fall off the end without an explicit return
   statement under the stricter warning set.
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
   pedantic diagnostics. We have now scrubbed the remaining enums that the
   previous build complained about (`X86_MappingVSpace`, the PC99 IRQ tables,
   and the thread control update flags). The outstanding pedantic fallout now
   centres on macro shims such as the `NODE_STATE_*` helpers and the stubbed
   logging wrappers.
8. **Structure packing guarantees**: strict mode exposes that the ACPI RSDP
   assertions rely on packing attributes that collapse under C89, causing the
   compile-time size check to fail.

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
- Catalogue the new diagnostics from the latest strict build run and plan the
  follow-up fixes:
  - [x] scrub trailing commas from kernel enumerations (`sel4/objecttype.h`,
    machine register sets, generated syscall tables).
  - [x] extend the enumeration cleanup to the remaining pedantic offenders
    surfaced by the latest build (e.g. `X86_MappingVSpace`, `irqInvalid`, and
    the `thread_control_update` flags).
  - [ ] revisit the packing assertions in the PC99 ACPI/GDT helpers now that the
    attribute shims collapse under C90.
  - [x] replace compound literals and designated initialisers in
    `include/machine.h` with explicit temporaries to satisfy C90.
  - normalise the `NODE_STATE_*` macros so they do not expand to stray
    semicolons.
  - add `(void)` casts or other shims for the numerous unused parameters (e.g.
    the FS/GS base accessors, APIC helpers, and IRQ stubs) and reorder
    declarations that appear after executable statements in the interrupt and
    machine helpers.
- Replace the remaining anonymous variadic macros used for debugging/logging
  (`printf`, `userError`, etc.) with helpers that are valid in C89.
- Rework the PC99 interrupt helpers so that the generated statements avoid
  declaration-after-statement issues, inline-specifier ordering problems,
  always-true comparisons, and variadic macro misuse under strict C90.
- Adjust the CR3 and translation invalidation helpers so that inline assembly
  operates on named temporaries instead of subscripting non-lvalue temporaries
  under pedantic C90.
- Make `setMRs_lookup_failure` return explicitly so the strict warnings stop
  flagging it as falling off the end.
- Audit architecture helpers for unused parameters and modern inline idioms
  (e.g. `static inline` placement) that now surface as errors.
- Make the shared libsel4 macros and enum definitions pedantic-friendly so that
  the generated headers compile cleanly under C90.
- Continue iterating on the remaining compilation blockers (assembly helpers,
  missing returns, etc.) surfaced by the latest build.
