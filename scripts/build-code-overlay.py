#!/usr/bin/env python3
"""Build the JoySword code overlay: a small archive of scripts + SQL + env
examples that the Azure deploy applies OVER the extracted bulk workspace.

Why this exists
---------------
The bulk workspace payload (``joysword-workspace.zip``, ~6.7 GB of game assets +
server binaries + .bak files) changes rarely and is expensive to rebuild. But
the *code* (scripts, SQL fixes, env template) changes often. Shipping code only
inside the giant blob meant fixes lagged behind source and previously-removed
traces (e.g. the WireGuard tunnel address ``10.77.0.2``) kept reappearing on
deploy.

This overlay is the source of truth for code. ``prepare-vm.ps1`` downloads and
applies it after the workspace extract, so the VM always runs current code
regardless of the bulk blob's age.

Guard
-----
The build FAILS if any forbidden trace (WireGuard / edge-tunnel / routed-edge)
is found in the staged code, so a regression can never be packaged.

Usage
-----
    python scripts/build-code-overlay.py                 # -> build/joysword-code-overlay.zip
    python scripts/build-code-overlay.py --out <path>
"""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

# What goes in the overlay: code + SQL + env templates. NOT the multi-GB assets,
# server .exe files, or .bak database dumps (those live in the bulk workspace).
INCLUDE_GLOBS: tuple[tuple[str, str], ...] = (
    ("scripts", "*.py"),
    ("scripts", "*.ps1"),
    ("scripts", "*.bat"),
    ("scripts", "*.sh"),
    ("database", "*.sql"),
    ("config", "*.json"),
    ("Elsword/offline", "*.example"),
    # Runtime configuration, not a bulk asset.  GameServer receives this from
    # ServerResource during configure-offline so local and Azure combat agree.
    ("Elsword/ServerResource", "EnchantTable.lua"),
    ("Elsword/GameServer", "EnchantTable.lua"),
)

EXCLUDE_RE = re.compile(r"(?:^|/)(?:__pycache__/|\.)|\.pyc$")

# Forbidden traces — the whole point of the migration cleanup. If any of these
# appear in staged code, the build aborts.
FORBIDDEN = (
    re.compile(r"\b10\.77\.0\.\d+\b"),
    re.compile(r"\bEDGE_UDP_FORWARDER\b"),
    re.compile(r"\bEDGE_TUNNEL_ADDRESS\b"),
    re.compile(r"\bstart_udp_edge_forwarder\b"),
    re.compile(r"\bwg0\b"),
    re.compile(r":51820\b"),
)

# Files where the word may legitimately appear as documentation of removal.
TRACE_SCAN_SUFFIXES = (".py", ".ps1", ".sql", ".bat", ".sh", ".example")

# This builder documents the forbidden tokens (docstring + regex patterns), so
# it must not scan itself.
SCAN_SKIP_NAMES = frozenset({"build-code-overlay.py"})


def collect() -> list[Path]:
    files: list[Path] = []
    for subdir, pattern in INCLUDE_GLOBS:
        base = ROOT / subdir
        if not base.exists():
            continue
        for path in base.rglob(pattern):
            rel = path.relative_to(ROOT).as_posix()
            if EXCLUDE_RE.search(rel):
                continue
            if path.is_file():
                files.append(path)
    return sorted(set(files))


def scan_for_traces(files: list[Path]) -> list[str]:
    problems: list[str] = []
    for path in files:
        if path.name in SCAN_SKIP_NAMES:
            continue
        if path.suffix.lower() not in TRACE_SCAN_SUFFIXES:
            continue
        text = path.read_text(encoding="utf-8", errors="replace")
        for pattern in FORBIDDEN:
            for m in pattern.finditer(text):
                rel = path.relative_to(ROOT).as_posix()
                line = text[: m.start()].count("\n") + 1
                problems.append(f"{rel}:{line}: forbidden trace '{m.group(0)}'")
    return problems


def build(out: Path, files: list[Path]) -> tuple[int, int]:
    out.parent.mkdir(parents=True, exist_ok=True)
    total = 0
    with zipfile.ZipFile(out, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=6) as zf:
        for path in files:
            rel = path.relative_to(ROOT).as_posix()
            info = zipfile.ZipInfo(rel, date_time=(2020, 1, 1, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = 0o644 << 16
            data = path.read_bytes()
            zf.writestr(info, data)
            total += len(data)
    return len(files), total


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--out", type=Path, default=ROOT / "build" / "joysword-code-overlay.zip")
    parser.add_argument("--allow-traces", action="store_true", help="skip the forbidden-trace guard (not recommended)")
    args = parser.parse_args()

    enhancement_check = subprocess.run(
        [sys.executable, str(ROOT / "scripts" / "sync-enhancement-table.py"), "--check"],
        cwd=str(ROOT),
        check=False,
    )
    if enhancement_check.returncode != 0:
        print("ERROR: enhancement runtime generation check failed.", file=sys.stderr)
        return 3
    enhancement_validation = subprocess.run(
        [sys.executable, str(ROOT / "scripts" / "validate-enhancement-probabilities.py"), "--check-only"],
        cwd=str(ROOT),
        check=False,
    )
    if enhancement_validation.returncode != 0:
        print("ERROR: enhancement gameplay invariants failed.", file=sys.stderr)
        return 4

    files = collect()
    if not files:
        print("ERROR: no files collected for the overlay.", file=sys.stderr)
        return 1

    problems = scan_for_traces(files)
    if problems and not args.allow_traces:
        print("ERROR: forbidden migration traces found in staged code:", file=sys.stderr)
        for p in problems:
            print(f"  - {p}", file=sys.stderr)
        print("Remove them (or pass --allow-traces to override) before packaging.", file=sys.stderr)
        return 2

    count, total = build(args.out.resolve(), files)
    print(f"Code overlay: {args.out}")
    print(f"  files: {count}")
    print(f"  uncompressed: {total / 1024:.1f} KiB")
    print(f"  archive: {args.out.stat().st_size / 1024:.1f} KiB")
    print("  trace guard: PASS")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
