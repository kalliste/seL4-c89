# Pristine tree

This directory contains an untouched copy of the upstream seL4 sources taken
from commit 1c50485c9a1b3c0595c143432664ab55e59e7991. Files added here should
mirror the original layout without local modifications. The intent is to make
it easy to compare our preconfigured build assets against the upstream state.

The snapshot now covers the kernel sources (`include/`, `libsel4/`, and
`src/`), the supporting `configs/` tree, the non-`dts` tooling scripts, and
top-level metadata such as `.gitignore`, `.github/`, `.reuse/`, and
`README.md`. Additional upstream files can be restored here as needed so that
the root of the repository can eventually stay focused on preconfigured build
assets.
