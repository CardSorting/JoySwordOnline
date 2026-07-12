from pathlib import Path
import re

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
ELSWORD = ROOT / "Elsword"

def main():
    dirs = ["CenterServer", "LoginServer", "GameServer", "ChannelServer", "GlobalServer"]
    out = []
    for dname in dirs:
        d = ELSWORD / dname
        if not d.exists():
            continue
        out.append(f"=== Configs in {dname} ===")
        # Look for .lua, .ini, .xml files
        for p in d.rglob("*"):
            if p.is_file() and p.suffix.lower() in (".lua", ".ini", ".xml") and "config" in p.name.lower():
                out.append(f"  File: {p.relative_to(ELSWORD)}")
                try:
                    text = p.read_text(encoding="utf-8", errors="replace")
                except Exception:
                    try:
                        text = p.read_text(encoding="cp949", errors="replace")
                    except Exception as e:
                        out.append(f"    Error reading: {e}")
                        continue
                # Print lines containing IP addresses or ports
                lines = text.splitlines()
                for i, line in enumerate(lines):
                    if any(x in line for x in ("IP", "Port", "127.0.0.1", "Addr", "9100", "9200", "9300", "9400", "9500")):
                        out.append(f"    Line {i+1}: {line.strip()}")
    ROOT.joinpath("scratch", "server_configs_check.txt").write_text("\n".join(out), encoding="utf-8")
    print("Done")

if __name__ == "__main__":
    main()
