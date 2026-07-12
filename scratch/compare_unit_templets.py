from pathlib import Path
import re

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
UNIT_TEMPLET = ROOT / "Elsword" / "ClientScript" / "Major" / "UnitTemplet.lua"

def main():
    text = UNIT_TEMPLET.read_text(encoding="utf-8-sig", errors="replace")
    
    # We will search for UT_ARA and UT_ELESIS unit templates
    matches = re.finditer(r"g_pUnitManager:AddUnitTemplet\s*\{", text)
    blocks = []
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
                    blocks.append(text[start : idx + 1])
                    break
                    
    ara_blocks = [b for b in blocks if "UT_ARA" in b]
    elesis_blocks = [b for b in blocks if "UT_ELESIS" in b]
    
    out = []
    out.append("=== ARA BLOCK(S) ===")
    for b in ara_blocks:
        out.append(b)
        out.append("-" * 40)
        
    out.append("\n=== ELESIS BLOCK(S) ===")
    for b in elesis_blocks:
        out.append(b)
        out.append("-" * 40)
        
    ROOT.joinpath("scratch", "compare_unit_templets.txt").write_text("\n".join(out), encoding="utf-8")

if __name__ == "__main__":
    main()
