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

print("=== CHECK & UPDATE ECHO SHOP ITEMS & ED PRICES ===")

# Item files
item_files = [
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
]

# Items to add to Echo Shop
echo_items = [
    108900,   # Ice Burner Heater
    207500,   # Ice Burner Key
    69423,    # Mystery Key / Cube Key
    85002870, # Archangel Burner
    85002440, # Nasod Battle Suit Burner
    85002872, # Velder Imperial Guard Burner
    85002874, # Salvatore Solace Burner
    85002876, # Archdevil Burner
    84001710, # Royal Maid Burner
    85003722, # Officer Burner
    85003820, # Holy Unicorn Burner
    131377,   # Event Ice Burner
    104910,   # Tree of El's Magic Cube
    98001,    # Epic NPC Card Cube
    98002,    # Fighter's Ring Cube
    98021,    # Magic Necklace Cube
    130269,   # Orichalcum Accessory Cube
    131262,   # Velder Boss Cube
    133471,   # Hamel Boss Cube
    131374,   # Enhancement Amulet Cube (Lv.5-8)
    131583,   # Enhancement Amulet Cube
]

print(f"Targeting {len(echo_items)} Ice Burner Heaters, Keys, and Mystery Cubes for Echo NPC Shop.")
