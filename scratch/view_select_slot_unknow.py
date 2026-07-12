from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
SLOT_UNK = ROOT / "Elsword" / "ClientScript" / "Dialog" / "DLG_Unit_Select_Slot_Unknow.lua"

def main():
    if SLOT_UNK.exists():
        text = SLOT_UNK.read_text(encoding="utf-8-sig", errors="replace")
        ROOT.joinpath("scratch", "select_slot_unknow_utf8.txt").write_text(text, encoding="utf-8")

if __name__ == "__main__":
    main()
