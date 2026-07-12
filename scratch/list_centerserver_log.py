from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
DIR = ROOT / "Elsword" / "CenterServer" / "log"

def main():
    if DIR.exists():
        for p in DIR.glob("*"):
            print(f"File: {p.name} ({p.stat().st_size} bytes)")
    else:
        print("Dir not found")

if __name__ == "__main__":
    main()
