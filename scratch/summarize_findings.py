import sys
import json
from pathlib import Path

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
with open(ROOT / "scratch" / "deep_audit_summary.json", "r", encoding="utf-8") as f:
    data = json.load(f)

print("=== DEEP AUDIT BREAKDOWN ===")
print(f"Total Priced Cash Items: {data['total_priced']}")
print(f"Active Storefront Items: {data['active_shop_count']}")
print(f"Unrecovered Priced Items: {data['unrecovered_priced_count']}")

print("\n=== UNRECOVERED BUCKET TOTALS ===")
for b, count in data['bucket_counts'].items():
    print(f"  {b:20s}: {count}")

print("\n=== SAMPLE UNRECOVERED PACKAGES (with items) ===")
for pkg in data['sample_packages'][:10]:
    print(f"  Package ID {pkg['id']}: price={pkg['price']}, items={pkg['package_item_count']}, cmt='{pkg['comment']}', name='{pkg['name']}'")

print("\n=== SAMPLE UNRECOVERED ICE BURNER / CUBES ===")
for ib in data['sample_ice_burners'][:10]:
    print(f"  Cube/IB ID {ib['id']}: price={ib['price']}, cmt='{ib['comment']}', name='{ib['name']}'")

print("\n=== SAMPLE UNRECOVERED PETS & MOUNTS ===")
for p in data['sample_pets'][:5]:
    print(f"  Pet ID {p['id']}: price={p['price']}, cmt='{p['comment']}', name='{p['name']}'")
for m in data['sample_mounts'][:5]:
    print(f"  Mount ID {m['id']}: price={m['price']}, cmt='{m['comment']}', name='{m['name']}'")
