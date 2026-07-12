#!/usr/bin/env python3
"""Restore missing cash-shop costume Item.lua entries for all characters."""

from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
PRICE_FILE = ELSWORD / "ServerResource" / "CashItemPrice.lua"
ITEM_TARGETS = (
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
)
RESTORE_MARKER = "-- RESTORE_CASHSHOP_COSTUMES:"

COSTUME_SET_KEYWORDS = (
    "살바토르 벤투스",
    "이그니션 칼리고",
    "로열 메이드",
    "데몬 슬레이어",
    "금강야차",
    "금강 천야차",
    "아크엔젤",
)

CHAR_MARKERS = (
    "엘리시스",
    "아라",
    "청",
    "엘소드",
    "아이샤",
    "레나",
    "레이븐",
    "이브",
)

CHAR_PROFILES: dict[str, dict[str, str]] = {
    "엘소드": {
        "mesh": "Elsword",
        "unit": "UT_ELSWORD",
        "uclass": "UC_ELSWORD_SWORDMAN",
        "weapon_frame": "Dummy1_Rhand",
    },
    "아이샤": {
        "mesh": "Arme",
        "unit": "UT_ARME",
        "uclass": "UC_ARME_VIOLET_MAGE",
        "weapon_frame": "Dummy1_Rhand",
    },
    "레나": {
        "mesh": "Lire",
        "unit": "UT_LIRE",
        "uclass": "UC_LIRE_ELVEN_RANGER",
        "weapon_frame": "Dummy1_Rhand",
    },
    "레이븐": {
        "mesh": "Raven",
        "unit": "UT_RAVEN",
        "uclass": "UC_RAVEN_FIGHTER",
        "weapon_frame": "Dummy1_Rhand",
    },
    "이브": {
        "mesh": "Eve",
        "unit": "UT_EVE",
        "uclass": "UC_EVE_NASOD",
        "weapon_frame": "Dummy1_Rhand",
    },
    "청": {
        "mesh": "Chung",
        "unit": "UT_CHUNG",
        "uclass": "UC_CHUNG_IRON_CANNON",
        "weapon_frame": "Dummy1_Rhand",
    },
    "아라": {
        "mesh": "Ara",
        "unit": "UT_ARA",
        "uclass": "UC_ARA_MARTIAL_ARTIST",
        "weapon_frame": "Dummy3_Weapon",
    },
    "엘리시스": {
        "mesh": "EL",
        "unit": "UT_ELESIS",
        "uclass": "UC_ELESIS_KNIGHT",
        "weapon_frame": "Dummy3_Weapon",
    },
}

MESH_PREFIXES = ("Ara", "Chung", "Elsword", "Arme", "Lire", "Raven", "Eve", "ADD", "EL")

PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
ITEM_ID_PATTERN = re.compile(r"m_ItemID\s*=\s*(\d+)")
BLOCK_START = re.compile(r"g_pItemManager:AddItemTemplet")


def read_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def detect_char(comment: str) -> str | None:
    for marker in CHAR_MARKERS:
        if f"({marker})" in comment:
            return marker
    return None


def parse_price_index(path: Path) -> dict[int, dict[str, str]]:
    rows: dict[int, dict[str, str]] = {}
    for line in read_text(path).splitlines():
        match = PRICE_PATTERN.search(line)
        if not match:
            continue
        item_id = int(match.group(1))
        comment = (match.group(3) or "").strip()
        rows[item_id] = {
            "comment": comment,
            "char": detect_char(comment) or "",
        }
    return rows


def parse_item_blocks(text: str) -> dict[int, str]:
    blocks: dict[int, str] = {}
    starts = [match.start() for match in BLOCK_START.finditer(text)]
    for i, start in enumerate(starts):
        end = starts[i + 1] if i + 1 < len(starts) else len(text)
        chunk = text[start:end].rstrip()
        id_match = ITEM_ID_PATTERN.search(chunk)
        if not id_match:
            continue
        blocks[int(id_match.group(1))] = chunk
    return blocks


def char_weapon_bases() -> dict[str, int]:
    return {
        "엘소드": 133429,
        "아이샤": 133435,
        "레나": 133441,
        "레이븐": 133447,
        "이브": 133453,
        "청": 133459,
        "아라": 133459,
        "엘리시스": 133459,
    }


def char_horn_ids() -> dict[str, int]:
    return {
        "엘소드": 81006,
        "아이샤": 81007,
        "레나": 81008,
        "레이븐": 81009,
        "이브": 81010,
        "청": 81011,
        "아라": 81011,
        "엘리시스": 81011,
    }


def char_wing_ids_denif() -> dict[str, int]:
    return {
        "엘소드": 81000,
        "아이샤": 81001,
        "레나": 81002,
        "레이븐": 81003,
        "이브": 81004,
        "청": 81005,
        "아라": 81005,
        "엘리시스": 81005,
    }


def char_set_bases(eight_slot: dict[str, int]) -> dict[str, dict[str, int]]:
    out: dict[str, dict[str, int]] = {}
    for char, base in eight_slot.items():
        out[char] = {name: base + offset for offset, name in enumerate(
            ("weapon", "top", "bottom", "gloves", "shoes", "hair", "head", "wing")
        )}
    return out


