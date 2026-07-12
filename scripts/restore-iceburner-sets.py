#!/usr/bin/env python3
"""Restore rare Ice Burner wearables omitted from the loose Item.lua files.

The Korean cash/gacha tables shipped with this server are newer than the
international Item.lua shipped with the client.  Event15 through Event20 and
their accessory assets are present in the KOM archives, but 545 playable-
character item templets are absent.  This script recreates those templets from
the authoritative item IDs, character/slot sequences, and archive filenames.
"""

from __future__ import annotations

import argparse
import re
import sys
from dataclasses import dataclass, replace
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
DATA = ROOT / "data"
PRICE_FILE = ELSWORD / "ServerResource" / "CashItemPrice.lua"
RANDOM_FILE = ELSWORD / "ServerResource" / "RandomItemData.lua"
ITEM_TARGETS = (
    ELSWORD / "Resources" / "Item.lua",
    ELSWORD / "ClientScript" / "Major" / "Item.lua",
)
MARKER = "-- RESTORE_ICEBURNER_SETS: generated rare wearable templets"
END_MARKER = "-- END_RESTORE_ICEBURNER_SETS"
ASSET_ARCHIVES = (
    "data015.kom",  # Aisha
    "data016.kom",  # common wearables
    "data017.kom",  # Elsword
    "data018.kom",  # Eve
    "data019.kom",  # Rena
    "data020.kom",  # Raven
    "data048.kom",  # common accessories
    "data067.kom",  # older shop images
    "data107.kom",  # Chung
    "data130.kom",  # newer shop images
    "data131.kom",  # Ara
)

ITEM_ID_RE = re.compile(r"m_ItemID\s*=\s*(\d+)")
PRICE_RE = re.compile(
    r"AddCashItemPrice\(\s*(\d+)\s*,\s*\d+\s*\)\s*(?:--\s*(.*))?"
)
ATTRACTION_RE = re.compile(
    r"AddAttractionItemInfo\(\s*(\d+)\s*,\s*true\s*\)\s*(?:--\s*(.*))?"
)


@dataclass(frozen=True)
class Character:
    name: str
    mesh: str
    unit: str
    unit_class: str
    weapon_frame: str = "Dummy1_Rhand"


@dataclass(frozen=True)
class Piece:
    item_id: int
    character: Character | None
    slot: str
    event: int | None = None
    variant: str = ""
    alt_hair: bool = False
    asset_id: int | None = None
    texture_asset_id: int | None = None
    fallback_event: int | None = None
    shop_override: str | None = None


CHARS = (
    Character("Elsword", "Elsword", "UT_ELSWORD", "UC_ELSWORD_SWORDMAN"),
    Character("Aisha", "Arme", "UT_ARME", "UC_ARME_VIOLET_MAGE"),
    Character("Rena", "Lire", "UT_LIRE", "UC_LIRE_ELVEN_RANGER"),
    Character("Raven", "Raven", "UT_RAVEN", "UC_RAVEN_FIGHTER"),
    Character("Eve", "Eve", "UT_EVE", "UC_EVE_NASOD"),
    Character("Chung", "Chung", "UT_CHUNG", "UC_CHUNG_IRON_CANNON"),
)
ARA = Character("Ara", "Ara", "UT_ARA", "UC_ARA_MARTIAL_ARTIST", "Dummy3_Weapon")

CORE_SLOTS = ("weapon", "body", "leg", "hand", "foot", "hair")
ARMOR_SLOTS = ("body", "leg", "hand", "foot", "hair")

SLOT_ENUM = {
    "weapon": "EP_WEAPON_HAND",
    "body": "EP_DEFENCE_BODY",
    "leg": "EP_DEFENCE_LEG",
    "hand": "EP_DEFENCE_HAND",
    "foot": "EP_DEFENCE_FOOT",
    "hair": "EP_DEFENCE_HAIR",
    "face1": "EP_AC_FACE1",
    "face2": "EP_AC_FACE2",
    "face3": "EP_AC_FACE3",
    "ac_body": "EP_AC_BODY",
    "ac_leg": "EP_AC_LEG",
    "ac_arm": "EP_AC_ARM",
}

