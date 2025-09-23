# Plan: Replace `kernel_all.c` Aggregation with Wrapper-Based Translation Units

## Background and Constraints
- The preconfigured build script `replay_preconfigured_build.sh` currently generates `preconfigured/X64_verified/kernel_all.c` by feeding 56 source files through `tools/cpp_gen.sh` and then compiles that single translation unit into `kernel.elf` alongside the required assembly sources.【F:replay_preconfigured_build.sh†L40-L115】
- `kernel_all_pp_prune.c` inside `preconfigured/X64_verified/` shows the result of the preprocessing stage, where every original `.c` file is pulled in through `#line` directives. Static functions from different modules therefore coexist inside one translation unit, which masks cross-file linkage boundaries.【F:preconfigured/X64_verified/kernel_all_pp_prune.c†L1-L20】
- The goal is to organize these static functions so that each module once again has its own translation unit while preserving internal linkage semantics. To avoid editing upstream sources directly, we will introduce wrapper `.c` files under `preconfigured/X64_verified/` that include the canonical sources and, when necessary, provide exported shim symbols.

## High-Level Objectives
1. Mirror the layout of the original `src/` tree (and any other contributing trees such as `libsel4`) inside `preconfigured/X64_verified/` without duplicating logic.
2. Ensure every module that currently feeds into `kernel_all.c` builds as an isolated translation unit while retaining its `static` helpers.
3. Update `replay_preconfigured_build.sh` to compile the wrapper units instead of `kernel_all.c`, and make sure any generated artifacts (e.g., `kernel_all_copy.c`) still receive the content they expect.
4. Verify that the preconfigured build still completes successfully and produces an identical (or acceptably close) `kernel.elf`.

## Detailed Steps

### 1. Inventory the Aggregated Sources
- Parse the long `tools/cpp_gen.sh` invocation in `replay_preconfigured_build.sh` to record the canonical ordering of the source files. This ordering can affect inlined `static` functions and macro side effects, so capture it verbatim for reference when introducing wrappers.【F:replay_preconfigured_build.sh†L63-L115】
- Group the files by their top-level directory (`src/api`, `src/arch/x86`, `src/plat`, etc.) to help drive the mirrored directory creation under `preconfigured/X64_verified/`.
- While scanning, note modules that already provide generated outputs (`default_domain.c`, etc.) so we can double-check that they exist at build time.

### 2. Detect Static Functions that Need Special Handling
- For each source file in the inventory, search for `static` functions or data via `rg '^static ' <file>` in the canonical location (outside `preconfigured/`). Document functions that are referenced through `extern` declarations or macros in other compilation units—those will require wrapper exports or header adjustments.
- Pay extra attention to modules known to share helper routines (e.g., `src/object/tcb.c` vs. `src/object/notification.c`) to confirm whether any `static` helper is invoked elsewhere in the aggregated build. Where ambiguity exists, run the original aggregated build and inspect symbol tables (`nm kernel_all.c.obj`) to understand which helpers become globally visible today.
- Decide on a policy for wrappers: prefer keeping helpers `static` and exposing thin non-static functions (e.g., `capdl_lookup_irq_wrapper()` calling the internal `static capdl_lookup_irq()`), unless converting the helper to a shared header is cleaner.

### 3. Create Wrapper Translation Units in `preconfigured/X64_verified/`
- For every original `.c` file, add a sibling wrapper under `preconfigured/X64_verified/src/...` that `#include`s the real source via a relative path. Example:
  ```c
  // preconfigured/X64_verified/src/api/faults_wrapper.c
  #include "../../../../src/api/faults.c"
  ```
  This keeps all `static` definitions scoped per translation unit without code duplication.
- When a helper identified in Step 2 must be callable from another module, extend the wrapper with a non-static bridge function that forwards to the static helper (declared via `extern` inside the wrapper using a function prototype). Keep such bridges grouped in the wrapper so we do not modify upstream sources.
- Place wrappers in directories that mirror the original tree so include paths remain intuitive. Reuse the original file names with a suffix (e.g., `_wrapper.c`) to avoid colliding with genuine sources.
- If a module already lives under `preconfigured/X64_verified/` (e.g., generated sources), skip duplication and just reference the generated file directly.

### 4. Update Build Script and Ancillary Targets
- Replace the `tools/cpp_gen.sh ... > kernel_all.c` pipeline with commands that synchronize (or regenerate) the wrapper files. Because wrappers simply `#include` the upstream sources, we likely only need to ensure the directory hierarchy exists; no per-build regeneration is required.
- Modify the subsequent compile step to emit individual object files for each wrapper instead of `kernel_all.c`. Keep the ordering consistent with the original list to minimize risk of hidden dependencies.
- Audit other references to `kernel_all.c` within `replay_preconfigured_build.sh` (e.g., the compilation of `kernel_all_copy.c`) and adjust them to point to the new object list or remove obsolete artifacts.
- Confirm that `cmake`/`ninja` artifacts inside `preconfigured/X64_verified/` do not expect the monolithic file; update or recreate stubs if needed.

### 5. Validate the Reworked Build
- Run `./replay_preconfigured_build.sh` from a clean state to ensure all wrappers compile and link successfully.
- Compare the resulting `kernel.elf` with the baseline output from the monolithic build using `cmp` or `diffoscope`. Document any differences and investigate whether they stem from legitimate translation-unit reordering (e.g., `static` inline functions now producing different inlining) versus real regressions.
- Keep the plan handy for follow-up tasks: if validation reveals missing helpers, iterate by extending the relevant wrapper with the required exports.

## Open Questions / Risks
- Some static helpers may rely on `#undef`/`#define` sequences across file boundaries that only work in the aggregated translation unit. Wrappers that `#include` the original `.c` should inherit those macros, but we must verify no ordering dependencies remain.
- The generated artifacts (`kernel_all_pp_prune_wrapper_temp.c`, etc.) might assume the presence of `kernel_all.c` on disk. We must confirm which of these files still need to exist and either update the script to keep producing them or adjust downstream consumers.
- Keeping wrappers synchronized with upstream source paths requires diligence; consider adding a CI guard that checks the wrapper inventory against the `cpp_gen.sh` list to catch drift.

