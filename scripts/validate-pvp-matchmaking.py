#!/usr/bin/env python3
"""Validate the server data required for solo PvP NPC matchmaking.

The native server silently skips a PvP NPC record when a required Lua field is
absent.  Startup and release builds fail closed so the configured one-player
queue policy and every activated fallback record remain usable.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent

NPC_DATA_FILES = (
    Path("Elsword/ServerResource/PvpNpcData.lua"),
    Path("Elsword/ServerResource/PvpNpcData_EN.lua"),
)
MATCH_DATA_FILES = (
    Path("Elsword/ServerResource/PvpMatchData.lua"),
    Path("Elsword/Resources/PvpMatchData.lua"),
)

UNUSED_NPCS = frozenset(
    {
        "NUI_PVP_BOT_ELSWORD",
        "NUI_PVP_BOT_AISHA",
        "NUI_PVP_BOT_RENA",
        "NUI_PVP_BOT_RAVEN",
        "NUI_PVP_BOT_EVE",
        "NUI_PVP_BOT_CHUNG",
    }
)
REQUIRED_HERO_NPCS = frozenset(
    {
        "NUI_PVP_HERO_LOW",
        "NUI_PVP_HERO_PENENSIO",
        "NUI_PVP_HERO_NOA",
        "NUI_PVP_HERO_SPIKA",
        "NUI_PVP_HERO_LIME",
        "NUI_PVP_HERO_AMELIA",
        "NUI_PVP_HERO_EDAN",
        "NUI_PVP_HERO_BALAK",
        "NUI_PVP_HERO_CODE_Q_PROTO_00",
        "NUI_PVP_HERO_APPLE",
    }
)
REQUIRED_NPC_FIELDS = frozenset(
    {
        "m_PvpNpcID",
        "m_PvpNpcType",
        "m_UnitClass",
        "m_Level",
        "m_Rating",
        "m_Ranking",
    }
)
SOLO_QUEUE_SETTINGS = {
    "SetMatchMakingBeginCount": 1,
}
POSITIVE_MATCH_SETTINGS = (
    "SetCheckWaitUserCount",
    "SetGapMinMaxRating",
    "SetHeroPvpNpcFactor",
)

NPC_BLOCK_RE = re.compile(
    r"PvpMatchManager\s*:\s*AddPvpNpcInfo\s*\{(?P<body>.*?)\}",
    re.DOTALL,
)
FIELD_RE = re.compile(r"\b(m_[A-Za-z0-9_]+)\s*=\s*([^,\r\n}]+)")
NPC_ID_RE = re.compile(r"""NPC_UNIT_ID\s*\[\s*["']([^"']+)["']\s*\]""")


def strip_lua_comments(text: str) -> str:
    """Remove Lua comments so disabled records cannot satisfy validation."""
    text = re.sub(r"--\[\[.*?\]\]", "", text, flags=re.DOTALL)
    return re.sub(r"--[^\r\n]*", "", text)


def parse_npc_blocks(text: str) -> list[dict[str, str]]:
    active = strip_lua_comments(text)
    return [
        {match.group(1): match.group(2).strip() for match in FIELD_RE.finditer(block.group("body"))}
        for block in NPC_BLOCK_RE.finditer(active)
    ]


def npc_symbol(fields: dict[str, str]) -> str | None:
    match = NPC_ID_RE.fullmatch(fields.get("m_PvpNpcID", "").strip())
    return match.group(1) if match else None


def is_enum_value(expression: str, table: str, key: str) -> bool:
    normalized = re.sub(r"\s+", "", expression).replace("'", '"')
    return normalized == f'{table}["{key}"]'


def validate_npc_data(path: Path) -> list[str]:
    if not path.is_file():
        return [f"{path}: file is missing"]

    issues: list[str] = []
    blocks = parse_npc_blocks(path.read_text(encoding="utf-8-sig", errors="replace"))
    records: dict[str, dict[str, str]] = {}

    for index, fields in enumerate(blocks, start=1):
        symbol = npc_symbol(fields)
        label = symbol or f"active record #{index}"
        missing = sorted(REQUIRED_NPC_FIELDS - fields.keys())
        if missing:
            issues.append(f"{path}: {label} is missing required field(s): {', '.join(missing)}")
        if symbol:
            if symbol in records:
                issues.append(f"{path}: duplicate active PvP NPC record: {symbol}")
            records[symbol] = fields

    beginner_records = [
        fields
        for fields in blocks
        if not (REQUIRED_NPC_FIELDS - fields.keys())
        and is_enum_value(
            fields.get("m_PvpNpcType", ""),
            "PVP_NPC_TYPE",
            "PNT_BEGINNER_NPC",
        )
    ]
    if not beginner_records:
        issues.append(f"{path}: no valid beginner NPC is active for solo matchmaking")

    hero_symbols = {
        npc_symbol(fields)
        for fields in blocks
        if not (REQUIRED_NPC_FIELDS - fields.keys())
        and is_enum_value(
            fields.get("m_PvpNpcType", ""),
            "PVP_NPC_TYPE",
            "PNT_HERO_NPC",
        )
    }
    missing_heroes = sorted(REQUIRED_HERO_NPCS - hero_symbols)
    if missing_heroes:
        issues.append(
            f"{path}: missing required Hero/Epic NPC(s): "
            f"{', '.join(missing_heroes)}"
        )

    for symbol in sorted(UNUSED_NPCS & records.keys()):
        issues.append(
            f"{path}: unsupported empty-AI NPC must remain inactive: {symbol}"
        )

    return issues


def active_numeric_setting(text: str, method: str) -> list[int]:
    active = strip_lua_comments(text)
    pattern = re.compile(
        rf"PvpMatchManager\s*:\s*{re.escape(method)}\s*\(\s*(\d+)\s*\)"
    )
    return [int(match.group(1)) for match in pattern.finditer(active)]


def validate_match_data(path: Path) -> list[str]:
    if not path.is_file():
        return [f"{path}: file is missing"]

    issues: list[str] = []
    text = path.read_text(encoding="utf-8-sig", errors="replace")
    for method, expected in SOLO_QUEUE_SETTINGS.items():
        values = active_numeric_setting(text, method)
        if values != [expected]:
            rendered = ", ".join(str(value) for value in values) if values else "missing"
            issues.append(
                f"{path}: {method} must have one active value of {expected} "
                f"(found {rendered})"
            )
    for method in POSITIVE_MATCH_SETTINGS:
        values = active_numeric_setting(text, method)
        if len(values) != 1 or values[0] <= 0:
            rendered = ", ".join(str(value) for value in values) if values else "missing"
            issues.append(
                f"{path}: {method} must have one active positive value "
                f"(found {rendered})"
            )
    return issues


def validate_repository(root: Path = ROOT) -> list[str]:
    issues: list[str] = []
    for relative in NPC_DATA_FILES:
        issues.extend(validate_npc_data(root / relative))
    for relative in MATCH_DATA_FILES:
        issues.extend(validate_match_data(root / relative))
    return issues


def main() -> int:
    issues = validate_repository()
    if issues:
        print("PVP MATCHMAKING CONFIG ERROR")
        for issue in issues:
            print(f"  - {issue}")
        return 2

    print(
        "PvP matchmaking validation passed: solo queue trigger and "
        "supported NPC pools are active."
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
