import re
from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
SEARCH_DIRS = [
    ROOT / "Elsword" / "CenterServer",
    ROOT / "Elsword" / "LoginServer",
    ROOT / "Elsword" / "GameServer",
]

def main():
    procs = set()
    pattern = re.compile(rb'\b(?:gup|P)_[A-Za-z0-9_]+\b')
    for sdir in SEARCH_DIRS:
        if not sdir.exists():
            continue
        for p in sdir.rglob("*"):
            if p.is_file() and p.suffix.lower() in (".exe", ".dll", ".ini", ".conf"):
                try:
                    data = p.read_bytes()
                    for match in pattern.finditer(data):
                        procs.add(match.group(0).decode(errors='ignore'))
                except Exception:
                    pass
    print("=== Found stored procedures in binaries ===")
    for proc in sorted(procs):
        print(f"  {proc}")

if __name__ == "__main__":
    main()
