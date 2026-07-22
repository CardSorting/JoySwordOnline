#!/usr/bin/env python3
"""Repair and validate cube, random-item, and package-item data.

The native server assumes every selected reward and every package component has
an Item.lua template.  A missing template is returned as a null item pointer,
so malformed data must be rejected before GameServer starts.
"""

from __future__ import annotations

import argparse
import re
import sys
from collections import Counter, defaultdict
from dataclasses import dataclass
from datetime import datetime
from decimal import Decimal, InvalidOperation
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"

ITEM_FILE = ELSWORD / "Resources" / "Item.lua"
ENUM_FILE = ELSWORD / "Resources" / "Enum.lua"
RANDOM_TABLE = ELSWORD / "ServerResource" / "RandomItemTable.lua"
RANDOM_DATA = ELSWORD / "ServerResource" / "RandomItemData.lua"
RANDOM_MAPPING = ELSWORD / "ServerResource" / "RandomItemMapping.lua"
RUNTIME_RANDOM_FILES = {
    RANDOM_TABLE: ELSWORD / "GameServer" / "RandomItemTable.lua",
    RANDOM_DATA: ELSWORD / "GameServer" / "RandomItemData.lua",
    RANDOM_MAPPING: ELSWORD / "GameServer" / "RandomItemMapping.lua",
}
CLIENT_PACKAGES = ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua"
SERVER_PACKAGES = ELSWORD / "Resources" / "PackageItemData.lua"
CLIENT_RANDOM = ELSWORD / "ClientScript" / "Major" / "RandomItem.lua"
ADD_CUBE_PACKAGES = ELSWORD / "ClientScript" / "Major" / "AddCubePackageData.lua"

# A valid, stackable recovery item.  It is used only when corrupt legacy data
# would otherwise leave an openable cube with no reward at all.
FALLBACK_ITEM_ID = 130165
POOL_MARKER_BEGIN = "-- CUBE_INTEGRITY_FALLBACK_POOLS_BEGIN"
POOL_MARKER_END = "-- CUBE_INTEGRITY_FALLBACK_POOLS_END"
PACKAGE_MARKER_BEGIN = "-- CUBE_INTEGRITY_FALLBACK_PACKAGES_BEGIN"
PACKAGE_MARKER_END = "-- CUBE_INTEGRITY_FALLBACK_PACKAGES_END"

GROUP_LINE_RE = re.compile(
    r"^\s*g_pRandomItemManager:AddRandomItemGroup\(\s*(\d+)\s*,\s*(\d+)\s*,"
)
GROUP_ROW_RE = re.compile(
    r"^\s*g_pRandomItemManager:AddRandomItemGroup\(\s*(-?\d+)\s*,\s*(-?\d+)\s*,\s*"
    r"(-?(?:\d+(?:\.\d*)?|\.\d+))\s*,\s*(-?\d+)\s*,\s*(-?\d+)\s*\)\s*(?:--.*)?$"
)
PACKAGE_LINE_RE = re.compile(
    r"^\s*g_pCashItemManager:AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)\s*,"
)
PACKAGE_ROW_RE = re.compile(
    r"^\s*g_pCashItemManager:AddPackageItemData\(\s*(-?\d+)\s*,\s*(-?\d+)\s*,\s*"
    r"(-?\d+)\s*,\s*(true|false)\s*\)\s*(?:--.*)?$",
    re.IGNORECASE,
)
MAPPING_DATA_RE = re.compile(
    r"^\s*g_pRandomItemManager:AddRandomItemMappingData\(\s*(\d+)\s*,\s*"
    r"(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*\)"
)
MAPPING_TIME_RE = re.compile(
    r"^\s*g_pRandomItemManager:AddRandomItemMappingTime\(\s*(\d+)\s*,"
)
MAPPING_TIME_FULL_RE = re.compile(
    r'^\s*g_pRandomItemManager:AddRandomItemMappingTime\(\s*(\d+)\s*,\s*'
    r'"([^"]+)"\s*,\s*"([^"]+)"\s*\)'
)
CLIENT_ROUTE_RE = re.compile(
    r"^\s*g_pItemManager:AddRandomItemTemplet\(\s*(-?\d+)\s*,\s*(-?\d+)\s*,\s*"
    r"(-?\d+)\s*,\s*(-?\d+)\s*\)\s*(?:--.*)?$"
)
SPECIAL_ITEM_LINE_RE = re.compile(
    r"^\s*g_pRandomItemManager:Add"
    r"(SealRandomItemInfo|NotifyResultItemInfo|AttractionItemInfo|CharmItem)"
    r"\(\s*(\d+)(?:\s*,\s*(\d+))?"
)

