#!/usr/bin/env python3
"""Trim bloated HOT_ITEM and add endgame Henir / secret-dungeon equipment to cash shop."""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
SR_PRICE = ELSWORD / "ServerResource" / "CashItemPrice.lua"
GS_PRICE = ELSWORD / "GameServer" / "CashItemPrice.lua"
ACTIVE_LIST = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"
DROP_TABLE = ELSWORD / "ServerResource" / "DropTable.lua"
ATTRIB_TABLE = ELSWORD / "ServerResource" / "AttribNpcTable.lua"
ITEM_FILES = (
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "_ClientScript" / "Major" / "Item.lua",
)

PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
ITEM_BLOCK_PATTERN = re.compile(r"g_pItemManager:AddItemTemplet\s*\{([\s\S]*?)\n\}")
ITEM_FIELD_PATTERN = re.compile(
    r"(m_ItemID|m_Name|m_ItemType|m_UseLevel|m_ItemLevel)\s*=\s*(.+)"
)
ENUM_VALUE_PATTERN = re.compile(r'\["([^"]+)"\]')
LUA_STRING_PATTERN = re.compile(r'"((?:\\.|[^"\\])*)"')
GROUP_PATTERN = re.compile(r"AddToGroup\(\s*(\d+)\s*,\s*(\d+)\s*,")
HENIR_GROUPS_PATTERN = re.compile(
    r"HenirDungeonMode = [12],[\s\S]*?DropGroupList = \{([^}]+)\}"
)
HENIR_GROUP_ID_PATTERN = re.compile(r"\{\s*(\d+)")
ATTRIB_GROUP_PATTERN = re.compile(r"AddAttribDropGroupInfo\(\s*\d+\s*,\s*(\d+)")

CHAR_PREFIXES = (
    "1004",  # Elsword
    "1008",  # Aisha
    "1016",  # Rena
    "1024",  # Raven
    "1032",  # Eve
    "1040",  # Chung
    "1048",  # Ara
    "1056",  # Elesis
    "1064",  # Endgame Elsword-tier sets
)
SECRET_THROWABLES = tuple(range(78340, 78411, 10))

PREMIUM_HOT = (
    91610, 111064, 111068, 111610, 160888, 160891,
    210550, 210560, 210570, 215660,
)
PET_HOT = (
    500600, 500610, 500620, 500630, 500640, 500650,
    500826, 500827, 500828, 500829,
    70006040, 70006050, 70006070, 70006080,
    500050, 500150, 500280, 500300,
)
PACKAGE_HOT = (
    246590, 246600, 246610, 246620, 246630, 246640,
    246650, 246660, 246670, 246680, 246690, 246700,
    271760, 271761, 85001320, 85001321, 261665, 261666, 261667,
    84001274, 84001276, 210000139, 210000141,
)
UTILITY_HOT = (160267,)  # Max Level Scroll (patched Philosopher's Scroll)
MAGIC_STONE_HOT = (
    109955,      # Advanced Magic Stone
    60000822,    # Advanced Magic Stone Cube (3 ea.)
    60001408,    # Advanced Magic Stone (5ea) Cube
    65000072,    # Advanced Magic Stone Cube (10 ea.)
    130171,      # A Cube of 40 Advanced Magic Stones
)

# Henir's Time and Space conqueror sets map to village tiers / dimensions.
HENIR_TS_REGION_TO_DIMENSION = {
    "Ruben": 1,
    "Elder": 2,
    "Bethma": 3,
    "Altera": 4,
}
HENIR_TS_NAME_PATTERN = re.compile(
    r"^(Time|Space) Conqueror's .+ \((Ruben|Elder|Bethma|Altera|Feita)\)$"
)
HENIR_RULER_PATTERN = re.compile(r"^Henir Ruler's .+$")
ABSOLUTE_TS_PATTERN = re.compile(r"^Absolute Time and Space's .+$")
HENIR_TS_SECTION_ORDER = (
    "dim1",
    "dim2",
    "dim3",
    "dim4",
    "feita",
    "ruler",
    "absolute",
)
HENIR_TS_SECTION_TITLES = {
    "dim1": "Henir T&S — 1st Dimension (Ruben)",
    "dim2": "Henir T&S — 2nd Dimension (Elder)",
    "dim3": "Henir T&S — 3rd Dimension (Bethma)",
    "dim4": "Henir T&S — 4th Dimension (Altera)",
    "feita": "Henir T&S — Feita",
    "ruler": "Henir Ruler",
    "absolute": "Absolute Time and Space",
}
HENIR_TS_PRICE_BASE = {
    "dim1": 5000,
    "dim2": 9000,
    "dim3": 14000,
    "dim4": 20000,
    "feita": 28000,
    "ruler": 35000,
    "absolute": 45000,
}


