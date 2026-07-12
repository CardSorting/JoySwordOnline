import xml.etree.ElementTree as ET
from pathlib import Path
from collections import Counter

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
DATA = ROOT / "data"

def read_kom_manifest(path: Path) -> ET.Element:
    marker = b"</Files>"
    data = bytearray()
    with path.open("rb") as stream:
        while marker not in data:
            chunk = stream.read(1024 * 1024)
            if not chunk:
                raise RuntimeError(f"Missing KOM manifest terminator: {path}")
            data.extend(chunk)
    start = data.find(b"<?xml")
    end = data.find(marker, start)
    manifest_end = end + len(marker)
    return ET.fromstring(bytes(data[start:manifest_end]))

def main():
    kom = DATA / "data034.kom"
    root = read_kom_manifest(kom)
    exts = Counter()
    for elem in root:
        name = elem.attrib["Name"]
        ext = Path(name).suffix.lower()
        exts[ext] += 1
        if ext not in (".lua", ".txt"):
            print(f"Non-lua/txt file: {name}")
    print("=== File count by extension in data034.kom ===")
    for ext, cnt in exts.items():
        print(f"  {ext}: {cnt}")

if __name__ == "__main__":
    main()
