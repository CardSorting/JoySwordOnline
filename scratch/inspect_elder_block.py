import sys
from pathlib import Path

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

shop_file = ELSWORD / "ClientScript" / "Major" / "ShopItem.lua"
content = shop_file.read_text(encoding="utf-8", errors="ignore")

pos = content.find("VILLIAGE_ID = VILLAGE_MAP_ID.VMI_ELDER")
if pos != -1:
    end = content.find("VILLIAGE_ID = VILLAGE_MAP_ID.VMI_", pos + 40)
    if end == -1:
        end = pos + 3000
    print("=== ELDER VILLAGE BLOCK IN SHOPITEM.LUA ===")
    print(content[pos:end])
