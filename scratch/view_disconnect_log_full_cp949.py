from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
LOG = ROOT / "Elsword" / "CenterServer" / "Statistics" / "SI_LOG_SERV_DISCONNECT.txt"

def main():
    if LOG.exists():
        data = LOG.read_bytes()
        # Decode as cp949
        try:
            text = data.decode("cp949")
        except Exception:
            text = data.decode("utf-8", errors="replace")
        lines = text.splitlines()
        
        out = [f"Total lines: {len(lines)}", "Last 10 lines:"]
        for l in lines[-10:]:
            out.append(l)
        ROOT.joinpath("scratch", "disconnect_log_full_utf8.txt").write_text("\n".join(out), encoding="utf-8")
        print("Done")
    else:
        print("File not found")

if __name__ == "__main__":
    main()