def read_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def parse_lua_string(value: str) -> str:
    value = value.strip().rstrip(",")
    match = LUA_STRING_PATTERN.search(value)
    return match.group(1) if match else value.strip('"')


def parse_enum(value: str) -> str:
    value = value.strip().rstrip(",")
    match = ENUM_VALUE_PATTERN.search(value)
    return match.group(1) if match else value


def parse_item_metadata() -> dict[int, dict[str, object]]:
    metadata: dict[int, dict[str, object]] = {}
    for path in ITEM_FILES:
        if not path.exists():
            continue
        text = read_text(path)
        for block in ITEM_BLOCK_PATTERN.findall(text):
            fields: dict[str, object] = {}
            for line in block.splitlines():
                match = ITEM_FIELD_PATTERN.search(line)
                if not match:
                    continue
                key, raw = match.group(1), match.group(2).strip().rstrip(",")
                if key == "m_ItemID":
                    fields[key] = int(raw)
                elif key in ("m_UseLevel", "m_ItemLevel"):
                    fields[key] = int(raw)
                elif key == "m_ItemType":
                    fields[key] = parse_enum(raw)
                elif key == "m_Name":
                    fields[key] = parse_lua_string(raw)
            item_id = fields.get("m_ItemID")
            if isinstance(item_id, int) and item_id not in metadata:
                metadata[item_id] = fields
    return metadata


def collect_drop_groups() -> set[int]:
    drop_text = read_text(DROP_TABLE)
    groups: set[int] = set()
    for match in HENIR_GROUPS_PATTERN.finditer(drop_text):
        for group_id in HENIR_GROUP_ID_PATTERN.findall(match.group(1)):
            groups.add(int(group_id))
    attrib_text = read_text(ATTRIB_TABLE)
    for group_id in ATTRIB_GROUP_PATTERN.findall(attrib_text):
        groups.add(int(group_id))
    return groups


def collect_endgame_equipment(
    groups: set[int],
    metadata: dict[int, dict[str, object]],
) -> list[int]:
    item_ids: set[int] = set(SECRET_THROWABLES)
    for match in GROUP_PATTERN.finditer(read_text(DROP_TABLE)):
        group_id, item_id = int(match.group(1)), int(match.group(2))
        if group_id not in groups:
            continue
        item_text = str(item_id)
        if not any(item_text.startswith(prefix) for prefix in CHAR_PREFIXES):
            continue
        if len(item_text) != 8:
            continue
        if not item_text.endswith(("01", "02")):
            continue
        item_ids.add(item_id)

    # Prefer +2 variants when both +1 and +2 exist for the same slot.
    by_slot: dict[tuple[str, str], list[int]] = {}
    for item_id in sorted(item_ids):
        if item_id in SECRET_THROWABLES:
            continue
        text = str(item_id)
        by_slot.setdefault((text[:4], text[4:7]), []).append(item_id)

    selected: set[int] = set(SECRET_THROWABLES)
    for candidates in by_slot.values():
        plus_two = [item_id for item_id in candidates if str(item_id).endswith("02")]
        if plus_two:
            selected.update(plus_two)
        else:
            selected.update(candidates)

    endgame: list[int] = []
    for item_id in sorted(selected):
        meta = metadata.get(item_id, {})
        use_level = int(meta.get("m_UseLevel", 0) or 0)
        item_level = int(meta.get("m_ItemLevel", 0) or 0)
        if item_id in SECRET_THROWABLES or use_level >= 48 or item_level >= 55:
            endgame.append(item_id)
    return endgame


