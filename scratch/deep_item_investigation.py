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

print("--- Step 1: Parse CashItemPrice.lua ---")
price_file = ELSWORD / "ServerResource" / "CashItemPrice.lua"
price_pattern = re.compile(r"AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?")
prices = {}
price_comments = {}

for line in read_text(price_file).splitlines():
    m = price_pattern.search(line)
    if m:
        iid = int(m.group(1))
        pr = int(m.group(2))
        cmt = (m.group(3) or "").strip()
        prices[iid] = pr
        price_comments[iid] = cmt

print(f"Total items in CashItemPrice.lua: {len(prices)}")

print("\n--- Step 2: Parse Active & Legacy CashShopItemList.lua ---")
active_shop_file = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"
legacy_shop_file = ELSWORD / "_ClientScript" / "Major" / "CashShopItemList.lua"

active_shop_items = set()
for m in re.finditer(r"\{\s*(\d+)\s*,\s*\}", read_text(active_shop_file)):
    active_shop_items.add(int(m.group(1)))

legacy_shop_items = {}
for line in read_text(legacy_shop_file).splitlines():
    m = re.search(r"^\s*(\d+)\s*,?\s*--\s*(.*)$", line)
    if m:
        legacy_shop_items[int(m.group(1))] = m.group(2).strip()

print(f"Active CashShopItemList items: {len(active_shop_items)}")
print(f"Legacy CashShopItemList items: {len(legacy_shop_items)}")

print("\n--- Step 3: Parse PackageItemData.lua ---")
pkg_file = ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua"
pkg_pattern = re.compile(r"AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)\s*,")
packages = defaultdict(list)
for line in read_text(pkg_file).splitlines():
    m = pkg_pattern.search(line)
    if m:
        pkg_id = int(m.group(1))
        item_id = int(m.group(2))
        packages[pkg_id].append(item_id)

print(f"Total packages in PackageItemData.lua: {len(packages)}")

print("\n--- Step 4: Parse Item.lua metadata ---")
item_meta = {}

item_files = [
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item_EN.lua",
]

block_start_re = re.compile(r"g_pItemManager:AddItemTemplet\s*\(\s*\{")
item_id_re = re.compile(r"m_ItemID\s*=\s*(\d+)")
name_re = re.compile(r'm_Name\s*=\s*KStringRes\(\s*"([^"]+)"')
name_str_re = re.compile(r'm_Name\s*=\s*"([^"]+)"')
type_re = re.compile(r"m_ItemType\s*=\s*ITEM_TYPE\[\"([^\"]+)\"\]")
fashion_re = re.compile(r"m_bFashion\s*=\s*(true|false)")
pos_re = re.compile(r"m_EqipPosition\s*=\s*EQUIP_POSITION\[\"([^\"]+)\"\]")

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
        if iid in item_meta:
            continue
        m_name = name_re.search(block[:500]) or name_str_re.search(block[:500])
        m_type = type_re.search(block[:500])
        m_fash = fashion_re.search(block[:500])
        m_pos = pos_re.search(block[:500])
        
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

print("\n--- Step 5: Categorize items priced in CashItemPrice.lua ---")
priced_unrecovered = []
for iid, price in prices.items():
    if iid not in active_shop_items:
        meta = item_meta.get(iid, {})
        cmt = price_comments.get(iid, "")
        leg_cmt = legacy_shop_items.get(iid, "")
        priced_unrecovered.append({
            "id": iid,
            "price": price,
            "comment": cmt or leg_cmt,
            "name": meta.get("name", ""),
            "type": meta.get("type", ""),
            "fashion": meta.get("fashion", False),
            "pos": meta.get("pos", ""),
            "is_package": iid in packages,
            "package_item_count": len(packages[iid]) if iid in packages else 0
        })

print(f"Total priced items NOT in active CashShopItemList: {len(priced_unrecovered)}")

buckets = defaultdict(list)
for item in priced_unrecovered:
    cmt = (item["comment"] + " " + item["name"]).lower()
    itype = item["type"]
    iid = item["id"]
    
    if item["is_package"]:
        buckets["package"].append(item)
    elif "얼음" in item["comment"] or "가열기" in item["comment"] or "ice" in cmt or "heater" in cmt or "burner" in cmt:
        buckets["ice_burner_cube"].append(item)
    elif "생명의" in item["comment"] or "펫" in item["comment"] or "pet" in cmt or "미니미" in item["comment"]:
        buckets["pet"].append(item)
    elif "소환석" in item["comment"] or "탈것" in item["comment"] or "mount" in cmt or "라이딩" in item["comment"]:
        buckets["mount"].append(item)
    elif item["fashion"] or "아바타" in item["comment"] or "코스튬" in item["comment"] or "원피스" in item["comment"] or "상의" in item["comment"] or "하의" in item["comment"] or "무기" in item["comment"] or "헤어" in item["comment"]:
        buckets["costume_piece"].append(item)
    elif "주문서" in item["comment"] or "플루오르" in item["comment"] or "복원" in item["comment"] or "포션" in item["comment"] or "스킬" in item["comment"] or "비전서" in item["comment"] or "각인" in item["comment"] or "강화" in item["comment"]:
        buckets["consumable_scroll"].append(item)
    elif "액세" in item["comment"] or "악세" in item["comment"] or "날개" in item["comment"] or "반지" in item["comment"] or "목걸이" in item["comment"] or "안경" in item["comment"] or "가면" in item["comment"] or "오라" in item["comment"]:
        buckets["accessory"].append(item)
    elif "슬롯" in item["comment"] or "확장" in item["comment"] or "인벤" in item["comment"] or "초기화" in item["comment"] or "변경권" in item["comment"]:
        buckets["qol_expansion"].append(item)
    else:
        buckets["other"].append(item)

print("\n--- Bucket Analysis of Unrecovered Priced Items ---")
for bucket, items in sorted(buckets.items()):
    print(f"Bucket '{bucket}': {len(items)} items")

unrecovered_pkgs = buckets["package"]
print(f"\nUnrecovered Packages: {len(unrecovered_pkgs)}")
for pkg in unrecovered_pkgs[:10]:
    print(f"  ID {pkg['id']}: price={pkg['price']}, items_count={pkg['package_item_count']}, cmt='{pkg['comment']}'")

unrecovered_ib = buckets["ice_burner_cube"]
print(f"\nUnrecovered Ice Burners / Cubes: {len(unrecovered_ib)}")
for ib in unrecovered_ib[:10]:
    print(f"  ID {ib['id']}: price={ib['price']}, cmt='{ib['comment']}'")

summary_data = {
    "total_priced": len(prices),
    "active_shop_count": len(active_shop_items),
    "legacy_shop_count": len(legacy_shop_items),
    "unrecovered_priced_count": len(priced_unrecovered),
    "bucket_counts": {b: len(it) for b, it in buckets.items()},
    "sample_packages": unrecovered_pkgs[:30],
    "sample_ice_burners": unrecovered_ib[:30],
    "sample_pets": buckets["pet"][:20],
    "sample_mounts": buckets["mount"][:20],
    "sample_costumes": buckets["costume_piece"][:20],
    "sample_accessories": buckets["accessory"][:20],
    "sample_consumables": buckets["consumable_scroll"][:20],
    "sample_others": buckets["other"][:30]
}

with open(ROOT / "scratch" / "deep_audit_summary.json", "w", encoding="utf-8") as f:
    json.dump(summary_data, f, indent=2, ensure_ascii=False)

print("\nSaved deep analysis to scratch/deep_audit_summary.json")
