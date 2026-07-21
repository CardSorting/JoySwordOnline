#!/usr/bin/env python3
"""Modern Balanced Gacha Economy Engine for JoySword Ice Burners.

Rates Model (Mirrors Modern Gacha Games):
- 5.0% SSR Rate: Rare Ice Burner Wearable & Accessory Items (954 items).
  Encourages long-term collection goals, high item value, and a healthy economy.
- 15.0% SR Rate: High-Tier Magic Amulets (+7 to +10), Dual Magic Stones, Fluorite Ore, Restoration Scrolls.
  Provides steady progress materials.
- 80.0% R Rate: Complete Recovery Potions (x10), Mana Elixirs (x10), El Shards (x5).
  Provides essential adventuring supplies.
"""

from __future__ import annotations

import re
import sys
import subprocess
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"

RANDOM_TABLE_FILE = ELSWORD / "GameServer" / "RandomItemTable.lua"
SR_RANDOM_FILE = ELSWORD / "ServerResource" / "RandomItemData.lua"
GS_RANDOM_FILE = ELSWORD / "ServerResource" / "RandomItemData.lua"
SR_MAPPING_FILE = ELSWORD / "ServerResource" / "RandomItemMapping.lua"
GS_MAPPING_FILE = ELSWORD / "GameServer" / "RandomItemMapping.lua"

