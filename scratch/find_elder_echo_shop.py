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

print("=== FIND ELDER VILLAGE & ECHO NPC IN SHOPITEM.LUA ===")

shop_file = ELSWORD / "ClientScript" / "Major" / "ShopItem.lua"
text = read_text(shop_file)

# Search for VMI_ELDER or ELDER or ECHO
blocks = text.split("AddShopItemList_LUA")
print(f"Total AddShopItemList_LUA blocks: {len(blocks)}")

for i, b in enumerate(blocks):
    if "VMI_ELDER" in b or "ELDER" in b or "ECHO" in b or "에코" in b:
        print(f"\n--- Block {i} ---")
        print(b[:600])
