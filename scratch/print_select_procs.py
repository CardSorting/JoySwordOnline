from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
DEFS_FILE = ROOT / "scratch" / "select_procs_defs.txt"

def main():
    if DEFS_FILE.exists():
        text = DEFS_FILE.read_text(encoding="utf-16le", errors="replace")
        ROOT.joinpath("scratch", "select_procs_defs_utf8.txt").write_text(text, encoding="utf-8")

if __name__ == "__main__":
    main()
