import re
from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
ENUM_STRING = ROOT / "Elsword" / "ClientScript" / "Major" / "EnumString.lua"

def main():
    text = ENUM_STRING.read_text(encoding="utf-8-sig", errors="replace")
    
    # Find all Add...EnumData_LUA calls or similar patterns
    matches = re.findall(r"g_pEnumManager:Add\w+", text)
    funcs = set(matches)
    print("=== Found EnumManager functions ===")
    for f in sorted(funcs):
        print(f"  {f}")

if __name__ == "__main__":
    main()
