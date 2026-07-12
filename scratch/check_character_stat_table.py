from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
STAT_TABLE = ROOT / "Elsword" / "ClientScript" / "Major" / "CharacterStatTable.lua"

def main():
    if STAT_TABLE.exists():
        text = STAT_TABLE.read_text(encoding="utf-8-sig", errors="replace")
        found = []
        for idx, line in enumerate(text.splitlines()):
            if "ELESIS" in line or "elesis" in line.lower() or "8" in line:
                found.append((idx + 1, line))
        out = [f"=== Found {len(found)} references in CharacterStatTable.lua ==="]
        for num, content in found[:50]:
            out.append(f"  Line {num}: {content}")
        ROOT.joinpath("scratch", "character_stat_table_matches_utf8.txt").write_text("\n".join(out), encoding="utf-8")
    else:
        print("CharacterStatTable.lua does not exist")

if __name__ == "__main__":
    main()
