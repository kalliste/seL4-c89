# Plan for Pristine and Preconfigured Layout

## Baseline comparison
- Compare the current branch against commit `1c50485c9a1b3c0595c143432664ab55e59e7991` to identify modified paths.  `git diff 1c50485c9a1b3c0595c143432664ab55e59e7991 --name-status` (and related summaries such as the per-directory counts we already ran) show changes touching top-level metadata files, the traditional `include/`, `libsel4/`, and `src/` trees, plus entirely new directories such as `pipdeps/`, `preconfigured/`, and `sysdeps/`.
- The diff is very large (for example `sysdeps/` alone contributes more than 1,500 paths), so any restructuring must be broken down into small, reviewable commits.

## Reorganization goals
- Restore an untouched copy of the original source tree so it lives under a new `pristine/` directory, and do not duplicate those sources anywhere else in the repository root.
- Keep all build products, generated headers, helper scripts, and other convenience changes in `preconfigured/`, with any files required to build the preconfigured view copied into that directory rather than referencing paths outside it.
- Ensure the repository root remains mostly empty—containing only shared metadata (licenses, top-level READMEs, planning documents, `.gitignore`, etc.) plus the two primary directories (`pristine/` and `preconfigured/`). No standalone source directories should stay duplicated at the root once the layout is complete.
- Make every adjustment in commits that are small enough for ChatGPT Codex limits (aim for well under ~200 files per commit and avoid huge blobs whenever possible).

## Step-by-step plan (commit-sized tasks)
1. **Document the plan.** Add this planning document (current commit) so future changes have context.
2. **Inventory the diffs in manageable chunks.**
   - Use `git diff ... --name-status` grouped by top-level directory to create a checklist of which original paths were modified.
   - Prepare a spreadsheet or markdown table (checked into the repo if helpful) that tracks which directories have been restored/migrated. Keep this table updated in subsequent small commits.
3. **Introduce the `pristine/` skeleton.**
   - Create the `pristine/` directory with README notes describing its purpose.
   - Copy over a minimal subset of the original tree (e.g. top-level build configuration such as `CMakeLists.txt`, `config.cmake`, and the `configs/` directory) directly from commit `1c50485c...` using `git show`/`git checkout -- <path>` into `pristine/`.
   - Commit this small subset separately to keep the diff manageable.
4. **Populate `pristine/` with source and headers in phases.**
   - Add the `include/` tree from the baseline commit under `pristine/include/` (one commit).
   - Add the `libsel4/` and `src/` trees in their own commits.
   - If other original subdirectories (e.g. `manual/`, `tools/`) are required, bring them in with dedicated commits so no single change set becomes excessive.
5. **Restore any original top-level files.**
   - For files like `README.md`, `.gitignore`, `KERNEL-ALL-PLAN.md`, etc., create commits that bring the pristine versions into `pristine/` (or keep them at the repo root if they should remain shared) while ensuring the root version matches the upstream baseline and stays minimal.
6. **Corral preconfigured assets.**
   - Relocate or copy the generated/build-time artifacts that currently live outside `preconfigured/` into the `preconfigured/` directory structure. Break this work into topic commits (e.g. one for `pipdeps/`, another for `sysdeps/`, etc.) so each change stays reviewable.
   - As part of each commit, adjust scripts or references so they point to the new locations.
7. **Clean and reconcile duplicates.**
   - Once `pristine/` holds the clean sources, remove or revert modified originals that remain at the repo root so that the root shrinks back to the minimal metadata shell while `pristine/` serves as the authoritative mirror of the baseline commit.
   - Ensure `preconfigured/` contains the customized copies needed for the simplified build, and update documentation to clarify which tree to use.
8. **Final consistency passes.**
   - Run formatting or linting tools (if any) and update CI/build scripts to reference the new directories.
   - Add final documentation (e.g. root README updates) explaining the two-directory structure.
   - Confirm `git status` is clean and the repository builds in both modes before finishing.

Each bullet above is intended to correspond to a single reasonable commit (or, where explicitly split, multiple small commits) so that none of the steps exceeds the size constraints imposed by the tooling.

