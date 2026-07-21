import re
from pathlib import Path

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

def find_non_empty_lines(path, count=20):
    if not path.exists():
        print(f"File {path} does NOT exist!")
        return
    print(f"=== {path.name} Non-empty sample ===")
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            lines = [l for l in path.read_text(encoding=enc).splitlines() if l.strip() and not l.strip().startswith("--")]
            for l in lines[:count]:
                print(l[:140])
            return
        except Exception:
            continue

find_non_empty_lines(ELSWORD / "ClientScript" / "Major" / "PetTemplet.lua")
find_non_empty_lines(ELSWORD / "ClientScript" / "Major" / "RidingPetTemplet.lua")
find_non_empty_lines(ELSWORD / "ServerResource" / "RandomItemData.lua")
find_non_empty_lines(ELSWORD / "ServerResource" / "RandomItemMapping.lua")
find_non_empty_lines(ELSWORD / "ClientScript" / "Major" / "IceHeaterEvent.lua")
find_non_empty_lines(ELSWORD / "ClientScript" / "Major" / "AttractionRandomItemData.lua")
find_non_empty_lines(ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua")
