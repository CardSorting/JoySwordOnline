#!/usr/bin/env python3
"""Restore Ara advanced classes (Sakra Devanam, Yama Raja) from ClientScript source."""

from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
CLIENT = ELSWORD / "ClientScript" / "Major"
LEGACY = ELSWORD / "_ClientScript" / "Major"
SERVER = ELSWORD / "ServerResource"
GAMESERVER = ELSWORD / "GameServer"

CLASS_CHANGE_FILES = (
    "ClassChangeTable.lua",
    "ClassChangeSkill.lua",
    "ClassChangeQuest.lua",
    "ClassChangeMemo.lua",
    "ClassChangeItem.lua",
)

UNIT_CLASSES = (
    "UC_ARA_LITTLE_DEVIL",
    "UC_ARA_YAMA_RAJA",
)

CLASS_CHANGE_TABLE_FIXES = (
    (
        'ClassChangeTable:SetClassGroupID(71, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])\n'
        'ClassChangeTable:SetClassGroupID(71, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])',
        'ClassChangeTable:SetClassGroupID(71, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])',
    ),
    (
        'ClassChangeTable:SetClassGroupID(72, UNIT_CLASS["UC_ARA_YAMA_RAJA"])\t\t--//아라 2차 명왕(2013.8.6. 이승헌)\n'
        'ClassChangeTable:SetClassGroupID(72, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])',
        'ClassChangeTable:SetClassGroupID(72, UNIT_CLASS["UC_ARA_YAMA_RAJA"])\t\t--//아라 2차 명왕(2013.8.6. 이승헌)',
    ),
    (
        "-- 임시 주석 처리\n"
        'ClassChangeTable:SetClassGroupID(72, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])',
        'ClassChangeTable:SetClassGroupID(72, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])',
    ),
)


def extract_unit_templet_block(text: str, unit_class: str) -> str | None:
    pattern = (
        rf"g_pUnitManager:AddUnitTemplet\s*\{{\s*"
        rf"unitType\s*=\s*UNIT_TYPE\[\"UT_ARA\"\],\s*"
        rf"unitClass\s*=\s*UNIT_CLASS\[\"{unit_class}\"\],.*?\n\}}"
    )
    match = re.search(pattern, text, re.DOTALL)
    return match.group(0) if match else None


def extract_skill_blocks(text: str, unit_class: str) -> list[str]:
    blocks: list[str] = []
    for match in re.finditer(r"g_pSkillTree:AddSkillTreeTemplet_LUA\s*\{", text):
        start = match.start()
        depth = 0
        for idx in range(match.end() - 1, len(text)):
            char = text[idx]
            if char == "{":
                depth += 1
            elif char == "}":
                depth -= 1
                if depth == 0:
                    block = text[start : idx + 1]
                    if f'UNIT_CLASS["{unit_class}"]' in block:
                        blocks.append(block)
                    break
    return blocks


def fix_class_change_table(path: Path) -> bool:
    if not path.exists():
        return False
    text = path.read_text(encoding="utf-8", errors="replace")
    original = text
    for old, new in CLASS_CHANGE_TABLE_FIXES:
        text = text.replace(old, new)
    if text == original:
        return False
    path.write_text(text, encoding="utf-8")
    return True


def sync_class_change_files() -> int:
    changed = 0
    for name in CLASS_CHANGE_FILES:
        src = SERVER / name
        dst = GAMESERVER / name
        if not src.exists():
            continue
        content = src.read_text(encoding="utf-8", errors="replace")
        if not dst.exists() or dst.read_text(encoding="utf-8", errors="replace") != content:
            dst.write_text(content, encoding="utf-8")
            changed += 1
    return changed


def restore_legacy_unit_templets() -> int:
    if not LEGACY.exists():
        return 0
    source = (CLIENT / "UnitTemplet.lua").read_text(encoding="utf-8", errors="replace")
    target_path = LEGACY / "UnitTemplet.lua"
    target = target_path.read_text(encoding="utf-8", errors="replace")
    changed = 0
    for unit_class in UNIT_CLASSES:
        if f'UNIT_CLASS["{unit_class}"]' in target:
            continue
        block = extract_unit_templet_block(source, unit_class)
        if not block:
            print(f"warning: missing UnitTemplet block for {unit_class} in ClientScript", file=sys.stderr)
            continue
        insert_at = target.find('unitType\t\t\t\t= UNIT_TYPE["UT_ELESIS"]')
        if insert_at == -1:
            print("warning: could not find Elesis insertion point in _ClientScript/UnitTemplet.lua", file=sys.stderr)
            continue
        insert_at = target.rfind("g_pUnitManager:AddUnitTemplet", 0, insert_at)
        target = target[:insert_at] + block + "\n" + target[insert_at:]
        changed += 1
    if changed:
        target_path.write_text(target, encoding="utf-8")
    return changed


