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
                if p.is_file() and p.suffix.lower() not in (".exe", ".dll", ".pdb", ".log", ".txt"):
                    found.append(p)
    print("=== Found server config/data files ===")
    for p in found:
        print(f"  {p.relative_to(ROOT)} ({p.stat().st_size} bytes)")

if __name__ == "__main__":
    main()
