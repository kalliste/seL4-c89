<!--
     Copyright 2014, General Dynamics C4 Systems

     SPDX-License-Identifier: GPL-2.0-only
-->

The seL4 microkernel
====================

Repository Overview
-------------------

- `pristine/`: Untouched snapshot of commit `1c50485c9a1b3c0595c143432664ab55e59e7991`, including the
  original `configs/`, kernel sources, headers, libraries, tooling, and the LaTeX manual sources.
- `preconfigured/`: Self-contained tree with the generated headers, libraries, kernel sources, and
  build metadata required to replay the cached `X64_verified` configuration.
- Repository root: Planning documents, changelogs, and other metadata that apply to both trees.

Python Environment
------------------

The seL4 build uses several Python modules. A helper script is provided under
`preconfigured/tools/venv.sh` to create a virtual environment and install
these dependencies.

The repository includes a `.python-version` file for use with
[pyenv](https://github.com/pyenv/pyenv).  To set up the recommended Python
version locally:

```
pyenv install $(cat .python-version)  # only required once
pyenv local $(cat .python-version)
```

After selecting the interpreter, create the virtual environment and install
the required modules:

```
./preconfigured/tools/venv.sh
```

Invoking the script with a command runs that command inside the environment.
For example:

```
./preconfigured/tools/venv.sh python --version
```

Build Instructions
------------------

See the seL4 website for [build instructions][6].

### Development build for this fork

For work on this fork we configure and build the kernel with the
`pristine/configs/X64_verified.cmake` preset.  The following steps have been
tested to produce a `kernel.elf` on a 64‑bit host:

1. Ensure the `file` and `xmllint` utilities are available in `PATH`.
2. Create a virtual environment and install the required Python modules:

   ```sh
   pip install pyyaml jinja2 ply lxml
   ```

3. Configure and build the kernel from the pristine sources:

   ```sh
   cmake -B build -S pristine -C pristine/configs/X64_verified.cmake
   cmake --build build
   ```

   The repository also includes `preconfigured/replay_preconfigured_build.sh` for reproducing the
   cached `X64_verified` build without invoking CMake manually.

This produces the kernel image `build/kernel.elf` when the build
completes successfully.

License
-------

See the file [LICENSE.md](./LICENSE.md).
