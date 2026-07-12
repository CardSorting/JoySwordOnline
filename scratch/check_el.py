import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DATA = ROOT / "data"

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
            pass
    return valid_files

def main():
    valid = read_kom_files()
    print("Total valid files:", len(valid))
    print("mesh_el_basic_hair_sorted.x in valid:", "mesh_el_basic_hair_sorted.x" in valid)
    matches = [f for f in valid if "el_basic" in f or "elesis" in f or "mesh_el" in f]
    print("Found matches:", len(matches))
    print("Sample matches:", matches[:30])

if __name__ == "__main__":
    main()