CUBE_WORD_RE = re.compile(r"\b(cube|box|chest|package|pouch|gift)\b", re.IGNORECASE)
OPEN_DESCRIPTION_RE = re.compile(
    r"right[- ]click.*(?:open|use)|open(?:ed|ing)?\.", re.IGNORECASE
)
NON_OPENABLE_WORD_RE = re.compile(
    r"\b(key|opener|ticket|coupon|certificate)\b", re.IGNORECASE
)
PACKAGE_NAME_RE = re.compile(r"\bpackage\b", re.IGNORECASE)
PACKAGE_CONTENT_RE = re.compile(r"\b(contain|contains|contents?|package)\b", re.IGNORECASE)
VALID_USE_CONDITIONS = {"UC_ANYONE", "UC_ONE_UNIT", "UC_ONE_CLASS"}
SCALAR_REWARD_FIELDS = {"m_iRestoreSpirit", "m_iRessurectionCount"}


@dataclass(frozen=True)
class ItemInfo:
    name: str
    item_type: str
    description: str


@dataclass(frozen=True)
class RandomGroupRow:
    group_id: int
    reward_id: int
    weight: Decimal
    period: int
    quantity: int


@dataclass(frozen=True)
class TemplateRoute:
    item_id: int
    key_item_id: int
    required_key_count: int
    required_ed: int
    use_condition: str
    branches: tuple[tuple[str, int], ...]
    scalar_rewards: tuple[tuple[str, int], ...]

    @property
    def client_signature(self) -> tuple[int, int, int, int]:
        return (
            self.item_id,
            self.key_item_id,
            self.required_key_count,
            self.required_ed,
        )


@dataclass(frozen=True)
class PackageRow:
    package_id: int
    component_id: int
    quantity: int
    show_in_shop: bool


@dataclass
class CubeState:
    items: dict[int, ItemInfo]
    templates: dict[int, set[int]]
    template_routes: list[TemplateRoute]
    template_call_count: int
    groups: dict[int, set[int]]
    group_rows: list[RandomGroupRow]
    malformed_group_calls: list[str]
    mapping_rows: list[tuple[int, int, int, int, int]]
    mapping_times: list[tuple[int, str, str]]
    mapping_data_call_count: int
    mapping_time_call_count: int
    seal_cubes: set[int]
    add_cube_packages: set[int]
    packages: dict[int, set[int]]
    package_rows: list[PackageRow]
    malformed_package_calls: list[str]
    client_routes: list[tuple[int, int, int, int]]
    malformed_client_routes: list[str]
    unit_classes: set[str]


def read_lua(path: Path) -> str:
    return path.read_bytes().decode("utf-8-sig", errors="replace")


def write_lua(path: Path, text: str, *, bom: bool, newline: str | None = None) -> None:
    if newline is not None:
        text = text.replace("\r\n", "\n").replace("\r", "\n").replace("\n", newline)
    payload = text.encode("utf-8")
    if bom:
        payload = b"\xef\xbb\xbf" + payload
    path.write_bytes(payload)


def active_lua(text: str) -> str:
    # These data files use ordinary Lua block and line comments.  Removing both
    # prevents old examples and disabled calls from being treated as live data.
    text = re.sub(r"--\[\[.*?\]\]", "", text, flags=re.DOTALL)
    return re.sub(r"--[^\n]*", "", text)


def remove_generated_block(text: str, begin: str, end: str) -> str:
    pattern = re.compile(
        rf"(?:\r?\n)?{re.escape(begin)}.*?{re.escape(end)}(?:\r?\n)?",
        re.DOTALL,
    )
    return pattern.sub("\n", text)


def parse_items() -> dict[int, ItemInfo]:
    text = read_lua(ITEM_FILE)
    items: dict[int, ItemInfo] = {}
    for block in text.split("g_pItemManager:AddItemTemplet")[1:]:
        item_match = re.search(r"m_ItemID\s*=\s*(\d+)", block[:1200])
        if not item_match:
            continue
        name_match = re.search(r'm_Name\s*=\s*"((?:\\.|[^"\\])*)"', block[:3000])
        type_match = re.search(r'm_ItemType\s*=\s*ITEM_TYPE\["([^"]+)"\]', block[:3000])
        description_match = re.search(
            r'm_Description\s*=\s*"((?:\\.|[^"\\])*)"', block[:3500]
        )
        items[int(item_match.group(1))] = ItemInfo(
            name_match.group(1) if name_match else "",
            type_match.group(1) if type_match else "",
            description_match.group(1) if description_match else "",
        )
    return items


