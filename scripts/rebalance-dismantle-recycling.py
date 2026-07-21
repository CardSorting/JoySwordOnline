#!/usr/bin/env python3
"""Inject Equipment Dismantling Recycling & Modern Gacha Crafting Loop into ManufactureResultTable.lua."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
TARGETS = (
    ELSWORD / "GameServer" / "ManufactureResultTable.lua",
    ELSWORD / "ServerResource" / "ManufactureResultTable.lua",
)

RECYCLING_RECIPES_BLOCK = """
-- DISMANTLE_RECYCLING_GACHA_LOOP: Convert Dismantled Equipment Pieces + ED into Gacha Keys & Upgrade Materials
-- 10 Weapon/Armor Pieces (99807/99808) + 50,000 ED -> 1 Ice Burner Key (207500)
g_pManufactureItemManager:AddManufactureResultTemplet(
    207500, 1, 100, 50000, 0,
    99807, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0
)
g_pManufactureItemManager:AddManufactureResultTemplet(
    207500, 1, 100, 50000, 0,
    99808, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0
)

-- 15 Weapon/Armor Pieces + 100,000 ED -> 1 Blessed Fluorite Ore (206770)
g_pManufactureItemManager:AddManufactureResultTemplet(
    206770, 1, 100, 100000, 0,
    99807, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0
)
g_pManufactureItemManager:AddManufactureResultTemplet(
    206770, 1, 100, 100000, 0,
    99808, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0
)

-- 20 Weapon/Armor Pieces + 150,000 ED -> 1 Blessed Restoration Scroll (206920)
g_pManufactureItemManager:AddManufactureResultTemplet(
    206920, 1, 100, 150000, 0,
    99807, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0
)
g_pManufactureItemManager:AddManufactureResultTemplet(
    206920, 1, 100, 150000, 0,
    99808, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0
)

-- 10 Weapon/Armor Pieces + 25,000 ED -> 1 Additional Damage Dual Magic Stone (72510)
g_pManufactureItemManager:AddManufactureResultTemplet(
    72510, 1, 100, 25000, 0,
    99807, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0
)
g_pManufactureItemManager:AddManufactureResultTemplet(
    72520, 1, 100, 25000, 0,
    99808, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0
)
-- END_DISMANTLE_RECYCLING_GACHA_LOOP
"""


def read_text(p: Path) -> str:
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="replace")


def apply_dismantle_recycling():
    changed = 0
    for target in TARGETS:
        if not target.exists():
            continue
        text = read_text(target)
        if "-- DISMANTLE_RECYCLING_GACHA_LOOP" in text:
            text = re.sub(
                r"\n-- DISMANTLE_RECYCLING_GACHA_LOOP:.*?\n-- END_DISMANTLE_RECYCLING_GACHA_LOOP\n",
                "\n",
                text,
                flags=re.DOTALL
            )
        updated_text = text + "\n" + RECYCLING_RECIPES_BLOCK
        payload = b"\xef\xbb\xbf" + updated_text.encode("utf-8")
        target.write_bytes(payload)
        changed += 1
        print(f"Injected Dismantle Recycling Loop to {target.relative_to(ROOT)}")
    return changed


def main() -> int:
    print("==================================================")
    print("JoySword Dismantle Recycling & Gacha Crafting Engine")
    print("==================================================")
    changed = apply_dismantle_recycling()
    print(f"Successfully injected dismantle recycling recipes in {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
