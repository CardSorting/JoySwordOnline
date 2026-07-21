import re
import json
import sys
from pathlib import Path
from collections import defaultdict

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

def read_text(p):
    if not p.exists():
        return ""
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="ignore")

# 1. Parse clean PackageItemData.lua (original)
clean_pkg_file = ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua"
clean_pkg_text = re.sub(r"\n-- CUBE_MAPPING_FIX:.*?\n-- END_CUBE_MAPPING_FIX\n", "\n", read_text(clean_pkg_file), flags=re.DOTALL)
clean_pkg_ids = set(int(x) for x in re.findall(r"AddPackageItemData\(\s*(\d+)", clean_pkg_text))

# 2. Parse AddCubePackageData.lua
cube_pkg_file = ELSWORD / "ClientScript" / "Major" / "AddCubePackageData.lua"
cube_pkg_ids = set(int(x) for x in re.findall(r"AddCubePackageData\(\s*(\d+)", read_text(cube_pkg_file)))

# 3. Parse RandomItemMapping.lua
mapping_file = ELSWORD / "ServerResource" / "RandomItemMapping.lua"
mapping_cube_ids = set(int(x) for x in re.findall(r"AddRandomItemMappingData\(\s*\d+\s*,\s*(\d+)", read_text(mapping_file)))

# 4. Parse SealRandomItemInfo
random_data_file = ELSWORD / "ServerResource" / "RandomItemData.lua"
seal_cube_ids = set(int(x) for x in re.findall(r"AddSealRandomItemInfo\(\s*(\d+)", read_text(random_data_file)))

authoritative_package_cube_ids = clean_pkg_ids | cube_pkg_ids | mapping_cube_ids | seal_cube_ids

print("=== CLASSIFY TRUE PACKAGES VS STANDALONE ITEMS ===")
print(f"Authoritative Package/Cube IDs from clean server files: {len(authoritative_package_cube_ids)}")

# 5. Parse Item.lua
item_files = [
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item_EN.lua",
]

item_id_re = re.compile(r"m_ItemID\s*=\s*(\d+)")
name_re = re.compile(r'm_Name\s*=\s*KStringRes\(\s*"([^"]+)"')
name_str_re = re.compile(r'm_Name\s*=\s*"([^"]+)"')
type_re = re.compile(r"m_ItemType\s*=\s*ITEM_TYPE\[\"([^\"]+)\"\]")
fashion_re = re.compile(r"m_bFashion\s*=\s*(true|false)")

items_by_id = {}
for item_file in item_files:
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
        m_type = type_re.search(block[:500])
        m_fash = fashion_re.search(block[:500])

        name = m_name.group(1) if m_name else ""
        itype = m_type.group(1) if m_type else ""
        fashion = (m_fash.group(1) == "true") if m_fash else False

        items_by_id[iid] = {
            "id": iid,
            "name": name,
            "type": itype,
            "fashion": fashion
        }

# Parse active CashShopItemList.lua
active_shop = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"
shop_text = read_text(active_shop)
shop_item_ids = set(int(x) for x in re.findall(r"\{\s*(\d+)\s*,\s*\}", shop_text))
shop_pkg_ids = set(int(x) for x in re.findall(r"AddPackageItemData\(\s*(\d+)", shop_text))
all_shop_ids = shop_item_ids | shop_pkg_ids

print(f"Total Items in CashShopItemList.lua: {len(all_shop_ids)}")

# Classify shop items:
true_packages = []
standalone_items = []

for iid in sorted(all_shop_ids):
    meta = items_by_id.get(iid, {})
    name = meta.get("name", "")
    name_lower = name.lower()
    itype = meta.get("type", "")

    is_authoritative_pkg = iid in authoritative_package_cube_ids
    is_explicit_pkg_by_name = any(w in name_lower for w in ["package", "패키지", "cube", "큐브", "상자", "선물", "주머니", "box", "chest", "set", "세트"])
    is_package_type = (itype == "IT_PACKAGE")

    if is_authoritative_pkg or (is_explicit_pkg_by_name and itype in ("IT_PACKAGE", "IT_SPECIAL")):
        true_packages.append((iid, name, itype))
    else:
        standalone_items.append((iid, name, itype))

print(f"\nTRUE Packages & Cubes in CashShopItemList.lua: {len(true_packages)}")
print(f"STANDALONE Consumables & Equipment in CashShopItemList.lua: {len(standalone_items)}")

print("\nSample TRUE Packages:")
for iid, name, itype in true_packages[:10]:
    print(f"  ID {iid}: type='{itype}', name='{name}'")

print("\nSample STANDALONE Items (These must NOT have PackageItemData entries!):")
for iid, name, itype in standalone_items[:10]:
    print(f"  ID {iid}: type='{itype}', name='{name}'")