def parse_template_routes(text: str) -> list[TemplateRoute]:
    routes: list[TemplateRoute] = []
    for block in active_lua(text).split("g_pRandomItemManager:AddRandomItemTemplet")[1:]:
        item_match = re.search(r"m_ItemID\s*=\s*(\d+)", block)
        key_match = re.search(r"m_KeyItemID\s*=\s*(\d+)", block)
        key_count_match = re.search(r"m_RequiredKeyCount\s*=\s*(-?\d+)", block)
        condition_match = re.search(
            r'm_UseCondition\s*=\s*USE_CONDITION\["([^"]+)"\]', block
        )
        if not (item_match and key_match and key_count_match and condition_match):
            continue
        required_ed_match = re.search(r"m_iRequiredED\s*=\s*(-?\d+)", block)
        branches = tuple(
            (unit_class, int(group_id))
            for unit_class, group_id in re.findall(
                r'm_cUnitClass\s*=\s*UNIT_CLASS\["([^"]+)"\]\s*,\s*'
                r"m_iItemGroupID\s*=\s*(-?\d+)",
                block,
                flags=re.DOTALL,
            )
        )
        scalar_rewards = tuple(
            (field, int(value))
            for field, value in re.findall(
                r"(m_i(?:RestoreSpirit|RessurectionCount))\s*=\s*(-?\d+)", block
            )
        )
        routes.append(
            TemplateRoute(
                item_id=int(item_match.group(1)),
                key_item_id=int(key_match.group(1)),
                required_key_count=int(key_count_match.group(1)),
                required_ed=int(required_ed_match.group(1)) if required_ed_match else 0,
                use_condition=condition_match.group(1),
                branches=branches,
                scalar_rewards=scalar_rewards,
            )
        )
    return routes


def parse_templates(text: str) -> dict[int, set[int]]:
    templates: dict[int, set[int]] = defaultdict(set)
    for route in parse_template_routes(text):
        templates[route.item_id].update(group for _, group in route.branches)
    return dict(templates)


def parse_group_rows(*texts: str) -> tuple[list[RandomGroupRow], list[str]]:
    rows: list[RandomGroupRow] = []
    malformed: list[str] = []
    for text in texts:
        for line in active_lua(text).splitlines():
            if "g_pRandomItemManager:AddRandomItemGroup(" not in line:
                continue
            match = GROUP_ROW_RE.match(line)
            if not match:
                malformed.append(line.strip())
                continue
            group, reward, weight, period, quantity = match.groups()
            try:
                parsed_weight = Decimal(weight)
            except InvalidOperation:
                malformed.append(line.strip())
                continue
            rows.append(
                RandomGroupRow(
                    int(group), int(reward), parsed_weight, int(period), int(quantity)
                )
            )
    return rows, malformed


def parse_groups(*texts: str) -> dict[int, set[int]]:
    groups: dict[int, set[int]] = defaultdict(set)
    rows, _ = parse_group_rows(*texts)
    for row in rows:
        groups[row.group_id].add(row.reward_id)
    return dict(groups)


def parse_mapping_rows(text: str) -> list[tuple[int, int, int, int, int]]:
    rows: list[tuple[int, int, int, int, int]] = []
    for line in active_lua(text).splitlines():
        match = MAPPING_DATA_RE.match(line)
        if match:
            rows.append(tuple(map(int, match.groups())))
    return rows


def parse_mapping_times(text: str) -> list[tuple[int, str, str]]:
    times: list[tuple[int, str, str]] = []
    for line in active_lua(text).splitlines():
        match = MAPPING_TIME_FULL_RE.match(line)
        if match:
            times.append((int(match.group(1)), match.group(2), match.group(3)))
    return times


def parse_package_rows(text: str) -> tuple[list[PackageRow], list[str]]:
    rows: list[PackageRow] = []
    malformed: list[str] = []
    for line in active_lua(text).splitlines():
        if "g_pCashItemManager:AddPackageItemData(" not in line:
            continue
        match = PACKAGE_ROW_RE.match(line)
        if not match:
            malformed.append(line.strip())
            continue
        package, component, quantity, visible = match.groups()
        rows.append(
            PackageRow(
                int(package), int(component), int(quantity), visible.lower() == "true"
            )
        )
    return rows, malformed


def parse_packages(text: str) -> dict[int, set[int]]:
    packages: dict[int, set[int]] = defaultdict(set)
    rows, _ = parse_package_rows(text)
    for row in rows:
        packages[row.package_id].add(row.component_id)
    return dict(packages)


def package_pairs(text: str) -> list[tuple[int, int]]:
    rows, _ = parse_package_rows(text)
    return [(row.package_id, row.component_id) for row in rows]


def parse_client_routes(text: str) -> tuple[list[tuple[int, int, int, int]], list[str]]:
    routes: list[tuple[int, int, int, int]] = []
    malformed: list[str] = []
    for line in active_lua(text).splitlines():
        if "g_pItemManager:AddRandomItemTemplet(" not in line:
            continue
        match = CLIENT_ROUTE_RE.match(line)
        if not match:
            malformed.append(line.strip())
            continue
        routes.append(tuple(map(int, match.groups())))
    return routes, malformed


def parse_enum_keys(text: str, table_name: str) -> set[str]:
    match = re.search(rf"\b{re.escape(table_name)}\s*=\s*\{{(.*?)\n\}}", text, re.DOTALL)
    if not match:
        return set()
    return set(re.findall(r"\b([A-Z][A-Z0-9_]+)\s*=", active_lua(match.group(1))))


def parse_first_argument(text: str, function: str) -> set[int]:
    return {
        int(value)
        for value in re.findall(rf"{re.escape(function)}\(\s*(\d+)", active_lua(text))
    }


