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

print("=== DEEP SOURCE MAPPING INVESTIGATION ===")

# 1. Parse SetItem.lua
set_file = ELSWORD / "ClientScript" / "Major" / "SetItem.lua"
set_content = read_text(set_file)
set_templets = {}
for m in re.finditer(r"AddSetItemTemplet\(\s*(\d+)\s*,\s*\"([^\"]+)\"", set_content):
    set_templets[int(m.group(1))] = m.group(2)

set_components = defaultdict(list)
for m in re.finditer(r"AddSetItemComponent\(\s*(\d+)\s*,\s*(\d+)", set_content):
    set_components[int(m.group(1))].append(int(m.group(2)))

print(f"SetItem.lua: {len(set_templets)} set templets, {sum(len(v) for v in set_components.values())} set components.")

# 2. Parse ItemExchangeTable.lua
exchange_file = ELSWORD / "ClientScript" / "Major" / "ItemExchangeTable.lua"
exchange_content = read_text(exchange_file)
exchange_mappings = defaultdict(list)
# AddItemExchangeInfo( exchange_id, source_item_id, target_item_id... )
for line in exchange_content.splitlines():
    if "AddItemExchangeInfo" in line:
        nums = [int(x) for x in re.findall(r"\d+", line)]
        if len(nums) >= 3:
            src = nums[1]
            tgt = nums[2]
            exchange_mappings[src].append(tgt)

print(f"ItemExchangeTable.lua: {len(exchange_mappings)} exchange mappings.")

# 3. Parse ItemConvertTable.lua
convert_file = ELSWORD / "ClientScript" / "Major" / "ItemConvertTable.lua"
convert_content = read_text(convert_file)
convert_mappings = defaultdict(list)
for line in convert_content.splitlines():
    if "AddItemConvertInfo" in line or "AddItemConvert" in line:
        nums = [int(x) for x in re.findall(r"\d+", line)]
        if len(nums) >= 3:
            src = nums[1]
            tgt = nums[2]
            convert_mappings[src].append(tgt)

print(f"ItemConvertTable.lua: {len(convert_mappings)} convert mappings.")

# 4. Parse IceHeaterEvent.lua & IceHeaterPreView.lua
heater_event_file = ELSWORD / "ClientScript" / "Major" / "IceHeaterEvent.lua"
heater_event_content = read_text(heater_event_file)
heater_items = set()
for m in re.finditer(r"\d{5,9}", heater_event_content):
    heater_items.add(int(m.group(0)))

print(f"IceHeaterEvent.lua: {len(heater_items)} item references.")

# 5. Parse RandomItemTable.lua (GameServer/RandomItemTable.lua)
rand_table_file = ELSWORD / "GameServer" / "RandomItemTable.lua"
rand_table_content = read_text(rand_table_file)
rand_groups = defaultdict(list)
# AddRandomItemData( group_id, result_item_id, weight, count... )
for line in rand_table_content.splitlines():
    if "AddRandomItemData" in line:
        m = re.search(r"AddRandomItemData\(\s*(\d+)\s*,\s*(\d+)", line)
        if m:
            rand_groups[int(m.group(1))].append(int(m.group(2)))

print(f"RandomItemTable.lua: {len(rand_groups)} random groups with {sum(len(v) for v in rand_groups.values())} item entries.")

# 6. Parse Item.lua (all names, descriptions, comments)
item_files = [
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item_EN.lua",
]

item_id_re = re.compile(r"m_ItemID\s*=\s*(\d+)")
name_re = re.compile(r'm_Name\s*=\s*KStringRes\(\s*"([^"]+)"')
name_str_re = re.compile(r'm_Name\s*=\s*"([^"]+)"')
desc_re = re.compile(r'm_Description\s*=\s*KStringRes\(\s*"([^"]+)"')
desc_str_re = re.compile(r'm_Description\s*=\s*"([^"]+)"')
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
        m_id = item_id_re.search(block[:600])
        if not m_id:
            continue
        iid = int(m_id.group(1))
        if iid in items_by_id:
            continue
        m_name = name_re.search(block[:600]) or name_str_re.search(block[:600])
        m_desc = desc_re.search(block[:600]) or desc_str_re.search(block[:600])
        m_type = type_re.search(block[:600])
        m_fash = fashion_re.search(block[:600])

        name = m_name.group(1) if m_name else ""
        desc = m_desc.group(1) if m_desc else ""
        itype = m_type.group(1) if m_type else ""
        fashion = (m_fash.group(1) == "true") if m_fash else False

        item_obj = {
            "id": iid,
            "name": name,
            "desc": desc,
            "type": itype,
            "fashion": fashion
        }
        items_by_id[iid] = item_obj
        if name:
            items_by_name[name.lower()].append(item_obj)

print(f"Total Item Metadata Entries: {len(items_by_id)}")

# Save summary of all parsed sources
summary_out = {
    "set_templets_count": len(set_templets),
    "set_components_count": sum(len(v) for v in set_components.values()),
    "exchange_mappings_count": len(exchange_mappings),
    "convert_mappings_count": len(convert_mappings),
    "random_groups_count": len(rand_groups),
    "item_metadata_count": len(items_by_id)
}
with open(ROOT / "scratch" / "deep_sources_summary.json", "w", encoding="utf-8") as f:
    json.dump(summary_out, f, indent=2)

print("\nSaved scratch/deep_sources_summary.json")
