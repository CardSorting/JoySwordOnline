from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
SELECT_FRONT = ROOT / "Elsword" / "ClientScript" / "Dialog" / "DLG_Unit_Select_Front.lua"

def main():
    if SELECT_FRONT.exists():
        text = SELECT_FRONT.read_text(encoding="utf-8-sig", errors="replace")
        ROOT.joinpath("scratch", "select_front_utf8.txt").write_text(text, encoding="utf-8")

if __name__ == "__main__":
    main()