## Step 2 Progress: Diff Inventory

### Approach
- Ran `git diff 1c50485c9a1b3c0595c143432664ab55e59e7991 --name-status` and aggregated the results by the top-level path component.
- Counted modification types (added vs. modified) to identify which areas are brand new versus edits to upstream files.
- Captured the summary below to use as the working checklist; this table will be updated as directories are migrated or restored in later steps.

### Top-level change summary
| Path / File | Total paths | Modified | Added | Deleted | Notes |
| --- | ---: | ---: | ---: | ---: | --- |
| `preconfigured/` | 2,333 | 0 | 2,333 | 0 | Preconfigured build tree now also houses `pipdeps/`, `sysdeps/`, helper logs/scripts, relocated tooling, the copied header tree, the relocated `libsel4/` sources used by the preconfigured view, and the expanded `src/` mirror with all customized kernel sources (ARM, RISC-V, and x86 variants). Copied the generator helpers and the supporting `tools/hardware/` package into `preconfigured/tools/` so cached builds no longer depend on the root `tools/` directory. |
| `pristine/` | 932 | 0 | 932 | 0 | Mirrors the upstream configs, sources, non-DTS tools, baseline root metadata including `.github` and `.reuse`, the LaTeX manual, and the relocated toolchain helper files. |
| `sysdeps/` | 0 | 0 | 0 | 0 | Relocated under `preconfigured/sysdeps/`; root copy removed. |
| `src/` | 312 | 0 | 0 | 312 | Removed the entire kernel source tree from the repository root after relocating every architecture, driver, fastpath, object, and platform directory into `pristine/src/` and `preconfigured/src/`, leaving no kernel sources at the top level. |
| `include/` | 308 | 0 | 0 | 308 | Root headers removed from the repository root after confirming the baseline tree lives under `pristine/include/` and the tailored copies reside in `preconfigured/include/`. |
| `pipdeps/` | 0 | 0 | 0 | 0 | Relocated under `preconfigured/pipdeps/`; counted under the `preconfigured/` row. |
| `libsel4/` | 197 | 0 | 0 | 197 | Root library removed from the repository root; the untouched headers and generators live in `pristine/libsel4/` while the tailored copies remain under `preconfigured/libsel4/`. |
| `configs/` | 0 | 0 | 0 | 0 | Root presets removed; the untouched copies now live exclusively under `pristine/configs/`. |
| `manual/` | 0 | 0 | 0 | 0 | Root manual removed after relocating the sources into `pristine/manual/`. |
| `tools/` | 0 | 0 | 0 | 0 | Root `tools/` now matches the pristine tree after relocating the virtual environment helper. |
| `.gitignore` | 1 | 1 | 0 | 0 | Root metadata changed; baseline version archived under `pristine/.gitignore`. |
| `.python-version` | 1 | 0 | 1 | 0 | New pyenv pin introduced for tooling. |
| `KERNEL-ALL-PLAN.md` | 1 | 0 | 1 | 0 | Planning document introduced in this branch. |
| `PRISTINE-AND-PRECONFIGURED-PLAN.md` | 1 | 0 | 1 | 0 | Current planning document (being updated in this step). |
| `README.md` | 1 | 1 | 0 | 0 | Root README modified; needs reconciliation after directories are split. |
| `preconfigured/preconfigured_build.log` | 1 | 0 | 1 | 0 | Generated build log now stored within `preconfigured/`. |
| `preconfigured/replay_preconfigured_build.sh` | 1 | 0 | 1 | 0 | Helper script now lives under `preconfigured/`; tooling updated to follow. |

## Step 3 Progress: Introduce the `pristine/` skeleton
- Created the new `pristine/` directory with a README explaining that it mirrors upstream commit `1c50485c9a1b3c0595c143432664ab55e59e7991`.
- Imported the baseline `CMakeLists.txt`, `config.cmake`, and the entire `configs/` tree into `pristine/` directly from the reference commit, giving us an untouched configuration snapshot for future comparisons.
- Counted 38 files now living under `pristine/`, and recorded the directory in the change summary table above to keep the progress tracker in sync.

