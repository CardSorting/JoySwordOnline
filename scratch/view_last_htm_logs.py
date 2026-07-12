from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
DIRS = {
    "LoginServer": ROOT / "Elsword" / "LoginServer" / "log",
    "GameServer": ROOT / "Elsword" / "GameServer" / "log",
}

def main():
    for name, d in DIRS.items():
        if d.exists():
            print(f"=== Logs in {name} ===")
            for p in sorted(d.glob("*"), key=lambda x: x.stat().st_mtime, reverse=True)[:5]:
                print(f"  {p.name} ({p.stat().st_size} bytes)")
        else:
            print(f"Dir {name} not found")

if __name__ == "__main__":
    main()
