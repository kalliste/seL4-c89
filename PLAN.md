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

#### Step 1 progress (2025-02-14)
- Extracted all 77 inputs that `cpp_gen.sh` concatenates today. The sequence below preserves the original command order so we can recreate it when wiring wrapper objects:

  1. `src/api/faults.c`
  2. `src/api/syscall.c`
  3. `src/arch/x86/64/c_traps.c`
  4. `src/arch/x86/64/kernel/elf.c`
  5. `src/arch/x86/64/kernel/thread.c`
  6. `src/arch/x86/64/kernel/vspace.c`
  7. `src/arch/x86/64/machine/capdl.c`
  8. `src/arch/x86/64/machine/registerset.c`
  9. `src/arch/x86/64/model/smp.c`
  10. `src/arch/x86/64/model/statedata.c`
  11. `src/arch/x86/64/object/objecttype.c`
  12. `src/arch/x86/64/smp/ipi.c`
  13. `src/arch/x86/api/faults.c`
  14. `src/arch/x86/benchmark/benchmark.c`
  15. `src/arch/x86/c_traps.c`
  16. `src/arch/x86/idle.c`
  17. `src/arch/x86/kernel/apic.c`
  18. `src/arch/x86/kernel/boot.c`
  19. `src/arch/x86/kernel/boot_sys.c`
  20. `src/arch/x86/kernel/cmdline.c`
  21. `src/arch/x86/kernel/ept.c`
  22. `src/arch/x86/kernel/smp_sys.c`
  23. `src/arch/x86/kernel/thread.c`
  24. `src/arch/x86/kernel/vspace.c`
  25. `src/arch/x86/kernel/x2apic.c`
  26. `src/arch/x86/kernel/xapic.c`
  27. `src/arch/x86/machine/breakpoint.c`
  28. `src/arch/x86/machine/capdl.c`
  29. `src/arch/x86/machine/cpu_identification.c`
  30. `src/arch/x86/machine/fpu.c`
  31. `src/arch/x86/machine/hardware.c`
  32. `src/arch/x86/machine/registerset.c`
  33. `src/arch/x86/model/statedata.c`
  34. `src/arch/x86/object/interrupt.c`
  35. `src/arch/x86/object/ioport.c`
  36. `src/arch/x86/object/iospace.c`
  37. `src/arch/x86/object/objecttype.c`
  38. `src/arch/x86/object/tcb.c`
  39. `src/arch/x86/object/vcpu.c`
  40. `src/arch/x86/smp/ipi.c`
  41. `src/assert.c`
  42. `src/benchmark/benchmark.c`
  43. `src/benchmark/benchmark_track.c`
  44. `src/benchmark/benchmark_utilisation.c`
  45. `src/fastpath/fastpath.c`
  46. `src/inlines.c`
  47. `src/kernel/boot.c`
  48. `src/kernel/cspace.c`
  49. `src/kernel/faulthandler.c`
  50. `src/kernel/stack.c`
  51. `src/kernel/thread.c`
  52. `src/machine/capdl.c`
  53. `src/machine/fpu.c`
  54. `src/machine/io.c`
  55. `src/machine/registerset.c`
  56. `src/model/preemption.c`
  57. `src/model/smp.c`
  58. `src/model/statedata.c`
  59. `src/object/cnode.c`
  60. `src/object/endpoint.c`
  61. `src/object/interrupt.c`
  62. `src/object/notification.c`
  63. `src/object/objecttype.c`
  64. `src/object/tcb.c`
  65. `src/object/untyped.c`
  66. `src/plat/pc99/machine/acpi.c`
  67. `src/plat/pc99/machine/hardware.c`
  68. `src/plat/pc99/machine/intel-vtd.c`
  69. `src/plat/pc99/machine/io.c`
  70. `src/plat/pc99/machine/ioapic.c`
  71. `src/plat/pc99/machine/pic.c`
  72. `src/plat/pc99/machine/pit.c`
  73. `src/smp/ipi.c`
  74. `src/smp/lock.c`
  75. `src/string.c`
  76. `src/util.c`
  77. `src/config/default_domain.c`
- Directory breakdown (helps us mirror the tree later):

  | Group | Files |
  | --- | --- |
  | `src/arch/x86` | 38 |
  | `src (root)` | 4 (`assert.c`, `inlines.c`, `string.c`, `util.c`) |
  | `src/kernel` | 5 |
  | `src/object` | 7 |
  | `src/plat/pc99` | 7 |
  | `src/machine` | 4 |
  | `src/model` | 3 |
  | `src/benchmark` | 3 |
  | `src/api` | 2 |
  | `src/smp` | 2 |
  | `src/fastpath` | 1 |
  | `src/config` | 1 |
- Generated artifacts to track: `src/config/default_domain.c` is still checked into the tree for this configuration, so wrapper generation only needs to confirm the file exists rather than triggering a build step.
- Cross-checked the list with an auxiliary parser so we can regenerate it mechanically in future steps; Step 1 is now considered complete.

