from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
ENUM_STRING = ROOT / "Elsword" / "ClientScript" / "Major" / "EnumString.lua"

def main():
    text = ENUM_STRING.read_text(encoding="utf-8-sig", errors="replace")
    
    # Let's find UNIT_CLASS mapping lines
    lines = text.splitlines()
    found = []
    for idx, line in enumerate(lines):
        if "UNIT_CLASS" in line or "UC_ELSWORD" in line or "UC_ARME" in line:
            found.append((idx + 1, line))
            
    print(f"=== Found {len(found)} references ===")
    for line_num, content in found[:50]:
        print(f"  Line {line_num}: {content}")

if __name__ == "__main__":
    main()
