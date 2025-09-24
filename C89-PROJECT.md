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
  - [x] Give the mode-specific cap helpers and page-size queries explicit
    return paths now that the attribute shims collapse under C89.
  - [x] Silence the x86 fault stubs by casting their unused parameters and
    returning explicit values for the pedantic C90 build.
  - [x] Compare the syscall slowpath bounds against signed temporaries so the
    pedantic build accepts `c_traps.c`.
  - [x] Keep the C89 inline compatibility shims visible in `machine/io.h`
    when printing is disabled.
  - [x] Rewrite the APIC initialisation to use named temporaries instead of
    subscripting compound literals.
  - [x] Hoist the x86 virtual memory helpers so they declare locals at the top
    of each block and return explicit values under the pedantic C90 build.
  - [x] Replace the compound literal helpers in `machine.h` with explicit
    temporaries.
  - [x] Replace the remaining anonymous variadic logging helpers with
    explicit C89-compatible shims.
  - [x] Rework the PC99 interrupt helpers to hoist declarations, normalise
    inline specifiers, and tighten their predicate logic for C90.
  - [x] Rewrite the kernel boot-time reservation helpers so they avoid
    compound literals, loop initialisers, and late declarations under C90.
  - [x] Quieten the double-fault handler's unused parameters in
    `src/kernel/faulthandler.c` for the pedantic build.

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
  explicit errors, allowing the pedantic build to reach the next blocker.

  The latest run also surfaced that the x86 register-set consistency checks were
  still written in the old `compile_assert(name, expr);` style. Dropping the
  trailing statement terminators lets the pedantic C90 build accept the
  generated wrappers and carry on to the next failure.

  Providing a benign typedef in `smp.c` lets the pedantic build progress into
  the mode-specific object helpers. The strict warning set now reports that
  `Mode_deriveCap` and `Mode_createObject` both leave parameters unused and fall
  off the end without returning a value when their architecture-specific cases
  collapse. The shared `pageBitsForSize` helper in
  `include/arch/x86/arch/machine/hardware.h` similarly lacks a return once the
  large-page branches are preprocessed away.

  Casting the unused mode parameters to `(void)` and giving each helper an
  explicit return path satisfies the pedantic warnings, allowing the strict
  build to continue into the x86 fault shims. The remaining blockers previously
  lived in `src/arch/x86/api/faults.c`, where `Arch_handleFaultReply` and
  `Arch_setMRs_fault` both dropped parameters on the floor and lacked explicit
  return statements once the attribute shims collapsed. Casting the unused
  arguments to `(void)` and adding explicit return values lets the pedantic C90
  build move past the fault wrappers.

Reworking the syscall slowpath to compare against signed bounds eliminates
the pedantic sign-compare errors in `c_traps.c`. Hoisting the inline helpers
in `machine/io.h` out of the printing configuration keeps the compatibility
macros visible in C90 mode, and the APIC initialisation now materialises the
register values in named temporaries rather than subscripting compound
literals. With those fixes in place—and the x86 boot initialisation now
tidied for C90 compliance—the strict build progresses into `boot_sys.c`. The
remaining blockers there centre on like-signed comparisons in the multiboot
memory walkers, C99-only compound literals and loop initialisers, late
declarations (e.g. the `cpuid_007h_edx_t` temporary), and the need to refer to
the `_start` symbol via an explicit declaration.

Reworking the boot-time helpers to hoist their temporaries, replace the
compound literals with named regions, and declare the kernel entry point
explicitly lets `boot_sys.c` build cleanly under strict C90. The replay build
now advances into `arch/x86/kernel/cmdline.c`, where the pedantic warning set
reports that `parse_opt` and `parse_uint16_array` are both left unused when the
command-line parsing tables compile away.

Guarding those helpers behind the same `CONFIG_PRINTING`/`CONFIG_DEBUG_BUILD`
predicates that reference them clears the pedantic warnings and lets the
strict build continue to the next blocker.

