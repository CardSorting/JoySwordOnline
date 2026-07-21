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

print("=== COMPILE ALL ICE BURNER RARE ITEMS ===")

# Parse Item.lua metadata
item_files = [
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item_EN.lua",
]

item_id_re = re.compile(r"m_ItemID\s*=\s*(\d+)")
name_re = re.compile(r'm_Name\s*=\s*KStringRes\(\s*"([^"]+)"')
name_str_re = re.compile(r'm_Name\s*=\s*"([^"]+)"')

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
        name = m_name.group(1) if m_name else ""
        items_by_id[iid] = name

# Find all Ice Burner Rare Sets & Accessories in Item.lua
ib_sets = (
    "Archangel", "Archdevil", "Salvatore Solace", "Velder Imperial Guard", "Hamel Navy",
    "Royal Maid", "Dragon Knight", "Miracle Alchemist", "Ignition Caligo", "Grace Fairy",
    "Holy Unicorn", "Gold Yaksha", "Royal Blood", "Dark Shadows", "Officer", " 장교", "아크엔젤", "아크데빌", "살바토르"
)

ib_wearables = []
for iid, name in items_by_id.items():
    name_lower = name.lower()
    if any(set_name.lower() in name_lower for set_name in ib_sets):
        ib_wearables.append((iid, name))

print(f"Found {len(ib_wearables)} Rare Ice Burner Wearable & Accessory items in Item.lua.")

# Also find Enhancement Amulets (+7, +8, +9, +10, +11, +12)
amulets = []
for iid, name in items_by_id.items():
    if "amulet" in name.lower() or "강화의 부적" in name:
        amulets.append((iid, name))

print(f"Found {len(amulets)} Enhancement Amulet items in Item.lua.")

print("\nSample Rare Ice Burner Wearables:")
for iid, name in ib_wearables[:15]:
    print(f"  ID {iid:9d}: '{name}'")

print("\nSample Enhancement Amulets:")
for iid, name in amulets[:10]:
    print(f"  ID {iid:9d}: '{name}'")
