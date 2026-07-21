import re
import sys
from pathlib import Path

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

p = ELSWORD / "GameServer" / "RandomItemTable.lua"
text = p.read_text(encoding="utf-8", errors="ignore")

# Search for function calls or table definitions other than AddRandomItemTemplet
lines = text.splitlines()

function_calls = set()
for l in lines:
    m = re.search(r"g_pRandomItemManager:\w+", l)
    if m:
        function_calls.add(m.group(0))

print(f"Function calls in RandomItemTable.lua: {function_calls}")

# Let's search for 502070 (the Ice Burner Group ID from RandomItemMapping.lua!)
pos = text.find("502070")
print(f"\nSearching 502070 in RandomItemTable.lua: pos={pos}")
if pos != -1:
    print(text[max(0, pos-200):pos+400])
