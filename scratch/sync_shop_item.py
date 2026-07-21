import sys
from pathlib import Path

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

src = ELSWORD / "ClientScript" / "Major" / "ShopItem.lua"
dst = ELSWORD / "_ClientScript" / "Major" / "ShopItem.lua"

if src.exists() and dst.exists():
    dst.write_text(src.read_text(encoding="utf-8"), encoding="utf-8", newline="\n")
    print("Synced ShopItem.lua from ClientScript to _ClientScript.")