def load_state() -> CubeState:
    random_table = read_lua(RANDOM_TABLE)
    random_data = read_lua(RANDOM_DATA)
    mapping = read_lua(RANDOM_MAPPING)
    client_package_text = read_lua(CLIENT_PACKAGES)
    group_rows, malformed_group_calls = parse_group_rows(random_table, random_data)
    package_rows, malformed_package_calls = parse_package_rows(client_package_text)
    client_routes, malformed_client_routes = parse_client_routes(read_lua(CLIENT_RANDOM))
    return CubeState(
        items=parse_items(),
        templates=parse_templates(random_table),
        template_routes=parse_template_routes(random_table),
        template_call_count=active_lua(random_table).count(
            "g_pRandomItemManager:AddRandomItemTemplet"
        ),
        groups=parse_groups(random_table, random_data),
        group_rows=group_rows,
        malformed_group_calls=malformed_group_calls,
        mapping_rows=parse_mapping_rows(mapping),
        mapping_times=parse_mapping_times(mapping),
        mapping_data_call_count=active_lua(mapping).count(
            "g_pRandomItemManager:AddRandomItemMappingData("
        ),
        mapping_time_call_count=active_lua(mapping).count(
            "g_pRandomItemManager:AddRandomItemMappingTime("
        ),
        seal_cubes=parse_first_argument(random_data, "AddSealRandomItemInfo"),
        add_cube_packages=parse_first_argument(
            read_lua(ADD_CUBE_PACKAGES), "AddCubePackageData"
        ),
        packages=parse_packages(client_package_text),
        package_rows=package_rows,
        malformed_package_calls=malformed_package_calls,
        client_routes=client_routes,
        malformed_client_routes=malformed_client_routes,
        unit_classes=parse_enum_keys(read_lua(ENUM_FILE), "UNIT_CLASS"),
    )


def valid_mapping_cube_ids(state: CubeState) -> set[int]:
    return {
        cube
        for _, cube, key, _, _ in state.mapping_rows
        if cube in state.items and (key == 0 or key in state.items)
    }


def authoritative_cube_ids(state: CubeState) -> set[int]:
    item_ids = set(state.items)
    return (
        (set(state.templates) & item_ids)
        | (state.seal_cubes & item_ids)
        | valid_mapping_cube_ids(state)
    )


def strict_openable_cubes(items: dict[int, ItemInfo]) -> set[int]:
    return {
        item_id
        for item_id, info in items.items()
        if info.item_type in {"IT_SPECIAL", "IT_PACKAGE"}
        and CUBE_WORD_RE.search(info.name)
        and OPEN_DESCRIPTION_RE.search(info.description)
        and not NON_OPENABLE_WORD_RE.search(info.name)
    }


def looks_like_content_package(info: ItemInfo) -> bool:
    """Identify inventory package items that require a downstream content route."""
    return bool(
        info.item_type in {"IT_SPECIAL", "IT_PACKAGE"}
        and PACKAGE_NAME_RE.search(info.name)
        and PACKAGE_CONTENT_RE.search(f"{info.name} {info.description}")
    )


def unsafe_nested_package_ids(state: CubeState) -> set[int]:
    routed = authoritative_cube_ids(state) | set(state.packages)
    rewards = {row.reward_id for row in state.group_rows}
    return {
        reward
        for reward in rewards
        if reward in state.items
        and reward not in routed
        and looks_like_content_package(state.items[reward])
    }


def package_cycle_nodes(packages: dict[int, set[int]]) -> set[int]:
    graph = {
        package: {component for component in components if component in packages}
        for package, components in packages.items()
    }
    visiting: set[int] = set()
    visited: set[int] = set()
    stack: list[int] = []
    cycles: set[int] = set()

    def visit(node: int) -> None:
        if node in visited:
            return
        if node in visiting:
            cycles.update(stack[stack.index(node) :])
            return
        visiting.add(node)
        stack.append(node)
        for child in graph.get(node, set()):
            visit(child)
        stack.pop()
        visiting.remove(node)
        visited.add(node)

    for node in graph:
        visit(node)
    return cycles


def package_max_depth(packages: dict[int, set[int]]) -> int:
    if package_cycle_nodes(packages):
        return 2**31 - 1
    memo: dict[int, int] = {}

    def depth(package: int) -> int:
        if package in memo:
            return memo[package]
        children = [component for component in packages.get(package, set()) if component in packages]
        memo[package] = 1 + max((depth(child) for child in children), default=0)
        return memo[package]

    return max((depth(package) for package in packages), default=0)


