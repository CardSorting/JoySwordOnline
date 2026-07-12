import sys
from pathlib import Path

def convert(filename):
    p = Path("c:/Users/monst/Downloads/JoySwordOffline/scratch") / filename
    if p.exists():
        text = p.read_text(encoding="utf-16le", errors="replace")
        p.with_name(p.stem + "_utf8.txt").write_text(text, encoding="utf-8")
        print(f"Converted {filename} to UTF-8")
    else:
        print(f"File not found: {filename}")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        convert(sys.argv[1])
