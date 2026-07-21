import re
import sys
from pathlib import Path

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

print("=== SEARCH FOR ALL SHOP LUA FILES ===")

shop_files = []
for p in ELSWORD.rglob("*.lua"):
    name_lower = p.name.lower()
    if any(k in name_lower for k in ["shop", "store", "npc", "exchange", "vendor", "buy"]):
        shop_files.append(p)

print(f"Found {len(shop_files)} lua files matching shop/npc/store/exchange:")
for sf in shop_files:
    print("  ", sf.relative_to(ELSWORD))

# Also search contents for AddNPCShopItem / AddNPCShop / AddShopItem / AddItemToShop
print("\nSearching function call patterns in lua files...")
patterns = [
    r"AddNPCShop\w*",
    r"AddShop\w*",
    r"g_pNPCShop\w*",
    r"g_pNPCManager\w*",
    r"AddItemExchange\w*",
    r"AddManufacture\w*"
]

matches_found = defaultdict(list)
for p in ELSWORD.rglob("*.lua"):
    content = read_text(p)
    for pat in patterns:
        for m in re.finditer(pat, content):
            matches_found[pat].append((p.relative_to(ELSWORD), m.group(0)))

for pat, hits in matches_found.items():
    print(f"\nPattern '{pat}': {len(hits)} hits")
    for fpath, match_str in hits[:8]:
        print(f"  {fpath}: {match_str}")
