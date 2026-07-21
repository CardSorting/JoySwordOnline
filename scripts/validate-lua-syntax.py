#!/usr/bin/env python3
"""Validate syntax and integrity of all Lua configuration/script files in the Elsword tree."""

from __future__ import annotations

import argparse
import re
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"


def find_luac() -> str | None:
    return shutil.which("luac") or shutil.which("luac5.1") or shutil.which("luac51")


def check_lua_with_luac(luac_exe: str, file_path: Path) -> str | None:
    try:
        res = subprocess.run(
            [luac_exe, "-p", str(file_path)],
            capture_output=True,
            text=True,
            timeout=5,
        )
        if res.returncode != 0:
            return (res.stderr or res.stdout).strip()
    except Exception as exc:
        return str(exc)
    return None


def check_lua_fallback(file_path: Path) -> str | None:
    try:
        content = file_path.read_text(encoding="utf-8", errors="replace")
    except OSError as exc:
        return f"Cannot read file: {exc}"

    lines = content.splitlines()
    block_depth = 0
    in_multi_comment = False
    in_multi_string = False

    block_openers = re.compile(r"\b(function|if|do|while|for)\b")
    block_closers = re.compile(r"\b(end)\b")

    for i, raw_line in enumerate(lines, 1):
        line = raw_line.strip()
        if not line:
            continue

        if in_multi_comment:
            if "]]" in line:
                in_multi_comment = False
            continue

        if "--[[" in line and "]]" not in line:
            in_multi_comment = True
            continue

        if line.startswith("--"):
            continue

        # Strip line comments
        if "--" in line and not (line.startswith('"') or line.startswith("'")):
            line = line.split("--", 1)[0].strip()

        # Count block keywords outside string literals roughly
        clean_line = re.sub(r'"[^"]*"|\'[^\']*\'', "", line)
        opens = len(block_openers.findall(clean_line))
        closes = len(block_closers.findall(clean_line))
        block_depth += (opens - closes)

        # Check bracket symmetry on clean line
        parens = clean_line.count("(") - clean_line.count(")")
        braces = clean_line.count("{") - clean_line.count("}")
        brackets = clean_line.count("[") - clean_line.count("]")

        if parens < -5 or braces < -5 or brackets < -5:
            return f"Line {i}: Severe bracket imbalance detected"

    if block_depth < 0:
        return f"Block mismatch: found {abs(block_depth)} extra 'end' keywords"

    return None


def validate_all_lua(quiet: bool = False) -> tuple[int, list[str]]:
    luac_exe = find_luac()
    if luac_exe and not quiet:
        print(f"Using native Lua compiler for syntax verification: {luac_exe}")

    errors: list[str] = []
    scanned = 0

    target_dirs = (
        ELSWORD / "ClientScript",
        ELSWORD / "ServerResource",
        ELSWORD / "Config",
        ELSWORD / "CenterServer",
        ELSWORD / "ChannelServer",
        ELSWORD / "GlobalServer",
        ELSWORD / "LoginServer",
        ELSWORD / "GameServer",
    )

    for target in target_dirs:
        if not target.is_dir():
            continue
        for path in sorted(target.rglob("*.lua")):
            scanned += 1
            err = check_lua_with_luac(luac_exe, path) if luac_exe else check_lua_fallback(path)
            if err:
                rel = path.relative_to(ROOT)
                errors.append(f"{rel}: {err}")

    return scanned, errors


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--quiet", action="store_true", help="suppress non-error output")
    args = parser.parse_args()

    if not ELSWORD.exists():
        print(f"Elsword directory not found: {ELSWORD}", file=sys.stderr)
        return 2

    scanned, errors = validate_all_lua(args.quiet)

    if errors:
        print(f"FAILED: Found {len(errors)} Lua syntax/integrity error(s) out of {scanned} scanned files:", file=sys.stderr)
        for err in errors[:20]:
            print(f"  - {err}", file=sys.stderr)
        if len(errors) > 20:
            print(f"  ... and {len(errors) - 20} more", file=sys.stderr)
        return 1

    if not args.quiet:
        print(f"OK: All {scanned} Lua configuration and script files passed syntax verification.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
