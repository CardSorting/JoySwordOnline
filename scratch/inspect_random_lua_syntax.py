from pathlib import Path

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

def inspect_random_file(p):
    if not p.exists():
        print(f"File {p} does NOT exist!")
        return
    print(f"=== {p.relative_to(ELSWORD)} ===")
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            lines = [l for l in p.read_text(encoding=enc).splitlines() if l.strip() and not l.strip().startswith("--")]
            for l in lines[:30]:
                print(l[:140])
            return
        except Exception as e:
            continue

inspect_random_file(ELSWORD / "ServerResource" / "RandomItemData.lua")
inspect_random_file(ELSWORD / "GameServer" / "RandomItemData.lua")
inspect_random_file(ELSWORD / "GameServer" / "RandomItemTable.lua")
