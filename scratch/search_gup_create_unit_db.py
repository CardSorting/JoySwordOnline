from pathlib import Path
import re

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
SQL_FILE = ROOT / "scratch" / "gup_create_unit_db_utf8.txt"

def main():
    if SQL_FILE.exists():
        text = SQL_FILE.read_text(encoding="utf-8", errors="replace")
        matches = []
        for idx, line in enumerate(text.splitlines()):
            if "8" in line or "elesis" in line.lower():
                matches.append((idx + 1, line))
        print(f"Found {len(matches)} lines in gup_create_unit database def matching 8/elesis:")
        for num, content in matches:
            print(f"  Line {num}: {content}")

if __name__ == "__main__":
    main()
