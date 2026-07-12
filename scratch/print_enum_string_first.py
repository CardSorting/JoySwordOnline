from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
ENUM_STRING = ROOT / "Elsword" / "ClientScript" / "Major" / "EnumString.lua"

def main():
    text = ENUM_STRING.read_text(encoding="utf-8-sig", errors="replace")
    lines = text.splitlines()
    ROOT.joinpath("scratch", "enum_string_first.txt").write_text("\n".join(lines[:200]), encoding="utf-8")

if __name__ == "__main__":
    main()
