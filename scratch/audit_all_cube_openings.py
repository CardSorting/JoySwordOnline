import re
import sys
import json
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

# 1. Parse PackageItemData.lua
pkg_file = ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua"
pkg_items = set()
for m in re.finditer(r"AddPackageItemData\(\s*(\d+)", read_text(pkg_file)):
    pkg_items.add(int(m.group(1)))

# 2. Parse AddCubePackageData.lua
cube_pkg_file = ELSWORD / "ClientScript" / "Major" / "AddCubePackageData.lua"
cube_pkg_items = set()
for m in re.finditer(r"AddCubePackageData\(\s*(\d+)", read_text(cube_pkg_file)):
    cube_pkg_items.add(int(m.group(1)))

# 3. Parse RandomItemMapping.lua
mapping_file = ELSWORD / "ServerResource" / "RandomItemMapping.lua"
mapping_cubes = set()
for m in re.finditer(r"AddRandomItemMappingData\(\s*\d+\s*,\s*(\d+)", read_text(mapping_file)):
    mapping_cubes.add(int(m.group(1)))

# 4. Parse RandomItemData.lua
random_data_file = ELSWORD / "ServerResource" / "RandomItemData.lua"
random_text = read_text(random_data_file)

seal_cubes = set(int(x) for x in re.findall(r"AddSealRandomItemInfo\(\s*(\d+)", random_text))
attraction_items = set(int(x) for x in re.findall(r"AddAttractionRandomItemInfo\(\s*(\d+)", random_text))
random_group_items = set(int(x) for x in re.findall(r"AddRandomItemData\(\s*\d+\s*,\s*(\d+)", random_text))

# 5. Parse Item.lua for all cube items
item_file = ELSWORD / "ClientScript" / "Major" / "Item.lua"
item_text = read_text(item_file)

cube_templet_ids = set()
item_id_re = re.compile(r"m_ItemID\s*=\s*(\d+)")
name_re = re.compile(r'm_Name\s*=\s*KStringRes\(\s*"([^"]+)"')
name_str_re = re.compile(r'm_Name\s*=\s*"([^"]+)"')
type_re = re.compile(r"m_ItemType\s*=\s*ITEM_TYPE\[\"([^\"]+)\"\]")

blocks = item_text.split("g_pItemManager:AddItemTemplet")
cube_items_info = {}

for b in blocks[1:]:
    m_id = item_id_re.search(b[:500])
    if not m_id:
        continue
    iid = int(m_id.group(1))
    m_name = name_re.search(b[:500]) or name_str_re.search(b[:500])
    name = m_name.group(1) if m_name else ""
    m_type = type_re.search(b[:500])
    itype = m_type.group(1) if m_type else ""
    
    # Check if item name contains 'cube', '큐브', '상자', '선물' or is of type IT_PACKAGE, IT_SPECIAL
    name_lower = name.lower()
    is_cube_by_name = any(w in name_lower for w in ["cube", "큐브", "상자", "선물", "주머니", "box", "chest"])
    if is_cube_by_name or itype in ("IT_PACKAGE", "IT_SPECIAL"):
        cube_items_info[iid] = {
            "name": name,
            "type": itype
        }

print("=== CUBE MAPPING AUDIT SUMMARY ===")
print(f"Total potential Cube/Package Items in Item.lua: {len(cube_items_info)}")
print(f"Mapped in PackageItemData.lua: {len(pkg_items)}")
print(f"Mapped in AddCubePackageData.lua: {len(cube_pkg_items)}")
print(f"Mapped in RandomItemMapping.lua: {len(mapping_cubes)}")
print(f"Mapped in SealRandomItemInfo: {len(seal_cubes)}")

# Check which cubes in CashShopItemList.lua have NO mapping in any system!
active_shop = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"
shop_text = read_text(active_shop)
shop_item_ids = set(int(x) for x in re.findall(r"\{\s*(\d+)\s*,\s*\}", shop_text))

unmapped_cubes_in_shop = []
for iid, info in cube_items_info.items():
    if iid in shop_item_ids:
        # Check if mapped anywhere
        is_mapped = (iid in pkg_items) or (iid in cube_pkg_items) or (iid in mapping_cubes) or (iid in seal_cubes)
        if not is_mapped:
            unmapped_cubes_in_shop.append((iid, info['name'], info['type']))

print(f"\nCRITICAL DISCOVERY: Unmapped Cubes in CashShopItemList.lua: {len(unmapped_cubes_in_shop)}")

print("\nSample Unmapped Cubes in CashShopItemList.lua (THESE WILL CRASH SERVER ON OPEN):")
for iid, name, itype in unmapped_cubes_in_shop[:25]:
    print(f"  ID {iid}: type='{itype}', name='{name}'")

with open(ROOT / "scratch" / "unmapped_cubes.json", "w", encoding="utf-8") as f:
    json.dump(unmapped_cubes_in_shop, f, indent=2, ensure_ascii=False)