ITEM_FILES = [
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item_EN.lua",
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


def parse_items():
    item_id_re = re.compile(r"m_ItemID\s*=\s*(\d+)")
    name_re = re.compile(r'm_Name\s*=\s*KStringRes\(\s*"([^"]+)"')
    name_str_re = re.compile(r'm_Name\s*=\s*"([^"]+)"')

    items_by_id = {}
    for item_file in ITEM_FILES:
        if not item_file.exists():
            continue
        content = read_text(item_file)
        blocks = content.split("g_pItemManager:AddItemTemplet")
        for block in blocks[1:]:
            m_id = item_id_re.search(block[:500])
            if not m_id:
                continue
            iid = int(m_id.group(1))
            if iid in items_by_id:
                continue
            m_name = name_re.search(block[:500]) or name_str_re.search(block[:500])
            name = m_name.group(1) if m_name else ""
            items_by_id[iid] = name
    return items_by_id


def main():
    print("==================================================")
    print("JoySword Modern Balanced Gacha Economy Engine")
    print("==================================================")

    items_by_id = parse_items()
    print(f"Parsed {len(items_by_id)} unique item definitions.")

    # Rare Set Keywords
    ib_keywords = (
        "Archangel", "Archdevil", "Salvatore Solace", "Velder Imperial Guard", "Hamel Navy",
        "Royal Maid", "Dragon Knight", "Miracle Alchemist", "Ignition Caligo", "Grace Fairy",
        "Holy Unicorn", "Gold Yaksha", "Royal Blood", "Dark Shadows", "Officer", " 장교", "아크엔젤", "아크데빌", "살바토르"
    )

    all_rare_items = []
    for iid, name in items_by_id.items():
        name_lower = name.lower()
        if any(kw.lower() in name_lower for kw in ib_keywords):
            all_rare_items.append((iid, name))

    print(f"Identified {len(all_rare_items)} Rare Ice Burner Wearable & Accessory items.")

    # High-Tier Enhancement Amulets (+7 to +10)
    sr_amulets = [
        (130149, "Magic Amulet Lv.7"),
        (130150, "Magic Amulet Lv.8"),
        (130151, "Magic Amulet Lv.9"),
        (130152, "Magic Amulet Lv.10"),
    ]

    # Dual Magic Stones & Upgrade Materials
    sr_materials = [
        (72510, "Additional Damage Magic Stone"),
        (72520, "Reduced Damage Magic Stone"),
        (206770, "Blessed Fluorite Ore"),
        (206920, "Blessed Restoration Scroll"),
        (270866, "Blessed Space-Time Scroll"),
        (75000600, "Magic Necklace (+30%)"),
        (180001, "Fighter's Ring"),
    ]

    # Core Consumables & Shards
    r_consumables = [
        (130165, "Complete Recovery Potion", 10),
        (215680, "Mana Elixir", 10),
        (130047, "El Shard (Mystery)", 5),
        (130048, "El Shard (Fire)", 5),
        (130049, "El Shard (Water)", 5),
        (130050, "El Shard (Wind)", 5),
        (130051, "El Shard (Nature)", 5),
        (130052, "El Shard (Dark)", 5),
        (130053, "El Shard (Light)", 5),
    ]

    target_groups = [502070, 502071, 502870, 502440, 502872, 502874, 502876, 501710, 503722]

    # Modern Gacha Weight Math (Target: 5% SSR, 15% SR, 80% R):
    # Total Target Weight: 190,800
    # SSR Pool (954 items): Weight 10 each -> 9,540 total weight (5.0%)
    # SR Pool (11 items): Weight 2,600 each -> 28,600 total weight (15.0%)
    # R Pool (9 items): Weight 17,000 each -> 153,000 total weight (80.0%)

    group_lines = []
    group_lines.append("\n-- FURTHER_IMPROVE_ICEBURNERS: Modern Gacha Balanced Rates (5% SSR / 15% SR / 80% R)\n")

    for gid in target_groups:
        group_lines.append(f"-- Group ID {gid}: Modern Balanced Gacha Pool")

        # 1. SSR: Rare Wearables & Accessories (Weight 10 each -> 5.0% Total Rate)
        for iid, name in all_rare_items:
            sanitized = name.replace("\n", " ").strip()
            group_lines.append(f"g_pRandomItemManager:AddRandomItemGroup( {gid}, {iid}, 10, 0, 1 ) -- [SSR] {sanitized}")

        # 2. SR: Enhancement Amulets & Dual Stones (Weight 2600 each -> 15.0% Total Rate)
        for iid, name in sr_amulets + sr_materials:
            group_lines.append(f"g_pRandomItemManager:AddRandomItemGroup( {gid}, {iid}, 2600, 0, 1 ) -- [SR] {name}")

        # 3. R: Core Potions & Shards (Weight 17000 each -> 80.0% Total Rate)
        for iid, name, qty in r_consumables:
            group_lines.append(f"g_pRandomItemManager:AddRandomItemGroup( {gid}, {iid}, 17000, 0, {qty} ) -- [R] {name}")

    group_lines.append("\n-- END_FURTHER_IMPROVE_ICEBURNERS\n")
    hyper_block = "\n".join(group_lines)

    # Update GameServer/RandomItemTable.lua
    current_table = read_text(RANDOM_TABLE_FILE)
    if "-- FURTHER_IMPROVE_ICEBURNERS" in current_table:
        current_table = re.sub(
            r"\n-- FURTHER_IMPROVE_ICEBURNERS:.*?\n-- END_FURTHER_IMPROVE_ICEBURNERS\n",
            "\n",
            current_table,
            flags=re.DOTALL
        )

    updated_table = current_table + hyper_block
    RANDOM_TABLE_FILE.write_text(updated_table, encoding="utf-8", newline="\n")
    print(f"Updated RandomItemTable.lua with 5%/15%/80% modern gacha rates across {len(target_groups)} groups.")

    # Mirror to RandomItemData.lua
    for rdf in (SR_RANDOM_FILE, GS_RANDOM_FILE):
        if not rdf.exists():
            continue
        curr_rdf = read_text(rdf)
        if "-- FURTHER_IMPROVE_ICEBURNERS" in curr_rdf:
            curr_rdf = re.sub(
                r"\n-- FURTHER_IMPROVE_ICEBURNERS:.*?\n-- END_FURTHER_IMPROVE_ICEBURNERS\n",
                "\n",
                curr_rdf,
                flags=re.DOTALL
            )
        rdf.write_text(curr_rdf + hyper_block, encoding="utf-8", newline="\n")
        print(f"Updated gacha rates in {rdf.name}")

    # Mirror themed mapping rules to RandomItemMapping.lua
    mapping_lines = [
        "\n-- FURTHER_IMPROVE_ICEBURNERS: Themed Ice Burner mapping rules",
        "g_pRandomItemManager:AddRandomItemMappingData( 10, 85002870, 207500, 502870, 502870 ) -- Archangel Burner",
        'g_pRandomItemManager:AddRandomItemMappingTime( 10, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )',
        "g_pRandomItemManager:AddRandomItemMappingData( 11, 85002440, 207500, 502440, 502440 ) -- Nasod Battle Suit Burner",
        'g_pRandomItemManager:AddRandomItemMappingTime( 11, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )',
        "g_pRandomItemManager:AddRandomItemMappingData( 12, 85002872, 207500, 502872, 502872 ) -- Velder Imperial Guard Burner",
        'g_pRandomItemManager:AddRandomItemMappingTime( 12, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )',
        "g_pRandomItemManager:AddRandomItemMappingData( 13, 85002874, 207500, 502874, 502874 ) -- Salvatore Solace Burner",
        'g_pRandomItemManager:AddRandomItemMappingTime( 13, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )',
        "-- END_FURTHER_IMPROVE_ICEBURNERS\n"
    ]
    mapping_block = "\n".join(mapping_lines)

    for rmf in (SR_MAPPING_FILE, GS_MAPPING_FILE):
        if not rmf.exists():
            continue
        curr_rmf = read_text(rmf)
        if "-- FURTHER_IMPROVE_ICEBURNERS" in curr_rmf:
            curr_rmf = re.sub(
                r"\n-- FURTHER_IMPROVE_ICEBURNERS:.*?\n-- END_FURTHER_IMPROVE_ICEBURNERS\n",
                "\n",
                curr_rmf,
                flags=re.DOTALL
            )
        rmf.write_text(curr_rmf + mapping_block, encoding="utf-8", newline="\n")
        print(f"Updated themed mapping rules in {rmf.name}")

    print("\n==================================================")
    print("Successfully configured Modern Balanced Gacha Rates!")
    print("  - SSR (Rare Ice Burner Wearable/Accessory): 5.0% Total Rate")
    print("  - SR (Amulets & Upgrade Materials): 15.0% Total Rate")
    print("  - R (Recovery Potions & Shards): 80.0% Total Rate")
    print("==================================================")


if __name__ == "__main__":
    main()
