from pathlib import Path
import time

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
ELSWORD = ROOT / "Elsword"

def main():
    now = time.time()
    found = []
    for p in ELSWORD.rglob("*"):
        if p.is_file() and p.suffix.lower() in (".log", ".txt", ".xml", ".ini"):
            # Check if modified in the last 15 minutes
            mtime = p.stat().st_mtime
            if now - mtime < 15 * 60:
                found.append((mtime, p))
                
    found.sort(key=lambda x: x[0], reverse=True)
    print(f"=== Found {len(found)} files modified in the last 15 minutes ===")
    for mtime, p in found[:30]:
        print(f"  {time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(mtime))} - {p.relative_to(ROOT)} ({p.stat().st_size} bytes)")

if __name__ == "__main__":
    main()
