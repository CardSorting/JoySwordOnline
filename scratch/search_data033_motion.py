import xml.etree.ElementTree as ET
from pathlib import Path

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
    kom = DATA / "data033.kom"
    root = read_kom_manifest(kom)
    found = []
    for elem in root:
        name = elem.attrib["Name"]
        if "motion_el" in name.lower():
            found.append(name)
    print(f"=== Found {len(found)} motion_el files in data033.kom ===")
    for f in sorted(found):
        print(f"  {f}")

if __name__ == "__main__":
    main()
