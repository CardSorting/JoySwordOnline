import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

def clean_html(text):
    return re.sub(r'<[^>]+>', ' ', text)

def search_log(log_path):
    if not log_path.exists():
        return
    print(f"=== Reading {log_path} ===")
    content = log_path.read_text(encoding="utf-8", errors="replace")
    text = clean_html(content)
    
    # Print lines containing error keywords
    lines = text.splitlines()
    for i, line in enumerate(lines):
        line_clean = line.strip()
        if not line_clean: continue
        if any(w in line_clean.lower() for w in ["error", "fail", "exception", "assert", "crash", "invalid"]):
            # Print context
            start = max(0, i - 1)
            end = min(len(lines), i + 2)
            print(f"Lines {start}-{end}:")
            for j in range(start, end):
                print(f"  {j}: {lines[j].strip()}")
            print("-" * 40)

def main():
    gs_logs = sorted(Path("Elsword/GameServer/log").glob("*.htm"))
    if gs_logs:
        search_log(gs_logs[-1])
        
    ls_logs = sorted(Path("Elsword/LoginServer/log").glob("*.htm"))
    if ls_logs:
        search_log(ls_logs[-1])

if __name__ == "__main__":
    main()