Hoisting the declarations throughout `arch/x86/kernel/vspace.c` and adding
explicit return paths for the VM fault and accessors resolves the C90-specific
diagnostics in that translation unit. The replay build consequently advances to
`arch/x86/kernel/xapic.c`, where the pedantic warning set now complains about
subscripting the temporary compound literals returned by the LAPIC register
constructors when sending IPIs. Reworking those helpers to materialise the
register values in named temporaries clears the pedantic errors and lets the
strict build progress into `arch/x86/machine/breakpoint.c`. Providing a benign
typedef when the hardware debug API is disabled keeps that translation unit
non-empty, so the pedantic build now advances to the next blocker.

Rewriting the kernel boot-time region helpers to use explicit temporaries and
top-of-scope declarations removes the C99-only constructs that previously broke
`src/kernel/boot.c` under C90. The boot-time reservation logic now builds the
slot and address ranges manually, keeps loop indices declared outside their
headers, and zeroes structures via assignments instead of compound literals.
With those fixes applied the pedantic build moves on to `src/kernel/faulthandler.c`,
where `handleDoubleFault` previously triggered the next failure because its first
fault argument becomes unused once the attribute shims collapse.

Casting that parameter to `(void)` quiets the stub and allows the strict build
to progress into `src/kernel/thread.c`. Hoisting the reply-path locals out of
the executable statements lets `doReplyTransfer` and `schedule` satisfy C90's
declaration rules, so the pedantic build now runs until the next blocker.

Guarding `switchFpuOwner`'s CPU argument with a `(void)` cast when SMP support
is absent lets the strict build progress into `src/machine/registerset.c`.
Rewriting the syscall and exception message tables without designated
initialisers clears that blocker, allowing the pedantic C90 build to reach
`src/model/statedata.c`. Cleaning up the SMP shims and compile-time assertions
lets the strict build advance into `src/object/cnode.c`, where
`cteDeleteOne` now leaves its `fc_ret` temporary unused and
`capRemovable` still falls off the end without returning a value when the
arch-specific cases collapse under C90.

Consuming the `cteDeleteOne` finalisation result and giving `capRemovable`
an explicit default return lets the pedantic build progress into
`src/object/endpoint.c`. Hoisting the `sendIPC` reply capability flag, rewriting
the generic object helpers to avoid designated initialisers and missing returns,
and untangling the `tcb.c` scheduling shims from their mixed declarations keeps
those translation units pedantic-friendly. The strict build now advances to
`src/object/untyped.c`, where the ternary that picks the object mask changes
signedness mid-expression, the invocation wrapper's `call` parameter becomes
unused, and the reset path still compares unlike-signed counters.

Reworking the untyped invocation wrapper to cast its unused flag, compute the
object-size diagnostic in a `word_t`, and compare the reset chunk size against a
like-signed bound lets the pedantic build continue into the PC99 platform
helpers. Dropping the trailing comma from the DMAR enumerator list and hoisting
the LAPIC frequency measurement temporaries satisfy the C90 rules in
`acpi.c` and `hardware.c`, allowing the replay build to reach the next blocker.

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
   their unused arguments to `(void)`, and the x86 fault reply/setMR stubs now
   do the same so they compile cleanly under the pedantic build.
   - *Potential remedies*: continue casting parameters to `(void)` or
     reintroduce conditional attribute shims that keep the compiler quiet.
5. **Control-flow expectations** *(progress)*: Several helpers need explicit
   returns under the stricter warning set. `setMRs_lookup_failure`, the
   mode-specific cap helpers, and the x86 fault wrappers now return explicit
   values so the compiler can prove a value is always produced.
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
  - [x] Provide a benign definition in `src/arch/x86/64/model/smp.c` so the
        pedantic build no longer rejects the empty translation unit when SMP is
        disabled.
    - [x] Ensure the x86 mode object helpers (`Mode_deriveCap`, `Mode_createObject`)
          cast their unused parameters and return explicit caps when the
          architecture-specific cases compile away.
    - [x] Add a fallback return path to `pageBitsForSize` so the helper remains
          well-defined once the large-page cases are disabled.
    - [x] Silence the x86 fault reply/setMR stubs so they cast unused arguments
          and return explicit results under pedantic C90.
