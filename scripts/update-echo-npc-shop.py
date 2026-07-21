#!/usr/bin/env python3
"""Add Ice Burner Heaters, Keys, and Mystery Cubes to NPC Echo in Elder Village for ED purchase.

This script updates:
1. ClientScript/Major/ShopItem.lua and _ClientScript/Major/ShopItem.lua:
   Populates NPC_UNIT_ID.NUI_ECHO in Elder Village (VMI_ELDER) with all Ice Burner Heaters,
   Keys, and matching Mystery Cubes.
2. Ensures items have valid ED prices in Item.lua so they can be bought with ED in-game.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"

SHOP_FILES = [
    ELSWORD / "ClientScript" / "Major" / "ShopItem.lua",
    ELSWORD / "_ClientScript" / "Major" / "ShopItem.lua",
]

ITEM_FILES = [
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
]

# Complete list of Ice Burners, Keys, and Mystery Cubes for NPC Echo
ECHO_SHOP_ITEMS = [
    108900,   # Ice Burner Heater (Standard)
    207500,   # Ice Burner Key
    69423,    # Mystery Key / Cube Key
    85002870, # Archangel Ice Burner Heater
    85002440, # Nasod Battle Suit Ice Burner Heater
    85002872, # Velder Imperial Guard Ice Burner Heater
    85002874, # Salvatore Solace Ice Burner Heater
    85002876, # Archdevil Ice Burner Heater
    84001710, # Royal Maid Ice Burner Heater
    85003722, # Officer Ice Burner Heater
    85003820, # Holy Unicorn Ice Burner Heater
    131377,   # Event Ice Burner Heater
    104910,   # Tree of El's Magic Cube
    98001,    # Epic NPC Card Random Cube
    98002,    # Fighter's Ring Cube (7 Days)
    98021,    # Magic Necklace Cube (30 Days)
    130269,   # Orichalcum Weapon Accessory Cube
    131262,   # Velder Boss Cube
    133471,   # Hamel Boss Cube
    131374,   # Random Cube of Enhancement Amulet (Lv.5-8)
    131583,   # Random Cube of Enhancement Amulet
    72500,    # Alchemy Elixir
    78340,    # Basic Alchemist Material
    78350,    # Advanced Alchemist Material
    78440,    # Magic Stone Potion
    77180,    # Mysterious Elixir
    130054,   # El Shard (Light)
    91620,    # Alchemist Flask
    91630,    # Greater Alchemist Flask
    160773,   # Alchemist Secret Formula
]


def read_text(p: Path) -> str:
    if not p.exists():
        return ""
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="replace")


def update_shop_item_lua():
    formatted_item_list = ",\n        ".join(str(iid) for iid in ECHO_SHOP_ITEMS)
    new_echo_block = f"""    {{
      NPC_ID = NPC_UNIT_ID.NUI_ECHO,
      ITEM_LIST = {{
        {formatted_item_list}
      }}
    }}"""

    for sf in SHOP_FILES:
        if not sf.exists():
            continue
        content = read_text(sf)
        # Match NPC_UNIT_ID.NUI_ECHO block inside SALE_ITEM_NPC
        pattern = r"\{\s*NPC_ID\s*=\s*NPC_UNIT_ID\.NUI_ECHO\s*,\s*ITEM_LIST\s*=\s*\{[^}]*\}\s*\}"
        if re.search(pattern, content):
            updated_content = re.sub(pattern, new_echo_block, content, count=1)
            sf.write_text(updated_content, encoding="utf-8", newline="\n")
            print(f"Updated NPC Echo shop item list in {sf.relative_to(ELSWORD)}")
        else:
            print(f"Warning: NUI_ECHO block not found in {sf.relative_to(ELSWORD)}")


def ensure_item_ed_prices():
    # Set ED sell/buy price for Ice Burners and Cubes in Item.lua if missing
    for item_file in ITEM_FILES:
        if not item_file.exists():
            continue
        content = read_text(item_file)
        modified = False
        blocks = content.split("g_pItemManager:AddItemTemplet")
        new_blocks = [blocks[0]]

        for block in blocks[1:]:
            m_id = re.search(r"m_ItemID\s*=\s*(\d+)", block[:500])
            if m_id and int(m_id.group(1)) in ECHO_SHOP_ITEMS:
                iid = int(m_id.group(1))
                # Check if m_Price or m_iPrice is set
                if "m_Price" not in block[:500] and "m_iPrice" not in block[:500]:
                    # Inject default ED price of 100,000 ED
                    block = block.replace("m_ItemID = " + str(iid) + ",", f"m_ItemID = {iid},\n       m_Price = 100000,")
                    modified = True
            new_blocks.append(block)

        if modified:
            item_file.write_text("g_pItemManager:AddItemTemplet".join(new_blocks), encoding="utf-8", newline="\n")
            print(f"Injected ED price defaults into {item_file.relative_to(ELSWORD)}")


def main():
    print("==================================================")
    print("JoySword NPC Echo Elder Shop Updater")
    print("==================================================")

    update_shop_item_lua()
    ensure_item_ed_prices()

    print("\n==================================================")
    print("Successfully added Ice Burner Heaters, Keys, and")
    print("Mystery Cubes to NPC Echo in Elder Village!")
    print("==================================================")


if __name__ == "__main__":
    main()
