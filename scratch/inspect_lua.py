import re
from pathlib import Path

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

def inspect_file(path, num_lines=30):
    if not path.exists():
        print(f"File {path} does NOT exist!")
        return
    print(f"=== {path.name} (first {num_lines} lines) ===")
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            lines = path.read_text(encoding=enc).splitlines()[:num_lines]
            for i, l in enumerate(lines):
                print(f"{i+1}: {l[:120]}")
            return
        except Exception:
            continue

inspect_file(ELSWORD / "ClientScript" / "Major" / "PetTemplet.lua")
inspect_file(ELSWORD / "ClientScript" / "Major" / "RidingPetTemplet.lua")
inspect_file(ELSWORD / "ServerResource" / "RandomItemData.lua")
inspect_file(ELSWORD / "ServerResource" / "RandomItemMapping.lua")
inspect_file(ELSWORD / "ClientScript" / "Major" / "IceHeaterEvent.lua")
inspect_file(ELSWORD / "ClientScript" / "Major" / "AttractionRandomItemData.lua")
