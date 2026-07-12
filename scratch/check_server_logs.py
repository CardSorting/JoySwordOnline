from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
DIRS = [
    ROOT / "Elsword" / "CenterServer" / "log",
    ROOT / "Elsword" / "LoginServer" / "log",
    ROOT / "Elsword" / "GameServer" / "log",
]

def main():
    for d in DIRS:
        if d.exists():
            print(f"=== Logs in {d.relative_to(ROOT)} ===")
            files = sorted(d.glob("*.log"), key=lambda p: p.stat().st_mtime, reverse=True)
            for f in files[:3]:
                print(f"  {f.name} ({f.stat().st_size} bytes):")
                try:
                    text = f.read_text(encoding="utf-8-sig", errors="replace")
                    # print last 10 lines
                    lines = text.splitlines()[-10:]
                    for l in lines:
                        print(f"    {l}")
                except Exception as e:
                    print(f"    Error reading log: {e}")
        else:
            print(f"Dir {d} does not exist!")

if __name__ == "__main__":
    main()
