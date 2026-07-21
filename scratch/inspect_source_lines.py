import re
from pathlib import Path

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

def inspect_lines(p, count=25):
    if not p.exists():
        print(f"File {p} does NOT exist!")
        return
    print(f"=== {p.name} sample lines ===")
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            lines = [l for l in p.read_text(encoding=enc).splitlines() if l.strip() and not l.strip().startswith("--")]
            for l in lines[:count]:
                print(l[:140])
            return
        except Exception:
            continue

inspect_lines(ELSWORD / "ClientScript" / "Major" / "SetItem.lua")
inspect_lines(ELSWORD / "ClientScript" / "Major" / "ItemExchangeTable.lua")
inspect_lines(ELSWORD / "ClientScript" / "Major" / "ItemConvertTable.lua")
inspect_lines(ELSWORD / "GameServer" / "RandomItemTable.lua")
