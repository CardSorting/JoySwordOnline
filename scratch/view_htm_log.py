from pathlib import Path
import re

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
LOG = ROOT / "Elsword" / "CenterServer" / "log" / "log_2026.06.28_20.04.15.htm"

def main():
    if LOG.exists():
        data = LOG.read_bytes()
        # Decode as cp949 or utf-8
        try:
            html = data.decode("cp949")
        except Exception:
            html = data.decode("utf-8", errors="replace")
            
        # Simple regex to strip HTML tags
        text = re.sub(r'<[^>]+>', '\n', html)
        text = re.sub(r'\n+', '\n', text)
        
        ROOT.joinpath("scratch", "centerserver_log_utf8.txt").write_text(text, encoding="utf-8")
        print("Done")
    else:
        print("Log file not found")

if __name__ == "__main__":
    main()
