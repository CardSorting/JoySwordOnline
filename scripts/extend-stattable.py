#!/usr/bin/env python3
"""Extend StatTable.lua reserve range and add extrapolated high-level stats."""

from __future__ import annotations

import argparse
import re
import shutil
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
STAT_SOURCES = (
    ROOT / "Elsword" / "ServerResource" / "StatTable.lua",
    ROOT / "Elsword" / "GameServer" / "StatTable.lua",
)
STAT_PATTERN = re.compile(
    r"StatTable:SetUnitStat\(\s*(\d+)\s*,\s*(\d+)\s*,\s*\{([^}]+)\}\s*\)"
)
RESERVE_PATTERN = re.compile(r"ReserveMemory\(\s*(\d+)\s*,\s*(\d+)\s*\)")
STAT_FIELDS = ("AtkPhysic", "AtkMagic", "DefPhysic", "DefMagic", "HP")


def parse_stats(blob: str) -> dict[str, float]:
    stats: dict[str, float] = {}
    for field in STAT_FIELDS:
        match = re.search(rf"{field}\s*=\s*([0-9.]+)", blob)
        if not match:
            raise ValueError(f"Missing {field} in stat row: {blob[:80]!r}")
        stats[field] = float(match.group(1))
    return stats


def format_stats(stats: dict[str, float]) -> str:
    parts: list[str] = []
    for field in STAT_FIELDS:
        value = stats[field]
        if value.is_integer():
            parts.append(f"{field} = {int(value)}")
        else:
            parts.append(f"{field} = {value}")
    return ", ".join(parts)


def extrapolate_level(prev: dict[str, float], last: dict[str, float]) -> dict[str, float]:
    return {
        field: last[field] + (last[field] - prev[field])
        for field in STAT_FIELDS
    }


def extend_text(text: str, *, target_level: int, reserve_level: int) -> tuple[str, int, int]:
    by_class: dict[int, dict[int, dict[str, float]]] = defaultdict(dict)
    for match in STAT_PATTERN.finditer(text):
        unit_class = int(match.group(1))
        level = int(match.group(2))
        by_class[unit_class][level] = parse_stats(match.group(3))

    if not by_class:
        raise RuntimeError("No SetUnitStat rows found")

    new_lines: list[str] = []
    added_rows = 0
    for unit_class in sorted(by_class):
        levels = by_class[unit_class]
        max_level = max(levels)
        if max_level >= target_level:
            continue
        if max_level < 2:
            raise RuntimeError(f"class {unit_class} needs at least two stat rows")
        previous = levels[max_level - 1]
        current = levels[max_level]
        for level in range(max_level + 1, target_level + 1):
            current = extrapolate_level(previous, current)
            levels[level] = current
            new_lines.append(
                f"StatTable:SetUnitStat( {unit_class}, {level}, {{ {format_stats(current)} }} )"
            )
            added_rows += 1
            previous = levels[level - 1]

    updated = RESERVE_PATTERN.sub(
        lambda match: f"ReserveMemory( {match.group(1)}, {reserve_level} )",
        text,
    )
    if new_lines:
        updated = updated.rstrip() + "\n\n" + "\n".join(new_lines) + "\n"

    return updated, added_rows, len(RESERVE_PATTERN.findall(updated))


def trim_stat_table(text: str, *, max_level: int) -> tuple[str, int]:
    removed = 0
    lines: list[str] = []
    row = re.compile(r"StatTable:SetUnitStat\(\s*\d+\s*,\s*(\d+)\s*,")
    for line in text.splitlines():
        match = row.search(line)
        if match and int(match.group(1)) > max_level:
            removed += 1
            continue
        lines.append(line)
    return "\n".join(lines) + ("\n" if text.endswith("\n") else ""), removed


def sync_paths() -> list[Path]:
    server = ROOT / "Elsword" / "ServerResource" / "StatTable.lua"
    game = ROOT / "Elsword" / "GameServer" / "StatTable.lua"
    shutil.copy2(server, game)
    payload = ROOT / "build" / "container-payload" / "Elsword" / "GameServer" / "StatTable.lua"
    if payload.parent.exists():
        shutil.copy2(server, payload)
        payload_server = ROOT / "build" / "container-payload" / "Elsword" / "ServerResource" / "StatTable.lua"
        if payload_server.parent.exists():
            shutil.copy2(server, payload_server)
    return [server, game]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--target-level",
        type=int,
        default=99,
        help="Highest SetUnitStat level to generate (default: 99)",
    )
    parser.add_argument(
        "--reserve-level",
        type=int,
        default=0,
        help="ReserveMemory size (default: target-level + 1 for level < size checks)",
    )
    parser.add_argument(
        "--trim-above-level",
        type=int,
        default=0,
        help="Remove SetUnitStat rows above this level (0 = disabled)",
    )
    parser.add_argument("--apply", action="store_true", help="Write updated StatTable.lua files")
    args = parser.parse_args()

    reserve_level = args.reserve_level or (args.target_level + 1)
    source = STAT_SOURCES[0]
    text = source.read_text(encoding="utf-8")
    if args.trim_above_level > 0:
        text, removed = trim_stat_table(text, max_level=args.trim_above_level)
        print(f"Trimmed {removed} SetUnitStat rows above level {args.trim_above_level}")
    else:
        removed = 0
    updated, added_rows, reserve_rows = extend_text(
        text,
        target_level=args.target_level,
        reserve_level=reserve_level,
    )
    if updated == text and added_rows == 0 and removed == 0:
        print("StatTable already up to date.")
        return 0

    print(
        f"StatTable plan: reserve={reserve_level}, target_level={args.target_level}, "
        f"reserve_rows={reserve_rows}, added_set_rows={added_rows}"
    )
    if not args.apply:
        print("Dry run only. Re-run with --apply to write files.")
        return 0

    source.write_text(updated, encoding="utf-8-sig")
    written = sync_paths()
    for path in written:
        print(f"updated {path.relative_to(ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
