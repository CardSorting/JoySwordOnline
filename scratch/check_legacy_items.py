from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
LEGACY_ITEM = ROOT / "Elsword" / "_ClientScript" / "Major" / "Item.lua"

def main():
    if LEGACY_ITEM.exists():
        text = LEGACY_ITEM.read_text(encoding="utf-8-sig", errors="replace")
        found = []
        for line in text.splitlines():
            if "m_ItemID = 71" in line or "m_ItemID = 72" in line or "m_ItemID = 77" in line:
                found.append(line)
        print(f"Found {len(found)} matches in legacy Item.lua")
        for f in found:
            print(f"  {f}")
    else:
        print("Legacy Item.lua does not exist")

if __name__ == "__main__":
    main()
