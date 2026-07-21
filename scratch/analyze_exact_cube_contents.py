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

print("=== EXACT CUBE CONTENT & PACKAGE COMPONENT AUDIT ===")

# 1. Parse SetItem.lua to extract set definitions and matching item IDs
set_file = ELSWORD / "ClientScript" / "Major" / "SetItem.lua"
set_content = read_text(set_file)

# Parse AddSetItemTemplet( set_id, name )
set_names = {}
for m in re.finditer(r"AddSetItemTemplet\(\s*(\d+)\s*,\s*\"([^\"]+)\"", set_content):
    set_names[int(m.group(1))] = m.group(2)

# Parse AddSetItemComponent( set_id, item_id )
set_components = defaultdict(list)
for m in re.finditer(r"AddSetItemComponent\(\s*(\d+)\s*,\s*(\d+)", set_content):
    set_components[int(m.group(1))].append(int(m.group(2)))

print(f"Parsed {len(set_names)} item sets with {sum(len(v) for v in set_components.values())} total set components from SetItem.lua.")

# 2. Parse legacy PackageItemData.lua (_ClientScript/Major/PackageItemData.lua)
legacy_pkg_file = ELSWORD / "_ClientScript" / "Major" / "PackageItemData.lua"
legacy_pkg = defaultdict(list)
for m in re.finditer(r"AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)", read_text(legacy_pkg_file)):
    legacy_pkg[int(m.group(1))].append(int(m.group(2)))

print(f"Parsed {len(legacy_pkg)} legacy package mappings from _ClientScript.")

# 3. Parse Item.lua metadata for all items
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
pos_re = re.compile(r"m_EqipPosition\s*=\s*EQUIP_POSITION\[\"([^\"]+)\"\]")

item_meta = {}
for item_file in item_files:
    if not item_file.exists():
        continue
    content = read_text(item_file)
    blocks = content.split("g_pItemManager:AddItemTemplet")
    for block in blocks[1:]:
        m_id = item_id_re.search(block[:600])
        if not m_id:
            continue
        iid = int(m_id.group(1))
        if iid in item_meta:
            continue
        m_name = name_re.search(block[:600]) or name_str_re.search(block[:600])
        m_type = type_re.search(block[:600])
        m_fash = fashion_re.search(block[:600])
        m_pos = pos_re.search(block[:600])

        name = m_name.group(1) if m_name else ""
        itype = m_type.group(1) if m_type else ""
        fashion = (m_fash.group(1) == "true") if m_fash else False
        pos = m_pos.group(1) if m_pos else ""

        item_meta[iid] = {
            "name": name,
            "type": itype,
            "fashion": fashion,
            "pos": pos
        }

print(f"Parsed item metadata entries: {len(item_meta)}")

# 4. Load the 2,042 unmapped cubes from our previous run
with open(ROOT / "scratch" / "unmapped_cubes.json", "r", encoding="utf-8") as f:
    unmapped_cubes = json.load(f)

print(f"Total unmapped cubes to match precisely: {len(unmapped_cubes)}")

# Group unmapped cubes by matching strategy
matched_exact = {}

# Build name-to-item-id lookups for avatar pieces
# e.g., if cube is "Elsword Beach Party Package (Blue)", find all items with name starting with "Elsword Beach Party" and color "(Blue)"
avatar_pieces = defaultdict(list)
for iid, meta in item_meta.items():
    name = meta["name"]
    if meta["fashion"] or meta["pos"]:
        avatar_pieces[name].append(iid)

print(f"Unique avatar piece names indexed: {len(avatar_pieces)}")

# Test matching logic on sample unmapped cubes
matched_count = 0
for iid, name, itype in unmapped_cubes:
    # Strategy 1: Check legacy PackageItemData.lua
    if iid in legacy_pkg and len(legacy_pkg[iid]) > 0:
        matched_exact[iid] = {
            "source": "legacy_package_data",
            "items": legacy_pkg[iid]
        }
        matched_count += 1
        continue
    
    # Strategy 2: Match multi-piece avatar packages by name pattern
    # e.g. "Elsword Beach Party Package (Blue)" -> find "Elsword Beach Party Top Piece (Blue)", "Elsword Beach Party Bottom Piece (Blue)", etc.
    pkg_match = re.search(r"^(.*?)(?:\s*(?:Package|패키지|Cube|큐브|Set|세트))\s*(\([^)]+\))?$", name, re.IGNORECASE)
    if pkg_match:
        base_name = pkg_match.group(1).strip()
        color_variant = pkg_match.group(2).strip() if pkg_match.group(2) else ""
        
        # Find matching pieces
        matched_pieces = []
        for piece_name, piece_ids in avatar_pieces.items():
            if base_name in piece_name:
                if color_variant and color_variant.lower() not in piece_name.lower():
                    continue
                matched_pieces.extend(piece_ids)
        
        if matched_pieces:
            matched_exact[iid] = {
                "source": "name_pattern_avatar_pieces",
                "items": list(set(matched_pieces))
            }
            matched_count += 1
            continue

print(f"\nExact matched cubes using Legacy Package & Name Pattern strategies: {matched_count} / {len(unmapped_cubes)}")

# Print sample matches
print("\nSample Matched Packages/Cubes:")
for iid, data in list(matched_exact.items())[:15]:
    cube_name = item_meta.get(iid, {}).get("name", iid)
    comp_names = [item_meta.get(cid, {}).get("name", str(cid)) for cid in data["items"][:4]]
    print(f"  Cube ID {iid} ('{cube_name}'): source={data['source']} -> {len(data['items'])} components ({comp_names})")