def filter_random_lines(
    text: str, items: set[int], blocked_rewards: set[int] | None = None
) -> tuple[str, int, int, int]:
    kept: list[str] = []
    invalid_rewards = 0
    unsafe_rewards = 0
    invalid_metadata = 0
    blocked_rewards = blocked_rewards or set()
    for line in text.splitlines(keepends=True):
        group_match = GROUP_LINE_RE.match(line)
        if group_match and int(group_match.group(2)) not in items:
            invalid_rewards += 1
            continue
        if group_match and int(group_match.group(2)) in blocked_rewards:
            unsafe_rewards += 1
            continue

        special_match = SPECIAL_ITEM_LINE_RE.match(line)
        if special_match:
            function, first, second = special_match.groups()
            first_id = int(first)
            second_id = int(second or 0)
            if first_id not in items or (
                function == "CharmItem" and second_id != 0 and second_id not in items
            ):
                invalid_metadata += 1
                continue
        kept.append(line)
    return "".join(kept), invalid_rewards, unsafe_rewards, invalid_metadata


def repair_mapping(text: str, items: set[int]) -> tuple[str, int]:
    invalid_indexes: set[int] = set()
    for line in active_lua(text).splitlines():
        match = MAPPING_DATA_RE.match(line)
        if not match:
            continue
        index, cube, key, _, _ = map(int, match.groups())
        if cube not in items or (key != 0 and key not in items):
            invalid_indexes.add(index)

    kept: list[str] = []
    removed = 0
    for line in text.splitlines(keepends=True):
        data_match = MAPPING_DATA_RE.match(line)
        time_match = MAPPING_TIME_RE.match(line)
        index = int((data_match or time_match).group(1)) if (data_match or time_match) else None
        if index in invalid_indexes:
            removed += 1
            continue
        kept.append(line)
    return "".join(kept), removed


def append_pool_fallbacks(text: str, groups: set[int], newline: str) -> str:
    text = remove_generated_block(text, POOL_MARKER_BEGIN, POOL_MARKER_END).rstrip("\r\n")
    if not groups:
        return text + newline
    lines = ["", "", POOL_MARKER_BEGIN]
    lines.extend(
        f"g_pRandomItemManager:AddRandomItemGroup( {group}, {FALLBACK_ITEM_ID}, 1, 0, 1 )"
        for group in sorted(groups)
    )
    lines.append(POOL_MARKER_END)
    return text + newline.join(lines) + newline


def repair_packages(
    text: str, state: CubeState
) -> tuple[str, dict[str, int]]:
    newline = "\r\n" if "\r\n" in text else "\n"
    text = remove_generated_block(text, PACKAGE_MARKER_BEGIN, PACKAGE_MARKER_END)
    item_ids = set(state.items)
    authoritative = authoritative_cube_ids(state)

    original_packages = parse_packages(text)
    kept_lines: list[str] = []
    kept_pairs: set[tuple[int, int]] = set()
    removed_invalid = 0
    removed_shadow = 0
    removed_duplicate = 0

    for line in text.splitlines(keepends=True):
        match = PACKAGE_LINE_RE.match(line)
        if not match:
            kept_lines.append(line)
            continue
        package, component = map(int, match.groups())
        pair = (package, component)
        if package in authoritative:
            removed_shadow += 1
            continue
        if package not in item_ids or component not in item_ids:
            removed_invalid += 1
            continue
        if pair in kept_pairs:
            removed_duplicate += 1
            continue
        kept_pairs.add(pair)
        kept_lines.append(line)

    kept_text = "".join(kept_lines)
    kept_packages = parse_packages(kept_text)
    cycles = package_cycle_nodes(kept_packages)
    if cycles:
        cycle_free_lines: list[str] = []
        for line in kept_text.splitlines(keepends=True):
            match = PACKAGE_LINE_RE.match(line)
            if match and int(match.group(1)) in cycles:
                continue
            cycle_free_lines.append(line)
        kept_text = "".join(cycle_free_lines)
        kept_packages = parse_packages(kept_text)

    fallback_packages = {
        package
        for package in original_packages
        if package in item_ids
        and package not in authoritative
        and package not in kept_packages
    }
    fallback_packages.update(cycles)

    covered = authoritative | set(kept_packages) | fallback_packages
    fallback_packages.update(strict_openable_cubes(state.items) - covered)

    kept_text = kept_text.rstrip("\r\n")
    if fallback_packages:
        fallback_lines = ["", "", PACKAGE_MARKER_BEGIN]
        fallback_lines.extend(
            f"g_pCashItemManager:AddPackageItemData( {package}, {FALLBACK_ITEM_ID}, 0, true )"
            for package in sorted(fallback_packages)
        )
        fallback_lines.append(PACKAGE_MARKER_END)
        kept_text += newline.join(fallback_lines)
    kept_text += newline

    return kept_text, {
        "invalid": removed_invalid,
        "shadow": removed_shadow,
        "duplicate": removed_duplicate,
        "cycles": len(cycles),
        "fallbacks": len(fallback_packages),
    }


