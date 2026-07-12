from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
LOG = ROOT / "Elsword" / "CenterServer" / "Statistics" / "SI_LOG_SERV_DISCONNECT.txt"

def main():
    if LOG.exists():
        data = LOG.read_bytes()
        # Print representation
        print(f"Data size: {len(data)}")
        print("First 200 bytes as string:")
        # Try decoding as utf-16
        try:
            print(data.decode("utf-16"))
        except Exception:
            try:
                print(data.decode("utf-8"))
            except Exception:
                print(repr(data[:200]))
    else:
        print("File not found")

if __name__ == "__main__":
    main()
