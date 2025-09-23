# Plan for Pristine and Preconfigured Layout

## Baseline comparison
- Compare the current branch against commit `1c50485c9a1b3c0595c143432664ab55e59e7991` to identify modified paths.  `git diff 1c50485c9a1b3c0595c143432664ab55e59e7991 --name-status` (and related summaries such as the per-directory counts we already ran) show changes touching top-level metadata files, the traditional `include/`, `libsel4/`, and `src/` trees, plus entirely new directories such as `pipdeps/`, `preconfigured/`, and `sysdeps/`.
- The diff is very large (for example `sysdeps/` alone contributes more than 1,500 paths), so any restructuring must be broken down into small, reviewable commits.

## Reorganization goals
- Restore an untouched copy of the original source tree so it lives under a new `pristine/` directory, and do not duplicate those sources anywhere else in the repository root.
- Keep all build products, generated headers, helper scripts, and other convenience changes in `preconfigured/`, with any files required to build the preconfigured view copied into that directory rather than referencing paths outside it.
- Ensure the repository root only contains shared metadata (licenses, top-level READMEs, planning documents, etc.) plus the two primary directories (`pristine/` and `preconfigured/`), keeping the root otherwise empty of standalone source files.
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
   - For files like `README.md`, `.gitignore`, `PLAN.md`, etc., create commits that bring the pristine versions into `pristine/` (or keep them at the repo root if they should remain shared) while ensuring the root version matches the upstream baseline.
6. **Corral preconfigured assets.**
   - Relocate or copy the generated/build-time artifacts that currently live outside `preconfigured/` into the `preconfigured/` directory structure. Break this work into topic commits (e.g. one for `pipdeps/`, another for `sysdeps/`, etc.) so each change stays reviewable.
   - As part of each commit, adjust scripts or references so they point to the new locations.
7. **Clean and reconcile duplicates.**
   - Once `pristine/` holds the clean sources, remove or revert modified originals that remain at the repo root so that the root mirrors the baseline commit.
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
| `preconfigured/` | 2,030 | 0 | 2,030 | 0 | Preconfigured build tree now also houses `pipdeps/`, `sysdeps/`, helper logs/scripts, relocated tooling, and the copied header tree. |
| `pristine/` | 900 | 0 | 900 | 0 | Mirrors the upstream configs, sources, non-DTS tools, and baseline root metadata including `.github` and `.reuse`. |
| `sysdeps/` | 0 | 0 | 0 | 0 | Relocated under `preconfigured/sysdeps/`; root copy removed. |
| `src/` | 44 | 44 | 0 | 0 | Root sources remain modified; compare against `pristine/src/` in later cleanup steps. |
| `include/` | 0 | 0 | 0 | 0 | Root headers now match the pristine snapshot; customized copies sit under `preconfigured/include/`. |
| `pipdeps/` | 0 | 0 | 0 | 0 | Relocated under `preconfigured/pipdeps/`; counted under the `preconfigured/` row. |
| `libsel4/` | 4 | 4 | 0 | 0 | Root library files remain modified; compare with `pristine/libsel4/` during reconciliation. |
| `tools/` | 0 | 0 | 0 | 0 | Root `tools/` now matches the pristine tree after relocating the virtual environment helper. |
| `.gitignore` | 1 | 1 | 0 | 0 | Root metadata changed; baseline version archived under `pristine/.gitignore`. |
| `.python-version` | 1 | 0 | 1 | 0 | New pyenv pin introduced for tooling. |
| `PLAN.md` | 1 | 0 | 1 | 0 | Planning document introduced in this branch. |
| `PRISTINE-AND-PRECONFIGURED-PLAN.md` | 1 | 0 | 1 | 0 | Current planning document (being updated in this step). |
| `README.md` | 1 | 1 | 0 | 0 | Root README modified; needs reconciliation after directories are split. |
| `preconfigured/preconfigured_build.log` | 1 | 0 | 1 | 0 | Generated build log now stored within `preconfigured/`. |
| `preconfigured/replay_preconfigured_build.sh` | 1 | 0 | 1 | 0 | Helper script now lives under `preconfigured/`; tooling updated to follow. |

## Step 3 Progress: Introduce the `pristine/` skeleton
- Created the new `pristine/` directory with a README explaining that it mirrors upstream commit `1c50485c9a1b3c0595c143432664ab55e59e7991`.
- Imported the baseline `CMakeLists.txt`, `config.cmake`, and the entire `configs/` tree into `pristine/` directly from the reference commit, giving us an untouched configuration snapshot for future comparisons.
- Counted 38 files now living under `pristine/`, and recorded the directory in the change summary table above to keep the progress tracker in sync.

### Next actions
- Use the new pristine trees to guide cleanup of the modified root `include/`, `libsel4/`, and `src/` directories in subsequent commits.
- Audit remaining root-level assets so that generated or convenience files ultimately reside under `preconfigured/`.
- Keep updating the table counts and notes as additional directories move into `pristine/` or `preconfigured/`.

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

### Next actions
- Continue auditing the repository root for generated artifacts or helper scripts that should join the `preconfigured/` tree as other directories are cleaned up.
- Keep cross-checking documentation whenever helpers move so instructions stay aligned with the new locations.
- Double-check that every script or build file under `preconfigured/` pulls dependencies from within that directory, adding copies of any remaining external inputs so the tree is fully self-contained.

## Step 7 Progress: Clean and reconcile duplicates
- Removed the lone `tools/venv.sh` script from the repository root so the remaining `tools/` tree matches the pristine snapshot.
- Updated the top-level README to reference the relocated helper, preventing confusion while the two-tree layout solidifies.
- Copied the existing `include/` hierarchy into `preconfigured/include/` and reset the root `include/` directory to the pristine
  commit so the customized headers now live exclusively under the preconfigured tree.

### Next actions
- Repeat the copy-and-restore workflow for the modified `libsel4/` and `src/` trees so every customized source gains a
  preconfigured counterpart and the root mirrors the pristine checkout.
- Audit other root-level documentation for assumptions about path locations as additional helpers migrate.
- Verify that the repository root remains limited to metadata plus the `pristine/` and `preconfigured/` directories once the source migrations land, removing any stray files that do not belong there.