EVENT_TOKEN = {
    "weapon": "Weapon",
    "body": "Upbody",
    "leg": "Lowbody",
    "hand": "Hand",
    "foot": "Foot",
    "hair": "Hair",
}


def read_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def repair_mojibake(text: str) -> str:
    for encoding in ("latin1", "cp1252"):
        try:
            return text.encode(encoding).decode("utf-8")
        except (UnicodeEncodeError, UnicodeDecodeError):
            pass
    return text


def parse_names() -> dict[int, str]:
    names: dict[int, str] = {}
    for path, pattern in ((PRICE_FILE, PRICE_RE), (RANDOM_FILE, ATTRACTION_RE)):
        for line in read_text(path).splitlines():
            match = pattern.search(line)
            if match and match.group(2):
                names.setdefault(int(match.group(1)), repair_mojibake(match.group(2).strip()))
    return names


def load_archive_names() -> list[str]:
    names: set[str] = set()
    for archive in ASSET_ARCHIVES:
        path = DATA / archive
        if not path.exists():
            continue
        blob = path.read_bytes()
        start = blob.find(b"<?xml")
        end = blob.find(b"</Files>", start)
        if start < 0 or end < 0:
            continue
        table = blob[start : end + len(b"</Files>")].decode("utf-8", errors="ignore")
        names.update(re.findall(r'\bName="([^"]+)"', table))
    return sorted(names)


class AssetIndex:
    def __init__(self, names: list[str]) -> None:
        self.names = names
        self.by_lower = {name.casefold(): name for name in names}
        self.by_number: dict[str, list[str]] = {}
        for name in names:
            for number in set(re.findall(r"\d{5,}", name)):
                self.by_number.setdefault(number, []).append(name)

    def exact(self, name: str) -> str | None:
        return self.by_lower.get(name.casefold())

    def containing(self, *parts: str, suffixes: tuple[str, ...] = ()) -> list[str]:
        folded = tuple(part.casefold() for part in parts)
        return [
            name
            for name in self.names
            if all(part in name.casefold() for part in folded)
            and (not suffixes or name.casefold().endswith(suffixes))
        ]

    def event_model(self, piece: Piece) -> str | None:
        assert piece.character is not None and piece.event is not None
        event = f"{piece.event:02d}"
        token = EVENT_TOKEN[piece.slot]
        if piece.alt_hair:
            token = "Hair"
            candidate = f"Mesh_{piece.character.mesh}_Event_Hair{event}_A_Sorted.X"
        else:
            candidate = f"Mesh_{piece.character.mesh}_Event_{token}{event}_Sorted.X"
        found = self.exact(candidate)
        if found:
            return found

        matches = self.containing(
            f"Mesh_{piece.character.mesh}_Event_",
            f"{token}{event}",
            "Sorted",
            suffixes=(".x", ".y"),
        )
        matches = [name for name in matches if "_effect" not in name.casefold()]
        if matches:
            return sorted(matches, key=lambda name: ("_a." not in name.casefold(), len(name)))[0]
        return None

    def event_shop_image(self, piece: Piece) -> str | None:
        assert piece.character is not None and piece.event is not None
        token = EVENT_TOKEN[piece.slot]
        event = f"{piece.event:02d}"
        suffix = piece.variant
        if piece.alt_hair:
            suffix = f"{piece.variant}_A" if piece.variant else "_A"
        candidate = f"HQ_Shop_{piece.character.mesh}_Event_{token}{event}{suffix}.dds"
        found = self.exact(candidate)
        if found:
            return found
        matches = self.containing(
            "HQ_Shop_",
            piece.character.mesh,
            f"{token}{event}",
            suffixes=(".dds",),
        )
        if piece.variant:
            matches = [name for name in matches if piece.variant.casefold() in name.casefold()]
        return sorted(matches, key=len)[0] if matches else None

    def direct_models(self, asset_id: int, character: Character | None) -> list[str]:
        matches = [
            name
            for name in self.by_number.get(str(asset_id), ())
            if "mesh_" in name.casefold()
            and "sorted" in name.casefold()
            and name.casefold().endswith((".x", ".y"))
        ]
        matches = [name for name in matches if not name.casefold().startswith("hyper_")]
        if character:
            preferred = [
                name
                for name in matches
                if f"mesh_{character.mesh}_".casefold() in name.casefold()
            ]
            if preferred:
                matches = preferred
        paired = [
            name
            for name in matches
            if "_sorted_r." in name.casefold() or "_sorted_l." in name.casefold()
        ]
        if paired:
            return sorted(paired, key=lambda name: "_sorted_l." in name.casefold())
        return sorted(matches, key=lambda name: ("_sorted_a." in name.casefold(), len(name)))[:1]

    def direct_shop_image(self, item_id: int, character: Character | None) -> str | None:
        matches = [
            name
            for name in self.by_number.get(str(item_id), ())
            if "hq_shop_" in name.casefold() and name.casefold().endswith(".dds")
        ]
        if character:
            preferred = [
                name for name in matches if character.mesh.casefold() in name.casefold()
            ]
            if preferred:
                matches = preferred
        return sorted(matches, key=len)[0] if matches else None

    def texture(self, piece: Piece) -> str | None:
        if piece.texture_asset_id is not None:
            matches = [
                name
                for name in self.by_number.get(str(piece.texture_asset_id), ())
                if "mesh_" in name.casefold() and name.casefold().endswith("a.xet")
            ]
            if piece.character:
                preferred = [
                    name for name in matches if piece.character.mesh.casefold() in name.casefold()
                ]
                if preferred:
                    matches = preferred
            return sorted(matches, key=len)[0] if matches else None
        if not piece.variant or piece.character is None or piece.event is None:
            return None
        return self.exact(
            f"Mesh_{piece.character.mesh}_Event{piece.event:02d}{piece.variant}.xet"
        )


