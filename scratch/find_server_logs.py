import glob
from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
DIRS = [
    ROOT / "Elsword" / "LoginServer",
    ROOT / "Elsword" / "GameServer",
    ROOT / "Elsword" / "CenterServer",
]

def main():
    found = []
    for d in DIRS:
        if d.exists():
            for p in d.rglob("*"):
                if p.is_file() and p.suffix.lower() in (".log", ".txt"):
                    # exclude some common non-log files
                    if p.name.lower() not in ("readme.txt", "license.txt"):
                        found.append(p)
    print("=== Found server log/txt files ===")
    for p in found:
        print(f"  {p.relative_to(ROOT)} ({p.stat().st_size} bytes)")

if __name__ == "__main__":
    main()
