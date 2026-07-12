from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
CONFIG_LUA = ROOT / "Elsword" / "ClientScript" / "Major" / "Config_US_Service.lua"

def main():
    if CONFIG_LUA.exists():
        text = CONFIG_LUA.read_text(encoding="utf-8-sig", errors="replace")
        out = ["=== Config_US_Service.lua ==="]
        for line in text.splitlines():
            if "Elesis" in line or "8" in line or "CHAR" in line:
                out.append(line)
        ROOT.joinpath("scratch", "config_output_utf8.txt").write_text("\n".join(out), encoding="utf-8")

if __name__ == "__main__":
    main()
