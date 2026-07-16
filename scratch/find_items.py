import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
item_path = ROOT / "Elsword" / "Resources" / "Item.lua"

data = item_path.read_text(encoding="utf-8", errors="ignore")
print("Searching specifically for Ventus, Caligo, and Evil Tracer...")

matches = []
for block in re.finditer(r"g_pItemManager:AddItemTemplet\s*\{([^}]+?)\}", data, re.S):
    body = block.group(1)
    # Check for Ventus, Caligo, or Evil Tracer but skip shadow tracer/denif
    if "Ventus" in body or "Caligo" in body or ("Tracer" in body and "Shadow" not in body):
        id_match = re.search(r"m_ItemID\s*=\s*(\d+)", body)
        name_match = re.search(r"m_Name\s*=\s*\"([^\"]+)\"", body)
        if id_match and name_match:
            item_id = int(id_match.group(1))
            name = name_match.group(1)
            matches.append((item_id, name))

for item_id, name in sorted(matches):
    print(f"ID: {item_id:<8} Name: {name}")
