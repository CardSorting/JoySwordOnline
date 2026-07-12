import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
LOG_DIR = ROOT / "Elsword" / "GameServer" / "log"

def search_target_log():
    target = LOG_DIR / "log_2026.07.05_11.54.55.htm"
    if not target.exists():
        print("Target log file not found.")
        return
    print(f"Reading target log: {target.name} ({target.stat().st_size} bytes)")
    
    content = target.read_text(encoding="utf-8", errors="ignore")
    lines = content.splitlines()
    
    keywords = ["4611686030516534109", "CharUID", "UnitUID", "DB_ERROR", "FAIL", "crash", "disconnect", "class 8", "class=8", "class= 8", "100", "Elesis"]
    found = []
    for i, line in enumerate(lines):
        clean_line = re.sub(r'<[^>]+>', '', line)
        lower_line = clean_line.lower()
        if any(kw.lower() in lower_line for kw in keywords):
            found.append((i + 1, clean_line.strip()))
            
    print(f"Found {len(found)} matching log lines.")
    for line_no, text in found[-50:]:
        print(f"Line {line_no}: {text}")

if __name__ == "__main__":
    search_target_log()
