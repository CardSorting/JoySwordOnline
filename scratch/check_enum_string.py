from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
ENUM_STRING = ROOT / "Elsword" / "ClientScript" / "Major" / "EnumString.lua"

def main():
    text = ENUM_STRING.read_text(encoding="utf-8-sig", errors="replace")
    
    # We will search for UC_ELESIS
    found = []
    for line in text.splitlines():
        if "UC_ELESIS" in line or "Elesis" in line:
            found.append(line)
            
    print(f"=== Found {len(found)} references in EnumString.lua ===")
    for line in found[:50]:
        print(line)

if __name__ == "__main__":
    main()