### Immediate follow-ups after introducing the `pristine/` skeleton
- Use the new pristine trees to guide cleanup of the modified root `include/`, `libsel4/`, and `src/` directories in subsequent commits.
- Audit remaining root-level assets so that generated or convenience files ultimately reside under `preconfigured/`.
- Keep updating the table counts and notes as additional directories move into `pristine/` or `preconfigured/`.
- Update documentation to reiterate that the root tree will stay mostly empty and that pristine sources live exclusively inside `pristine/`.

## Step 4 Progress: Restore source and headers
- Added the upstream `include/` hierarchy (308 files) to `pristine/include/`, preserving the baseline headers alongside the preconfigured copies.
- Imported the upstream `libsel4/` tree (197 files) into `pristine/libsel4/` so that both the public interfaces and generator tools are available in their untouched form.
- Brought the upstream kernel `src/` tree (312 files) into `pristine/src/`, completing the snapshot of core sources required for future comparisons.
- Retrieved the upstream `tools/` scripts (42 files) excluding the large `dts/` snapshots into `pristine/tools/` so every helper has a pristine counterpart next to the customized root versions.
- Updated the progress table to track the growing pristine snapshot (now 874 files) and noted that the root `include/`, `libsel4/`, and `src/` trees still need cleanup in later steps.


## Step 5 Progress: Restore top-level files
- Copied the upstream `.cmake-format.yaml`, `.gitignore`, and `README.md` into `pristine/` so that baseline metadata sits alongside the clean source snapshot.
- Renamed the local guidance document to `pristine/README.pristine.md` and expanded it to describe the growing coverage of the pristine snapshot.
- Updated the change summary counts and notes to record the new pristine totals and cross-links.
- Captured the upstream `.github` workflows and `.reuse/` licensing metadata inside `pristine/` so future root cleanup can defer to those pristine copies.

### Next actions
- Continue migrating additional root metadata (e.g. release notes and manual updates) into `pristine/`.
- Stage the remaining `tools/dts/` device tree sources in a follow-up commit once we can keep the diff within the size budget.
- Start moving preconfigured-only helpers into the `preconfigured/` tree once we have pristine references for each script.

## Step 6 Progress: Corral preconfigured assets
- Moved the generated `pipdeps/` and `sysdeps/` hierarchies underneath `preconfigured/` so dependency snapshots stay out of the repository root.
- Relocated `preconfigured_build.log` and the replay helper script into `preconfigured/`, updating tooling and documentation to reference their new homes.
- Refreshed the progress table so the consolidated counts in `preconfigured/` reflect the relocated assets.
- Introduced a `preconfigured/tools/` directory that now hosts the wrapper generator and build logging helpers, clearing the preconfigured-specific scripts out of the root `tools/` tree.
- Hardened the logging helper so it resolves the repository root automatically, allowing it to run from any working directory without manual path juggling.
- Relocated the virtual-environment bootstrap script into `preconfigured/tools/` and taught it how to find the repository root and `tools/python-deps` helper after the move.
- Copied the customized `libsel4/` hierarchy into `preconfigured/libsel4/`, bringing 197 tailored library files and generators alongside the rest of the preconfigured snapshot.
- Updated `preconfigured/replay_preconfigured_build.sh` so it now consumes headers from `preconfigured/include/` and `preconfigured/libsel4/`, keeping the helper self-contained after the root directories are restored.
- Seeded a new `preconfigured/src/` subtree with the 77 kernel C sources and four x86 assembly files that the replay helper compiles so the preconfigured build no longer depends on the root `src/` tree.
- Updated every generated wrapper translation unit and the replay script to include from `preconfigured/src/`, aligning the helper inputs with the new location.
- Pulled the remaining ARM, RISC-V, and platform kernel sources into `preconfigured/src/` alongside the existing x86 files so every customized translation unit now lives entirely within the preconfigured tree.
- Rewrote the captured `preconfigured/X64_verified` Ninja, cache, and generated headers so their include paths resolve through `preconfigured/include`, `preconfigured/libsel4`, and `preconfigured/src`, eliminating hard-coded dependencies on the restored root tree.
- Mirrored the bitfield, invocation, syscall, and configuration generator helpers—together with the `tools/hardware/` support modules—into `preconfigured/tools/`, and redirected cached tool references to those copies to keep the preconfigured build fully self-contained.