def royal_blood_sets() -> dict[str, dict[str, int]]:
    return {
        "엘소드": dict(
            top=81300, bottom=81301, gloves=81302, shoes=81303, hair=81304, weapon=81305,
            crown=81360, wing=81366,
        ),
        "아이샤": dict(
            top=81310, bottom=81311, gloves=81312, shoes=81313, hair=81314, weapon=81315,
            crown=81361, wing=81367,
        ),
        "레나": dict(
            top=81320, bottom=81321, gloves=81322, shoes=81323, hair=81324, weapon=81325,
            crown=81362, wing=81368,
        ),
        "레이븐": dict(
            top=81330, bottom=81331, gloves=81332, shoes=81333, hair=81334, weapon=81335,
            crown=81363, wing=81369,
        ),
        "이브": dict(
            top=81340, bottom=81341, gloves=81342, shoes=81343, hair=81344, weapon=81345,
            crown=81364, wing=81370,
        ),
        "청": dict(
            top=81350, bottom=81351, gloves=81352, shoes=81353, hair=81354, weapon=81355,
            crown=81365, wing=81371,
        ),
        "아라": dict(
            top=81971, bottom=81972, gloves=81973, shoes=81974, hair=81975, weapon=81976,
            crown=81977, wing=81978,
        ),
        "엘리시스": dict(
            top=81989, bottom=81990, gloves=81991, shoes=81992, hair=81993, weapon=81988,
            crown=81995, wing=81994,
        ),
    }


def demon_slayer_sets() -> dict[str, dict[str, int]]:
    weapons = {
        "엘소드": 81020, "아이샤": 81030, "레나": 81040, "레이븐": 81050,
        "이브": 81060, "청": 81070, "아라": 81070, "엘리시스": 81070,
    }
    heads = {
        "엘소드": 81080, "아이샤": 81082, "레나": 81081, "레이븐": 81083,
        "이브": 81084, "청": 81085, "아라": 81085, "엘리시스": 81085,
    }
    wings = {
        "엘소드": 81086, "아이샤": 81087, "레나": 81088, "레이븐": 81089,
        "이브": 81090, "청": 81091, "아라": 81091, "엘리시스": 81091,
    }
    out: dict[str, dict[str, int]] = {}
    for char, weapon in weapons.items():
        out[char] = {
            "weapon": weapon,
            "top": weapon + 1,
            "bottom": weapon + 2,
            "gloves": weapon + 3,
            "shoes": weapon + 4,
            "hair": weapon + 5,
            "head": heads[char],
            "wing": wings[char],
        }
    return out


def build_explicit_source_map() -> dict[int, int]:
    mapping: dict[int, int] = {}

    ventus_bases = {
        "엘소드": 88615, "아이샤": 88623, "레나": 88631, "레이븐": 88639,
        "이브": 88647, "청": 88655, "아라": 88663, "엘리시스": 88671,
    }
    weapons = char_weapon_bases()
    horns = char_horn_ids()
    wings = char_wing_ids_denif()
    for char, base in ventus_bases.items():
        weapon = weapons[char]
        slots = [weapon + i for i in range(6)] + [horns[char], wings[char]]
        for offset, source_id in enumerate(slots):
            mapping[base + offset] = source_id

    ignition_bases = {
        "엘소드": 88685, "아이샤": 88693, "레나": 88701, "레이븐": 88709,
        "이브": 88725, "청": 88733, "아라": 88741, "엘리시스": 88717,
    }
    ignition_order = ("weapon", "top", "bottom", "gloves", "shoes", "hair", "crown", "wing")
    royal = royal_blood_sets()
    for char, base in ignition_bases.items():
        src = royal[char]
        for offset, slot in enumerate(ignition_order):
            mapping[base + offset] = src[slot]

    demon_bases = {
        "엘소드": 82020, "아이샤": 82028, "레나": 82036, "레이븐": 82044,
        "이브": 82052, "청": 82060, "아라": 82068, "엘리시스": 82076,
    }
    demon_order = ("weapon", "top", "bottom", "gloves", "shoes", "hair", "head", "wing")
    demon = demon_slayer_sets()
    for char, base in demon_bases.items():
        src = demon[char]
        for offset, slot in enumerate(demon_order):
            mapping[base + offset] = src[slot]

  # Royal Maid (Ara cash IDs -> Aisha Royal Maid templates)
    violet = {
        133519: 132670, 133520: 132671, 133521: 132672, 133522: 132673,
        133523: 132674, 133524: 132675, 133525: 132764,
    }
    black = {
        133527: 132722, 133528: 132723, 133529: 132724, 133530: 132725,
        133531: 132726, 133532: 132727, 133533: 132798,
    }
    mapping.update(violet)
    mapping.update(black)

    # Diamond Yaksha (Ara)
    yaksha_weapon = 81150
    for offset in range(6):
        mapping[81949 + offset] = yaksha_weapon + offset
    mapping[81955] = 81166
    mapping[81996] = 81215

    heaven_weapon = 81270
    for offset in range(6):
        mapping[81956 + offset] = heaven_weapon + offset
    mapping[81962] = 81276

    # Archangel (Chung cash IDs)
    archangel_order = ("top", "bottom", "gloves", "shoes", "hair", "weapon", "wing", "crown")
    arch_src = {
        "top": 133381, "bottom": 133382, "gloves": 133383, "shoes": 133384,
        "hair": 133385, "weapon": 133380, "wing": 133386, "crown": 133387,
    }
    for offset, slot in enumerate(archangel_order):
        mapping[87050 + offset] = arch_src[slot]

    return mapping


