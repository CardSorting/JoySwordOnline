from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
TGA_FILE = ROOT / "scratch" / "all_tgas.txt"

def main():
    if TGA_FILE.exists():
        text = TGA_FILE.read_text(encoding="utf-8", errors="replace")
        matches = []
        for idx, line in enumerate(text.splitlines()):
            if "unit_select" in line.lower():
                matches.append((idx + 1, line))
        print(f"=== Found {len(matches)} matches ===")
        for num, content in matches[:100]:
            print(f"  Line {num}: {content}")
            
if __name__ == "__main__":
    main()
