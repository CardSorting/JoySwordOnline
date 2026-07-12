import re
from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")

def main():
    found = []
    for p in ROOT.rglob("*"):
        if p.is_file() and p.suffix.lower() in (".xml", ".txt", ".xet", ".lua"):
            try:
                text = p.read_text(encoding="utf-8-sig", errors="replace")
                if "Unit_Select_Elsword_Name" in text:
                    found.append(p.relative_to(ROOT))
            except Exception:
                pass
    print("=== Found matches ===")
    for p in found:
        print(f"  {p}")

if __name__ == "__main__":
    main()