def repair() -> None:
    state = load_state()
    item_ids = set(state.items)
    if FALLBACK_ITEM_ID not in item_ids:
        raise SystemExit(f"Fallback item {FALLBACK_ITEM_ID} is missing from {ITEM_FILE}")

    # Repair package routes first.  Random pools may legally reward another
    # cube/package, but only when that nested item has its own server route.
    package_text, package_stats = repair_packages(read_lua(CLIENT_PACKAGES), state)
    state.packages = parse_packages(package_text)
    state.package_rows, state.malformed_package_calls = parse_package_rows(package_text)
    blocked_rewards = unsafe_nested_package_ids(state)

    table_text, table_invalid, table_unsafe, table_metadata = filter_random_lines(
        read_lua(RANDOM_TABLE), item_ids, blocked_rewards
    )
    data_text, data_invalid, data_unsafe, data_metadata = filter_random_lines(
        read_lua(RANDOM_DATA), item_ids, blocked_rewards
    )
    mapping_text, mapping_removed = repair_mapping(read_lua(RANDOM_MAPPING), item_ids)

    # Generated fallbacks must not influence the next repair decision.  Remove
    # the old block first, then recompute empty pools and recreate it.
    data_text = remove_generated_block(data_text, POOL_MARKER_BEGIN, POOL_MARKER_END)

    # Re-evaluate the surviving data before deciding which referenced pools need
    # a safe fallback.
    templates = parse_templates(table_text)
    mapping_rows = parse_mapping_rows(mapping_text)
    groups = parse_groups(table_text, data_text)
    referenced_groups = {
        group
        for cube, cube_groups in templates.items()
        if cube in item_ids
        for group in cube_groups
        if group != 0
    }
    referenced_groups.update(
        group
        for _, cube, _, before, after in mapping_rows
        if cube in item_ids
        for group in (before, after)
        if group != 0
    )
    empty_groups = {
        group
        for group in referenced_groups
        if not (groups.get(group, set()) & item_ids)
    }
    data_text = append_pool_fallbacks(data_text, empty_groups, "\n")

    write_lua(RANDOM_TABLE, table_text, bom=True, newline="\n")
    write_lua(RANDOM_DATA, data_text, bom=False, newline="\n")
    write_lua(RANDOM_MAPPING, mapping_text, bom=True, newline="\n")
    write_lua(CLIENT_PACKAGES, package_text, bom=False, newline="\r\n")
    write_lua(SERVER_PACKAGES, package_text, bom=True, newline="\n")

    # configure-offline.py performs the same BOM-normalized runtime copy.  Sync
    # now as well so a direct GameServer launch cannot load stale cube data.
    for source, target in RUNTIME_RANDOM_FILES.items():
        write_lua(target, read_lua(source), bom=True, newline="\n")

    print(
        "Cube repair: "
        f"removed_random_rewards={table_invalid + data_invalid}, "
        f"removed_unsafe_nested_packages={table_unsafe + data_unsafe}, "
        f"removed_random_metadata={table_metadata + data_metadata}, "
        f"removed_mapping_lines={mapping_removed}, "
        f"fallback_pools={len(empty_groups)}, "
        f"removed_package_invalid={package_stats['invalid']}, "
        f"removed_package_shadows={package_stats['shadow']}, "
        f"removed_package_duplicates={package_stats['duplicate']}, "
        f"repaired_package_cycles={package_stats['cycles']}, "
        f"fallback_packages={package_stats['fallbacks']}"
    )


