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
