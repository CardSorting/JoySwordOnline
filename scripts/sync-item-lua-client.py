#!/usr/bin/env python3
"""Sync missing Item.lua templets from Resources into ClientScript/Major/Item.lua."""

from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
SOURCE = ELSWORD / "Resources" / "Item.lua"
TARGET = ELSWORD / "ClientScript" / "Major" / "Item.lua"
PATCH_KOM = ROOT / "scripts" / "patch-client-kom.py"

BLOCK_START = re.compile(r"g_pItemManager:AddItemTemplet")
ITEM_ID_PATTERN = re.compile(r"m_ItemID\s*=\s*(\d+)")
RESTORE_MARKERS = (
    "-- RESTORE_ELESIS_COSTUMES:",
    "-- RESTORE_CASHSHOP_COSTUMES:",
)


def read_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def write_text(path: Path, text: str) -> None:
    path.write_text(text, encoding="utf-8", newline="\n")


def parse_item_blocks(text: str) -> dict[int, str]:
    blocks: dict[int, str] = {}
    starts = [match.start() for match in BLOCK_START.finditer(text)]
    for index, start in enumerate(starts):
        end = starts[index + 1] if index + 1 < len(starts) else len(text)
        chunk = text[start:end].rstrip()
        match = ITEM_ID_PATTERN.search(chunk)
        if match:
            blocks[int(match.group(1))] = chunk
    return blocks


def collect_restore_sections(text: str) -> list[tuple[str, list[str]]]:
    sections: list[tuple[str, list[str]]] = []
    for marker in RESTORE_MARKERS:
        if marker not in text:
            continue
        tail = text[text.index(marker) :]
        next_marker_index = len(tail)
        for other in RESTORE_MARKERS:
            if other == marker:
                continue
            if other in tail:
                next_marker_index = min(next_marker_index, tail.index(other))
        section = tail[:next_marker_index].rstrip()
        blocks = list(parse_item_blocks(section).values())
        if blocks:
            sections.append((marker, blocks))
    return sections


def append_missing_blocks(text: str, sections: list[tuple[str, list[str]]]) -> tuple[str, int]:
    existing = set(parse_item_blocks(text))
    appended = 0
    output = text.rstrip()
    for marker, blocks in sections:
        missing_blocks: list[str] = []
        for block in blocks:
            item_id = int(ITEM_ID_PATTERN.search(block).group(1))
            if item_id in existing:
                continue
            missing_blocks.append(block)
            existing.add(item_id)
        if not missing_blocks:
            continue
        if marker not in output:
            output += f"\n\n{marker}\n"
        else:
            output += "\n"
        output += "\n\n".join(missing_blocks)
        appended += len(missing_blocks)
    if appended:
        output += "\n"
    return output, appended


def sync_client_item_lua(repack_kom: bool = False) -> int:
    if not SOURCE.exists():
        raise SystemExit(f"Missing source Item.lua: {SOURCE}")
    if not TARGET.exists():
        raise SystemExit(f"Missing client Item.lua: {TARGET}")

    source_text = read_text(SOURCE)
    target_text = read_text(TARGET)
    sections = collect_restore_sections(source_text)
    if not sections:
        missing_ids = set(parse_item_blocks(source_text)) - set(parse_item_blocks(target_text))
        if not missing_ids:
            print("ClientScript Item.lua already contains all restore costume templets.")
            return 0
        raise SystemExit(
            "Resources Item.lua has extra items but no restore markers; "
            "run restore-cashshop-costumes.py instead."
        )

    updated, appended = append_missing_blocks(target_text, sections)
    if appended == 0:
        print("ClientScript Item.lua already contains all restore costume templets.")
        return 0

    write_text(TARGET, updated)
    print(f"Appended {appended} missing costume item templets to ClientScript/Major/Item.lua")

    if repack_kom and PATCH_KOM.exists():
        print("Repacking data036.kom with updated Item.lua...")
        result = subprocess.run(
            [sys.executable, str(PATCH_KOM), "--elesis-create-ui"],
            cwd=ROOT,
        )
        if result.returncode != 0:
            return result.returncode
    elif repack_kom:
        print(f"warning: missing {PATCH_KOM}; skipped client KOM repack")
    else:
        print("Run: python scripts/patch-client-kom.py --elesis-create-ui")

    return 0


def main() -> int:
    import argparse

    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--repack-kom",
        action="store_true",
        help="Repack data036.kom after syncing Item.lua",
    )
    args = parser.parse_args()
    return sync_client_item_lua(repack_kom=args.repack_kom)


if __name__ == "__main__":
    raise SystemExit(main())
