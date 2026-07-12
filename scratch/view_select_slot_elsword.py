from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
SLOT_ELS = ROOT / "Elsword" / "ClientScript" / "Dialog" / "DLG_Unit_Select_Slot_Elsword.lua"

def main():
    if SLOT_ELS.exists():
        text = SLOT_ELS.read_text(encoding="utf-8-sig", errors="replace")
        ROOT.joinpath("scratch", "select_slot_elsword_utf8.txt").write_text(text, encoding="utf-8")

if __name__ == "__main__":
    main()
