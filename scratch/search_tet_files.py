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
    kom_paths = sorted(DATA.glob("data*.kom"))
    found = []
    for kom_path in kom_paths:
        try:
            root = read_kom_manifest(kom_path)
            for elem in root:
                name = elem.attrib["Name"]
                if "select" in name.lower() and (name.endswith(".tet") or name.endswith(".xet")):
                    found.append((kom_path.name, name))
        except Exception:
            pass
            
    print(f"=== Found {len(found)} select .tet/.xet files ===")
    for kom, name in sorted(found):
        print(f"  {kom}: {name}")

if __name__ == "__main__":
    main()
