from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
DIRS = [
    ROOT / "Elsword" / "LoginServer",
    ROOT / "Elsword" / "GameServer",
]

def main():
    found = []
    for d in DIRS:
        if d.exists():
            for p in d.rglob("*.lua"):
                found.append(p)
    print("=== Found server lua files ===")
    for p in found:
        print(f"  {p.relative_to(ROOT)} ({p.stat().st_size} bytes)")

if __name__ == "__main__":
    main()
