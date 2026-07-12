from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
ENUM_FILE = ROOT / "Elsword" / "ClientScript" / "Major" / "Enum.lua"

def extract_enum(text, name):
    start = text.find(name + " =")
    if start == -1:
        start = text.find(name + "=")
    if start == -1:
        return None
    depth = 0
    for idx in range(start, len(text)):
        if text[idx] == "{":
            depth += 1
            if depth == 1:
                brace_start = idx
        elif text[idx] == "}":
            depth -= 1
            if depth == 0:
                return text[start:idx+1]
    return None

def main():
    text = ENUM_FILE.read_text(encoding="utf-8-sig", errors="replace")
    out = []
    out.append("=== UNIT_TYPE ===")
    out.append(str(extract_enum(text, "UNIT_TYPE")))
    out.append("\n=== UNIT_CLASS ===")
    out.append(str(extract_enum(text, "UNIT_CLASS")))
    ROOT.joinpath("scratch", "enums_output.txt").write_text("\n".join(out), encoding="utf-8")

if __name__ == "__main__":
    main()
