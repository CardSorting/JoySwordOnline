from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
SQL_FILE = ROOT / "scratch" / "gup_create_unit_db_utf8.txt"

def main():
    if SQL_FILE.exists():
        text = SQL_FILE.read_text(encoding="utf-8", errors="replace")
        lines = text.splitlines()
        for idx, line in enumerate(lines):
            if "GSpirit" in line or "근성도" in line:
                start = max(0, idx - 40)
                end = min(len(lines), idx + 20)
                out = [f"=== Found around line {idx + 1} ==="]
                for line_idx in range(start, end):
                    out.append(f"  {line_idx + 1}: {lines[line_idx]}")
                ROOT.joinpath("scratch", "around_gspirit_utf8.txt").write_text("\n".join(out), encoding="utf-8")
                break

if __name__ == "__main__":
    main()
