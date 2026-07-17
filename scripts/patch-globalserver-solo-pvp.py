#!/usr/bin/env python3
"""Allow one real player to form a 1v1 PvP match against an NPC.

The legacy GlobalServer starts matchmaking when the configured wait-list count
is reached, but two later native checks still require a complete pair of real
teams.  This patch changes only the 1v1 requirement:

* FindTheOpponent accepts one real 1v1 player.
* CheckMatchMakingSuccess expects one player for 1v1, while retaining the
  original 4- and 6-player requirements for 2v2 and 3v3.

Every write is guarded by the original instruction bytes.  The optional
``_GlobalServer.exe`` legacy copy is patched when present so swapping the
binary cannot silently restore the dead solo queue.
"""

from __future__ import annotations

import argparse
import shutil
import struct
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
GLOBAL_SERVER_DIR = ROOT / "Elsword" / "GlobalServer"

ORIGINAL_ONE_V_ONE_DOUBLE = b"\x03\xc0"  # add eax, eax
PATCHED_ONE_V_ONE_DOUBLE = b"\x90\x90"
ORIGINAL_SUCCESS_GATE = b"\x8d\x0c\x3f\x3b\xc8"  # expected = team_size * 2
ORIGINAL_SUCCESS_JUMP = b"\x0f\x84\x65\x02\x00\x00"
ORIGINAL_CAVE = b"\xcc" * 16


@dataclass(frozen=True)
class BinaryPatch:
    filename: str
    expected_size: int
    one_v_one_double_offset: int
    success_gate_offset: int
    cave_offset: int
    required: bool = True

    @property
    def path(self) -> Path:
        return GLOBAL_SERVER_DIR / self.filename

    @property
    def backup_path(self) -> Path:
        return self.path.with_name(f"{self.filename}.solo-pvp.bak")

    @property
    def gate_jump(self) -> bytes:
        displacement = self.cave_offset - (self.success_gate_offset + 5)
        return b"\xe9" + struct.pack("<i", displacement)

    @property
    def cave_code(self) -> bytes:
        # Preserve the original 2*team-size comparison except for team size 1.
        compare = bytes.fromhex(
            "8d0c3f"  # lea ecx, [edi+edi]
            "83ff01"  # cmp edi, 1
            "0f44cf"  # cmove ecx, edi
            "3bc8"    # cmp ecx, eax
        )
        return_address = self.success_gate_offset + len(ORIGINAL_SUCCESS_GATE)
        displacement = return_address - (self.cave_offset + len(compare) + 5)
        return compare + b"\xe9" + struct.pack("<i", displacement)


PATCHES = (
    BinaryPatch(
        filename="GlobalServer.exe",
        expected_size=4_927_488,
        one_v_one_double_offset=0x23B3C5,
        success_gate_offset=0x2413AE,
        cave_offset=0x244F70,
    ),
    BinaryPatch(
        filename="_GlobalServer.exe",
        expected_size=4_919_296,
        one_v_one_double_offset=0x25A5F5,
        success_gate_offset=0x2605DE,
        cave_offset=0x2641A0,
        required=False,
    ),
)


def region(data: bytes | bytearray, offset: int, size: int) -> bytes:
    return bytes(data[offset : offset + size])


