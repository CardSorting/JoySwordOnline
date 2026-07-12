from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
SQL_FILE = ROOT / "scratch" / "gup_create_unit.sql"

def main():
    if SQL_FILE.exists():
        text = SQL_FILE.read_text(encoding="utf-8", errors="replace")
        
        # Let's find Elesis block
        start = text.find("Elesis")
        if start == -1:
            start = text.find("class ID 8")
        out = ""
        if start != -1:
            out = text[start - 100 : start + 2000]
        else:
            lines = text.splitlines()
            out = "\n".join(lines[-200:])
        ROOT.joinpath("scratch", "gup_create_unit_view.txt").write_text(out, encoding="utf-8")
            
if __name__ == "__main__":
    main()
