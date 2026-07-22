#!/usr/bin/env python3
"""Repack selected loose Lua sources into the Windows client KOM archives."""

from __future__ import annotations

import argparse
import shutil
import struct
import subprocess
import sys
import xml.etree.ElementTree as ET
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DATA = ROOT / "client" / "data" if (ROOT / "client" / "data").is_dir() else ROOT / "data"
CLIENT_DIALOG = ROOT / "Elsword" / "ClientScript" / "Dialog"
CLIENT_MAJOR = ROOT / "Elsword" / "ClientScript" / "Major"

KOM_XOR_KEY = bytes.fromhex("02aaf8c6dcab4726efbb0098")
LUAC_DOCKER_IMAGE = "alpine:3.20"
# Elsword x2.exe only loads 32-bit Lua 5.1 bytecode (size_t/int = 4 bytes).
LUAC_DOCKER_PLATFORM = "linux/386"

# Character-create UI is loaded from packed client archives, not loose ClientScript.
CLIENT_PATCHES: dict[str, dict[str, Path]] = {
    "data034.kom": {
        "DLG_unit_create_front.lua": CLIENT_DIALOG / "DLG_unit_create_front.lua",
        "DLG_unit_create_back.lua": CLIENT_DIALOG / "DLG_unit_create_back.lua",
        "DLG_Unit_Create_Select_Unit_Elesis.lua": CLIENT_DIALOG / "DLG_Unit_Create_Select_Unit_Elesis.lua",
        "DLG_Unit_Create_NickName_Elesis.lua": CLIENT_DIALOG / "DLG_Unit_Create_NickName_Elesis.lua",
        "DLG_Unit_Create_Front_Menu_Elesis.lua": CLIENT_DIALOG / "DLG_Unit_Create_Front_Menu_Elesis.lua",
        "DLG_Unit_Create_Unit_Button_Elesis.lua": CLIENT_DIALOG / "DLG_Unit_Create_Unit_Button_Elesis.lua",
        "DLG_Change_Job.lua": CLIENT_DIALOG / "NewVillageUI" / "DLG_Change_Job.lua",
        "DLG_PVP_Result_Card_Back.lua": CLIENT_DIALOG / "DLG_PVP_Result_Card_Back.lua",
        "DLG_PVP_Result_Card_Back_MatchPvp.lua": CLIENT_DIALOG / "DLG_PVP_Result_Card_Back_MatchPvp.lua",
        "DLG_PVP_Room_Character_Slot.lua": CLIENT_DIALOG / "DLG_PVP_Room_Character_Slot.lua",
        "DLG_ChatBox.lua": CLIENT_DIALOG / "DLG_ChatBox.lua",
        "DLG_ChatBox_NEW.lua": CLIENT_DIALOG / "DLG_ChatBox_NEW.lua",
        "DLG_ChatBox_Emotion_List.lua": CLIENT_DIALOG / "NewVillageUI" / "DLG_ChatBox_Emotion_List.lua",
        "DLG_Room_ChatBox_ChatList.lua": CLIENT_DIALOG / "DLG_Room_ChatBox_ChatList.lua",
        "DLG_UI_Chat_Window.lua": CLIENT_DIALOG / "NewVillageUI" / "DLG_UI_Chat_Window.lua",
        "DLG_Cash_Shop_Popup_ItemToInven.lua": CLIENT_DIALOG / "DLG_Cash_Shop_Popup_ItemToInven.lua",
        "DLG_Cash_Shop_Popup_ItemToInven_Slot.lua": CLIENT_DIALOG / "DLG_Cash_Shop_Popup_ItemToInven_Slot.lua",
        "DLG_Unit_Select_Slot_Elesis.lua": CLIENT_DIALOG / "DLG_Unit_Select_Slot_Elesis.lua",
        "DLG_Unit_Select_Name_Elesis.lua": CLIENT_DIALOG / "DLG_Unit_Select_Name_Elesis.lua",
    },
    "data035.kom": {
        "DungeonData.lua": ROOT / "Elsword" / "ClientScript" / "Dungeon" / "DungeonData.lua",
    },
    "data036.kom": {
        "Enum.lua": CLIENT_MAJOR / "Enum.lua",
        "Config_US_Service.lua": CLIENT_MAJOR / "Config_US_Service.lua",
        "UnitTemplet.lua": CLIENT_MAJOR / "UnitTemplet.lua",
        "Item.lua": CLIENT_MAJOR / "Item.lua",
        "RandomItem.lua": CLIENT_MAJOR / "RandomItem.lua",
        "ItemTrans.lua": CLIENT_MAJOR / "ItemTrans.lua",
        "CashShopItemList.lua": CLIENT_MAJOR / "CashShopItemList.lua",
        "ELESIS_KNIGHT.lua": CLIENT_MAJOR / "ELESIS_KNIGHT.lua",
        "NewSkillTempletVer2.lua": CLIENT_MAJOR / "NewSkillTempletVer2.lua",
        "SkillLevelUpSocketGroup.lua": CLIENT_MAJOR / "SkillLevelUpSocketGroup.lua",
        "LevelUpEvent.lua": CLIENT_MAJOR / "LevelUpEvent.lua",
        "SkillData.lua": CLIENT_MAJOR / "SkillData.lua",
        "CharacterStatTable.lua": CLIENT_MAJOR / "CharacterStatTable.lua",
        "SocketGroupDataForCashAvatar.lua": CLIENT_MAJOR / "SocketGroupDataForCashAvatar.lua",
        "PackageItemData.lua": CLIENT_MAJOR / "PackageItemData.lua",
        "ManufactureItem.lua": CLIENT_MAJOR / "ManufactureItem.lua",
    },
}