### Next actions
- Continue auditing the repository root for generated artifacts or helper scripts that should join the `preconfigured/` tree as other directories are cleaned up.
- Keep cross-checking documentation whenever helpers move so instructions stay aligned with the new locations.
- Double-check that every script or build file under `preconfigured/` pulls dependencies from within that directory, adding copies of any remaining external inputs so the tree is fully self-contained.
- Spot-check other cached build directories as they appear to ensure their recorded paths also resolve through the relocated `preconfigured/` assets.

## Step 7 Progress: Clean and reconcile duplicates
- Removed the lone `tools/venv.sh` script from the repository root so the remaining `tools/` tree matches the pristine snapshot.
- Updated the top-level README to reference the relocated helper, preventing confusion while the two-tree layout solidifies.
- Copied the existing `include/` hierarchy into `preconfigured/include/` and reset the root `include/` directory to the pristine commit so the customized headers now live exclusively under the preconfigured tree.
- Reset the root `libsel4/` directory to the pristine commit, leaving the tailored library exclusively under `preconfigured/libsel4/` for the preconfigured build.
- Copied the customized x86 kernel sources into `preconfigured/src/` and reset their root counterparts to the pristine commit, trimming the outstanding root `src/` delta from 44 paths to 14 that cover other architectures and platforms.
- Migrated the remaining ARM, RISC-V, timer, and platform-specific kernel sources into `preconfigured/src/` and restored their root copies from the pristine snapshot so the entire kernel tree at the repository root now matches upstream.
- Confirmed that the recorded `preconfigured/X64_verified` build metadata now relies solely on the relocated `preconfigured/` trees, preventing the root snapshot from creeping back into scripted rebuilds.
- Relocated the LaTeX manual into `pristine/manual/` and removed the duplicate tree from the repository root so the pristine snapshot remains the single source of truth.
- Removed the root `configs/` directory and the top-level `CMakeLists.txt`/`config.cmake` pair after confirming the untouched copies already live under `pristine/`, then moved the remaining toolchain helpers (`FindseL4.cmake`, `gcc.cmake`, `llvm.cmake`, `gdb-macros`, and `VERSION`) into `pristine/` to clear them from the root.
- Reworked the top-level README so the layout overview, manual links, and build instructions reference the new `pristine/` and `preconfigured/` locations instead of the retired root trees.
- Removed the root `include/` directory now that the untouched headers live under `pristine/include/` and the customized copies live under `preconfigured/include/`, further shrinking the repository root toward the planned metadata-only shell.
- Deleted the root `libsel4/` directory after confirming every pristine header and generator now resides under `pristine/libsel4/` and the customized build continues to consume the copies in `preconfigured/libsel4/`.
- Excised the common kernel sources (`src/api`, `src/kernel`, `src/machine`, `src/model`, `src/smp`), supporting benchmarks/configuration helpers, and the ARM and RISC-V architecture trees from the repository root after verifying their pristine and preconfigured counterparts are in place, leaving only the x86, driver, fastpath, object, and platform directories to retire in follow-up commits.
- Deleted the remaining root `src/arch/x86`, `src/drivers`, `src/fastpath`, `src/object`, and `src/plat` directories after confirming their pristine and preconfigured mirrors were complete, clearing the last kernel sources from the repository root while keeping the working diff (~32k lines) within the 35,000-line budget.

### Next actions
- Audit other root-level documentation for assumptions about path locations as additional helpers migrate.
- Verify that the repository root now holds only essential metadata alongside `pristine/` and `preconfigured/`, identifying any lingering helper directories (particularly under `tools/`) that still need relocation.
- Call out in the top-level README and related docs that all pristine sources live exclusively under `pristine/` so contributors do not expect duplicates in the root tree.
- Audit any remaining recorded build artifacts (for example, additional architecture snapshots) to confirm they also reference the localized `preconfigured/` copies before final cleanup.
- Plan the relocation or archival of bulky helper trees such as `tools/dts/`
