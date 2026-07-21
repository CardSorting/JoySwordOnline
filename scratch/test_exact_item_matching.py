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

# Load item metadata
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
items_by_name = defaultdict(list)

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

        item_data = {
            "id": iid,
            "name": name,
            "type": itype,
            "fashion": fashion
        }
        items_by_id[iid] = item_data
        if name:
            items_by_name[name.lower()].append(item_data)

print(f"Loaded {len(items_by_id)} unique item definitions.")

# Load original PackageItemData.lua from clean source (or search PackageItemData in client script)
orig_pkg_file = ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua"
orig_text = read_text(orig_pkg_file)
# Strip out our CUBE_MAPPING_FIX block to get clean original package mappings
clean_pkg_text = re.sub(r"\n-- CUBE_MAPPING_FIX:.*?\n-- END_CUBE_MAPPING_FIX\n", "\n", orig_text, flags=re.DOTALL)

clean_pkg_mappings = defaultdict(list)
for m in re.finditer(r"AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)", clean_pkg_text):
    clean_pkg_mappings[int(m.group(1))].append(int(m.group(2)))

print(f"Original clean package mappings count: {len(clean_pkg_mappings)}")

# Load unmapped cubes
with open(ROOT / "scratch" / "unmapped_cubes.json", "r", encoding="utf-8") as f:
    unmapped_cubes = json.load(f)

# Build a smart matcher for packages / cubes
exact_matched = {}

characters = ["elsword", "aisha", "rena", "raven", "eve", "chung", "ara", "elesis", "add"]
slots = ["weapon", "top", "bottom", "hair", "gloves", "shoes", "one piece", "accessory", "hat", "mask", "wing", "crown"]

for iid, cube_name, itype in unmapped_cubes:
    # 1. Direct match: if cube_name exists as an item itself (e.g. "Additional Damage Magic Stone" or "Mana Elixir")
    c_lower = cube_name.lower()
    
    # Strip " Cube", " (7 Days)", " (30 Days)", " Package", " (Permanent)"
    clean_name = re.sub(r"\s*(?:Cube|Package|패키지|큐브|상자|세트|Set|\(\d+\s*Days?\))\s*$", "", cube_name, flags=re.IGNORECASE).strip()
    clean_lower = clean_name.lower()
    
    if clean_lower in items_by_name:
        target_ids = [it["id"] for it in items_by_name[clean_lower] if it["id"] != iid]
        if target_ids:
            exact_matched[iid] = {
                "name": cube_name,
                "strategy": "direct_item_name_match",
                "components": target_ids[:6]
            }
            continue

    # 2. Package Avatar matching: Find all items sharing the base prefix
    # e.g., "Elsword Beach Party Package (Blue)" -> base="Elsword Beach Party", color="(Blue)"
    m_pkg = re.search(r"^(.*?)(?:\s*(?:Package|패키지|Cube|큐브|Set|세트))\s*(\([^)]+\))?$", cube_name, re.IGNORECASE)
    if m_pkg:
        base = m_pkg.group(1).strip().lower()
        color = m_pkg.group(2).strip().lower() if m_pkg.group(2) else ""
        
        matching_components = []
        for name_key, item_list in items_by_name.items():
            if base in name_key and name_key != c_lower:
                if color and color not in name_key:
                    continue
                for item_obj in item_list:
                    # Prefer fashion/avatar pieces
                    if item_obj["fashion"] or item_obj["id"] != iid:
                        matching_components.append(item_obj["id"])
        
        if matching_components:
            exact_matched[iid] = {
                "name": cube_name,
                "strategy": "avatar_package_prefix_match",
                "components": list(set(matching_components))[:10]
            }
            continue

print(f"\nSmart Matched Cubes/Packages: {len(exact_matched)} / {len(unmapped_cubes)}")

# Print sample results
for iid, data in list(exact_matched.items())[:20]:
    comp_names = [items_by_id[cid]["name"] for cid in data["components"] if cid in items_by_id]
    print(f"  ID {iid} ('{data['name']}'): strategy={data['strategy']} -> {len(data['components'])} components ({comp_names[:4]})")
