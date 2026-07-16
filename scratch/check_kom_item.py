import struct
import zlib
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DATA = ROOT / "data"
kom_path = DATA / "data036.kom"
KOM_XOR_KEY = bytes.fromhex("02aaf8c6dcab4726efbb0098")

def xor_payload(payload: bytes) -> bytes:
    return bytes(byte ^ KOM_XOR_KEY[index % len(KOM_XOR_KEY)] for index, byte in enumerate(payload))

if not kom_path.exists():
    print(f"Error: {kom_path} not found.")
    exit(1)

blob = kom_path.read_bytes()
xml_start = blob.find(b"<?xml")
xml_end = blob.find(b"</Files>", xml_start) + len(b"</Files>")

if xml_start < 0 or xml_end < 0:
    print("Error: Could not locate KOM XML table.")
    exit(1)

root = ET.fromstring(blob[xml_start:xml_end])
pos = xml_end

item_lua_entry = None
for elem in root:
    name = elem.attrib["Name"]
    size = int(elem.attrib["CompressedSize"])
    if name == "Item.lua":
        item_lua_entry = {
            "pos": pos,
            "size": size,
            "original_size": int(elem.attrib["Size"]),
            "algorithm": int(elem.attrib.get("Algorithm", 0))
        }
        break
    pos += size

if not item_lua_entry:
    print("Error: Item.lua entry not found in data036.kom.")
    exit(1)

compressed = blob[item_lua_entry["pos"] : item_lua_entry["pos"] + item_lua_entry["size"]]
if item_lua_entry["algorithm"] == 0:
    # zlib
    decompressed = zlib.decompress(compressed)
else:
    # XOR + zlib
    decompressed = zlib.decompress(xor_payload(compressed))

text = decompressed.decode("utf-8", errors="ignore")
print(f"Length of decompressed Item.lua: {len(text)}")
print(f"Contains '-- RESTORE_ICEBURNER_SETS:': {'-- RESTORE_ICEBURNER_SETS:' in text}")
print(f"Contains '-- RESTORE_CASHSHOP_COSTUMES:': {'-- RESTORE_CASHSHOP_COSTUMES:' in text}")

if '-- RESTORE_ICEBURNER_SETS:' in text:
    idx = text.index('-- RESTORE_ICEBURNER_SETS:')
    print("\n--- Snippet near RESTORE_ICEBURNER_SETS ---")
    print(text[idx:idx+500])
