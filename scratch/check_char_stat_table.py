from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
CHAR_STAT_TABLE = ROOT / "Elsword" / "ClientScript" / "Major" / "CharacterStatTable.lua"

def main():
    text = CHAR_STAT_TABLE.read_text(encoding="utf-8-sig", errors="replace")
    ROOT.joinpath("scratch", "char_stat_table_utf8.txt").write_text(text, encoding="utf-8")

if __name__ == "__main__":
    main()
