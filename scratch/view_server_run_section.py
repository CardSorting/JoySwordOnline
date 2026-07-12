from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
PS_FILE = ROOT / "Start-Server-Automatic.ps1"

def main():
    text = PS_FILE.read_text(encoding="utf-8", errors="replace")
    lines = text.splitlines()
    found = []
    for idx, line in enumerate(lines):
        if "Start-Process" in line or ".exe" in line or "Server" in line or "start" in line.lower():
            found.append((idx + 1, line))
    print(f"=== Found {len(found)} references ===")
    for num, content in found[:50]:
        print(f"  Line {num}: {content}")

if __name__ == "__main__":
    main()
