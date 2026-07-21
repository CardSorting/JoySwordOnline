import json
import sys
from pathlib import Path
from collections import Counter, defaultdict

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
with open(ROOT / "scratch" / "deep_audit_summary.json", "r", encoding="utf-8") as f:
    data = json.load(f)

# Let's inspect the item names and types in "other"
others = data['sample_others']
print(f"Total 'others': {data['bucket_counts']['other']}")

types_count = Counter()
pos_count = Counter()
keywords = Counter()

# Let's load all unrecovered items from scratch script
sys.path.append(str(ROOT / "scratch"))
import deep_item_investigation

priced_unrecovered = deep_item_investigation.priced_unrecovered

other_items = [item for item in priced_unrecovered if deep_item_investigation.buckets["other"].count(item) or item in deep_item_investigation.buckets["other"]]

print(f"Loaded {len(other_items)} items in 'other' bucket.")

# Classify 'other' items by name keywords
kw_buckets = defaultdict(list)
for item in other_items:
    name = item['name']
    cmt = item['comment']
    full = f"{name} {cmt}".strip()
    
    if not full:
        kw_buckets["unnamed_raw_id"].append(item)
    elif any(w in full for w in ["Skill", "스킬", "Note", "노트"]):
        kw_buckets["skill_note"].append(item)
    elif any(w in full for w in ["Ticket", "권", "Exchange", "교환권", "전직"]):
        kw_buckets["exchange_ticket"].append(item)
    elif any(w in full for w in ["Cube", "큐브", "Chest", "상자"]):
        kw_buckets["cube_chest"].append(item)
    elif any(w in full for w in ["Stone", "석", "Magic", "마법석", "El", "엘의"]):
        kw_buckets["magic_stones_materials"].append(item)
    elif any(w in full for w in ["Potion", "포션", "Elixir", "영약", "Drink", "음료", "Food"]):
        kw_buckets["potions_consumables"].append(item)
    elif any(w in full for w in ["Ring", "반지", "Necklace", "목걸이", "Earring", "귀걸이", "Wings", "날개", "Crown", "왕관", "Mask", "마스크", "Glasses", "안경", "Aura", "오라", "Hair", "헤어", "Cap", "모자"]):
        kw_buckets["accessory_and_costume_parts"].append(item)
    elif any(w in full for w in ["Scroll", "주문서", "Fluorite", "플루오르", "Blessed", "축복받은"]):
        kw_buckets["enhancement_scrolls"].append(item)
    else:
        kw_buckets["miscellaneous"].append(item)

print("\n--- Sub-breakdown of 'other' (6,968 items) ---")
for k, v in sorted(kw_buckets.items(), key=lambda x: len(x[1]), reverse=True):
    print(f"  {k:30s}: {len(v)} items (e.g. '{v[0]['name'] or v[0]['comment'] or v[0]['id']}')")

# Print samples of unnamed_raw_id or cube_chest or costume parts
print("\nSample 'cube_chest':")
for item in kw_buckets["cube_chest"][:5]:
    print(f"  ID {item['id']}: name='{item['name']}', price={item['price']}")

print("\nSample 'accessory_and_costume_parts':")
for item in kw_buckets["accessory_and_costume_parts"][:5]:
    print(f"  ID {item['id']}: name='{item['name']}', price={item['price']}")

print("\nSample 'exchange_ticket':")
for item in kw_buckets["exchange_ticket"][:5]:
    print(f"  ID {item['id']}: name='{item['name']}', price={item['price']}")
