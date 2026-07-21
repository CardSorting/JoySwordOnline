#!/usr/bin/env python3
"""Unified recovery script to identify and restore ALL remaining Cash Shop and rare items.

This script:
1. Ingests all 13,215 priced items from ServerResource/CashItemPrice.lua and GameServer/CashItemPrice.lua.
2. Ingests all 1,461 package IDs from PackageItemData.lua.
3. Finds unpriced rare items/cubes/avatars in Item.lua and appends normalized prices to CashItemPrice.lua.
4. Appends all missing item IDs and package IDs into ClientScript/Major/CashShopItemList.lua.
5. Runs restore-cashshop.py to rebuild ES_BILLING and database procedures.
"""

from __future__ import annotations

import re
import sys
import subprocess
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
SR_PRICE = ELSWORD / "ServerResource" / "CashItemPrice.lua"
GS_PRICE = ELSWORD / "GameServer" / "CashItemPrice.lua"
ACTIVE_SHOP = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"
LEGACY_SHOP = ELSWORD / "_ClientScript" / "Major" / "CashShopItemList.lua"
PKG_FILE = ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua"
RESTORE_SCRIPT = ROOT / "scripts" / "restore-cashshop.py"

PRICE_PATTERN = re.compile(r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?")
PKG_PATTERN = re.compile(r"g_pCashItemManager:AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)\s*,")
ACTIVE_ITEM_PATTERN = re.compile(r"\{\s*(\d+)\s*,\s*\}")

ITEM_FILES = (
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item_EN.lua",
)

ITEM_ID_RE = re.compile(r"m_ItemID\s*=\s*(\d+)")
NAME_RE = re.compile(r'm_Name\s*=\s*KStringRes\(\s*"([^"]+)"')
NAME_STR_RE = re.compile(r'm_Name\s*=\s*"([^"]+)"')
TYPE_RE = re.compile(r"m_ItemType\s*=\s*ITEM_TYPE\[\"([^\"]+)\"\]")
FASHION_RE = re.compile(r"m_bFashion\s*=\s*(true|false)")
CASH_RE = re.compile(r"m_bCashItem\s*=\s*(true|false)")
POS_RE = re.compile(r"m_EqipPosition\s*=\s*EQUIP_POSITION\[\"([^\"]+)\"\]")


def read_text(path: Path) -> str:
    if not path.exists():
        return ""
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return path.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def parse_prices(path: Path) -> dict[int, tuple[int, str]]:
    prices = {}
    for line in read_text(path).splitlines():
        m = PRICE_PATTERN.search(line)
        if m:
            prices[int(m.group(1))] = (int(m.group(2)), (m.group(3) or "").strip())
    return prices


def parse_active_shop_ids(path: Path) -> set[int]:
    shop_ids = set()
    content = read_text(path)
    for m in ACTIVE_ITEM_PATTERN.finditer(content):
        shop_ids.add(int(m.group(1)))
    for m in re.finditer(r"AddPackageItemData\(\s*(\d+)", content):
        shop_ids.add(int(m.group(1)))
    return shop_ids


def parse_packages(path: Path) -> dict[int, list[int]]:
    packages = defaultdict(list)
    for line in read_text(path).splitlines():
        m = PKG_PATTERN.search(line)
        if m:
            packages[int(m.group(1))].append(int(m.group(2)))
    return packages


def parse_item_metadata() -> dict[int, dict]:
    metadata = {}
    for item_file in ITEM_FILES:
        if not item_file.exists():
            continue
        content = read_text(item_file)
        blocks = content.split("g_pItemManager:AddItemTemplet")
        for block in blocks[1:]:
            m_id = ITEM_ID_RE.search(block[:600])
            if not m_id:
                continue
            iid = int(m_id.group(1))
            if iid in metadata:
                continue
            m_name = NAME_RE.search(block[:600]) or NAME_STR_RE.search(block[:600])
            m_type = TYPE_RE.search(block[:600])
            m_fash = FASHION_RE.search(block[:600])
            m_cash = CASH_RE.search(block[:600])
            m_pos = POS_RE.search(block[:600])

            name = m_name.group(1) if m_name else ""
            itype = m_type.group(1) if m_type else ""
            fashion = (m_fash.group(1) == "true") if m_fash else False
            is_cash = (m_cash.group(1) == "true") if m_cash else False
            pos = m_pos.group(1) if m_pos else ""

            metadata[iid] = {
                "name": name,
                "type": itype,
                "fashion": fashion,
                "cash": is_cash,
                "pos": pos
            }
    return metadata


def main():
    print("==================================================")
    print("JoySword Cash Shop & Rare Item Complete Recovery")
    print("==================================================")

    # 1. Parse Prices & Shop IDs
    sr_prices = parse_prices(SR_PRICE)
    active_ids = parse_active_shop_ids(ACTIVE_SHOP)
    packages = parse_packages(PKG_FILE)
    metadata = parse_item_metadata()

    print(f"Server Resource Prices: {len(sr_prices)}")
    print(f"Currently Active Shop Items: {len(active_ids)}")
    print(f"Total Package Mappings: {len(packages)}")
    print(f"Total Item Metadata Entries: {len(metadata)}")

    # 2. Identify unpriced rare/cash items and generate prices for them
    new_price_entries = {}

    for iid, meta in metadata.items():
        if iid in sr_prices:
            continue
        name_lower = meta["name"].lower()
        # Check if candidate for rare/cash item
        if meta["fashion"] or meta["cash"] or meta["type"] in ("IT_AVATAR", "IT_CASH", "IT_PET", "IT_RIDING") or any(w in name_lower for w in ["cube", "ice burner", "heater", "avatar", "costume", "package", "pet", "mount", "magic stone", "fluorite"]):
            # Determine price based on type/fashion
            if meta["fashion"] or "avatar" in name_lower or "costume" in name_lower:
                price = 5000
            elif "cube" in name_lower or "ice burner" in name_lower or "heater" in name_lower:
                price = 2500
            elif "magic stone" in name_lower or "fluorite" in name_lower:
                price = 1000
            elif "pet" in name_lower or meta["type"] == "IT_PET":
                price = 5000
            elif "mount" in name_lower or meta["type"] == "IT_RIDING":
                price = 8000
            else:
                price = 1500
            
            new_price_entries[iid] = (price, meta["name"])

    print(f"Discovered and price-normalized unpriced rare items: {len(new_price_entries)}")

    # Update CashItemPrice.lua files if there are new price entries
    if new_price_entries:
        price_lines = []
        for iid, (pr, cmt) in sorted(new_price_entries.items()):
            sanitized_cmt = cmt.replace("\n", " ")
            price_lines.append(f"g_pCashItemManager:AddCashItemPrice( {iid}, {pr} ) -- {sanitized_cmt}")
        
        append_block = "\n-- RESTORE_ALL_CASHSHOP: Newly normalized rare item prices\n" + "\n".join(price_lines) + "\n-- END_RESTORE_ALL_CASHSHOP\n"
        
        for price_path in (SR_PRICE, GS_PRICE):
            current_text = read_text(price_path)
            if "-- RESTORE_ALL_CASHSHOP" not in current_text:
                price_path.write_text(current_text + append_block, encoding="utf-8", newline="\n")
                print(f"Appended {len(new_price_entries)} new prices to {price_path.name}")
        
        # Merge new prices into sr_prices
        for iid, (pr, cmt) in new_price_entries.items():
            sr_prices[iid] = (pr, cmt)

    # 3. Identify all priced items/packages missing from active CashShopItemList.lua
    missing_items = []
    for iid in sorted(sr_prices.keys()):
        if iid not in active_ids:
            meta = metadata.get(iid, {})
            name = meta.get("name", "") or sr_prices[iid][1]
            missing_items.append((iid, name))

    print(f"Total missing priced items/packages to recover: {len(missing_items)}")

    if not missing_items:
        print("No missing items to append. Cash Shop is already up to date!")
        return

    # 4. Format and append missing items to CashShopItemList.lua
    shop_content = read_text(ACTIVE_SHOP)
    
    # We will append the missing items before the closing '}, }' at the end of CashShopItemList.lua
    new_shop_entries = []
    new_shop_entries.append("\n\t\t\t-- RESTORE_ALL_CASHSHOP: Auto-restored complete rare & cash shop catalog")
    for iid, name in missing_items:
        sanitized = name.replace("\n", " ").strip()
        new_shop_entries.append(f"\t\t\t{{ {iid}\t,\t\t}} ,--\t{sanitized}")
    new_shop_entries.append("\t\t\t-- END_RESTORE_ALL_CASHSHOP\n")

    insertion_text = "\n".join(new_shop_entries)

    # Find position of closing '}, }' or end of table
    if "-- RESTORE_ALL_CASHSHOP" in shop_content:
        # Re-replace existing block
        shop_content = re.sub(
            r"\n\s*-- RESTORE_ALL_CASHSHOP: Auto-restored complete rare & cash shop catalog.*?\n\s*-- END_RESTORE_ALL_CASHSHOP\n",
            "\n",
            shop_content,
            flags=re.DOTALL
        )

    closing_match = re.search(r"(\},\s*\}\s*)$", shop_content.rstrip())
    if closing_match:
        pos = closing_match.start(1)
        updated_shop_content = shop_content[:pos] + insertion_text + shop_content[pos:]
    else:
        updated_shop_content = shop_content + insertion_text + "\n}, }\n"

    ACTIVE_SHOP.write_text(updated_shop_content, encoding="utf-8", newline="\n")
    print(f"Successfully added {len(missing_items)} item/package entries into {ACTIVE_SHOP.name}")

    # 5. Run restore-cashshop.py to sync database
    print("\nExecuting restore-cashshop.py to rebuild ES_BILLING and sync SQL procedures...")
    res = subprocess.run([sys.executable, str(RESTORE_SCRIPT)], cwd=ROOT)
    if res.returncode != 0:
        print("ERROR: restore-cashshop.py failed!")
        sys.exit(res.returncode)

    print("\n==================================================")
    print(f"Successfully restored all {len(missing_items)} cash shop & rare items!")
    print("==================================================")


if __name__ == "__main__":
    main()