def collect_henir_ts_catalog(
    metadata: dict[int, dict[str, object]],
) -> tuple[dict[str, list[int]], dict[int, tuple[str, str]]]:
    catalog: dict[str, list[int]] = {key: [] for key in HENIR_TS_SECTION_ORDER}
    tier_info: dict[int, tuple[str, str]] = {}

    for item_id, meta in metadata.items():
        name = str(meta.get("m_Name", "")).strip()
        conqueror = HENIR_TS_NAME_PATTERN.match(name)
        if conqueror:
            kind, region = conqueror.group(1), conqueror.group(2)
            if region == "Feita":
                section = "feita"
            else:
                section = f"dim{HENIR_TS_REGION_TO_DIMENSION[region]}"
            catalog[section].append(item_id)
            tier_info[item_id] = (section, kind)
            continue
        if HENIR_RULER_PATTERN.match(name):
            catalog["ruler"].append(item_id)
            tier_info[item_id] = ("ruler", "Ruler")
            continue
        if ABSOLUTE_TS_PATTERN.match(name):
            catalog["absolute"].append(item_id)
            tier_info[item_id] = ("absolute", "Absolute")

    for section in catalog:
        catalog[section] = sorted(set(catalog[section]))
    return catalog, tier_info


def henir_ts_price(section: str, kind: str, meta: dict[str, object]) -> int:
    base = HENIR_TS_PRICE_BASE[section]
    if kind == "Space":
        base = int(base * 1.15)
    use_level = int(meta.get("m_UseLevel", 0) or 0)
    item_type = str(meta.get("m_ItemType", ""))
    if item_type == "IT_WEAPON":
        return base + use_level * 100
    return base + int(use_level * 60)


def default_equipment_price(meta: dict[str, object]) -> int:
    item_type = str(meta.get("m_ItemType", ""))
    use_level = int(meta.get("m_UseLevel", 0) or 0)
    if item_type == "IT_WEAPON":
        return 25000 + use_level * 100
    if item_type == "IT_QICK_SLOT":
        return 8000
    slot = str(meta.get("m_ItemID", ""))[4:7]
    if slot in ("407", "408"):
        return 10000 + use_level * 50
    return 12000 + use_level * 75


def parse_price_ids(path: Path) -> set[int]:
    ids: set[int] = set()
    for line in read_text(path).splitlines():
        match = PRICE_PATTERN.search(line)
        if match:
            ids.add(int(match.group(1)))
    return ids


def price_line(item_id: int, price: int, comment: str) -> str:
    line = f"g_pCashItemManager:AddCashItemPrice(\t{item_id}\t,\t{price}\t)"
    if comment:
        line += f"\t--\t{comment}"
    return line


def append_price_block(path: Path, title: str, lines: list[str]) -> None:
    if not lines:
        return
    text = read_text(path).rstrip() + "\n\n"
    text += f"---------------\n-- {title} --\n---------------\n\n"
    text += "\n".join(lines) + "\n"
    path.write_text(text, encoding="utf-8")


def shop_line(item_id: int, comment: str) -> str:
    return f"\t\t\t{{ {item_id}\t,\t\t}} ,--\t{comment}\n"


def rebuild_hot_item(
    path: Path,
    sections: list[tuple[str, list[tuple[int, str]]]],
) -> tuple[int, int]:
    text = read_text(path)
    start = text.find("HOT_ITEM = {")
    end = text.find("}, ICON_HOT_ITEM = {")
    if start < 0 or end < 0:
        raise RuntimeError("Could not locate HOT_ITEM block in CashShopItemList.lua")

    body = "\t\t-- curated cash shop featured list (trimmed)\n"
    total = 0
    for title, entries in sections:
        if not entries:
            continue
        body += f"\n\t\t-- {title}\n"
        seen: set[int] = set()
        for item_id, comment in entries:
            if item_id in seen:
                continue
            seen.add(item_id)
            body += shop_line(item_id, comment)
            total += 1

    new_text = text[: start + len("HOT_ITEM = {")] + "\n" + body + "\t" + text[end:]
    path.write_text(new_text, encoding="utf-8")
    old_count = text[start:end].count("{")
    return old_count, total