def detect_source_mesh_prefix(block: str) -> str | None:
    match = re.search(r"Mesh_([A-Za-z]+)_", block)
    if match:
        return match.group(1)
    return None


def transform_block(block: str, source_id: int, target_id: int, target_char: str) -> str:
    profile = CHAR_PROFILES[target_char]
    out = re.sub(rf"m_ItemID\s*=\s*{source_id}\b", f"m_ItemID = {target_id}", block, count=1)

    source_prefix = detect_source_mesh_prefix(block)
    target_prefix = profile["mesh"]
    if source_prefix and source_prefix != target_prefix:
        out = out.replace(f"Mesh_{source_prefix}_", f"Mesh_{target_prefix}_")
        out = out.replace(f"HQ_Shop_{source_prefix}_", f"HQ_Shop_{target_prefix}_")

    for char_name, other in CHAR_PROFILES.items():
        if char_name == target_char:
            continue
        out = out.replace(f'UNIT_TYPE["{other["unit"]}"]', f'UNIT_TYPE["{profile["unit"]}"]')
        out = re.sub(
            rf'UNIT_CLASS\["UC_{re.escape(other["uclass"].removeprefix("UC_"))}"\]',
            f'UNIT_CLASS["{profile["uclass"]}"]',
            out,
        )

    out = re.sub(r'UNIT_CLASS\["UC_[^"]+"\]', f'UNIT_CLASS["{profile["uclass"]}"]', out)
    out = re.sub(r'UNIT_TYPE\["UT_[^"]+"\]', f'UNIT_TYPE["{profile["unit"]}"]', out)

    if 'ITEM_TYPE["IT_WEAPON"]' in out:
        out = re.sub(
            r'm_AttachFrameName\s*=\s*"[^"]*"',
            f'm_AttachFrameName = "{profile["weapon_frame"]}"',
            out,
            count=1,
        )

    out = re.sub(r"\s*m_CHUNG_ITEM_SCALE_ROTATE\s*=.*\n", "\n", out)
    out = re.sub(r"\s*m_FrameOffsetChungZ\s*=.*\n", "\n", out)
    return out


def is_target_costume(comment: str) -> bool:
    return any(keyword in comment for keyword in COSTUME_SET_KEYWORDS)


def append_blocks(text: str, blocks: list[str]) -> str:
    if not blocks:
        return text
    joined = "\n\n".join(blocks) + "\n"
    if RESTORE_MARKER in text:
        return text.rstrip() + "\n\n" + joined
    return text.rstrip() + f"\n{RESTORE_MARKER} missing fashion item templets\n\n" + joined


def restore_costumes() -> tuple[int, int, list[int]]:
    explicit = build_explicit_source_map()
    price_rows = parse_price_index(PRICE_FILE)
    item_path = ITEM_TARGETS[0]
    text = read_text(item_path)
    item_blocks = parse_item_blocks(text)

    targets: list[tuple[int, str]] = []
    for item_id, row in price_rows.items():
        char = row["char"]
        if not char or not is_target_costume(row["comment"]):
            continue
        if item_id in item_blocks:
            continue
        targets.append((item_id, char))

    cloned: list[str] = []
    unresolved: list[int] = []
    for target_id, target_char in sorted(targets):
        source_id = explicit.get(target_id)
        if source_id is None or source_id not in item_blocks:
            unresolved.append(target_id)
            continue
        block = transform_block(item_blocks[source_id], source_id, target_id, target_char)
        cloned.append(block)
        item_blocks[target_id] = block

    if not cloned:
        return 0, len(unresolved), unresolved

    new_text = append_blocks(text, cloned)
    for path in ITEM_TARGETS:
        if path.exists():
            path.write_text(new_text, encoding="utf-8")
    return len(cloned), len(unresolved), unresolved


def main() -> int:
    cloned, unresolved_count, unresolved = restore_costumes()
    print(f"cloned {cloned} cash-shop costume item templets into Item.lua")
    if unresolved_count:
        print(f"warning: {unresolved_count} priced costume items still lack a source template")
        print("  sample:", unresolved[:25])

    if cloned:
        restore = ROOT / "scripts" / "restore-cashshop.py"
        if restore.exists():
            print("running restore-cashshop.py to refresh billing categories...")
            result = subprocess.run([sys.executable, str(restore)], cwd=ROOT)
            if result.returncode != 0:
                return result.returncode
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
