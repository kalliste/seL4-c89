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
| `sysdeps/` | 1,582 | 0 | 1,582 | 0 | Completely new directory full of generated or third-party sources that must stay under `preconfigured/`.
| `preconfigured/` | 134 | 0 | 134 | 0 | Newly added helper tree; plan to keep under `preconfigured/` and audit contents in later commits.
| `src/` | 44 | 44 | 0 | 0 | Upstream sources modified in place; these need pristine copies restored.
| `include/` | 43 | 43 | 0 | 0 | Upstream headers modified in place; also need pristine copies restored.
| `pipdeps/` | 8 | 0 | 8 | 0 | New Python dependency lockfiles; candidates for `preconfigured/`.
| `libsel4/` | 4 | 4 | 0 | 0 | Library sources modified in place; will receive pristine copies later.
| `tools/` | 3 | 0 | 3 | 0 | Small set of helper scripts newly added for the preconfigured layout.
| `.gitignore` | 1 | 1 | 0 | 0 | Root metadata changed; revisit once pristine tree is in place.
| `.python-version` | 1 | 0 | 1 | 0 | New pyenv pin introduced for tooling.
| `PLAN.md` | 1 | 0 | 1 | 0 | Planning document introduced in this branch.
| `PRISTINE-AND-PRECONFIGURED-PLAN.md` | 1 | 0 | 1 | 0 | Current planning document (being updated in this step).
| `README.md` | 1 | 1 | 0 | 0 | Root README modified; needs reconciliation after directories are split.
| `preconfigured_build.log` | 1 | 0 | 1 | 0 | Generated build log; should live under `preconfigured/`.
| `replay_preconfigured_build.sh` | 1 | 0 | 1 | 0 | Helper script for replaying the build; belongs in `preconfigured/`.

### Next actions
- Use this checklist to drive the upcoming commits that introduce `pristine/` and move preconfigured assets out of the root tree.
- Update the "Total paths" counts and notes as directories are migrated or cleaned in subsequent steps.
