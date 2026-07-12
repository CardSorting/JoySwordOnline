#!/usr/bin/env python3
"""Repair Item.lua for Max Level Scroll without loading the full git blob."""

from __future__ import annotations

import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ITEM = ROOT / "Elsword" / "ClientScript" / "Major" / "Item.lua"
SCROLL_ID = 160267
SCROLL_NAME = "Max Level Scroll"
# Literal backslash-n sequences for the Lua string body.
SCROLL_DESC = (
    "A scroll infused with condensed experience.\\n"
    "Instantly raises your character to the maximum level.\\n\\n"
    "(Right-click to use)"
)
BEGIN = b"-- BEGIN JoySword Offline Custom Items"
END = b"-- END JoySword Offline Custom Items"


def remove_custom_block(data: bytes) -> bytes:
    if BEGIN not in data or END not in data:
        return data
    start = data.index(BEGIN)
    end = data.index(END) + len(END)
    return data[:start].rstrip(b"\r\n") + b"\r\n" + data[end:].lstrip(b"\r\n")


def patch_scroll_block(data: bytes) -> tuple[bytes, bool]:
    marker = f"m_ItemID = {SCROLL_ID},".encode("utf-8")
    start = data.find(marker)
    if start < 0:
        return data, False
    line_start = data.rfind(b"\n", 0, start) + 1
    shop = data.find(b"m_ShopImage", start)
    if shop < 0:
        return data, False

    block = data[line_start:shop]
    if b"Max Level Scroll" in block and b"\\nInstantly raises" in block:
        return data, True

    new_block = re.sub(
        rb'm_Name\s*=\s*"[^"]*"\s*,',
        f'm_Name = "{SCROLL_NAME}",'.encode("utf-8"),
        block,
        count=1,
    )
    desc_repl = f'm_Description = "{SCROLL_DESC}",'.encode("utf-8")
    new_block = re.sub(
        rb'm_Description\s*=\s*"(?:[^"\\]|\\.)*"\s*,',
        lambda _match: desc_repl,
        block,
        count=1,
        flags=re.DOTALL,
    )
    if new_block == block:
        return data, False
    return data[:line_start] + new_block + data[shop:], True


def restore_from_git() -> None:
    proc = subprocess.run(
        ["git", "-C", str(ROOT), "checkout", "--", str(ITEM.relative_to(ROOT))],
        capture_output=True,
        text=True,
    )
    if proc.returncode != 0:
        raise SystemExit(proc.stderr.strip() or "git checkout failed")


def main() -> int:
    restore_from_git()
    data = ITEM.read_bytes()
    data = remove_custom_block(data)
    data, ok = patch_scroll_block(data)
    if not ok:
        raise SystemExit(f"Could not patch item {SCROLL_ID} in Item.lua")
    ITEM.write_bytes(data)
    print(f"Repaired Item.lua and set item {SCROLL_ID} to {SCROLL_NAME!r}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
