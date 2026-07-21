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

print("=== INSPECT SHOPITEM.LUA & ITEMEXCHANGETABLE.LUA ===")

shopitem_file = ELSWORD / "ClientScript" / "Major" / "ShopItem.lua"
shop_text = read_text(shopitem_file)

lines = [l for l in shop_text.splitlines() if l.strip() and not l.strip().startswith("--")]

print(f"Total active lines in ShopItem.lua: {len(lines)}")
print("Sample lines from ShopItem.lua:")
for l in lines[:30]:
    print("  ", l[:140])

# Find function names in ShopItem.lua
funcs = set(re.findall(r"g_p\w+:\w+", shop_text))
print(f"\nFunction calls in ShopItem.lua: {funcs}")

# Inspect ItemExchangeTable.lua
exchange_file = ELSWORD / "ClientScript" / "Major" / "ItemExchangeTable.lua"
ex_text = read_text(exchange_file)

ex_lines = [l for l in ex_text.splitlines() if l.strip() and not l.strip().startswith("--")]
print(f"\nTotal active lines in ItemExchangeTable.lua: {len(ex_lines)}")
print("Sample lines from ItemExchangeTable.lua:")
for l in ex_lines[:20]:
    print("  ", l[:140])
