import re
import sys
from pathlib import Path
from collections import defaultdict

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

p = ELSWORD / "GameServer" / "RandomItemTable.lua"
text = p.read_text(encoding="utf-8", errors="ignore")

# Parse AddRandomItemGroup( GroupID, ItemID, Weight, Period, Quantity )
# Pattern: AddRandomItemGroup( GroupID, ItemID, Weight, Period, Quantity )
pattern = re.compile(r"AddRandomItemGroup\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*\)")

groups = defaultdict(list)
for line in text.splitlines():
    m = pattern.search(line)
    if m:
        gid = int(m.group(1))
        item_id = int(m.group(2))
        weight = int(m.group(3))
        period = int(m.group(4))
        qty = int(m.group(5))
        groups[gid].append({
            "item_id": item_id,
            "weight": weight,
            "period": period,
            "qty": qty,
            "line": line.strip()
        })

print(f"Total parsed Random Item Groups: {len(groups)}")

# Load Item.lua names
item_files = [
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item_EN.lua",
]

item_id_re = re.compile(r"m_ItemID\s*=\s*(\d+)")
name_re = re.compile(r'm_Name\s*=\s*KStringRes\(\s*"([^"]+)"')
name_str_re = re.compile(r'm_Name\s*=\s*"([^"]+)"')

item_names = {}
for item_file in item_files:
    if not item_file.exists():
        continue
    content = item_file.read_text(encoding="utf-8", errors="ignore")
    blocks = content.split("g_pItemManager:AddItemTemplet")
    for block in blocks[1:]:
        m_id = item_id_re.search(block[:500])
        if not m_id:
            continue
        iid = int(m_id.group(1))
        if iid in item_names:
            continue
        m_name = name_re.search(block[:500]) or name_str_re.search(block[:500])
        name = m_name.group(1) if m_name else ""
        item_names[iid] = name

# Inspect Ice Burner Group 502070
ib_groups = [502070, 502071, 501980]
for gid in ib_groups:
    if gid not in groups:
        print(f"\nGroup ID {gid} NOT found!")
        continue
    items = groups[gid]
    total_w = sum(x["weight"] for x in items)
    print(f"\n==================================================")
    print(f"Group ID {gid} (Total Weight: {total_w}, Item Count: {len(items)})")
    print(f"==================================================")
    for entry in items:
        iid = entry["item_id"]
        w = entry["weight"]
        pct = (w / total_w) * 100 if total_w else 0
        name = item_names.get(iid, f"Item {iid}")
        print(f"  Item {iid:9d} | Weight: {w:6d} ({pct:6.2f}%) | Qty: {entry['qty']} | Name: '{name}'")
