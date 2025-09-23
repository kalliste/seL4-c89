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

# Name of the preconfigured build directory (relative to the
# repository's preconfigured/ folder).
BUILD_SUBDIR="${1:-X64_verified}"
# Output log file (relative to repository root).
LOG_FILE="${2:-preconfigured/preconfigured_build.log}"

BUILD_DIR="preconfigured/${BUILD_SUBDIR}"

if [ ! -d "$BUILD_DIR" ]; then
    echo "Build directory '$BUILD_DIR' not found" >&2
    exit 1
fi

# Clean any existing build artifacts so that all commands are emitted.
ninja -C "$BUILD_DIR" -t clean >/dev/null 2>&1 || true

# Run the build with verbose output and save the log.
ninja -C "$BUILD_DIR" -v 2>&1 | tee "$LOG_FILE"
