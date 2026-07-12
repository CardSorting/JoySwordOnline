from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
DIR = ROOT / "Elsword" / "CenterServer"

def main():
    if DIR.exists():
        for p in DIR.glob("*"):
            if p.is_file():
                print(f"File: {p.name} ({p.stat().st_size} bytes)")
            elif p.is_dir():
                print(f"Dir: {p.name}/")
    else:
        print("Dir not found")

if __name__ == "__main__":
    main()
