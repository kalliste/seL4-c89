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

The pristine snapshot retains the upstream `.python-version` file at
`pristine/.python-version` for use with
[pyenv](https://github.com/pyenv/pyenv).  To set up the recommended Python
version locally without writing new files into the repository root:

```
pyenv install $(cat pristine/.python-version)  # only required once
pyenv shell $(cat pristine/.python-version)
```

After selecting (or temporarily activating) the interpreter, create the
virtual environment and install
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

Our builds always target the `X64_verified` configuration and use Ninja
instead of GNU Make for both the pristine and preconfigured trees.  The
procedure below has been verified to produce `kernel.elf` from the
pristine sources on a 64‑bit host.

1. Install the build tools and supporting utilities so that `cmake`,
   `ninja`, `gcc`, and `xmllint` (from the `libxml2-utils` package) are
   available on `PATH`.
2. Install the Python dependencies used by the seL4 build system.  The
   [`./preconfigured/tools/venv.sh`](./preconfigured/tools/venv.sh)
   helper can create a virtual environment, or the modules can be
   installed directly, e.g.

   ```sh
   pip install --user pyyaml jinja2 ply lxml
   ```

3. Configure the pristine tree with the upstream preset and generate a
   Ninja build directory:

   ```sh
   cmake -G Ninja -S pristine -B build/pristine-X64_verified \
     -C pristine/configs/X64_verified.cmake
   ```

4. Build the kernel image with Ninja:

   ```sh
   ninja -C build/pristine-X64_verified
   ```

   A successful build leaves the ELF image in
   `build/pristine-X64_verified/kernel.elf`.

To rebuild the cached preconfigured tree with the same settings, invoke

```sh
ninja -C preconfigured/X64_verified
```

The [`preconfigured/replay_preconfigured_build.sh`](./preconfigured/replay_preconfigured_build.sh)
script is also available for replaying the captured build commands when
needed.

License
-------

See the file [LICENSE.md](./LICENSE.md).