def validate_state_contract(state: CubeState) -> list[str]:
    issues: list[str] = []
    item_ids = set(state.items)

    if FALLBACK_ITEM_ID not in item_ids:
        issues.append(f"fallback item {FALLBACK_ITEM_ID} is not defined")
    elif state.items[FALLBACK_ITEM_ID].item_type != "IT_QICK_SLOT":
        issues.append(f"fallback item {FALLBACK_ITEM_ID} is not a consumable item")

    if state.malformed_group_calls:
        issues.append(
            f"{len(state.malformed_group_calls)} malformed AddRandomItemGroup calls "
            f"(first: {state.malformed_group_calls[:3]})"
        )
    bad_group_rows = [
        row
        for row in state.group_rows
        if row.group_id <= 0
        or row.reward_id <= 0
        or row.reward_id not in item_ids
        or row.weight <= 0
        or row.period < 0
        or row.quantity < 0
    ]
    if bad_group_rows:
        issues.append(
            f"{len(bad_group_rows)} random reward rows have invalid IDs/weight/period/quantity "
            f"(first: {bad_group_rows[:5]})"
        )

    valid_groups: dict[int, set[int]] = defaultdict(set)
    for row in state.group_rows:
        if (
            row.group_id > 0
            and row.reward_id in item_ids
            and row.weight > 0
            and row.period >= 0
            and row.quantity >= 0
        ):
            valid_groups[row.group_id].add(row.reward_id)

    if state.template_call_count != len(state.template_routes):
        issues.append(
            f"{state.template_call_count - len(state.template_routes)} server random templates "
            "are missing required route fields"
        )
    if state.malformed_client_routes:
        issues.append(
            f"{len(state.malformed_client_routes)} malformed client random routes "
            f"(first: {state.malformed_client_routes[:3]})"
        )
    server_client_routes = [route.client_signature for route in state.template_routes]
    if server_client_routes != state.client_routes:
        issues.append(
            "client RandomItem.lua route order/keys/counts do not exactly match the server templates"
        )

    duplicate_routes = [
        signature
        for signature, count in Counter(server_client_routes).items()
        if count > 1
    ]
    if duplicate_routes:
        issues.append(f"duplicate random cube/key routes: {duplicate_routes[:10]}")

    route_issues: list[str] = []
    for route in state.template_routes:
        # Historical templates whose cube item no longer exists cannot be
        # obtained or opened.  Validate every route for an obtainable item;
        # retaining inert legacy rows preserves the client/server route table.
        if route.item_id not in item_ids:
            continue
        label = f"cube={route.item_id},key={route.key_item_id}"
        if route.key_item_id != 0 and route.key_item_id not in item_ids:
            route_issues.append(f"{label}: missing key item")
        if (route.key_item_id == 0 and route.required_key_count != 0) or (
            route.key_item_id != 0 and route.required_key_count <= 0
        ):
            route_issues.append(f"{label}: inconsistent required key count")
        if route.required_ed < 0:
            route_issues.append(f"{label}: negative ED requirement")
        if route.use_condition not in VALID_USE_CONDITIONS:
            route_issues.append(f"{label}: invalid use condition {route.use_condition}")

        scalar_ok = bool(route.scalar_rewards) and all(
            field in SCALAR_REWARD_FIELDS and value > 0
            for field, value in route.scalar_rewards
        )
        if route.scalar_rewards and not scalar_ok:
            route_issues.append(f"{label}: invalid scalar reward {route.scalar_rewards}")
        if not route.branches and not scalar_ok:
            route_issues.append(f"{label}: no item group or native scalar reward")

        branch_classes = [unit_class for unit_class, _ in route.branches]
        if len(branch_classes) != len(set(branch_classes)):
            route_issues.append(f"{label}: duplicate class branch")
        if route.use_condition == "UC_ANYONE" and any(
            unit_class != "UC_NONE" for unit_class in branch_classes
        ):
            route_issues.append(f"{label}: UC_ANYONE route has class-specific branches")
        for unit_class, group_id in route.branches:
            if unit_class not in state.unit_classes:
                route_issues.append(f"{label}: unknown unit class {unit_class}")
            if group_id < 0:
                route_issues.append(f"{label}: negative item group {group_id}")
            elif group_id == 0 and not scalar_ok:
                route_issues.append(f"{label}: zero item group without scalar reward")
            elif group_id > 0 and not valid_groups.get(group_id):
                route_issues.append(f"{label}: item group {group_id} has no valid reward")
    if route_issues:
        issues.append(
            f"{len(route_issues)} individual cube routes are unsafe "
            f"(first: {route_issues[:10]})"
        )

    invalid_rewards = sorted(
        (row.group_id, row.reward_id)
        for row in state.group_rows
        if row.reward_id not in item_ids
    )
    if invalid_rewards:
        issues.append(
            f"{len(invalid_rewards)} random reward references have no Item.lua template "
            f"(first: {invalid_rewards[:5]})"
        )

    invalid_mappings = [
        row
        for row in state.mapping_rows
        if row[1] not in item_ids or (row[2] != 0 and row[2] not in item_ids)
    ]
    if invalid_mappings:
        issues.append(f"invalid keyed cube mappings: {invalid_mappings[:5]}")

    if state.mapping_data_call_count != len(state.mapping_rows):
        issues.append("malformed AddRandomItemMappingData call")
    if state.mapping_time_call_count != len(state.mapping_times):
        issues.append("malformed AddRandomItemMappingTime call")
    mapping_indexes = [row[0] for row in state.mapping_rows]
    time_indexes = [row[0] for row in state.mapping_times]
    if len(mapping_indexes) != len(set(mapping_indexes)):
        issues.append("duplicate keyed cube mapping index")
    mapping_pairs = [(row[1], row[2]) for row in state.mapping_rows]
    if len(mapping_pairs) != len(set(mapping_pairs)):
        issues.append("duplicate keyed cube/key mapping route")
    if len(time_indexes) != len(set(time_indexes)):
        issues.append("duplicate keyed cube mapping time index")
    if set(mapping_indexes) != set(time_indexes):
        issues.append("keyed cube mappings and time windows use different indexes")
    for index, start, end in state.mapping_times:
        try:
            start_at = datetime.strptime(start, "%Y-%m-%d %H:%M:%S")
            end_at = datetime.strptime(end, "%Y-%m-%d %H:%M:%S")
        except ValueError:
            issues.append(f"mapping {index} has an invalid time window")
            continue
        if start_at >= end_at:
            issues.append(f"mapping {index} has an empty/reversed time window")
    for index, cube, key, before, after in state.mapping_rows:
        if before <= 0 or after <= 0:
            issues.append(f"mapping {index} uses a zero/negative reward group")
        elif not valid_groups.get(before) or not valid_groups.get(after):
            issues.append(f"mapping {index} points at an empty reward group")

    authoritative = authoritative_cube_ids(state)
    shadows = sorted(set(state.packages) & authoritative)
    if shadows:
        issues.append(f"{len(shadows)} package mappings shadow random cube routes: {shadows[:10]}")

    invalid_package_pairs = sorted(
        (package, component)
        for package, components in state.packages.items()
        for component in components
        if package not in item_ids or component not in item_ids
    )
    if invalid_package_pairs:
        issues.append(
            f"{len(invalid_package_pairs)} package mappings reference missing items "
            f"(first: {invalid_package_pairs[:5]})"
        )

    if state.malformed_package_calls:
        issues.append(
            f"{len(state.malformed_package_calls)} malformed package mappings "
            f"(first: {state.malformed_package_calls[:3]})"
        )
    bad_package_rows = [
        row
        for row in state.package_rows
        if row.package_id <= 0
        or row.component_id <= 0
        or row.package_id not in item_ids
        or row.component_id not in item_ids
        or row.quantity < 0
    ]
    if bad_package_rows:
        issues.append(f"invalid package row fields: {bad_package_rows[:5]}")

    client_pair_list = [(row.package_id, row.component_id) for row in state.package_rows]
    if len(client_pair_list) != len(set(client_pair_list)):
        issues.append("client PackageItemData contains duplicate component mappings")

    cycles = sorted(package_cycle_nodes(state.packages))
    if cycles:
        issues.append(f"package mapping cycles can recurse to null: {cycles[:10]}")

    depth = package_max_depth(state.packages)
    if depth > 16:
        issues.append(f"package expansion depth {depth} exceeds the safe limit of 16")

    nested_package_components = sorted(
        component
        for row in state.package_rows
        for component in (row.component_id,)
        if component in state.items
        and looks_like_content_package(state.items[component])
        and component not in authoritative
        and component not in state.packages
    )
    if nested_package_components:
        issues.append(
            "package components contain route-less nested packages: "
            f"{nested_package_components[:10]}"
        )

    unsafe_rewards = sorted(unsafe_nested_package_ids(state))
    if unsafe_rewards:
        issues.append(
            "random pools contain route-less nested packages: "
            f"{unsafe_rewards[:10]}"
        )

    server_rows, malformed_server_packages = parse_package_rows(read_lua(SERVER_PACKAGES))
    if malformed_server_packages:
        issues.append(
            f"{len(malformed_server_packages)} malformed server package mappings"
        )
    if state.package_rows != server_rows:
        issues.append("client and server PackageItemData rows/order differ")
    server_pair_list = [(row.package_id, row.component_id) for row in server_rows]
    if len(server_pair_list) != len(set(server_pair_list)):
        issues.append("server PackageItemData contains duplicate component mappings")

    uncovered = sorted(
        strict_openable_cubes(state.items)
        - authoritative
        - set(state.packages)
    )
    if uncovered:
        issues.append(f"openable items have no cube/package route: {uncovered[:20]}")

    return issues


