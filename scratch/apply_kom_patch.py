from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
PATCH_SCRIPT = ROOT / "scripts" / "patch-client-kom.py"

def main():
    text = PATCH_SCRIPT.read_text(encoding="utf-8", errors="replace")
    
    target = """    new_entries: list[bytes] = []
    patched: list[str] = []

    for elem in root:
        name = elem.attrib["Name"]
        compressed_size = int(elem.attrib["CompressedSize"])
        compressed = blob[pos : pos + compressed_size]
        pos += compressed_size

        if name in replacements:
            payload = replacements[name]
            compressed = zlib.compress(payload, level=9)
            elem.set("Size", str(len(payload)))
            elem.set("CompressedSize", str(len(compressed)))
            # Different client archives use different checksum conventions.
            # Detect and preserve the convention already used by the archive.
            checksum = checksum_value(compressed, checksum_algorithm)
            checksum_name = checksum_attr_name(dict(elem.attrib))
            elem.set(checksum_name, checksum)
            if mirror_filetime:
                elem.set("FileTime", checksum)
            patched.append(name)

        new_entries.append(compressed)"""

    replacement = """    new_entries: list[bytes] = []
    patched: list[str] = []
    used = set()

    for elem in root:
        name = elem.attrib["Name"]
        compressed_size = int(elem.attrib["CompressedSize"])
        compressed = blob[pos : pos + compressed_size]
        pos += compressed_size

        if name in replacements:
            used.add(name)
            payload = replacements[name]
            compressed = zlib.compress(payload, level=9)
            elem.set("Size", str(len(payload)))
            elem.set("CompressedSize", str(len(compressed)))
            # Different client archives use different checksum conventions.
            # Detect and preserve the convention already used by the archive.
            checksum = checksum_value(compressed, checksum_algorithm)
            checksum_name = checksum_attr_name(dict(elem.attrib))
            elem.set(checksum_name, checksum)
            if mirror_filetime:
                elem.set("FileTime", checksum)
            patched.append(name)

        new_entries.append(compressed)

    for name, payload in replacements.items():
        if name not in used:
            compressed = zlib.compress(payload, level=9)
            checksum = checksum_value(compressed, checksum_algorithm)
            new_elem = ET.Element("File")
            new_elem.set("Name", name)
            new_elem.set("Size", str(len(payload)))
            new_elem.set("CompressedSize", str(len(compressed)))
            new_elem.set("Algorithm", "0")
            checksum_name = "Checksum"
            if len(root) > 0:
                checksum_name = checksum_attr_name(dict(root[0].attrib))
            new_elem.set(checksum_name, checksum)
            new_elem.set("FileTime", checksum)
            root.append(new_elem)
            new_entries.append(compressed)
            patched.append(name)"""

    # Normalize line endings to find the match
    norm_text = text.replace("\r\n", "\n")
    norm_target = target.replace("\r\n", "\n")
    norm_replacement = replacement.replace("\r\n", "\n")
    
    if norm_target in norm_text:
        norm_text = norm_text.replace(norm_target, norm_replacement)
        # Preserve CRLF if original file had it
        if "\r\n" in text:
            PATCH_SCRIPT.write_text(norm_text.replace("\n", "\r\n"), encoding="utf-8")
        else:
            PATCH_SCRIPT.write_text(norm_text, encoding="utf-8")
        print("Successfully updated patch-client-kom.py!")
    else:
        print("ERROR: Target not found in patch-client-kom.py!")

if __name__ == "__main__":
    main()
