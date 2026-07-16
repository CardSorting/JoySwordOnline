import re
from pathlib import Path

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
dirs = [
    ROOT / "Elsword" / "Resources",
    ROOT / "Elsword" / "ClientScript" / "Major",
    ROOT / "Elsword" / "_ClientScript" / "Major",
]

encodings = ["utf-8-sig", "cp949", "utf-16", "utf-8"]

SET_NAMES = [
    "Dragon Knight",
    "Holy Unicorn",
    "Shadow",
    "Salvatore Ebalon",
    "Gold Falcon",
    "Nasod Battle Suit",
    "Salvatore Ventus",
    "Ignition Caligo",
    "Evil Tracer",
    "Hamel Navy Officer",
    "Thanatos",
    "Miracle Alchemist",
    "Millennium Fox",
    "Salvatore Gaia",
    "Velder Academy Knights",
    "Masquerade",
    "Lord of Time and Space",
    "Perkisas",
    "Archpriest",
    "Celestial Master",
    "Salvatore Rosso",
    "Elpheus",
]

def search_files():
    results = []
    
    # We want to search for each set name in each file
    patterns = {name: re.compile(re.escape(name), re.IGNORECASE) for name in SET_NAMES}
    
    for d in dirs:
        if not d.exists():
            continue
        for p in d.rglob("Item*.lua"): # Matches Item.lua, ItemTrans.lua, Item_EN.lua, etc.
            content = None
            for enc in encodings:
                try:
                    content = p.read_text(encoding=enc)
                    break
                except Exception:
                    continue
            if not content:
                try:
                    content = p.read_text(encoding="utf-8", errors="replace")
                except Exception:
                    continue
            
            # Search by block or line-by-line
            lines = content.splitlines()
            for line_no, line in enumerate(lines, 1):
                for name, pattern in patterns.items():
                    if pattern.search(line):
                        # print context (nearby line or block ID if possible)
                        # Let's search back up to 20 lines for m_ItemID if we find a name match
                        item_id = "unknown"
                        for check_no in range(max(0, line_no - 15), line_no + 5):
                            if check_no < len(lines):
                                id_match = re.search(r"m_ItemID\s*=\s*(\d+)", lines[check_no])
                                if id_match:
                                    item_id = id_match.group(1)
                                    break
                        results.append(f"Set: {name} | File: {p.relative_to(ROOT)} | Line: {line_no} | ItemID: {item_id} | Text: {line.strip()}")

    (ROOT / "scratch" / "ib_search_results.txt").write_text("\n".join(results), encoding="utf-8")

if __name__ == "__main__":
    search_files()
