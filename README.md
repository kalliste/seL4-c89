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

### Development build for this fork

Our builds of the pristine/ folder always target the `X64_verified`
 configuration and use Ninja instead of GNU Make.  The
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

### Replaying the cached preconfigured build

The [`preconfigured/replay_preconfigured_build.sh`](./preconfigured/replay_preconfigured_build.sh)
script replays the captured commands for the checked-in
`preconfigured/X64_verified` build tree.  It requires the same host tools as
the Ninja workflow above (`cmake`, `ninja`, `gcc`, `xmllint`) together with
`python3` on `PATH`.

1. From the repository root, execute the replay script:

   ```sh
   ./preconfigured/replay_preconfigured_build.sh
   ```

   The script populates the cached build directory with all generated sources
   and object files before linking the final image.

2. Confirm that the kernel image was produced:

   ```sh
   ls preconfigured/X64_verified/kernel.elf
   ```

   A successful run leaves the ELF image at
   `preconfigured/X64_verified/kernel.elf`.

The replay script is idempotent; re-running it simply refreshes the cached
outputs with the same commands that produced the original log.

License
-------

See the file [LICENSE.md](./LICENSE.md).
