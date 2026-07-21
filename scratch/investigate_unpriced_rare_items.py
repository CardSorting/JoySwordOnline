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

# Load prices
price_file = ELSWORD / "ServerResource" / "CashItemPrice.lua"
price_pattern = re.compile(r"AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)")
prices = set()
for line in read_text(price_file).splitlines():
    m = price_pattern.search(line)
    if m:
        prices.add(int(m.group(1)))

print(f"Priced items count: {len(prices)}")

# Parse Item.lua for cash items, fashion, gacha, cubes, packages, pets, mounts
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
cash_re = re.compile(r"m_bCashItem\s*=\s*(true|false)")
pos_re = re.compile(r"m_EqipPosition\s*=\s*EQUIP_POSITION\[\"([^\"]+)\"\]")

unpriced_rare_items = []
all_items = {}

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
        if iid in all_items:
            continue
        
        m_name = name_re.search(block[:600]) or name_str_re.search(block[:600])
        m_type = type_re.search(block[:600])
        m_fash = fashion_re.search(block[:600])
        m_cash = cash_re.search(block[:600])
        m_pos = pos_re.search(block[:600])
        
        name = m_name.group(1) if m_name else ""
        itype = m_type.group(1) if m_type else ""
        fashion = (m_fash.group(1) == "true") if m_fash else False
        is_cash = (m_cash.group(1) == "true") if m_cash else False
        pos = m_pos.group(1) if m_pos else ""
        
        all_items[iid] = {
            "name": name,
            "type": itype,
            "fashion": fashion,
            "cash": is_cash,
            "pos": pos,
        }
        
        if iid not in prices:
            # Check if this item looks like a Cash Shop or Rare item
            name_lower = name.lower()
            if fashion or is_cash or itype in ("IT_AVATAR", "IT_CASH", "IT_PET", "IT_RIDING") or any(w in name_lower for w in ["cube", "ice burner", "heater", "avatar", "costume", "package", "pet", "mount", "magic stone", "fluorite", "scroll"]):
                unpriced_rare_items.append({
                    "id": iid,
                    "name": name,
                    "type": itype,
                    "fashion": fashion,
                    "cash": is_cash,
                    "pos": pos
                })

print(f"Total item templets in Item.lua: {len(all_items)}")
print(f"Unpriced potential Cash Shop / Rare Items: {len(unpriced_rare_items)}")

# Group unpriced by type / keywords
unpriced_buckets = defaultdict(list)
for item in unpriced_rare_items:
    name = item["name"].lower()
    if item["fashion"] or "avatar" in name or "costume" in name or "hair" in name or "top" in name or "bottom" in name or "shoes" in name or "gloves" in name or "weapon" in name:
        unpriced_buckets["fashion_wearable"].append(item)
    elif "cube" in name or "ice burner" in name or "heater" in name:
        unpriced_buckets["gacha_cubes"].append(item)
    elif "pet" in name or item["type"] == "IT_PET":
        unpriced_buckets["pets"].append(item)
    elif "mount" in name or "riding" in name or item["type"] == "IT_RIDING":
        unpriced_buckets["mounts"].append(item)
    else:
        unpriced_buckets["other_rare_items"].append(item)

print("\n--- Breakdown of UNPRICED Cash Shop / Rare Items ---")
for bucket, items in sorted(unpriced_buckets.items()):
    print(f"Bucket '{bucket}': {len(items)} items")
    for sample in items[:5]:
        print(f"  ID {sample['id']}: name='{sample['name']}', type='{sample['type']}', fashion={sample['fashion']}")

# Check SetItem.lua for rare sets (e.g. Ice Burners like Archangel, Ignition Caligo, Salvatore Solace, Miracle Alchemist, Archdevil, Royal Maid, Imperial Guard, Hamel Navy, Velder Academy, Grace Fairy, Holy Unicorn)
set_file = ELSWORD / "ClientScript" / "Major" / "SetItem.lua"
set_content = read_text(set_file)
set_ids = re.findall(r"AddSetItemTemplet\(\s*(\d+)\s*,?\s*--\s*(.*)", set_content)
print(f"\nTotal Item Sets in SetItem.lua: {len(set_ids)}")
for sid, comment in set_ids[:20]:
    print(f"  Set ID {sid}: {comment.strip()}")
