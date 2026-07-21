import re
import os
import json
from pathlib import Path

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

def read_file(p):
    if not p.exists():
        return ""
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="ignore")

# 1. Parse CashItemPrice.lua (ServerResource & GameServer)
sr_price_path = ELSWORD / "ServerResource" / "CashItemPrice.lua"
gs_price_path = ELSWORD / "GameServer" / "CashItemPrice.lua"

price_re = re.compile(r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?")

sr_prices = {}
for line in read_file(sr_price_path).splitlines():
    m = price_re.search(line)
    if m:
        item_id = int(m.group(1))
        price = int(m.group(2))
        comment = (m.group(3) or "").strip()
        sr_prices[item_id] = (price, comment)

gs_prices = {}
for line in read_file(gs_price_path).splitlines():
    m = price_re.search(line)
    if m:
        item_id = int(m.group(1))
        price = int(m.group(2))
        comment = (m.group(3) or "").strip()
        gs_prices[item_id] = (price, comment)

print(f"ServerResource CashItemPrice items: {len(sr_prices)}")
print(f"GameServer CashItemPrice items: {len(gs_prices)}")

# 2. Parse Active CashShopItemList.lua
active_shop_path = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"
active_shop_text = read_file(active_shop_path)
active_item_ids = set()
for m in re.finditer(r"\{\s*(\d+)\s*,\s*\}", active_shop_text):
    active_item_ids.add(int(m.group(1)))
for m in re.finditer(r"AddPackageItemData\(\s*(\d+)", active_shop_text):
    active_item_ids.add(int(m.group(1)))

print(f"Active CashShopItemList items/packages: {len(active_item_ids)}")

# 3. Parse Legacy CashShopItemList.lua
legacy_shop_path = ELSWORD / "_ClientScript" / "Major" / "CashShopItemList.lua"
legacy_shop_text = read_file(legacy_shop_path)
legacy_item_ids = set()
legacy_item_comments = {}
for line in legacy_shop_text.splitlines():
    m = re.search(r"^\s*(\d+)\s*,?\s*--\s*(.*)$", line)
    if m:
        iid = int(m.group(1))
        cmt = m.group(2).strip()
        legacy_item_ids.add(iid)
        legacy_item_comments[iid] = cmt

print(f"Legacy CashShopItemList items: {len(legacy_item_ids)}")

# 4. Check prices not in active shop
priced_not_in_active = set(sr_prices.keys()) - active_item_ids
print(f"Priced items NOT in Active CashShopItemList: {len(priced_not_in_active)}")

# 5. Check legacy shop items not in active shop
legacy_not_in_active = legacy_item_ids - active_item_ids
print(f"Legacy shop items NOT in Active CashShopItemList: {len(legacy_not_in_active)}")

# 6. Parse PackageItemData.lua (Active vs Legacy vs Resources)
pkg_active_path = ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua"
pkg_legacy_path = ELSWORD / "_ClientScript" / "Major" / "PackageItemData.lua"

pkg_re = re.compile(r"g_pCashItemManager:AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)")

pkg_active = set()
for line in read_file(pkg_active_path).splitlines():
    m = pkg_re.search(line)
    if m:
        pkg_active.add(int(m.group(1)))

pkg_legacy = set()
for line in read_file(pkg_legacy_path).splitlines():
    m = pkg_re.search(line)
    if m:
        pkg_legacy.add(int(m.group(1)))

print(f"Active PackageItemData packages: {len(pkg_active)}")
print(f"Legacy PackageItemData packages: {len(pkg_legacy)}")
print(f"Packages in Legacy not in Active: {len(pkg_legacy - pkg_active)}")

# 7. Check PetTemplet.lua & RidingPetTemplet.lua
pet_path = ELSWORD / "ClientScript" / "Major" / "PetTemplet.lua"
riding_path = ELSWORD / "ClientScript" / "Major" / "RidingPetTemplet.lua"

pet_text = read_file(pet_path)
riding_text = read_file(riding_path)

pet_create_ids = set(int(x) for x in re.findall(r"m_CreateItemID\s*=\s*(\d+)", pet_text))
riding_create_ids = set(int(x) for x in re.findall(r"m_CreateItemID\s*=\s*(\d+)", riding_text))

print(f"PetTemplet create item IDs: {len(pet_create_ids)}")
print(f"RidingPetTemplet create item IDs: {len(riding_create_ids)}")

pets_not_in_shop = pet_create_ids - active_item_ids
mounts_not_in_shop = riding_create_ids - active_item_ids
print(f"Pets NOT in Active CashShopItemList: {len(pets_not_in_shop)}")
print(f"Mounts NOT in Active CashShopItemList: {len(mounts_not_in_shop)}")

# 8. Check RandomItemData.lua / RandomItemMapping.lua / IceHeaterEvent.lua
random_path = ELSWORD / "ServerResource" / "RandomItemData.lua"
random_text = read_file(random_path)

# Extract item IDs from RandomItemData
random_item_ids = set(int(x) for x in re.findall(r"AddRandomItemData\(\s*\d+\s*,\s*(\d+)", random_text))
print(f"Items in RandomItemData (Gacha/IceBurner pools): {len(random_item_ids)}")
gacha_not_in_shop = random_item_ids - active_item_ids
print(f"Gacha pool items NOT in Active CashShopItemList: {len(gacha_not_in_shop)}")

# Save preliminary report
out_report = {
    "priced_not_in_active_count": len(priced_not_in_active),
    "legacy_not_in_active_count": len(legacy_not_in_active),
    "pets_not_in_shop_count": len(pets_not_in_shop),
    "mounts_not_in_shop_count": len(mounts_not_in_shop),
    "gacha_not_in_shop_count": len(gacha_not_in_shop),
    "priced_not_in_active_sample": sorted(list(priced_not_in_active))[:30],
    "legacy_not_in_active_sample": sorted(list(legacy_not_in_active))[:30],
    "pets_not_in_shop": sorted(list(pets_not_in_shop)),
    "mounts_not_in_shop": sorted(list(mounts_not_in_shop)),
}
with open(ROOT / "scratch" / "audit_summary.json", "w", encoding="utf-8") as f:
    json.dump(out_report, f, indent=2)
print("Saved scratch/audit_summary.json")
