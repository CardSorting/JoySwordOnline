#!/usr/bin/env python3
"""Raise server UNIT_CLASS ceilings so Elesis 2nd jobs pass validation."""

from __future__ import annotations

import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
GAME_SERVER = ROOT / "Elsword" / "GameServer" / "GameServer.exe"
BACKUP = GAME_SERVER.with_suffix(".exe.bak-unit-class-limit")
LOGIN_SERVER = ROOT / "Elsword" / "LoginServer" / "LoginServer.exe"
LOGIN_BACKUP = LOGIN_SERVER.with_suffix(".exe.bak-unit-class-limit")

# cmp reg, 120 / jge  ->  cmp reg, 124 / jge
CLASS_CHANGE_LIMIT_PATCHES = (
    (0x166A8, 0x78, 0x7C, "SetClassGroupID limit"),
    (0x17494, 0x78, 0x7C, "SetClassChange_Skill limit"),
    (0x17D44, 0x78, 0x7C, "SetClassChange_Quest limit"),
    (0x185F4, 0x78, 0x7C, "SetClassChange_Memo limit"),
    (0x18EA4, 0x78, 0x7C, "SetClassChange_InventoryItem limit"),
)

# CXSLSkillTree::AddSkillTreeTemplet_LUA has a separate `class >= 120`
# rejection path.  Without raising it, every Grand Master/Blazing Heart tree
# row is discarded even though class changes themselves accept IDs 120/121.
SKILL_TREE_LIMIT_PATCHES = (
    (0x205F63, 0x78, 0x7C, "AddSkillTreeTemplet class limit"),
)

PATCHES = CLASS_CHANGE_LIMIT_PATCHES + SKILL_TREE_LIMIT_PATCHES

LOGIN_SERVER_PATCHES = (
    (0x23AEB3, 0x78, 0x7C, "AddSkillTreeTemplet class limit"),
)

EXECUTABLE_PATCHES = (
    (GAME_SERVER, BACKUP, PATCHES),
    (LOGIN_SERVER, LOGIN_BACKUP, LOGIN_SERVER_PATCHES),
)


def patch_executable(
    executable: Path,
    backup: Path,
    patches: tuple[tuple[int, int, int, str], ...],
    *,
    dry_run: bool,
) -> bool:
    if not executable.exists():
        raise SystemExit(f"Missing server executable: {executable}")

    data = bytearray(executable.read_bytes())
    changed = False

    for offset, orig, patched, label in patches:
        current = data[offset]
        if current == patched:
            continue
        if current != orig:
            raise SystemExit(
                f"Unexpected byte in {executable.name} for {label} at 0x{offset:X}: "
                f"0x{current:02x} (expected 0x{orig:02x}; restore {backup.name} "
                "or revert manual edits)"
            )
        if dry_run:
            print(
                f"Would patch {executable.name} {label} at 0x{offset:X}: "
                f"0x{orig:02x} -> 0x{patched:02x}"
            )
            changed = True
            continue
        data[offset] = patched
        changed = True
        print(f"Patched {executable.name} {label} at 0x{offset:X}")

    if not changed:
        print(f"{executable.name} already patched for Elesis 2nd-job class IDs")
        return False

    if dry_run:
        return True

    if not backup.exists():
        shutil.copy2(executable, backup)
        print(f"Backup written: {backup}")

    executable.write_bytes(data)
    print(
        f"Patched {executable.name}: Elesis Grand Master / Blazing Heart class IDs accepted"
    )
    return True


def patch(*, dry_run: bool = False) -> bool:
    changed = False
    for executable, backup, patches in EXECUTABLE_PATCHES:
        changed = patch_executable(
            executable, backup, patches, dry_run=dry_run
        ) or changed
    return changed


def main() -> int:
    import argparse

    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()
    patch(dry_run=args.dry_run)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
