#!/usr/bin/env python3
"""Add Modern Gacha Consumables, Protection Materials, Ice Burners, Magic Amulets Lv.7-12, Rare Mounts, and Winback Cubes to NPC Echo and NPC Ariel for ED purchase.

This script updates:
1. ClientScript/Major/ShopItem.lua and _ClientScript/Major/ShopItem.lua:
   Populates NPC_UNIT_ID.NUI_ECHO (Elder Village) and NPC_UNIT_ID.NUI_ARIEL (Town NPC)
   with Ice Burner Heaters, Keys, Fluorite Ores, Restoration Scrolls, Magic Amulets Lv.7-12,
   Dual Magic Stones, Recovery Potions, Rare Mount Cubes, and Returnee Celebration Cubes.
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

# Complete list of Modern Gacha, Progression, Amulets Lv.7-12, Rare Mounts, and Returnee Winback Cubes for NPC Echo & Ariel
MODERN_NPC_SHOP_ITEMS = [
    # Winback & Starter Support Cubes
    130220,   # A Cube of Celebration of Return to Elrios Continent
    132580,   # Returned Warrior Welcoming Cube
    224380,   # Cobo Support Package
    225180,   # Starters Package
    131254,   # Summon Stone: Rare Mount Choice Cube

    # Ice Burners & Gacha Keys
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
    
    # Upgrade & Enhancement Materials
    206770,   # Blessed Fluorite Ore
    206920,   # Blessed Restoration Scroll
    270866,   # Blessed Space-Time Scroll
    130149,   # Magic Amulet Lv.7
    130150,   # Magic Amulet Lv.8
    130151,   # Magic Amulet Lv.9
    130152,   # Magic Amulet Lv.10
    130720,   # Magic Amulet Lv.11
    130721,   # Magic Amulet Lv.12
    131374,   # Random Cube of Enhancement Amulet (Lv.5-8)
    
    # Dual Magic Stones & Socketing
    72510,    # Additional Damage Magic Stone
    72520,    # Reduced Damage Magic Stone
    130047,   # El Shard (Mystery)
    130048,   # El Shard (Fire)
    130049,   # El Shard (Water)
    130050,   # El Shard (Wind)
    130051,   # El Shard (Nature)
    130052,   # El Shard (Dark)
    130053,   # El Shard (Light)
    
    # Potions & Accessories
    130165,   # Complete Recovery Potion
    215680,   # Mana Elixir
    75000600, # Magic Necklace (+30%)
    180001,   # Fighter's Ring
    98001,    # Epic NPC Card Random Cube
    130269,   # Orichalcum Weapon Accessory Cube
]

# ED Prices dictionary for items if missing in Item.lua
DEFAULT_ED_PRICES = {
    130220: 1000000,
    132580: 2500000,
    224380: 1500000,
    225180: 1000000,
    131254: 15000000,
    108900: 500000,
    207500: 100000,
    206770: 150000,
    206920: 250000,
    270866: 200000,
    130149: 1000000,
    130150: 2500000,
    130151: 5000000,
    130152: 12500000,
    130720: 25000000,
    130721: 50000000,
    72510: 50000,
    72520: 50000,
    130165: 2500,
    215680: 3500,
    75000600: 500000,
    180001: 500000,
}


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
    formatted_item_list = ",\n        ".join(str(iid) for iid in MODERN_NPC_SHOP_ITEMS)
    
    new_echo_block = f"""    {{
      NPC_ID = NPC_UNIT_ID.NUI_ECHO,
      ITEM_LIST = {{
        {formatted_item_list}
      }}
    }}"""

    new_ariel_block = f"""    {{
      NPC_ID = NPC_UNIT_ID.NUI_ARIEL,
      ITEM_LIST = {{
        {formatted_item_list}
      }}
    }}"""

    for sf in SHOP_FILES:
        if not sf.exists():
            continue
        content = read_text(sf)
        
        # Update Echo block
        echo_pattern = r"\{\s*NPC_ID\s*=\s*NPC_UNIT_ID\.NUI_ECHO\s*,\s*ITEM_LIST\s*=\s*\{[^}]*\}\s*\}"
        if re.search(echo_pattern, content):
            content = re.sub(echo_pattern, new_echo_block, content, count=1)
            print(f"Updated NPC Echo shop item list in {sf.relative_to(ELSWORD)}")
            
        # Update Ariel block
        ariel_pattern = r"\{\s*NPC_ID\s*=\s*NPC_UNIT_ID\.NUI_ARIEL\s*,\s*ITEM_LIST\s*=\s*\{[^}]*\}\s*\}"
        if re.search(ariel_pattern, content):
            content = re.sub(ariel_pattern, new_ariel_block, content, count=1)
            print(f"Updated NPC Ariel shop item list in {sf.relative_to(ELSWORD)}")
            
        sf.write_text(content, encoding="utf-8", newline="\n")


def ensure_item_ed_prices():
    for item_file in ITEM_FILES:
        if not item_file.exists():
            continue
        content = read_text(item_file)
        modified = False
        blocks = content.split("g_pItemManager:AddItemTemplet")
        new_blocks = [blocks[0]]

        for block in blocks[1:]:
            m_id = re.search(r"m_ItemID\s*=\s*(\d+)", block[:500])
            if m_id:
                iid = int(m_id.group(1))
                if iid in MODERN_NPC_SHOP_ITEMS:
                    if "m_Price" not in block[:500] and "m_iPrice" not in block[:500]:
                        price = DEFAULT_ED_PRICES.get(iid, 100000)
                        block = block.replace("m_ItemID = " + str(iid) + ",", f"m_ItemID = {iid},\n       m_Price = {price},")
                        modified = True
            new_blocks.append(block)

        if modified:
            item_file.write_text("g_pItemManager:AddItemTemplet".join(new_blocks), encoding="utf-8", newline="\n")
            print(f"Injected ED price defaults into {item_file.relative_to(ELSWORD)}")


def main():
    print("==================================================")
    print("JoySword NPC Shop & ED Economy Modernizer")
    print("==================================================")

    update_shop_item_lua()
    ensure_item_ed_prices()

    print("\n==================================================")
    print("Successfully added Gacha, Winback Cubes, Magic Amulets Lv.7-12,")
    print("Rare Mount Cubes, and Progression materials to NPC Echo & Ariel!")
    print("==================================================")


if __name__ == "__main__":
    main()
