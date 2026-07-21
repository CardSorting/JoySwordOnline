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

print("=== INSPECT ICE BURNER DROP CHANCES & WEIGHTS ===")

# 1. Inspect ServerResource/RandomItemData.lua & GameServer/RandomItemData.lua
sr_random_file = ELSWORD / "ServerResource" / "RandomItemData.lua"
gs_random_file = ELSWORD / "GameServer" / "RandomItemData.lua"

sr_text = read_text(sr_random_file)

# Parse AddRandomItemData( group_id, result_item_id, weight, count, ... )
# Or AddSealRandomItemInfo / AddAttractionRandomItemInfo
random_groups = defaultdict(list)
# Match AddRandomItemData( GroupID, ItemID, Weight, Count ... )
pattern = re.compile(r"AddRandomItemData\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)")

for line in sr_text.splitlines():
    m = pattern.search(line)
    if m:
        group_id = int(m.group(1))
        item_id = int(m.group(2))
        weight = int(m.group(3))
        random_groups[group_id].append((item_id, weight, line.strip()))

print(f"Total Random Groups in RandomItemData.lua: {len(random_groups)}")

# Analyze weight distribution per group
group_weight_stats = []
for gid, items in random_groups.items():
    weights = [w for _, w, _ in items]
    total_weight = sum(weights)
    min_w = min(weights) if weights else 0
    max_w = max(weights) if weights else 0
    group_weight_stats.append({
        "group_id": gid,
        "item_count": len(items),
        "total_weight": total_weight,
        "min_weight": min_w,
        "max_weight": max_w,
        "items": items
    })

print(f"Parsed {len(group_weight_stats)} group weight distributions.")

# Inspect sample groups with low weights / high disparity
disparate_groups = [g for g in group_weight_stats if g["max_weight"] > g["min_weight"] * 5]
print(f"Groups with high weight disparity (rare drops under 10% chance): {len(disparate_groups)}")

for g in disparate_groups[:5]:
    print(f"\n--- Group ID {g['group_id']} (Total Weight: {g['total_weight']}, Items: {g['item_count']}) ---")
    for item_id, weight, line in g["items"][:10]:
        pct = (weight / g['total_weight']) * 100 if g['total_weight'] else 0
        print(f"  Item {item_id:9d}: weight={weight:6d} ({pct:6.2f}%) -> {line[-60:]}")
