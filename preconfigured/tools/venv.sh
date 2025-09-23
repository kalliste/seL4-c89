#!/usr/bin/env bash
# SPDX-License-Identifier: BSD-2-Clause
#
# Helper script for setting up and using a Python virtual environment for seL4.
#
# When run, this script creates a virtual environment in the repository root at
# `.venv` if one does not already exist, installs the Python modules required to
# build seL4, and then executes the given command inside the environment. If no
# command is supplied, an interactive shell is started.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PYTHON_DEPS_DIR="$REPO_ROOT/tools/python-deps"
VENV_DIR="$REPO_ROOT/.venv"

if [ ! -d "$PYTHON_DEPS_DIR" ]; then
    echo "error: expected Python dependency helper at '$PYTHON_DEPS_DIR'" >&2
    exit 1
fi

if [ ! -f "$VENV_DIR/bin/activate" ]; then
    python3 -m venv "$VENV_DIR"
    "$VENV_DIR/bin/pip" install --upgrade pip
    "$VENV_DIR/bin/pip" install -e "$PYTHON_DEPS_DIR"
fi

# shellcheck disable=SC1091
source "$VENV_DIR/bin/activate"

if [ "$#" -gt 0 ]; then
    exec "$@"
else
    exec "$SHELL"
fi
