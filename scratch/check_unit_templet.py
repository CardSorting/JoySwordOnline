import re
from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
UNIT_TEMPLET = ROOT / "Elsword" / "ClientScript" / "Major" / "UnitTemplet.lua"

def main():
    text = UNIT_TEMPLET.read_text(encoding="utf-8-sig", errors="replace")
    
    # Let's find any UnitTemplet containing UC_ELESIS
    matches = re.finditer(r"g_pUnitManager:AddUnitTemplet\s*\{", text)
    for match in matches:
        start = match.start()
        depth = 0
        for idx in range(match.end() - 1, len(text)):
            char = text[idx]
            if char == "{":
                depth += 1
            elif char == "}":
                depth -= 1
                if depth == 0:
                    block = text[start : idx + 1]
                    if "UC_ELESIS" in block:
                        print("=== Found Elesis UnitTemplet ===")
                        print(block)
                        print("-" * 40)
                    break

if __name__ == "__main__":
    main()
