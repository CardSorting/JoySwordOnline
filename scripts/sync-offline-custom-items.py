#!/usr/bin/env python3
"""Sync JoySword offline customizations into Item.lua and server level caps."""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ITEM_LUA = ROOT / "Elsword" / "ClientScript" / "Major" / "Item.lua"
BEGIN = "-- BEGIN JoySword Offline Custom Items"
END = "-- END JoySword Offline Custom Items"
MAX_LEVEL = 80
SCROLL_ITEM_ID = 160267
SCROLL_NAME = "Max Level Scroll"
SCROLL_DESCRIPTION = (
    r"A scroll infused with condensed experience.\n"
    r"Instantly raises your character to the maximum level.\n\n"
    r"(Right-click to use)"
)


def read_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def write_text(path: Path, text: str) -> None:
    path.write_text(text, encoding="utf-8", newline="\r\n")


def remove_custom_block(text: str) -> str:
    if BEGIN not in text or END not in text:
        return text
    start = text.index(BEGIN)
    end = text.index(END) + len(END)
    return text[:start].rstrip() + "\n" + text[end:].lstrip("\n")


def patch_max_level_scroll(text: str) -> tuple[str, bool]:
    match = re.search(rf"m_ItemID\s*=\s*{SCROLL_ITEM_ID}\b", text)
    if not match:
        return text, False
    start = match.start()
    shop = text.find("m_ShopImage", start)
    if shop < 0:
        return text, False
    block = text[start:shop]
    new_block = re.sub(
        r"m_Description\s*=\s*\"[\s\S]*?\",\s*",
        (
            'm_Description = "A scroll infused with condensed experience.\\n'
            'Instantly raises your character to the maximum level.\\n\\n'
            '(Right-click to use)",\n\n\n'
        ),
        block,
        count=1,
    )
    new_block = re.sub(
        r'm_Name\s*=\s*"[^"]*"\s*,',
        f'm_Name = "{SCROLL_NAME}",',
        new_block,
        count=1,
    )
    patched = text[:start] + new_block + text[shop:]
    already_done = f'm_Name = "{SCROLL_NAME}"' in block
    return patched, changed or already_done


def patch_max_level(text: str) -> str:
    return text.replace(
        "GameSysVal:AddLimitsMaxLevel( 67 )",
        f"GameSysVal:AddLimitsMaxLevel( {MAX_LEVEL} )",
    )


def sync_item_lua() -> tuple[bool, bool]:
    item_text = read_text(ITEM_LUA)
    cleaned = remove_custom_block(item_text)
    patched, scroll_ok = patch_max_level_scroll(cleaned)
    if not scroll_ok:
        raise SystemExit(
            f"Could not locate item {SCROLL_ITEM_ID} in Item.lua for Max Level Scroll rename"
        )
    changed = patched != item_text
    if changed:
        write_text(ITEM_LUA, patched)
    return changed, scroll_ok


def sync_max_level() -> int:
    updated = 0
    for rel in (
        "Elsword/ServerResource/GameSysValTable.lua",
        "Elsword/Resources/GameSysValTable.lua",
    ):
        path = ROOT / rel
        if not path.exists():
            continue
        text = read_text(path)
        patched = patch_max_level(text)
        if patched != text:
            write_text(path, patched)
            updated += 1
    return updated


def main() -> int:
    item_changed, scroll_ok = sync_item_lua()
    level_files = sync_max_level()
    print(f"Item.lua updated: {item_changed}")
    print(f"Max Level Scroll (item {SCROLL_ITEM_ID}) renamed: {scroll_ok}")
    print(f"GameSysVal max level -> {MAX_LEVEL} in {level_files} file(s)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