CASHSHOP_INVENTORY_PATCHES: dict[str, dict[str, Path]] = {
    "data034.kom": {
        "DLG_Cash_Shop_Popup_ItemToInven.lua": CLIENT_DIALOG / "DLG_Cash_Shop_Popup_ItemToInven.lua",
        "DLG_Cash_Shop_Popup_ItemToInven_Slot.lua": CLIENT_DIALOG / "DLG_Cash_Shop_Popup_ItemToInven_Slot.lua",
    },
    "data036.kom": {
        "SocketGroupDataForCashAvatar.lua": CLIENT_MAJOR / "SocketGroupDataForCashAvatar.lua",
        "PackageItemData.lua": CLIENT_MAJOR / "PackageItemData.lua",
    },
}

CHAT_UI_PATCHES: dict[str, dict[str, Path]] = {
    "data034.kom": {
        "DLG_ChatBox.lua": CLIENT_DIALOG / "DLG_ChatBox.lua",
        "DLG_ChatBox_NEW.lua": CLIENT_DIALOG / "DLG_ChatBox_NEW.lua",
        "DLG_ChatBox_Emotion_List.lua": CLIENT_DIALOG / "NewVillageUI" / "DLG_ChatBox_Emotion_List.lua",
        "DLG_Room_ChatBox_ChatList.lua": CLIENT_DIALOG / "DLG_Room_ChatBox_ChatList.lua",
        "DLG_UI_Chat_Window.lua": CLIENT_DIALOG / "NewVillageUI" / "DLG_UI_Chat_Window.lua",
    },
}


def xor_payload(payload: bytes) -> bytes:
    return bytes(byte ^ KOM_XOR_KEY[index % len(KOM_XOR_KEY)] for index, byte in enumerate(payload))


