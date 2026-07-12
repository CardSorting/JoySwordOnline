from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
LOG = ROOT / "scratch" / "task_log.txt"

def main():
    if LOG.exists():
        data = LOG.read_bytes()
        print(f"File size: {len(data)}")
        print("First 50 bytes (hex):", data[:50].hex())
        print("First 50 bytes (repr):", repr(data[:50]))

if __name__ == "__main__":
    main()