def add_core(
    pieces: list[Piece],
    base: int,
    character: Character,
    event: int,
    *,
    variant: str = "",
    include_alt_hair: bool = False,
    fallback_event: int | None = None,
) -> None:
    slots = CORE_SLOTS + (("hair",) if include_alt_hair else ())
    for offset, slot in enumerate(slots):
        pieces.append(
            Piece(
                base + offset,
                character,
                slot,
                event,
                variant,
                alt_hair=include_alt_hair and offset == 6,
                fallback_event=fallback_event,
            )
        )


def add_direct(
    pieces: list[Piece],
    item_id: int,
    character: Character | None,
    slot: str,
    *,
    asset_id: int | None = None,
    texture_asset_id: int | None = None,
    shop_override: str | None = None,
) -> None:
    pieces.append(
        Piece(
            item_id,
            character,
            slot,
            asset_id=asset_id or item_id,
            texture_asset_id=texture_asset_id,
            shop_override=shop_override,
        )
    )


def build_piece_catalog() -> list[Piece]:
    pieces: list[Piece] = []

    # Dragon Knight - Dark Side / Abaddon (Event15).
    for index, char in enumerate(CHARS):
        add_core(pieces, 81390 + index * 10, char, 15, include_alt_hair=True)
        add_core(
            pieces,
            81470 + index * 10,
            char,
            15,
            variant="A",
            include_alt_hair=True,
        )
        for offset, slot in ((0, "face2"), (6, "face3"), (12, "ac_body")):
            dark_id = 81450 + offset + index
            add_direct(pieces, dark_id, char, slot)
            add_direct(
                pieces,
                dark_id + 80,
                char,
                slot,
                asset_id=dark_id,
                texture_asset_id=dark_id,
            )
    add_direct(pieces, 81468, None, "ac_arm")
    add_direct(pieces, 81548, None, "ac_arm", asset_id=81468, texture_asset_id=81468)

    # Holy Unicorn (Event16). 81650 is a non-wearable summon item.
    for index, char in enumerate(CHARS):
        for offset, slot in enumerate(ARMOR_SLOTS):
            pieces.append(Piece(81550 + index * 10 + offset, char, slot, 16))
        pieces.append(Piece(81605 + index, char, "weapon", 16))
        add_direct(pieces, 81620 + index, char, "ac_body")
        add_direct(pieces, 81630 + index, char, "face2")
    add_direct(pieces, 81640, None, "ac_leg")

    # Dark Shadow and its reform recolor (Event17).
    for index, char in enumerate(CHARS):
        for offset, slot in enumerate(ARMOR_SLOTS):
            pieces.append(Piece(81660 + index * 10 + offset, char, slot, 17))
            pieces.append(Piece(81728 + index * 5 + offset, char, slot, 17, "A"))
        pieces.append(Piece(81715 + index, char, "weapon", 17))
        pieces.append(Piece(81758 + index, char, "weapon", 17, "A"))
        original_monocle = 81722 + index
        add_direct(pieces, original_monocle, char, "face2")
        add_direct(
            pieces,
            81770 - index,
            char,
            "face2",
            asset_id=original_monocle,
            texture_asset_id=original_monocle,
        )
    add_direct(pieces, 81721, None, "ac_leg")
    add_direct(pieces, 81771, None, "ac_leg", asset_id=81721)

    # Salvatore Ebalon (Event18), including Ara.
    for index, char in enumerate(CHARS):
        for offset, slot in enumerate(ARMOR_SLOTS):
            pieces.append(Piece(81780 + index * 10 + offset, char, slot, 18))
        pieces.append(Piece(81835 + index, char, "weapon", 18))
        crown_id = 81855 + index
        shadow_id = 81862 + index
        add_direct(pieces, crown_id, char, "face1")
        add_direct(pieces, shadow_id, char, "ac_body")
    add_core(pieces, 81841, ARA, 18)
    add_direct(pieces, 81861, ARA, "face1")
    add_direct(pieces, 81868, ARA, "ac_body")

    # Chung Velder Imperial Guard has exact older-ID source assets.
    for target, source, slot in (
        (81847, 180135, "weapon"),
        (81848, 180136, "body"),
        (81849, 180137, "leg"),
        (81850, 180138, "hand"),
        (81851, 180139, "foot"),
        (81852, 180140, "hair"),
        (81853, 180141, "face1"),
        (81854, 180142, "ac_body"),
    ):
        if slot in CORE_SLOTS:
            event_piece = Piece(target, CHARS[5], slot, 8)
            pieces.append(event_piece)
        else:
            add_direct(pieces, target, CHARS[5], slot, asset_id=source)

    # Glacial (Event19); Ara's 81905-81910/81917/81924 already exist.
    for index, char in enumerate(CHARS):
        add_core(pieces, 81869 + index * 6, char, 19)
        add_direct(pieces, 81911 + index, char, "face1")
        add_direct(pieces, 81918 + index, char, "ac_body")

    # Golden Condor / Golden Falcon (Event20).
    for index, char in enumerate(CHARS + (ARA,)):
        base = 88278 + index * 8
        add_core(pieces, base, char, 20)
        add_direct(pieces, base + 6, char, "face1")
        add_direct(pieces, base + 7, char, "ac_body")

    # Nasod Battle Suit MK2 reuses Event04 with new goggle/wing assets.
    for index, char in enumerate(CHARS + (ARA,)):
        base = 88334 + index * 8
        add_core(pieces, base, char, 4)
        add_direct(pieces, base + 6, char, "face2")
        add_direct(pieces, base + 7, char, "ac_body")

    # Later accessory additions for earlier Ice Burner sets.
    for index, char in enumerate(CHARS):
        add_direct(pieces, 88390 + index, char, "ac_leg")
        add_direct(pieces, 88396 + index, char, "ac_leg")
        add_direct(pieces, 88402 + index, char, "ac_arm")
        add_direct(pieces, 88408 + index, char, "ac_arm")

    # Ara Archdevil and Grace Fairy extensions.
    add_core(pieces, 88430, ARA, 5)
    add_direct(pieces, 88436, ARA, "ac_body")
    add_direct(
        pieces,
        88437,
        ARA,
        "face2",
        shop_override="HQ_Shop_Chung_AC_Face2_81187.dds",
    )
    add_direct(pieces, 88438, ARA, "ac_leg")
    add_core(pieces, 81979, ARA, 12)
    add_direct(
        pieces,
        81985,
        ARA,
        "face1",
        shop_override="HQ_Shop_Arme_AC_Face1_81082.dds",
    )
    add_direct(pieces, 81986, ARA, "ac_body")
    add_direct(pieces, 81987, ARA, "ac_leg")

    # Ara Dragon Knight extensions.
    add_core(pieces, 133489, ARA, 15, include_alt_hair=True)
    add_direct(pieces, 133496, ARA, "face2")
    add_direct(pieces, 133497, ARA, "face3")
    add_direct(pieces, 133498, ARA, "ac_body")
    add_core(pieces, 133499, ARA, 15, variant="A", include_alt_hair=True)
    for target, source, slot in (
        (133506, 133496, "face2"),
        (133507, 133497, "face3"),
        (133508, 133498, "ac_body"),
    ):
        add_direct(
            pieces,
            target,
            ARA,
            slot,
            asset_id=source,
            texture_asset_id=source,
        )

    # Ara Royal Maid mini-me accessories.
    add_direct(
        pieces,
        133526,
        ARA,
        "face1",
        shop_override="HQ_Shop_Chung_AC_Face1_81197.dds",
    )
    add_direct(
        pieces,
        133534,
        ARA,
        "face1",
        asset_id=133526,
        texture_asset_id=133526,
        shop_override="HQ_Shop_Chung_AC_Face1_81197A.dds",
    )

    deduped = {piece.item_id: piece for piece in pieces}
    if len(deduped) != len(pieces):
        raise RuntimeError("duplicate Ice Burner item ID in generated catalog")
    return [deduped[item_id] for item_id in sorted(deduped)]


