from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
IN_FILE = ROOT / "scratch" / "task_log.txt"
OUT_FILE = ROOT / "scratch" / "task_log_decoded.txt"

def main():
    if IN_FILE.exists():
        data = IN_FILE.read_bytes()
        # Try UTF-16LE
        try:
            text = data.decode("utf-16")
            OUT_FILE.write_text(text, encoding="utf-8")
            print("Successfully decoded as UTF-16!")
            return
        except Exception as e:
            print(f"Failed to decode as UTF-16: {e}")
            
        # Fallback to UTF-8
        try:
            text = data.decode("utf-8")
            OUT_FILE.write_text(text, encoding="utf-8")
            print("Successfully decoded as UTF-8!")
            return
        except Exception as e:
            print(f"Failed to decode as UTF-8: {e}")

if __name__ == "__main__":
    main()
