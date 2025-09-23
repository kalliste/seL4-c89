#!/usr/bin/env python3
"""Generate wrapper translation units for the kernel sources."""

from __future__ import annotations

import os
import pathlib
import re
import sys
from typing import Iterable, List

ROOT = pathlib.Path(__file__).resolve().parent.parent
REPLAY_SCRIPT = ROOT / "preconfigured" / "replay_preconfigured_build.sh"
WRAPPER_ROOT = ROOT / "preconfigured" / "X64_verified" / "src"
KERNEL_COPY_PATH = ROOT / "preconfigured" / "X64_verified" / "kernel_all_copy.c"


def extract_source_paths(script_text: str) -> List[pathlib.Path]:
    """Return the list of kernel source files in build order."""
    match = re.search(
        r"KERNEL_SOURCES=\(\s*(?P<body>.*?)\)\s*# Add common compiler flags",
        script_text,
        re.S,
    )
    if not match:
        raise RuntimeError("Unable to locate KERNEL_SOURCES definition")

    body = match.group("body")
    paths = re.findall(r'"([^"\s]+\.c)"', body)
    if not paths:
        raise RuntimeError("No source paths found in cpp_gen.sh invocation")
    return [pathlib.Path(p) for p in paths]


def build_wrapper_path(source_path: pathlib.Path) -> pathlib.Path:
    """Map a source path like src/foo/bar.c to its wrapper location."""
    if not source_path.parts or source_path.parts[0] != "src":
        raise ValueError(f"Expected path rooted at src/, got {source_path}")
    relative = pathlib.Path(*source_path.parts[1:])
    return WRAPPER_ROOT / relative.parent / f"{relative.stem}_wrapper.c"


def ensure_parent_dir(path: pathlib.Path) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)


def compute_include_path(wrapper_path: pathlib.Path, source_path: pathlib.Path) -> str:
    wrapper_dir = wrapper_path.parent
    include_rel = os.path.relpath(source_path, wrapper_dir)
    return include_rel.replace(os.sep, "/")


def render_wrapper(source_path: pathlib.Path, include_path: str) -> str:
    return "\n".join(
        [
            "// Generated wrapper to provide a standalone translation unit.",
            f"// Source: {source_path.as_posix()}",
            "",
            f"#include \"{include_path}\"",
            "",
        ]
    )


def render_kernel_copy(sources: List[pathlib.Path]) -> str:
    lines = [
        "// Generated aggregator used for kernel_all_copy.c.",
        "// Maintains compatibility with preconfigured build tooling.",
        "",
    ]
    for source in sources:
        include_rel = os.path.relpath(ROOT / source, KERNEL_COPY_PATH.parent)
        lines.append(f'#include "{include_rel.replace(os.sep, "/")}"')
    lines.append("")
    return "\n".join(lines)


def write_file_if_changed(path: pathlib.Path, content: str) -> bool:
    if path.exists():
        existing = path.read_text()
        if existing == content:
            return False
    path.write_text(content)
    return True


def main(argv: Iterable[str]) -> int:
    try:
        script_text = REPLAY_SCRIPT.read_text()
    except FileNotFoundError as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 1

    sources = extract_source_paths(script_text)

    changed_files = []
    for source in sources:
        absolute_source = ROOT / source
        if not absolute_source.exists():
            raise FileNotFoundError(f"Source file not found: {absolute_source}")
        wrapper_path = build_wrapper_path(source)
        ensure_parent_dir(wrapper_path)
        include_path = compute_include_path(wrapper_path, absolute_source)
        content = render_wrapper(source, include_path)
        if write_file_if_changed(wrapper_path, content):
            changed_files.append(wrapper_path)

    kernel_copy_content = render_kernel_copy(sources)
    if write_file_if_changed(KERNEL_COPY_PATH, kernel_copy_content):
        changed_files.append(KERNEL_COPY_PATH)

    if changed_files:
        print("Updated wrapper files:")
        for path in changed_files:
            print(f"  {path.relative_to(ROOT)}")
    else:
        print("Wrappers are up to date.")

    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
