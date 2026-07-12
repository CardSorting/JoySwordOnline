#!/usr/bin/env python3
"""Normalize KOG UTF-8 recognition headers for server Lua loaders."""

from __future__ import annotations

import argparse
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"

# StatTable uses this exact first line and loads successfully in GameServer.exe.
CANONICAL_HEADER = "-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요"
UTF8_BOM = b"\xef\xbb\xbf"
LARGE_FILE_BYTES = 5_000_000
HEADER_PATTERN = re.compile(
    r"^--\s*lua header\.\s*UTF-8\s*인코딩\s*인식을 위해\s*이\s*줄은\s*지우지\s*마세요\.?\s*$",
    re.MULTILINE,
)

DEFAULT_TARGETS = (
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "ServerResource" / "GameSysValTable.lua",
    ELSWORD / "Resources" / "GameSysValTable.lua",
    ELSWORD / "ServerResource" / "RandomItemMapping.lua",
    ELSWORD / "ServerResource" / "ClassChangeTable.lua",
    ELSWORD / "ServerResource" / "ClassChangeSkill.lua",
    ELSWORD / "ServerResource" / "ClassChangeQuest.lua",
    ELSWORD / "ServerResource" / "ClassChangeMemo.lua",
    ELSWORD / "ServerResource" / "ClassChangeItem.lua",
    ELSWORD / "ServerResource" / "CashItemPrice.lua",
)


def fix_header(text: str) -> str:
    if HEADER_PATTERN.search(text):
        return HEADER_PATTERN.sub(CANONICAL_HEADER, text, count=1)
    if text.startswith("\ufeff"):
        text = text.lstrip("\ufeff")
    return f"{CANONICAL_HEADER}\n\n{text.lstrip()}"


def ensure_bom_bytes(data: bytes) -> bytes:
    return data if data.startswith(UTF8_BOM) else UTF8_BOM + data


def write_lua_bytes(path: Path, data: bytes) -> None:
    path.write_bytes(ensure_bom_bytes(data))


def process_file(path: Path, *, apply: bool) -> bool:
    if not path.exists():
        return False
    raw = path.read_bytes()
    had_bom = raw.startswith(UTF8_BOM)
    original = raw.decode("utf-8-sig" if had_bom else "utf-8", errors="replace")
    updated = fix_header(original)
    if updated == original and had_bom:
        return False
    if not apply:
        return updated != original or not had_bom
    if path.stat().st_size > LARGE_FILE_BYTES:
        encoded = updated.encode("utf-8")
        write_lua_bytes(path, encoded)
        return True
    normalized = updated.replace("\r\n", "\n").replace("\r", "\n")
    text = normalized.replace("\n", "\r\n")
    write_lua_bytes(path, text.encode("utf-8"))
    return True


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apply", action="store_true", help="Write header fixes")
    parser.add_argument("paths", nargs="*", help="Optional extra files to fix")
    args = parser.parse_args()

    targets = list(DEFAULT_TARGETS)
    for raw in args.paths:
        targets.append(Path(raw))

    changed = 0
    seen: set[Path] = set()
    for path in targets:
        resolved = path.resolve()
        if resolved in seen:
            continue
        seen.add(resolved)
        if process_file(resolved, apply=args.apply):
            changed += 1
            print(f"{'fixed' if args.apply else 'needs fix'}: {resolved.relative_to(ROOT)}")

    if not args.apply and changed:
        print(f"{changed} file(s) need header fixes. Re-run with --apply.")
    elif args.apply:
        print(f"Updated {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
