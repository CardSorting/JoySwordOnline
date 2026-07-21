import re
import sys
from pathlib import Path

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

def read_text(p):
    if not p.exists():
        return ""
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="ignore")

print("=== SEARCH ALL NPCS AND NPC SHOPS ===")

# Search NPC files for Elder town NPCs (Town 2 / Elder)
for p in ELSWORD.rglob("*NPC*.lua"):
    content = read_text(p)
    if "AddNPC" in content or "Shop" in content:
        lines = [l for l in content.splitlines() if any(w in l for w in ["Elder", "엘더", "Echo", "에코", "Alchemist", "연금술사"])]
        if lines:
            print(f"\nFile {p.relative_to(ELSWORD)} matched {len(lines)} lines:")
            for l in lines[:15]:
                print("  ", l[:140])
