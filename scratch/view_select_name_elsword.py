from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
SELECT_NAME = ROOT / "Elsword" / "ClientScript" / "Dialog" / "DLG_Unit_Select_Name_Elsword.lua"

def main():
    if SELECT_NAME.exists():
        text = SELECT_NAME.read_text(encoding="utf-8-sig", errors="replace")
        ROOT.joinpath("scratch", "select_name_elsword_utf8.txt").write_text(text, encoding="utf-8")

if __name__ == "__main__":
    main()
