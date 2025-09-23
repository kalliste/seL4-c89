#!/usr/bin/env bash
#
# Copyright 2025, Data61, CSIRO (ABN 41 687 119 230)
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Build the kernel in a preconfigured directory while logging the
# commands executed by ninja. The log is also saved to a file for
# later inspection.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

# Name of the preconfigured build directory (relative to the
# repository's preconfigured/ folder).
BUILD_SUBDIR="${1:-X64_verified}"

if [ "$#" -ge 2 ]; then
    LOG_FILE="$2"
    case "$LOG_FILE" in
        /*) ;;
        *) LOG_FILE="$REPO_ROOT/$LOG_FILE" ;;
    esac
else
    LOG_FILE="$REPO_ROOT/preconfigured/preconfigured_build.log"
fi

BUILD_DIR="$REPO_ROOT/preconfigured/${BUILD_SUBDIR}"

if [ ! -d "$BUILD_DIR" ]; then
    echo "Build directory '$BUILD_DIR' not found" >&2
    exit 1
fi

mkdir -p "$(dirname "$LOG_FILE")"

# Clean any existing build artifacts so that all commands are emitted.
ninja -C "$BUILD_DIR" -t clean >/dev/null 2>&1 || true

# Run the build with verbose output and save the log.
ninja -C "$BUILD_DIR" -v 2>&1 | tee "$LOG_FILE"
