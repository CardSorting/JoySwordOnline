from pathlib import Path
import re

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
LOGS = [
    (ROOT / "Elsword" / "LoginServer" / "log" / "log_2026.06.28_20.10.57.htm", ROOT / "scratch" / "loginserver_log.txt"),
    (ROOT / "Elsword" / "GameServer" / "log" / "log_2026.06.28_20.11.00.htm", ROOT / "scratch" / "gameserver_log.txt"),
]

def clean_html(p_in: Path, p_out: Path):
    if p_in.exists():
        data = p_in.read_bytes()
        try:
            html = data.decode("cp949")
        except Exception:
            html = data.decode("utf-8", errors="replace")
            
        text = re.sub(r'<[^>]+>', '\n', html)
        text = re.sub(r'\n+', '\n', text)
        
        lines = text.splitlines()
        # Keep last 300 lines for diagnostic
        p_out.write_text("\n".join(lines[-300:]), encoding="utf-8")
        print(f"Converted {p_in.name} -> {p_out.name}")
    else:
        print(f"Not found: {p_in.name}")

def main():
    for p_in, p_out in LOGS:
        clean_html(p_in, p_out)

if __name__ == "__main__":
    main()