def patch_kom_set(
    patches: dict[str, dict[str, Path]], archive: str | None = None
) -> int:
    if not DATA.is_dir():
        print(f"Missing client data directory: {DATA}", file=sys.stderr)
        return 1

    selected = patches
    if archive is not None:
        if archive not in patches:
            raise ValueError(f"Archive {archive!r} is not part of this patch set")
        selected = {archive: patches[archive]}

    available: dict[str, dict[str, Path]] = {}
    for kom_name, files in selected.items():
        kom_path = DATA / kom_name
        if not kom_path.exists():
            print(f"warning: missing {kom_path}", file=sys.stderr)
            continue
        valid_files = {}
        for entry_name, source in files.items():
            if source.exists():
                valid_files[entry_name] = source
            else:
                print(f"warning: patch source file {source} not found, skipping.", file=sys.stderr)
        if valid_files:
            available[kom_name] = valid_files

    compiled = compile_lua_many(
        [source for files in available.values() for source in files.values()]
    )
    total = 0
    for kom_name, files in available.items():
        kom_path = DATA / kom_name
        payloads: dict[str, bytes] = {}
        for entry_name, source in files.items():
            print(f"compile {source.relative_to(ROOT)} -> {kom_name}:{entry_name}")
            payloads[entry_name] = compiled[source]
        patched = replace_kom_entries(kom_path, payloads)
        for name in patched:
            print(f"patched {kom_name}: {name}")
            total += 1
        client_data = ROOT / "client" / "data" / kom_name
        if client_data.parent.is_dir() and kom_path.exists() and client_data.resolve() != kom_path.resolve():
            shutil.copy2(kom_path, client_data)
            print(f"mirrored {kom_name} to {client_data.relative_to(ROOT)}")
    if total == 0:
        print("No client KOM entries were patched.", file=sys.stderr)
        return 1
    print(f"Patched {total} packed client file(s). Relaunch the client to pick up changes.")
    return 0


def assert_lua51_32bit_bytecode(bytecode: bytes, source: Path) -> None:
    if bytecode[:4] != b"\x1bLua":
        raise RuntimeError(f"luac output for {source} is not Lua 5.1 bytecode")
    if bytecode[4] != 0x51:
        raise RuntimeError(f"luac output for {source} is not Lua 5.1 (got 0x{bytecode[4]:02x})")
    # Byte 8 is size_t width; x2.exe rejects 64-bit luac output from amd64 hosts.
    if bytecode[8] != 0x04:
        header = " ".join(f"{byte:02x}" for byte in bytecode[:12])
        raise RuntimeError(
            f"luac output for {source} is not 32-bit Lua 5.1 bytecode (header: {header}). "
            f"Use {LUAC_DOCKER_PLATFORM} when compiling for the Windows client."
        )


def compile_lua_many(sources: list[Path]) -> dict[Path, bytes]:
    unique_sources = list(dict.fromkeys(sources))
    if not unique_sources:
        return {}
    for source in unique_sources:
        if not source.exists():
            raise FileNotFoundError(source)

    work = ROOT / ".joysword-kom-build"
    if work.exists():
        shutil.rmtree(work)
    work.mkdir(parents=True)

    cache_dir = (ROOT.parent if (ROOT.parent / ".joysword-kom-build-apks").is_dir() else ROOT) / ".joysword-kom-build-apks"
    if cache_dir.is_dir():
        for apk_path in cache_dir.glob("*.apk"):
            shutil.copy2(apk_path, work / apk_path.name)

    staged_files: list[tuple[Path, Path, Path]] = []
    compile_commands = ["apk add --no-cache --allow-untrusted /work/lua5.1-libs-*.apk /work/lua5.1-5.1.5-r*.apk >/dev/null"]
    for index, source in enumerate(unique_sources):
        staged = work / f"source_{index}.lua"
        out = work / f"source_{index}.luac"
        text = source.read_text(encoding="utf-8-sig")
        staged.write_text(text, encoding="utf-8", newline="\n")
        staged_files.append((source, staged, out))
        compile_commands.append(
            f"luac5.1 -o /work/{out.name} /work/{staged.name}"
        )

    mount = work.resolve().as_posix()
    cmd = [
        "docker",
        "run",
        "--rm",
        "--platform",
        LUAC_DOCKER_PLATFORM,
        "-v",
        f"{mount}:/work",
        LUAC_DOCKER_IMAGE,
        "sh",
        "-c",
        " && ".join(compile_commands),
    ]
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        raise RuntimeError(
            f"luac batch failed:\n{result.stdout}\n{result.stderr}"
        )

    compiled: dict[Path, bytes] = {}
    for source, _staged, out in staged_files:
        bytecode = out.read_bytes()
        assert_lua51_32bit_bytecode(bytecode, source)
        compiled[source] = xor_payload(bytecode)
    shutil.rmtree(work, ignore_errors=True)
    return compiled


