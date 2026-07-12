from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
LOG = ROOT / "Elsword" / "CenterServer" / "Statistics" / "SI_LOG_SERV_DISCONNECT.txt"

def main():
    if LOG.exists():
        data = LOG.read_bytes()
        text = data.decode("utf-8", errors="replace")
        lines = text.splitlines()
        print(f"Total lines: {len(lines)}")
        print("Last 10 lines:")
        for l in lines[-10:]:
            print(l)

if __name__ == "__main__":
    main()
