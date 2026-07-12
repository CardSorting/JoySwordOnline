from pathlib import Path
import re

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
FILES = [
    ROOT / "Elsword" / "LoginServer" / "config_lg_US_SERVICE.lua",
    ROOT / "Elsword" / "GameServer" / "config_gs_US_SERVICE.lua",
    ROOT / "Elsword" / "CenterServer" / "Config" / "US" / "config_cn_US_SERVICE.lua",
]

def main():
    out = []
    for p in FILES:
        if p.exists():
            text = p.read_text(encoding="utf-8-sig", errors="replace")
            matches = []
            for idx, line in enumerate(text.splitlines()):
                if "elesis" in line.lower() or "class" in line.lower() or "limit" in line.lower() or re.search(r'\b8\b', line):
                    matches.append((idx + 1, line))
            out.append(f"=== Matches in {p.relative_to(ROOT)} ({len(matches)} matches) ===")
            for num, content in matches:
                out.append(f"  Line {num}: {content}")
        else:
            out.append(f"File {p} does not exist!")
    ROOT.joinpath("scratch", "server_lua_matches_utf8.txt").write_text("\n".join(out), encoding="utf-8")

if __name__ == "__main__":
    main()
