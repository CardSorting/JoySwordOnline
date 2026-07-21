#!/usr/bin/env python3
"""Normalize Equipment Resale Values (m_Price) in Item.lua.

Ensures equipment drops have fair ED sell prices:
- Common/Rare Weapons & Armor: Upgraded to at least 25,000 ED.
- High-Tier Boss Weapons & Accessories: Upgraded to at least 100,000 ED.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
TARGETS = (
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
)


def read_text(p: Path) -> str:
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="replace")


def rebalance_equipment_prices():
    changed = 0
    for target in TARGETS:
        if not target.exists():
            continue
        text = read_text(target)
        blocks = text.split("g_pItemManager:AddItemTemplet")
        new_blocks = [blocks[0]]
        modified = False

        for block in blocks[1:]:
            # Check if this block is an Equipment templet (m_ItemType = 1, 2, 3, etc.)
            if "m_ItemType = 1" in block[:400] or "m_ItemType = 2" in block[:400] or "EQUIP" in block[:400]:
                m_price = re.search(r"m_Price\s*=\s*(\d+)", block[:400])
                if m_price:
                    val = int(m_price.group(1))
                    if val < 25000:
                        new_val = 100000 if "BOSS" in block[:400] or "RARE" in block[:400] else 25000
                        block = block.replace(f"m_Price = {val}", f"m_Price = {new_val}")
                        modified = True
            new_blocks.append(block)

        if modified:
            updated_text = "g_pItemManager:AddItemTemplet".join(new_blocks)
            payload = b"\xef\xbb\xbf" + updated_text.encode("utf-8")
            target.write_bytes(payload)
            changed += 1
            print(f"Upgraded Equipment Resale Values in {target.relative_to(ROOT)}")
    return changed


def main() -> int:
    print("==================================================")
    print("JoySword Equipment Resale Value Normalizer")
    print("==================================================")
    changed = rebalance_equipment_prices()
    print(f"Successfully upgraded equipment resale values in {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
