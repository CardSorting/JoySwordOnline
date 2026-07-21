import re
import sys
from pathlib import Path

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

p = ELSWORD / "GameServer" / "RandomItemTable.lua"
text = p.read_text(encoding="utf-8", errors="ignore")

print("Searching weight & group patterns in RandomItemTable.lua...")

# Find lines containing weight or probability
weight_lines = [l for l in text.splitlines() if any(w in l.lower() for w in ["weight", "prob", "group", "itemid"])][:40]
for l in weight_lines[:30]:
    print(l[:130])

# Find AddItemGroup or AddRandomItem or ItemGroup structures
group_blocks = re.findall(r"g_pRandomItemManager:AddItemGroup[^{\n]*\{[^}]+\}", text[:20000])
print(f"\nFound {len(group_blocks)} AddItemGroup blocks.")

for b in group_blocks[:5]:
    print(b[:300])
