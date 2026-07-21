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

print("=== EXTRACT ALL PRECISE MAPPINGS ===")

# 1. Parse ItemExchangeTable.lua
exchange_file = ELSWORD / "ClientScript" / "Major" / "ItemExchangeTable.lua"
exchange_content = read_text(exchange_file)
exchange_map = defaultdict(list)

# g_pItemManager:AddItemExchangeData( NpcID, Index, SourceItemID, TargetItemID, Count, Prob... )
for m in re.finditer(r"AddItemExchangeData\(\s*\d+\s*,\s*\d+\s*,\s*(\d+)\s*,\s*(\d+)", exchange_content):
    src = int(m.group(1))
    tgt = int(m.group(2))
    exchange_map[src].append(tgt)

print(f"Extracted {len(exchange_map)} exact exchange mappings from ItemExchangeTable.lua.")

# 2. Parse ItemConvertTable.lua
convert_file = ELSWORD / "ClientScript" / "Major" / "ItemConvertTable.lua"
convert_content = read_text(convert_file)
convert_map = defaultdict(list)

blocks = convert_content.split("AddItemConvertInfo")
for b in blocks[1:]:
    m_tgt = re.search(r"m_TargetItemID\s*=\s*\{\s*(\d+)", b[:400])
    m_res = re.search(r"m_ResultItemID\s*=\s*\{\s*(\d+)", b[:400])
    if m_tgt and m_res:
        t_id = int(m_tgt.group(1))
        r_id = int(m_res.group(1))
        convert_map[t_id].append(r_id)

print(f"Extracted {len(convert_map)} exact convert mappings from ItemConvertTable.lua.")

# 3. Parse Item.lua
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

items_by_id = {}
items_by_name = defaultdict(list)
fashion_by_char = defaultdict(list)
chars = ["elsword", "aisha", "rena", "raven", "eve", "chung", "ara", "elesis", "add"]

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
        m_pos = pos_re.search(block[:500])

        name = m_name.group(1) if m_name else ""
        itype = m_type.group(1) if m_type else ""
        fashion = (m_fash.group(1) == "true") if m_fash else False
        pos = m_pos.group(1) if m_pos else ""

        item_obj = {
            "id": iid,
            "name": name,
            "type": itype,
            "fashion": fashion,
            "pos": pos
        }
        items_by_id[iid] = item_obj
        if name:
            items_by_name[name.lower()].append(item_obj)

        name_lower = name.lower()
        for ch in chars:
            if ch in name_lower and (fashion or pos or itype == "IT_AVATAR"):
                fashion_by_char[ch].append(item_obj)

print(f"Total Item Metadata Entries: {len(items_by_id)}")

# 4. Load unmapped cubes
with open(ROOT / "scratch" / "unmapped_cubes.json", "r", encoding="utf-8") as f:
    unmapped_cubes = json.load(f)

# Evaluate matching precision for all 2,042 unmapped cubes
precise_mappings = {}

for iid, cube_name, itype in unmapped_cubes:
    c_lower = cube_name.lower()
    
    # Priority 1: Check Exchange Table
    if iid in exchange_map and exchange_map[iid]:
        precise_mappings[iid] = {
            "source": "ItemExchangeTable",
            "items": list(set(exchange_map[iid]))
        }
        continue

    # Priority 2: Check Convert Table
    if iid in convert_map and convert_map[iid]:
        precise_mappings[iid] = {
            "source": "ItemConvertTable",
            "items": list(set(convert_map[iid]))
        }
        continue

    # Priority 3: Direct Item Name Match (Strip "Cube", "Package", "Set")
    clean_name = re.sub(r"\s*(?:Cube|Package|패키지|큐브|상자|세트|Set|\(\d+\s*Days?\))\s*$", "", cube_name, flags=re.IGNORECASE).strip().lower()
    if clean_name in items_by_name:
        targets = [it["id"] for it in items_by_name[clean_name] if it["id"] != iid]
        if targets:
            precise_mappings[iid] = {
                "source": "DirectItemNameMatch",
                "items": targets[:6]
            }
            continue

    # Priority 4: Character Avatar Package Prefix Matching
    found_char = None
    for ch in chars:
        if ch in c_lower:
            found_char = ch
            break

    m_pkg = re.search(r"^(.*?)(?:\s*(?:Package|패키지|Cube|큐브|Set|세트))\s*(\([^)]+\))?$", cube_name, re.IGNORECASE)
    if m_pkg:
        base_set = m_pkg.group(1).strip().lower()
        color_var = m_pkg.group(2).strip().lower() if m_pkg.group(2) else ""

        clean_base = base_set
        if found_char and clean_base.startswith(found_char):
            clean_base = clean_base[len(found_char):].strip()

        search_pool = fashion_by_char[found_char] if found_char else items_by_id.values()
        matched_pieces = []
        for item_obj in search_pool:
            item_name_lower = item_obj["name"].lower()
            if item_obj["id"] == iid:
                continue
            if clean_base and clean_base in item_name_lower:
                if color_var and color_var not in item_name_lower:
                    continue
                matched_pieces.append(item_obj["id"])

        if matched_pieces:
            precise_mappings[iid] = {
                "source": "AvatarPackagePrefixMatch",
                "items": list(set(matched_pieces))[:8]
            }
            continue

print(f"\nTotal Precisely Resolved Cubes/Packages: {len(precise_mappings)} / {len(unmapped_cubes)}")

# Distribution of sources
sources_count = defaultdict(int)
for v in precise_mappings.values():
    sources_count[v["source"]] += 1

for src, cnt in sorted(sources_count.items()):
    print(f"  {src:25s}: {cnt} items")