def compile_lua(source: Path) -> bytes:
    return compile_lua_many([source])[source]


def checksum_attr_name(attrs: dict[str, str]) -> str:
    if "Checksum" in attrs:
        return "Checksum"
    if "CheckSum" in attrs:
        return "CheckSum"
    return "Checksum"


def format_kom_file_tag(attrs: dict[str, str]) -> bytes:
    checksum_name = checksum_attr_name(attrs)
    return (
        f'<File Algorithm="{attrs["Algorithm"]}" {checksum_name}="{attrs[checksum_name]}" '
        f'CompressedSize="{attrs["CompressedSize"]}" FileTime="{attrs["FileTime"]}" '
        f'Name="{attrs["Name"]}" Size="{attrs["Size"]}"/>'
    ).encode("utf-8")


def checksum_value(payload: bytes, algorithm: str) -> str:
    if algorithm == "adler32":
        value = zlib.adler32(payload)
    elif algorithm == "crc32":
        value = zlib.crc32(payload)
    else:
        raise ValueError(f"Unsupported KOM checksum algorithm: {algorithm}")
    return f"{value & 0xffffffff:08x}"


def detect_checksum_algorithm(root: ET.Element, blob: bytes, payload_start: int) -> str:
    matches = {"adler32": 0, "crc32": 0}
    pos = payload_start
    for elem in root:
        size = int(elem.attrib["CompressedSize"])
        compressed = blob[pos : pos + size]
        pos += size
        attrs = dict(elem.attrib)
        expected = attrs[checksum_attr_name(attrs)].lower()
        for algorithm in matches:
            if checksum_value(compressed, algorithm) == expected:
                matches[algorithm] += 1
    algorithm = max(matches, key=matches.get)
    if matches[algorithm] == 0:
        raise RuntimeError(f"Could not detect KOM checksum convention: {matches}")
    return algorithm


def duplicate_checksum_in_filetime(root: ET.Element) -> bool:
    duplicates = 0
    for elem in root:
        attrs = dict(elem.attrib)
        if attrs.get("FileTime") == attrs.get(checksum_attr_name(attrs)):
            duplicates += 1
    return duplicates > len(root) // 2


def write_kom(
    kom_path: Path,
    header: bytearray,
    xml_start: int,
    root: ET.Element,
    entries: list[bytes],
) -> None:
    xml_parts = [b'<?xml version="1.0" ?><Files>']
    for elem in root:
        xml_parts.append(format_kom_file_tag(dict(elem.attrib)))
    xml_parts.append(b"</Files>")
    new_xml = b"".join(xml_parts)
    header[xml_start - 4 : xml_start] = struct.pack("<I", len(new_xml))
    temp_path = kom_path.with_suffix(kom_path.suffix + ".tmp")
    temp_path.write_bytes(bytes(header) + new_xml + b"".join(entries))
    temp_path.replace(kom_path)


def replace_kom_entries(kom_path: Path, replacements: dict[str, bytes]) -> list[str]:
    blob = kom_path.read_bytes()
    xml_start = blob.find(b"<?xml")
    xml_end = blob.find(b"</Files>", xml_start) + len(b"</Files>")
    if xml_start < 0 or xml_end < len(b"</Files>"):
        raise RuntimeError(f"Could not locate KOM XML table in {kom_path}")

    backup = kom_path.with_suffix(kom_path.suffix + ".bak")
    if not backup.exists():
        shutil.copy2(kom_path, backup)
        print(f"backup: {backup.relative_to(ROOT)}")

    header = bytearray(blob[:xml_start])
    root = ET.fromstring(blob[xml_start:xml_end])
    checksum_algorithm = detect_checksum_algorithm(root, blob, xml_end)
    mirror_filetime = duplicate_checksum_in_filetime(root)
    pos = xml_end
    new_entries: list[bytes] = []
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
            patched.append(name)

    if pos != len(blob):
        raise RuntimeError(f"Unexpected trailing data in {kom_path}: {len(blob) - pos} bytes")

    write_kom(kom_path, header, xml_start, root, new_entries)
    return patched