### 2. Detect Static Functions that Need Special Handling
- For each source file in the inventory, search for `static` functions or data via `rg '^static ' <file>` in the canonical location (outside `preconfigured/`). Document functions that are referenced through `extern` declarations or macros in other compilation units—those will require wrapper exports or header adjustments.
- Pay extra attention to modules known to share helper routines (e.g., `src/object/tcb.c` vs. `src/object/notification.c`) to confirm whether any `static` helper is invoked elsewhere in the aggregated build. Where ambiguity exists, run the original aggregated build and inspect symbol tables (`nm kernel_all.c.obj`) to understand which helpers become globally visible today.
- Decide on a policy for wrappers: prefer keeping helpers `static` and exposing thin non-static functions (e.g., `capdl_lookup_irq_wrapper()` calling the internal `static capdl_lookup_irq()`), unless converting the helper to a shared header is cleaner.

#### Step 2 progress (2025-02-14)
- Reused a small Python helper to re-parse the `cpp_gen.sh` source list and enumerate the `static` functions present in all 77 inputs (243 total), confirming the expected hot spots in `src/arch/x86/object/vcpu.c`, `src/arch/x86/64/machine/capdl.c`, and `src/arch/x86/64/kernel/vspace.c` where most helpers live.【F:src/arch/x86/object/vcpu.c†L30-L138】【F:src/arch/x86/64/machine/capdl.c†L19-L89】【F:src/arch/x86/64/kernel/vspace.c†L560-L918】
- For every discovered helper symbol, used `rg --files-with-matches` to search the 77-module corpus for additional references. No symbol appeared outside its defining file, so the aggregated build is not papering over any cross-translation-unit calls today.
- Applied the same scan to `static` data (28 definitions, with `src/arch/x86/object/vcpu.c` and `src/plat/pc99/machine/ioapic.c` accounting for the bulk) and again found no external uses beyond their home modules.【F:src/arch/x86/object/vcpu.c†L33-L88】【F:src/plat/pc99/machine/ioapic.c†L12-L74】
- Audited the handful of `extern` declarations that still live in `.c` files; they reference linker-provided boot symbols such as `kernel_stack_alloc` and `_start`, so the forthcoming wrappers can rely on the existing assembly objects without any shim functions.【F:src/arch/x86/64/model/smp.c†L1-L24】【F:src/arch/x86/kernel/boot_sys.c†L23-L52】【F:src/kernel/boot.c†L1-L40】
- Conclusion: the wrapper translation units can simply `#include` their canonical sources without additional exports, while keeping an eye on the dense clusters of `static` helpers noted above during the actual split.

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

#### Step 3 progress (2025-09-23)
- Added `tools/generate_kernel_wrappers.py`, which scrapes the `tools/cpp_gen.sh` invocation from `replay_preconfigured_build.sh` and emits `_wrapper.c` files that mirror the `src/` tree under `preconfigured/X64_verified/src/`.
- Generated 77 wrappers via the helper; each file just `#include`s its canonical source with a relative path, so static helpers stay scoped to their home translation units.
- Spot-checked deeply nested modules (`arch/x86/64/kernel/vspace`, `config/default_domain`) to confirm the relative include paths resolve correctly and no existing generated sources were duplicated.
- The generator is idempotent, so we can rerun it after upstream list changes; with the wrappers in place we're ready to swap the build over in Step 4.

### 4. Update Build Script and Ancillary Targets
- Replace the `tools/cpp_gen.sh ... > kernel_all.c` pipeline with commands that synchronize (or regenerate) the wrapper files. Because wrappers simply `#include` the upstream sources, we likely only need to ensure the directory hierarchy exists; no per-build regeneration is required.
- Modify the subsequent compile step to emit individual object files for each wrapper instead of `kernel_all.c`. Keep the ordering consistent with the original list to minimize risk of hidden dependencies.
- Audit other references to `kernel_all.c` within `replay_preconfigured_build.sh` (e.g., the compilation of `kernel_all_copy.c`) and adjust them to point to the new object list or remove obsolete artifacts.
- Confirm that `cmake`/`ninja` artifacts inside `preconfigured/X64_verified/` do not expect the monolithic file; update or recreate stubs if needed.

#### Step 4 progress (2025-09-24)
- Declared a `KERNEL_SOURCES` array in `replay_preconfigured_build.sh` that preserves the original 77-item ordering from the `cpp_gen.sh` invocation, letting both the wrapper generator and the build script share a single source of truth.
- Replaced the `cpp_gen.sh` pipeline with an explicit call to `tools/generate_kernel_wrappers.py`, followed by a Bash loop that compiles each `_wrapper.c` translation unit into its own object (creating subdirectories on demand) while collecting the resulting object paths for linking.
- Updated the final link step to consume the accumulated wrapper objects instead of the legacy `kernel_all.c.obj`, keeping the existing assembler objects at the front of the link line to preserve behaviour.
- Tweaked `tools/generate_kernel_wrappers.py` to parse the new array format so future wrapper regeneration keeps working without the deleted pipeline.
- Next up: audit ancillary references to the removed monolithic file (e.g., `kernel_all_copy.c` consumers) and prepare the script to surface the expanded object list to later steps in the build.

