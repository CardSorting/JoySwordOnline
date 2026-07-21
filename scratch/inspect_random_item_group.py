import re
import sys
from pathlib import Path

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

p = ELSWORD / "GameServer" / "RandomItemTable.lua"
text = p.read_text(encoding="utf-8", errors="ignore")

blocks = text.split("g_pRandomItemManager:AddRandomItemGroup")
print(f"Total AddRandomItemGroup blocks: {len(blocks)}")

for i, b in enumerate(blocks[1:10]):
    print(f"\n--- AddRandomItemGroup Block {i+1} ---")
    print(b[:500])
