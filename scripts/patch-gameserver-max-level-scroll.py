#!/usr/bin/env python3
"""Patch GameServer so Philosopher's Scroll (160267) adds enough levels to reach the cap."""

from __future__ import annotations

import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
GAME_SERVER = ROOT / "Elsword" / "GameServer" / "GameServer.exe"
BACKUP = GAME_SERVER.with_suffix(".exe.bak-max-level-scroll")

# File offsets in GameServer.exe for the +1 level consumable handler (item 160267).
PATCH_PUSH = 0x5AB9AE
PATCH_MOV = 0x5AB9BF
ORIG_PUSH = b"\x6a\x01"
PATCHED_PUSH = b"\x6a\xff"
ORIG_MOV = b"\xc7\x44\x24\x18\x01\x00\x00\x00"
PATCHED_MOV = b"\xc7\x44\x24\x18\xff\x00\x00\x00"


def patch() -> bool:
    if not GAME_SERVER.exists():
        raise SystemExit(f"Missing GameServer executable: {GAME_SERVER}")

    data = bytearray(GAME_SERVER.read_bytes())
    if data[PATCH_PUSH : PATCH_PUSH + 2] == PATCHED_PUSH and data[
        PATCH_MOV : PATCH_MOV + len(PATCHED_MOV)
    ] == PATCHED_MOV:
        print("GameServer.exe already patched for max level scroll")
        return False

    if data[PATCH_PUSH : PATCH_PUSH + 2] != ORIG_PUSH:
        raise SystemExit(
            f"Unexpected bytes at 0x{PATCH_PUSH:X}: "
            f"{data[PATCH_PUSH:PATCH_PUSH + 2].hex()} (revert manual edits or restore backup)"
        )
    if data[PATCH_MOV : PATCH_MOV + len(ORIG_MOV)] != ORIG_MOV:
        raise SystemExit(
            f"Unexpected bytes at 0x{PATCH_MOV:X}: "
            f"{data[PATCH_MOV:PATCH_MOV + len(ORIG_MOV)].hex()}"
        )

    if not BACKUP.exists():
        shutil.copy2(GAME_SERVER, BACKUP)
        print(f"Backup written: {BACKUP}")

    data[PATCH_PUSH : PATCH_PUSH + 2] = PATCHED_PUSH
    data[PATCH_MOV : PATCH_MOV + len(PATCHED_MOV)] = PATCHED_MOV
    GAME_SERVER.write_bytes(data)
    print("Patched GameServer.exe: level scroll now adds up to 255 levels (capped by server max)")
    return True


def main() -> int:
    patch()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
