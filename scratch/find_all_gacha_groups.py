import re
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

print("=== FIND ALL GACHA / ICE BURNER GROUPS & RATIOS ===")

# 1. Parse RandomItemTable.lua
rand_table = ELSWORD / "GameServer" / "RandomItemTable.lua"
content = read_text(rand_table)

pattern = re.compile(r"AddRandomItemGroup\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*\)")

group_items = defaultdict(list)
for line in content.splitlines():
    m = pattern.search(line)
    if m:
        gid = int(m.group(1))
        item_id = int(m.group(2))
        weight = int(m.group(3))
        period = int(m.group(4))
        qty = int(m.group(5))
        group_items[gid].append((item_id, weight, period, qty))

print(f"Total Random Item Groups in RandomItemTable.lua: {len(group_items)}")

# 2. Parse RandomItemMapping.lua (to find which GroupIDs are mapped to Ice Burners)
mapping_file = ELSWORD / "ServerResource" / "RandomItemMapping.lua"
mapping_text = read_text(mapping_file)

ib_mappings = []
# AddRandomItemMappingData( nIndex, iCubeID, iKeyItemID, iBeforeGroupID, iAfterGroupID)
for m in re.finditer(r"AddRandomItemMappingData\(\s*\d+\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)", mapping_text):
    cube_id = int(m.group(1))
    key_id = int(m.group(2))
    g1 = int(m.group(3))
    g2 = int(m.group(4))
    ib_mappings.append((cube_id, key_id, g1, g2))

print(f"Ice Burner mappings in RandomItemMapping.lua: {len(ib_mappings)}")
for cube_id, key_id, g1, g2 in ib_mappings:
    print(f"  Cube ID {cube_id:9d} (Key: {key_id:8d}) -> Group 1: {g1}, Group 2: {g2}")

# 3. Check AttractionRandomItemData.lua
attraction_file = ELSWORD / "ClientScript" / "Major" / "AttractionRandomItemData.lua"
attraction_text = read_text(attraction_file)

attraction_cubes = set(int(x) for x in re.findall(r"AddAttractionRandomItemInfo\(\s*(\d+)", attraction_text))
print(f"Attraction Ice Burners in AttractionRandomItemData.lua: {len(attraction_cubes)}")
