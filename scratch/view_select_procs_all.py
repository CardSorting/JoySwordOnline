from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
PROC_FILE = ROOT / "scratch" / "select_procs_defs_utf8.txt"

def main():
    if PROC_FILE.exists():
        text = PROC_FILE.read_text(encoding="utf-8-sig", errors="replace")
        ROOT.joinpath("scratch", "select_procs_view_all_utf8.txt").write_text(text, encoding="utf-8")

if __name__ == "__main__":
    main()