def validate() -> list[str]:
    state = load_state()
    issues = validate_state_contract(state)
    item_ids = set(state.items)

    invalid_metadata: list[tuple[str, int, int]] = []
    for text in (read_lua(RANDOM_TABLE), read_lua(RANDOM_DATA)):
        for line in active_lua(text).splitlines():
            match = SPECIAL_ITEM_LINE_RE.match(line)
            if not match:
                continue
            function, first, second = match.groups()
            first_id = int(first)
            second_id = int(second or 0)
            if first_id not in item_ids or (
                function == "CharmItem" and second_id != 0 and second_id not in item_ids
            ):
                invalid_metadata.append((function, first_id, second_id))
    if invalid_metadata:
        issues.append(
            f"{len(invalid_metadata)} random metadata registrations reference missing items "
            f"(first: {invalid_metadata[:5]})"
        )

    for source, runtime in RUNTIME_RANDOM_FILES.items():
        if read_lua(source) != read_lua(runtime):
            issues.append(f"runtime cube data is stale: {runtime.relative_to(ROOT)}")

    return issues


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--repair", action="store_true", help="remove invalid mappings and add safe fallbacks"
    )
    args = parser.parse_args()

    required = [
        ITEM_FILE,
        RANDOM_TABLE,
        RANDOM_DATA,
        RANDOM_MAPPING,
        ENUM_FILE,
        CLIENT_RANDOM,
        CLIENT_PACKAGES,
        SERVER_PACKAGES,
        ADD_CUBE_PACKAGES,
    ]
    missing = [path for path in required if not path.is_file()]
    if missing:
        for path in missing:
            print(f"Missing cube data: {path}", file=sys.stderr)
        return 1

    if args.repair:
        repair()

    issues = validate()
    if issues:
        print("Cube integrity validation failed:", file=sys.stderr)
        for issue in issues:
            print(f"  - {issue}", file=sys.stderr)
        return 1

    state = load_state()
    print(
        "Cube integrity OK: "
        f"items={len(state.items)}, routes={len(state.template_routes)}, "
        f"groups={len(state.groups)}, packages={len(state.packages)}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
