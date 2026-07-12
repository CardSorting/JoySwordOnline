from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
SELECT_UNIT = ROOT / "Elsword" / "ClientScript" / "Dialog" / "DLG_Unit_Select_Unit.lua"

def main():
    if SELECT_UNIT.exists():
        text = SELECT_UNIT.read_text(encoding="utf-8-sig", errors="replace")
        ROOT.joinpath("scratch", "select_unit_utf8.txt").write_text(text, encoding="utf-8")

if __name__ == "__main__":
    main()