def restore_legacy_character_stats() -> bool:
    src_path = CLIENT / "CharacterStatTable.lua"
    dst_path = LEGACY / "CharacterStatTable.lua"
    if not src_path.exists() or not dst_path.exists():
        return False
    src = src_path.read_text(encoding="utf-8", errors="replace")
    dst = dst_path.read_text(encoding="utf-8", errors="replace")
    if 'UNIT_CLASS["UC_ARA_YAMA_RAJA"]' in dst:
        return False
    line = next((ln for ln in src.splitlines() if 'UNIT_CLASS["UC_ARA_YAMA_RAJA"]' in ln), None)
    if not line:
        return False
    dst = dst.replace(
        '\t{UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"],\t\t480,\t115,\t400,\t 97,\t11750},\t--제천\n}',
        f'\t{{UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"],\t\t480,\t115,\t400,\t 97,\t11750}},\t--제천\n\t{line.strip()}\n}}',
        1,
    )
    dst_path.write_text(dst, encoding="utf-8")
    return True


def restore_legacy_skill_data() -> bool:
    src_path = CLIENT / "SkillData.lua"
    dst_path = LEGACY / "SkillData.lua"
    if not src_path.exists() or not dst_path.exists():
        return False
    src = src_path.read_text(encoding="utf-8", errors="replace")
    dst = dst_path.read_text(encoding="utf-8", errors="replace")
    changed = False
    for unit_class in ("UC_ARA_LITTLE_DEVIL", "UC_ARA_YAMA_RAJA"):
        if f'UNIT_CLASS["{unit_class}"]' in dst and f'--g_pSkillTree:AddDefaultSkill_LUA{{ UNIT_CLASS["{unit_class}"]' not in dst:
            continue
        line = next((ln for ln in src.splitlines() if f'UNIT_CLASS["{unit_class}"]' in ln and "AddDefaultSkill_LUA" in ln), None)
        if not line:
            continue
        commented = f"--ES_INT 김석근 [2013.10.04] --{line.strip()}"
        if commented in dst:
            dst = dst.replace(commented, line.strip())
            changed = True
    if changed:
        dst_path.write_text(dst, encoding="utf-8")
    return changed


def restore_legacy_skill_templets() -> int:
    src_path = CLIENT / "NewSkillTempletVer2.lua"
    dst_path = LEGACY / "NewSkillTempletVer2.lua"
    if not src_path.exists() or not dst_path.exists():
        return 0
    source = src_path.read_text(encoding="utf-8", errors="replace")
    target = dst_path.read_text(encoding="utf-8", errors="replace")
    appended: list[str] = []
    for unit_class in UNIT_CLASSES:
        if f'UNIT_CLASS["{unit_class}"]' in target:
            continue
        blocks = extract_skill_blocks(source, unit_class)
        if not blocks:
            print(f"warning: no skill templets found for {unit_class}", file=sys.stderr)
            continue
        appended.extend(blocks)
    if not appended:
        return 0
    if not target.endswith("\n"):
        target += "\n"
    target += "\n".join(appended) + "\n"
    dst_path.write_text(target, encoding="utf-8")
    return len(appended)


def main() -> int:
    fixes = 0
    for path in (SERVER / "ClassChangeTable.lua", GAMESERVER / "ClassChangeTable.lua"):
        if fix_class_change_table(path):
            fixes += 1
            print(f"fixed ClassChangeTable: {path.relative_to(ROOT)}")

    synced = sync_class_change_files()
    print(f"synced {synced} ClassChange file(s) to GameServer/")

    legacy_changes = 0
    legacy_changes += restore_legacy_unit_templets()
    legacy_changes += int(restore_legacy_character_stats())
    legacy_changes += int(restore_legacy_skill_data())
    legacy_changes += restore_legacy_skill_templets()
    print(f"legacy _ClientScript updates: {legacy_changes}")

    print("done — restart GameServer for class-change changes to take effect")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
