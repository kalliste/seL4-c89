# Plan for Pristine and Preconfigured Layout

## Baseline comparison
- Compare the current branch against commit `1c50485c9a1b3c0595c143432664ab55e59e7991` to identify modified paths.  `git diff 1c50485c9a1b3c0595c143432664ab55e59e7991 --name-status` (and related summaries such as the per-directory counts we already ran) show changes touching top-level metadata files, the traditional `include/`, `libsel4/`, and `src/` trees, plus entirely new directories such as `pipdeps/`, `preconfigured/`, and `sysdeps/`.
- The diff is very large (for example `sysdeps/` alone contributes more than 1,500 paths), so any restructuring must be broken down into small, reviewable commits.

## Reorganization goals
- Restore an untouched copy of the original source tree so it lives under a new `pristine/` directory.
- Keep all build products, generated headers, helper scripts, and other convenience changes in `preconfigured/`.
- Ensure the repository root only contains shared metadata (licenses, top-level READMEs, planning documents, etc.) plus the two primary directories (`pristine/` and `preconfigured/`).
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
| `sysdeps/` | 1,582 | 0 | 1,582 | 0 | Completely new directory full of generated or third-party sources that must stay under `preconfigured/`. |
| `preconfigured/` | 134 | 0 | 134 | 0 | Newly added helper tree; plan to keep under `preconfigured/` and audit contents in later commits. |
| `pristine/` | 874 | 0 | 874 | 0 | Mirrors the upstream configs, sources, non-DTS tools, and baseline root metadata for easy comparison against local changes. |
| `src/` | 44 | 44 | 0 | 0 | Root sources remain modified; compare against `pristine/src/` in later cleanup steps. |
| `include/` | 43 | 43 | 0 | 0 | Root headers remain modified; pristine copies now live under `pristine/include/`. |
| `pipdeps/` | 8 | 0 | 8 | 0 | New Python dependency lockfiles; candidates for `preconfigured/`. |
| `libsel4/` | 4 | 4 | 0 | 0 | Root library files remain modified; compare with `pristine/libsel4/` during reconciliation. |
| `tools/` | 3 | 0 | 3 | 0 | Small set of helper scripts newly added for the preconfigured layout; upstream copy now mirrored in `pristine/tools/`. |
| `.gitignore` | 1 | 1 | 0 | 0 | Root metadata changed; baseline version archived under `pristine/.gitignore`. |
| `.python-version` | 1 | 0 | 1 | 0 | New pyenv pin introduced for tooling. |
| `PLAN.md` | 1 | 0 | 1 | 0 | Planning document introduced in this branch. |
| `PRISTINE-AND-PRECONFIGURED-PLAN.md` | 1 | 0 | 1 | 0 | Current planning document (being updated in this step). |
| `README.md` | 1 | 1 | 0 | 0 | Root README modified; needs reconciliation after directories are split. |
| `preconfigured_build.log` | 1 | 0 | 1 | 0 | Generated build log; should live under `preconfigured/`. |
| `replay_preconfigured_build.sh` | 1 | 0 | 1 | 0 | Helper script for replaying the build; belongs in `preconfigured/`. |

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

### Next actions
- Continue migrating additional root metadata (e.g. `.github/`, `.reuse/`, and release notes) into `pristine/`.
- Stage the remaining `tools/dts/` device tree sources in a follow-up commit once we can keep the diff within the size budget.
- Start moving preconfigured-only helpers into the `preconfigured/` tree once we have pristine references for each script.