def lua_string(value: str) -> str:
    return (
        value.replace("\\", "\\\\")
        .replace('"', '\\"')
        .replace("\r", "")
        .replace("\n", "\\n")
    )


MINI_ME_IDS = frozenset({81985, 133526, 133534})


def direct_attach_frames(piece: Piece, count: int) -> tuple[str, ...]:
    if piece.item_id in MINI_ME_IDS:
        return ("Bip01_Footsteps",)
    if count > 1 and piece.slot == "ac_leg":
        return ("Bip01_R_Foot", "Bip01_L_Foot")
    if count > 1 and piece.slot == "ac_arm":
        return ("Bip01_R_Hand", "Bip01_L_Hand")
    if piece.slot.startswith("face"):
        return ("Bip01_Head",)
    return ("Bip01",)


def piece_assets(piece: Piece, assets: AssetIndex) -> tuple[list[str], str | None, str | None, bool]:
    fallback = False
    if piece.event is not None:
        model = assets.event_model(piece)
        shop = assets.event_shop_image(piece)
        if model is None and piece.fallback_event is not None:
            model = assets.event_model(replace(piece, event=piece.fallback_event))
            fallback = model is not None
        return (
            [model] if model else [],
            assets.exact(piece.shop_override) if piece.shop_override else shop,
            assets.texture(piece),
            fallback,
        )

    asset_id = piece.asset_id or piece.item_id
    return (
        assets.direct_models(asset_id, piece.character),
        assets.exact(piece.shop_override)
        if piece.shop_override
        else assets.direct_shop_image(piece.item_id, piece.character)
        or assets.direct_shop_image(asset_id, piece.character),
        assets.texture(piece),
        False,
    )