def repair_kom_metadata(kom_path: Path) -> int:
    blob = kom_path.read_bytes()
    xml_start = blob.find(b"<?xml")
    xml_end = blob.find(b"</Files>", xml_start) + len(b"</Files>")
    if xml_start < 0 or xml_end < len(b"</Files>"):
        raise RuntimeError(f"Could not locate KOM XML table in {kom_path}")

    header = bytearray(blob[:xml_start])
    root = ET.fromstring(blob[xml_start:xml_end])
    checksum_algorithm = detect_checksum_algorithm(root, blob, xml_end)
    mirror_filetime = duplicate_checksum_in_filetime(root)
    pos = xml_end
    entries: list[bytes] = []
    repaired = 0
    for elem in root:
        size = int(elem.attrib["CompressedSize"])
        compressed = blob[pos : pos + size]
        pos += size
        entries.append(compressed)
        attrs = dict(elem.attrib)
        checksum_name = checksum_attr_name(attrs)
        expected = checksum_value(compressed, checksum_algorithm)
        changed = attrs.get(checksum_name, "").lower() != expected
        if changed:
            elem.set(checksum_name, expected)
        if mirror_filetime and elem.attrib.get("FileTime") != expected:
            elem.set("FileTime", expected)
            changed = True
        if changed:
            repaired += 1

    if pos != len(blob):
        raise RuntimeError(f"Unexpected trailing data in {kom_path}: {len(blob) - pos} bytes")
    if repaired:
        write_kom(kom_path, header, xml_start, root, entries)
    print(
        f"{kom_path.name}: {checksum_algorithm}, "
        f"mirror_filetime={mirror_filetime}, repaired={repaired}"
    )
    return repaired


def patch_client_kom(archive: str | None = None) -> int:
    item_patch = ROOT / "scripts" / "patch-item-ara-elesis.py"
    if item_patch.exists():
        result = subprocess.run([sys.executable, str(item_patch)], cwd=ROOT)
        if result.returncode != 0:
            return result.returncode
    return patch_kom_set(CLIENT_PATCHES, archive)


def patch_cashshop_inventory_kom() -> int:
    return patch_kom_set(CASHSHOP_INVENTORY_PATCHES)


def patch_chat_ui_kom() -> int:
    return patch_kom_set(CHAT_UI_PATCHES)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--elesis-create-ui",
        action="store_true",
        help="Patch character-create UI, Enum/Config, UnitTemplet, and Item.lua into data034/data036.kom",
    )
    parser.add_argument(
        "--cashshop-inventory-bypass",
        action="store_true",
        help="Patch cash-shop claim UI and SocketGroupDataForCashAvatar into data034/data036.kom",
    )
    parser.add_argument(
        "--chat-ui",
        action="store_true",
        help="Patch the corrected channel chat layout into data034.kom",
    )
    parser.add_argument(
        "--repair-checksums",
        action="store_true",
        help="repair archive checksum/FileTime metadata without recompiling payloads",
    )
    parser.add_argument(
        "--archive",
        choices=tuple(CLIENT_PATCHES),
        help="limit --elesis-create-ui to one client archive",
    )
    args = parser.parse_args()
    if args.elesis_create_ui:
        return patch_client_kom(args.archive)
    if args.cashshop_inventory_bypass:
        return patch_cashshop_inventory_kom()
    if args.chat_ui:
        return patch_chat_ui_kom()
    if args.repair_checksums:
        for kom_name in CLIENT_PATCHES:
            repair_kom_metadata(DATA / kom_name)
        return 0
    parser.print_help()
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
