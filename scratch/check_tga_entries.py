import re
from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")

def main():
    # Search all lua files for DLG_Unit_Select
    files = list(ROOT.rglob("*.lua"))
    found = []
    for p in files:
        try:
            text = p.read_text(encoding="utf-8-sig", errors="replace")
            matches = re.findall(r'"(DLG_Unit_Select\d*\.[tT][gG][aA])"', text)
            for m in matches:
                found.append((p.relative_to(ROOT), m))
        except Exception:
            pass
            
    print(f"=== Found {len(found)} references to DLG_Unit_Select TGA files ===")
    for path, tga in sorted(set(found)):
        print(f"  {path}: {tga}")

if __name__ == "__main__":
    main()
