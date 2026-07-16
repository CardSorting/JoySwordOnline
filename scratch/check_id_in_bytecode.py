import zlib
import struct
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DATA = ROOT / "data"
KOM_XOR_KEY = bytes.fromhex("02aaf8c6dcab4726efbb0098")

def xor_payload(payload: bytes) -> bytes:
    return bytes(byte ^ KOM_XOR_KEY[index % len(KOM_XOR_KEY)] for index, byte in enumerate(payload))

def check_file(kom_path: Path):
    if not kom_path.exists():
        print(f"{kom_path.name} not found.")
        return
    
    blob = kom_path.read_bytes()
    xml_start = blob.find(b"<?xml")
    xml_end = blob.find(b"</Files>", xml_start) + len(b"</Files>")
    
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
        print(f"Item.lua not found in {kom_path.name}")
        return
        
    compressed = blob[item_lua_entry["pos"] : item_lua_entry["pos"] + item_lua_entry["size"]]
    if item_lua_entry["algorithm"] == 0:
        decompressed = zlib.decompress(compressed)
    else:
        decompressed = zlib.decompress(xor_payload(compressed))
        
    print(f"\n--- Analysis of {kom_path.name} ---")
    print(f"Decompressed bytecode size: {len(decompressed)} bytes")
    
    # 81390 as double precision float (8 bytes)
    double_val = struct.pack("<d", 81390.0)
    # 81390 as single precision float (4 bytes)
    float_val = struct.pack("<f", 81390.0)
    # 81390 as 32-bit integer (4 bytes)
    int_val = struct.pack("<i", 81390)
    
    print(f"Double-float pattern {double_val.hex()} in bytecode: {double_val in decompressed}")
    print(f"Single-float pattern {float_val.hex()} in bytecode: {float_val in decompressed}")
    print(f"Int-32 pattern {int_val.hex()} in bytecode: {int_val in decompressed}")

check_file(DATA / "data036.kom")
check_file(DATA / "data036.kom.azure-backup")
