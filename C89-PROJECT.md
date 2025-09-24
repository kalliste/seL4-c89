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

## Build Attempt Summary
- **Command**: `./preconfigured/replay_preconfigured_build.sh`
- **Outcome**: The build stops during preprocessing/compilation of generated and
  header sources due to strict C90 semantics.

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
2. **Preprocessor usage assumes variadic macros**: The PC99 interrupt helpers
   expand `config_set(...)` in contexts that result in empty `__VA_ARGS__`,
   provoking "requires at least one argument" diagnostics.
   - *Potential remedies*: restructure the macros/helpers to avoid empty
     expansions or introduce wrappers that are C89-safe.
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
7. **Enumeration and macro hygiene**: verification-oriented macros such as
   `SEL4_SIZE_SANITY` and `SEL4_FORCE_LONG_ENUM` expand to trailing semicolons,
   large enumerator values, and dangling commas. GCC accepts these under
   GNU99 but rejects them in strict C90 mode, so we need to rework the macros
   to emit conforming constructs.
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
  - [ ] Replace the configuration helpers in `util.h` that rely on anonymous
        variadic macros with C89-compatible shims.
- Rework the PC99 interrupt helpers so that the generated statements avoid
  declaration-after-statement issues and variadic macro misuse under strict C90.
- Audit architecture helpers for unused parameters and modern inline idioms
  (e.g. `static inline` placement) that now surface as errors.
- Make the shared libsel4 macros and enum definitions pedantic-friendly so that
  the generated headers compile cleanly under C90.
- Continue iterating on the remaining compilation blockers (assembly helpers,
  missing returns, etc.) surfaced by the latest build.