def validate_layout(data: bytes | bytearray, patch: BinaryPatch) -> None:
    if len(data) != patch.expected_size:
        raise ValueError(
            f"{patch.filename} has unexpected size {len(data):,} "
            f"(expected {patch.expected_size:,})"
        )

    # This conditional jump is immediately after the five-byte trampoline and
    # is deliberately retained.  Guard it so an offset-compatible wrong build
    # cannot be modified.
    jump_offset = patch.success_gate_offset + len(ORIGINAL_SUCCESS_GATE)
    if region(data, jump_offset, len(ORIGINAL_SUCCESS_JUMP)) != ORIGINAL_SUCCESS_JUMP:
        raise ValueError(
            f"{patch.filename} has an unexpected matchmaking branch at "
            f"0x{jump_offset:X}"
        )

    one_v_one = region(data, patch.one_v_one_double_offset, 2)
    if one_v_one not in {ORIGINAL_ONE_V_ONE_DOUBLE, PATCHED_ONE_V_ONE_DOUBLE}:
        raise ValueError(
            f"{patch.filename} has unexpected 1v1 count bytes at "
            f"0x{patch.one_v_one_double_offset:X}: {one_v_one.hex()}"
        )

    gate = region(data, patch.success_gate_offset, len(ORIGINAL_SUCCESS_GATE))
    if gate not in {ORIGINAL_SUCCESS_GATE, patch.gate_jump}:
        raise ValueError(
            f"{patch.filename} has unexpected match-success bytes at "
            f"0x{patch.success_gate_offset:X}: {gate.hex()}"
        )

    cave = region(data, patch.cave_offset, len(ORIGINAL_CAVE))
    if cave not in {ORIGINAL_CAVE, patch.cave_code}:
        raise ValueError(
            f"{patch.filename} has unexpected code-cave bytes at "
            f"0x{patch.cave_offset:X}: {cave.hex()}"
        )

    states = (
        one_v_one == PATCHED_ONE_V_ONE_DOUBLE,
        gate == patch.gate_jump,
        cave == patch.cave_code,
    )
    if any(states) and not all(states):
        raise ValueError(
            f"{patch.filename} contains an incomplete solo-PvP patch; "
            "restore its .solo-pvp.bak copy before retrying"
        )


def is_patched(data: bytes | bytearray, patch: BinaryPatch) -> bool:
    validate_layout(data, patch)
    return (
        region(data, patch.one_v_one_double_offset, 2)
        == PATCHED_ONE_V_ONE_DOUBLE
    )


def patch_image(data: bytearray, patch: BinaryPatch) -> bool:
    if is_patched(data, patch):
        return False

    data[
        patch.one_v_one_double_offset : patch.one_v_one_double_offset + 2
    ] = PATCHED_ONE_V_ONE_DOUBLE
    data[
        patch.success_gate_offset :
        patch.success_gate_offset + len(ORIGINAL_SUCCESS_GATE)
    ] = patch.gate_jump
    data[patch.cave_offset : patch.cave_offset + len(ORIGINAL_CAVE)] = patch.cave_code

    if not is_patched(data, patch):
        raise AssertionError(f"Failed to verify patched {patch.filename} image")
    return True


def patch_executable(patch: BinaryPatch, *, dry_run: bool = False) -> bool:
    path = patch.path
    if not path.exists():
        if patch.required:
            raise FileNotFoundError(f"Missing server executable: {path}")
        print(f"Optional legacy binary not present: {path.name}")
        return False

    original = path.read_bytes()
    data = bytearray(original)
    if not patch_image(data, patch):
        print(f"{path.name} already supports solo 1v1 NPC matchmaking")
        return False

    if dry_run:
        print(f"Would patch {path.name} for solo 1v1 NPC matchmaking")
        return True

    if not patch.backup_path.exists():
        shutil.copy2(path, patch.backup_path)
        print(f"Backup written: {patch.backup_path}")

    path.write_bytes(data)
    written = path.read_bytes()
    if not is_patched(written, patch):
        path.write_bytes(original)
        raise OSError(f"Post-write verification failed for {path.name}; original restored")

    print(f"Patched {path.name}: one player can form a 1v1 match against an NPC")
    return True


def apply(*, dry_run: bool = False) -> bool:
    changed = False
    for patch in PATCHES:
        changed = patch_executable(patch, dry_run=dry_run) or changed
    return changed


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="validate binary signatures without writing",
    )
    args = parser.parse_args()

    try:
        apply(dry_run=args.dry_run)
    except (OSError, ValueError) as exc:
        print(f"ERROR: {exc}")
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
