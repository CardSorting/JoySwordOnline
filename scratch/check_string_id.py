from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
STR_FILE1 = ROOT / "Elsword" / "ClientScript" / "Major" / "StringID_def.lua"
STR_FILE2 = ROOT / "Elsword" / "Resources" / "StringID_def.lua"

def main():
    for p in (STR_FILE1, STR_FILE2):
        if p.exists():
            text = p.read_text(encoding="utf-8-sig", errors="replace")
            if "STR_ID_25873" in text:
                print(f"Found STR_ID_25873 in {p.relative_to(ROOT)}")
            else:
                print(f"STR_ID_25873 is MISSING from {p.relative_to(ROOT)}!")
        else:
            print(f"File {p} does not exist!")

if __name__ == "__main__":
    main()