def render_piece(piece: Piece, name: str, assets: AssetIndex) -> tuple[str, dict[str, object]]:
    models, shop_image, texture, fallback = piece_assets(piece, assets)
    item_type = (
        "IT_WEAPON"
        if piece.slot == "weapon"
        else "IT_ACCESSORY"
        if piece.slot.startswith(("face", "ac_"))
        else "IT_DEFENCE"
    )
    use_type = (
        "UT_ATTACH_ANIM"
        if piece.slot == "weapon" or piece.item_id in MINI_ME_IDS
        else "UT_ATTACH_NORMAL"
        if item_type == "IT_ACCESSORY"
        else "UT_SKIN"
    )

    lines = [
        "g_pItemManager:AddItemTemplet",
        "{",
        f"       m_ItemID = {piece.item_id},",
        f'       m_Name = "{lua_string(name)}",',
        f'       m_Description = "{lua_string(name)}",',
        "",
    ]
    for index, model in enumerate(models):
        suffix = "" if index == 0 else str(index)
        lines.append(f'       m_ModelName{suffix} = "{model}",')
    if texture:
        lines.append(f'       m_TextureChangeXETName = "{texture}",')
    lines.append(f'       m_UseType = USE_TYPE["{use_type}"],')

    if piece.slot == "weapon" and piece.character:
        lines.append(f'       m_AttachFrameName = "{piece.character.weapon_frame}",')
    elif item_type == "IT_ACCESSORY" and models:
        frames = direct_attach_frames(piece, len(models))
        for index, frame in enumerate(frames[: len(models)]):
            suffix = "" if index == 0 else str(index)
            lines.append(f'       m_AttachFrameName{suffix} = "{frame}",')

    if shop_image:
        lines.append(f'       m_ShopImage = "{shop_image}",')
    lines.extend(
        [
            '       m_DropViewer = "DropItemPouch",',
            "",
        ]
    )
    if piece.character:
        lines.extend(
            [
                '       m_UseCondition = USE_CONDITION["UC_ONE_UNIT"],',
                f'       m_UnitType = UNIT_TYPE["{piece.character.unit}"],',
                f'       m_UnitClass = UNIT_CLASS["{piece.character.unit_class}"],',
                "",
            ]
        )
    lines.extend(
        [
            f'       m_ItemType = ITEM_TYPE["{item_type}"],',
            '       m_ItemGrade = ITEM_GRADE["IG_RARE"],',
            "       m_bFashion = True,",
            "       m_bVested = True,",
            "       m_ucMaxSealCount = 255,",
            "       m_Endurance = 0,",
            '       m_PriceType = SHOP_PRICE_TYPE["SPT_NONE"],',
            f'       m_EqipPosition = EQIP_POSITION["{SLOT_ENUM[piece.slot]}"],',
            "",
            "       SOCKET_OPTION =",
            "       {",
        ]
    )
    sockets = {
        "weapon": (1601, 1501),
        "body": (1402,),
        "leg": (1402,),
        "hand": (4501,),
        "foot": (4501,),
        "hair": (4502,),
    }.get(piece.slot, (2402,))
    lines.extend(f"              {socket}," for socket in sockets)
    lines.extend(["       },", "}", ""])

    return "\n".join(lines), {
        "model": bool(models),
        "shop_image": bool(shop_image),
        "texture": bool(texture) if piece.variant or piece.texture_asset_id else True,
        "fallback": fallback,
    }