def build_sections(
    metadata: dict[int, dict[str, object]],
    equipment_ids: list[int],
    henir_catalog: dict[str, list[int]],
    henir_tiers: dict[int, tuple[str, str]],
    priced_ids: set[int],
) -> tuple[list[tuple[str, list[tuple[int, str]]]], list[str]]:
    price_lines: list[str] = []
    equipment_entries: list[tuple[int, str]] = []

    for item_id in equipment_ids:
        meta = metadata.get(item_id)
        if not meta:
            continue
        name = str(meta.get("m_Name", f"Item {item_id}"))
        equipment_entries.append((item_id, f"[Endgame] {name}"))
        if item_id not in priced_ids:
            price = default_equipment_price(meta)
            price_lines.append(price_line(item_id, price, f"[Endgame] {name}"))
            priced_ids.add(item_id)

    henir_entries: dict[str, list[tuple[int, str]]] = {
        key: [] for key in HENIR_TS_SECTION_ORDER
    }
    for item_id in sorted(henir_tiers):
        meta = metadata.get(item_id)
        if not meta:
            continue
        section, kind = henir_tiers[item_id]
        name = str(meta.get("m_Name", f"Item {item_id}")).strip()
        henir_entries[section].append((item_id, name))
        if item_id not in priced_ids:
            price = henir_ts_price(section, kind, meta)
            tag = HENIR_TS_SECTION_TITLES[section]
            price_lines.append(price_line(item_id, price, f"[{tag}] {name}"))
            priced_ids.add(item_id)

    def named_entries(item_ids: tuple[int, ...], prefix: str) -> list[tuple[int, str]]:
        entries: list[tuple[int, str]] = []
        for item_id in item_ids:
            if item_id not in priced_ids:
                continue
            meta = metadata.get(item_id, {})
            name = str(meta.get("m_Name", f"Item {item_id}"))
            entries.append((item_id, f"{prefix}{name}"))
        return entries

    sections: list[tuple[str, list[tuple[int, str]]]] = [
        ("Utility / Level Boost", named_entries(UTILITY_HOT, "")),
        ("Enhancement / Magic Stones", named_entries(MAGIC_STONE_HOT, "")),
        ("Premium / Gacha", named_entries(PREMIUM_HOT, "")),
        ("Pets & Mounts", named_entries(PET_HOT + (550000, 550010, 550020), "")),
    ]
    for section in HENIR_TS_SECTION_ORDER:
        entries = henir_entries[section]
        if entries:
            sections.append((HENIR_TS_SECTION_TITLES[section], entries))
    sections.extend(
        [
            ("Henir / Secret Dungeon Equipment", equipment_entries),
            ("Featured Packages & Costumes", named_entries(PACKAGE_HOT, "")),
        ]
    )
    return sections, price_lines


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--skip-restore", action="store_true")
    args = parser.parse_args()

    metadata = parse_item_metadata()
    groups = collect_drop_groups()
    equipment_ids = collect_endgame_equipment(groups, metadata)
    henir_catalog, henir_tiers = collect_henir_ts_catalog(metadata)
    priced_ids = parse_price_ids(SR_PRICE)
    sections, price_lines = build_sections(
        metadata, equipment_ids, henir_catalog, henir_tiers, priced_ids
    )

    valid_equipment = sum(1 for item_id in equipment_ids if item_id in metadata)
    print(f"Henir/secret drop groups: {len(groups)}")
    print(f"Endgame equipment candidates: {len(equipment_ids)} ({valid_equipment} in Item.lua)")
    print(
        "Henir T&S catalog: "
        + ", ".join(
            f"{HENIR_TS_SECTION_TITLES[key]}={len(henir_catalog[key])}"
            for key in HENIR_TS_SECTION_ORDER
            if henir_catalog[key]
        )
    )
    print(f"New equipment prices: {len(price_lines)}")

    if args.dry_run:
        for item_id in equipment_ids[:20]:
            meta = metadata.get(item_id, {})
            print(f"  {item_id}: {meta.get('m_Name', 'MISSING')}")
        print("...")
        return 0

    if price_lines:
        append_price_block(
            SR_PRICE,
            "Henir T&S dimension + endgame secret dungeon equipment",
            price_lines,
        )
        GS_PRICE.write_text(read_text(SR_PRICE), encoding="utf-8")

    old_count, new_count = rebuild_hot_item(ACTIVE_LIST, sections)
    print(f"Trimmed HOT_ITEM: {old_count} -> {new_count} entries")

    if args.skip_restore:
        return 0

    result = subprocess.run([sys.executable, str(ROOT / "scripts" / "restore-cashshop.py")], cwd=ROOT)
    return result.returncode


if __name__ == "__main__":
    raise SystemExit(main())
