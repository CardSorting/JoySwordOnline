import re
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DATA = ROOT / "data"
ITEM_PATHS = (
    ROOT / "Elsword" / "Resources" / "Item.lua",
    ROOT / "Elsword" / "ClientScript" / "Major" / "Item.lua",
)

# Missing Elesis item IDs that might crash the client
TARGET_IDS = {
    88671, 88672, 88673, 88674, 88675, 88676, 88677, 88678,
    133538, 133539, 133540, 133541, 133542, 133543, 133544,
    133546, 133547, 133548, 133549, 133550, 133551, 133552, 133553,
    88717, 88718, 88719, 88720, 88721, 88722, 88723, 88724,
    81997, 82004, 82010, 82076, 82077, 82078, 82079, 82080,
    82081, 82082, 82083, 269719, 269720, 183213
}

def read_kom_files():
    valid_files = set()
    marker = b'</Files>'
    for kom in DATA.glob("*.kom"):
        try:
            data = bytearray()
            with kom.open('rb') as stream:
                while marker not in data:
                    chunk = stream.read(1024 * 1024)
                    if not chunk: break
                    data.extend(chunk)
            start = data.find(b'<?xml')
            end = data.find(marker, start)
            if start >= 0 and end >= 0:
                root = ET.fromstring(bytes(data[start:end+len(marker)]))
                for elem in root:
                    name = elem.attrib.get('Name', '')
                    if name:
                        valid_files.add(name.lower())
        except Exception as e:
            print(f"Error reading {kom.name}: {e}")
    return valid_files

def patch_item_file(path: Path, valid_files: set[str]):
    print(f"\nProcessing {path.name}...")
    content = path.read_text(encoding="utf-8")
    
    # Simple block parser
    block_start_re = re.compile(r"g_pItemManager:AddItemTemplet")
    item_id_re = re.compile(r"m_ItemID\s*=\s*(\d+)")
    
    starts = [m.start() for m in block_start_re.finditer(content)]
    
    # We will rebuild the file content by modifying target blocks
    chunks = []
    last_idx = 0
    modified_count = 0
    
    for i, start in enumerate(starts):
        end = starts[i+1] if i+1 < len(starts) else len(content)
        block = content[start:end]
        
        id_match = item_id_re.search(block)
        if id_match:
            item_id = int(id_match.group(1))
            if item_id in TARGET_IDS:
                # Parse m_ModelName, m_AniXETName, and m_EqipPosition or m_ItemType
                model_match = re.search(r'm_ModelName\s*=\s*"([^"]+)"', block)
                anixet_match = re.search(r'm_AniXETName\s*=\s*"([^"]+)"', block)
                eqip_match = re.search(r'm_EqipPosition\s*=\s*EQIP_POSITION\["([^"]+)"\]', block)
                
                # Check if model exists
                model_name = model_match.group(1) if model_match else ""
                anixet_name = anixet_match.group(1) if anixet_match else ""
                
                needs_fallback = False
                if model_name and model_name.lower() not in valid_files:
                    needs_fallback = True
                if anixet_name and anixet_name.lower() not in valid_files:
                    needs_fallback = True
                    
                if needs_fallback:
                    eqip_pos = eqip_match.group(1) if eqip_match else ""
                    
                    # Determine basic model fallback
                    fallback_model = ""
                    fallback_xet = ""
                    
                    if "HAIR" in eqip_pos:
                        fallback_model = "Mesh_EL_Basic_Hair_Sorted.X"
                    elif "FACE" in eqip_pos:
                        fallback_model = "Mesh_EL_Basic_Face_Sorted.X"
                        fallback_xet = "Mesh_EL_Basic_Face_Sorted.XET"
                    elif "BODY" in eqip_pos:
                        fallback_model = "Mesh_EL_Basic_Upbody_Sorted.X"
                    elif "PANTS" in eqip_pos or "LOWBODY" in eqip_pos or "LEG" in eqip_pos:
                        # Let's check lowbody
                        fallback_model = "Mesh_EL_Basic_Lowbody_Sorted.X"
                    elif "GLOVE" in eqip_pos or "HAND" in eqip_pos:
                        fallback_model = "Mesh_EL_Basic_Hand_Sorted.X"
                    elif "BOOTS" in eqip_pos or "FOOT" in eqip_pos:
                        fallback_model = "Mesh_EL_Basic_Foot_Sorted.X"
                    elif "WEAPON" in eqip_pos:
                        fallback_model = "Mesh_EL_Basic_Weapon_Sorted.X"
                    else:
                        # Accessories, set model to empty to prevent rendering/crashes
                        fallback_model = ""
                    
                    # Apply changes to block
                    new_block = block
                    if model_match:
                        new_block = re.sub(
                            r'm_ModelName\s*=\s*"[^"]+"',
                            f'm_ModelName = "{fallback_model}"',
                            new_block
                        )
                    if anixet_match:
                        if fallback_xet:
                            new_block = re.sub(
                                r'm_AniXETName\s*=\s*"[^"]+"',
                                f'm_AniXETName = "{fallback_xet}"',
                                new_block
                            )
                        else:
                            # Remove AniXET reference if not needed
                            new_block = re.sub(
                                r'\s*m_AniXETName\s*=\s*"[^"]+"\s*,\s*\n',
                                '\n',
                                new_block
                            )
                    
                    block = new_block
                    modified_count += 1
                    
        chunks.append(content[last_idx:start])
        chunks.append(block)
        last_idx = end
        
    chunks.append(content[last_idx:])
    
    if modified_count > 0:
        path.write_text("".join(chunks), encoding="utf-8")
        print(f"Patched {modified_count} item entries in {path.name}")
    else:
        print(f"No entries needed patching in {path.name}")

def main():
    valid_files = read_kom_files()
    print(f"Found {len(valid_files)} valid asset files inside client KOMs.")
    for p in ITEM_PATHS:
        if p.exists():
            patch_item_file(p, valid_files)

if __name__ == "__main__":
    main()
