import json
import re
import sys
from pathlib import Path

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
with open(ROOT / "scratch" / "unmapped_cubes.json", "r", encoding="utf-8") as f:
    unmapped_cubes = json.load(f)

# Load mapped IDs from previous script execution
sys.path.append(str(ROOT / "scratch"))
import extract_all_precise_mappings

resolved = extract_all_precise_mappings.precise_mappings

unresolved = [item for item in unmapped_cubes if item[0] not in resolved]

print(f"Total unresolved cube/package items: {len(unresolved)}")

print("\nSample Unresolved Cubes (first 30):")
for iid, name, itype in unresolved[:30]:
    print(f"  ID {iid:10d}: type='{itype:12s}', name='{name}'")