#### Step 4 progress (2025-09-25)
- Taught `tools/generate_kernel_wrappers.py` to emit `preconfigured/X64_verified/kernel_all_copy.c` as a simple include-aggregator so `kernel_all_copy.c` stays in sync with the wrapper inventory without reintroducing monolithic compilation.【F:tools/generate_kernel_wrappers.py†L1-L108】【F:preconfigured/X64_verified/kernel_all_copy.c†L1-L77】
- Audited ancillary `kernel_all.c` references in `replay_preconfigured_build.sh` and replaced the implicit object collection with an explicit `kernel_wrapper_objects.list` manifest that records every wrapper object for later consumers.【F:replay_preconfigured_build.sh†L114-L144】
- Verified the generator now succeeds (missing `os` import bug fixed) and captured the manifest/aggregator adjustments as prep for sharing the object list with downstream tooling.【36f76b†L1-L3】
- Trial build via `replay_preconfigured_build.sh` now trips on `kpptr_to_paddr` missing from `mode/machine.h`; this header-order issue will need attention when we tackle Step 5 validation.【2722b5†L1-L10】

### 5. Validate the Reworked Build
- Run `./replay_preconfigured_build.sh` from a clean state to ensure all wrappers compile and link successfully.
- Compare the resulting `kernel.elf` with the baseline output from the monolithic build using `cmp` or `diffoscope`. Document any differences and investigate whether they stem from legitimate translation-unit reordering (e.g., `static` inline functions now producing different inlining) versus real regressions.
- Keep the plan handy for follow-up tasks: if validation reveals missing helpers, iterate by extending the relevant wrapper with the required exports.

#### Step 5 progress (2025-09-26)
- First end-to-end wrapper build attempt (`./replay_preconfigured_build.sh`) still dies early in `src/api/syscall.c` because `include/benchmark/benchmark_track.h` pulls in `<mode/machine.h>` before `<machine.h>`, leaving `kpptr_to_paddr` undefined.【d274fa†L1-L10】 The monolithic TU masked this ordering issue, so each wrapper will need its own include hygiene.
- After fixing that single blocker, the build surfaced a broader wave of missing declarations (e.g., `x86_save_fsgs_base`, `servicePendingIRQ`, `seL4_Word`, and later the cap helpers in `object/objecttype.c`).【c5fad7†L1-L41】【263a49†L1-L24】【e214fa†L1-L41】【04dc3e†L1-L40】 These all trace back to files that previously relied on neighboring `.c` inclusions for prototypes or macros. The new wrapper regime will require adding explicit headers such as `<machine.h>`, `<plat/machine/interrupt.h>`, `<kernel/thread.h>`, and `<object/objecttype.h>` in the affected translation units.
- A brute-force experiment that injected platform interrupt headers high in the include stack resolved the `servicePendingIRQ` family but triggered a cascade of new dependencies (missing `interrupt_t`, node-state symbols, TLS helpers). That experiment was reverted; future fixes should instead add the minimal headers directly to the few translation units that use those helpers.
- Current status: build still fails, but we now have a concrete checklist of missing includes to work through. Next pass should tackle them incrementally (e.g., start with the syscall/benchmark header pairing, then the trap/interrupt path, then the x86 thread/vspace modules).
- Attempted a more thorough include cleanup (starting with `<machine/interrupt.h>`/`<plat/machine/interrupt.h>` interplay and the x86 wrapper units). This exposed that the monolithic build also relied on `static` helpers such as `unmapPDPT` and the TLB invalidation routines being visible across `.c` files. Converting those to proper exports will require coordinated header updates (e.g., promoting `unmapPDPT` and friends into `arch/kernel/vspace.h`) plus forward declarations for node-state globals referenced from platform headers. Build remains blocked on these structural fixes after the exploratory changes were rolled back; next session should focus on promoting the shared helpers into headers before reintroducing the include adjustments.

## Open Questions / Risks
- Some static helpers may rely on `#undef`/`#define` sequences across file boundaries that only work in the aggregated translation unit. Wrappers that `#include` the original `.c` should inherit those macros, but we must verify no ordering dependencies remain.
- The generated artifacts (`kernel_all_pp_prune_wrapper_temp.c`, etc.) might assume the presence of `kernel_all.c` on disk. We must confirm which of these files still need to exist and either update the script to keep producing them or adjust downstream consumers.
- Keeping wrappers synchronized with upstream source paths requires diligence; consider adding a CI guard that checks the wrapper inventory against the `cpp_gen.sh` list to catch drift.