- [x] Provide a benign definition in the x86 benchmarking stubs so the strict
  build no longer rejects the empty translation unit emitted by
  `src/arch/x86/benchmark/benchmark.c`.
- [x] Rewrite the syscall and exception message tables in
  `src/machine/registerset.c` so they avoid the designated initialisers that
  pedantic C90 rejects.
- [x] Tidy the node-state declarations in `src/model/statedata.c` so the
  pedantic C90 build no longer flags stray semicolons when the SMP shims
  compile away.
- [ ] Provide a benign definition in the x86 EPT stubs so the strict build no
  longer rejects the empty translation unit emitted by
  `src/arch/x86/kernel/ept.c` when VT-d is disabled.
- [ ] Teach the generated capDL wrapper sources to emit a benign definition
        when no kernel objects are present so the strict build no longer flags
        the empty translation unit under `-Wpedantic` (now triggered by
        `preconfigured/X64_verified/src/machine/capdl_wrapper.c`).
- Tackle the kernel boot initialisation helpers surfaced by the latest strict
  build run:
  - [ ] Replace the compound literal helpers and designated initialisers in
        `kernel/boot.c` and the shared `REG_EMPTY`/`S_REG_EMPTY` macros with
        explicit temporaries that satisfy C90.
  - [ ] Hoist the loop indices, temporaries, and compile-time assertions in
        `kernel/boot.c` so the reservation and boot-info helpers no longer
        declare variables after statements or inside `for` initialisers.
- [x] Tidy the x86 boot initialisation so it satisfies strict C90:
  - [x] Rework the IRQ range checks in `init_irqs` to avoid always-true
        unsigned comparisons.
  - [x] Compare the VBE mode fields against sentinel values using unsigned
        arithmetic and consume the unused VT-d parameters when that support is
        disabled.
  - [x] Hoist the boot-info bookkeeping locals, replace the designated
        initialiser used for `extra_bi_region`, and avoid declaration-after-
        statement warnings throughout `init_sys_state` and `init_cpu`.
- [x] Continue the boot-time cleanup by bringing `boot_sys.c` in line with
  strict C90:
  - [x] Compare the multiboot memory walkers against like-signed counters so
        the pedantic build accepts the loops.
  - [x] Replace the compound literals in the memory map helpers with explicit
        temporaries and hoist the late declarations (e.g. the
        `cpuid_007h_edx_t` and multiboot mmap length locals).
  - [x] Rewrite the multiboot2 iterators without C99-style `for`
        initialisers and provide an explicit declaration for `_start` before
        it is referenced.
- [x] Silence the strict C90 warnings in `arch/x86/kernel/cmdline.c` so the
  pedantic build no longer reports the unused command-line parsing helpers.
- [x] Rework the LAPIC IPI helpers in `src/arch/x86/kernel/xapic.c` so they
  populate named temporaries instead of subscripting compound literals, letting
  the pedantic C90 build proceed past the new blocker.
- [x] Provide a benign definition in the x86 breakpoint stubs so the strict build
  no longer rejects the empty translation unit emitted by
  `src/arch/x86/machine/breakpoint.c`.
- [x] Hoist the reply-path locals in `src/kernel/thread.c`
  (`doReplyTransfer`, `schedule`) so they no longer mix declarations with
  statements under C90.
- [x] Adjust the `src/object/cnode.c` helpers uncovered by the latest strict
  build run so they satisfy pedantic C90:
  - [x] Consume or drop the unused `fc_ret` temporary in `cteDeleteOne` once
        the cap finalisation collapses.
  - [x] Give `capRemovable` an explicit return path when the architecture
        special-cases compile away.
- [x] Hoist the `replyCanGrant` declaration in `src/object/endpoint.c`'s
  `sendIPC` helper so it no longer mixes declarations with statements under
  strict C90.
- [ ] Resolve the strict C90 diagnostics in `src/object/untyped.c` exposed by
  the latest build run (unused invocation parameters, unlike-signed comparisons,
  and the ternary mask constructor that flips signedness mid-expression).
- Continue iterating on the remaining compilation blockers (assembly helpers,
  missing returns, etc.) surfaced by the latest build.