def existing_item_ids(path: Path) -> set[int]:
    return {int(value) for value in ITEM_ID_RE.findall(read_text(path))}


def write_item_text(path: Path, text: str) -> None:
    raw = path.read_bytes()
    use_bom = raw.startswith(b"\xef\xbb\xbf")
    newline = "\r\n" if b"\r\n" in raw else "\n"
    normalized = text.replace("\r\n", "\n").replace("\r", "\n")
    if newline == "\r\n":
        normalized = normalized.replace("\n", "\r\n")
    path.write_text(
        normalized,
        encoding="utf-8-sig" if use_bom else "utf-8",
        newline="",
    )


def build_blocks() -> tuple[list[tuple[int, str]], dict[str, object]]:
    names = parse_names()
    assets = AssetIndex(load_archive_names())
    pieces = build_piece_catalog()
    blocks: list[tuple[int, str]] = []
    missing_models: list[int] = []
    missing_images: list[int] = []
    missing_textures: list[int] = []
    fallback_items: list[int] = []

    for piece in pieces:
        name = names.get(piece.item_id, f"Rare Ice Burner item {piece.item_id}")
        block, status = render_piece(piece, name, assets)
        blocks.append((piece.item_id, block))
        if not status["model"] and piece.item_id not in (81721, 81771):
            missing_models.append(piece.item_id)
        if not status["shop_image"]:
            missing_images.append(piece.item_id)
        if not status["texture"]:
            missing_textures.append(piece.item_id)
        if status["fallback"]:
            fallback_items.append(piece.item_id)

    report = {
        "catalog_count": len(pieces),
        "missing_models": missing_models,
        "missing_shop_images": missing_images,
        "missing_variant_textures": missing_textures,
        "fallback_items": fallback_items,
        "unsupported_add_items": list(range(82012, 82020))
        + list(range(82084, 82092))
        + list(range(82122, 82130)),
        "excluded_non_wearable": [81650],
    }
    return blocks, report


def apply_blocks(blocks: list[tuple[int, str]]) -> int:
    source_ids = existing_item_ids(ITEM_TARGETS[0])
    additions = [(item_id, block) for item_id, block in blocks if item_id not in source_ids]
    payload = "\n".join(block for _, block in blocks)
    for path in ITEM_TARGETS:
        text = read_text(path).rstrip()
        if MARKER in text:
            before, after = text.split(MARKER, 1)
            if END_MARKER in after:
                after = after.split(END_MARKER, 1)[1].lstrip()
            else:
                after = ""
            text = before.rstrip()
            trailing = f"\n\n{after.rstrip()}" if after else ""
        else:
            trailing = ""
        generated = f"\n\n{MARKER}\n\n{payload.rstrip()}\n\n{END_MARKER}"
        new_text = text + generated + trailing + "\n"
        if read_text(path) != new_text:
            write_item_text(path, new_text)
    return len(additions)


def print_report(report: dict[str, object], existing: int, added: int | None) -> None:
    print(f"Rare Ice Burner wearable catalog: {report['catalog_count']}")
    print(f"Already present: {existing}")
    if added is not None:
        print(f"Added Item.lua templets: {added}")
    print(f"Missing model assets: {len(report['missing_models'])} {report['missing_models']}")
    print(
        "Missing shop images: "
        f"{len(report['missing_shop_images'])} {report['missing_shop_images']}"
    )
    print(
        "Missing recolor textures: "
        f"{len(report['missing_variant_textures'])} {report['missing_variant_textures']}"
    )
    print(f"Same-family fallback models: {report['fallback_items']}")
    print(f"Unsupported Add-character records: {len(report['unsupported_add_items'])}")
    print(f"Excluded non-wearables: {report['excluded_non_wearable']}")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--audit-only", action="store_true")
    args = parser.parse_args()

    blocks, report = build_blocks()
    current_ids = existing_item_ids(ITEM_TARGETS[0])
    existing = sum(1 for item_id, _ in blocks if item_id in current_ids)
    if args.audit_only:
        print_report(report, existing, None)
        return 1 if report["missing_models"] or report["missing_shop_images"] else 0

    added = apply_blocks(blocks)
    print_report(report, existing, added)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
