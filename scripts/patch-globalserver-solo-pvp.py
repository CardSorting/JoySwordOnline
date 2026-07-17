#!/usr/bin/env python3
"""Allow one real player to complete a 1v1 PvP match against an NPC.

The legacy GlobalServer starts matchmaking when the configured wait-list count
is reached, but later native checks still require a complete pair of real
teams.  This patch changes only the solo 1v1 path:

* FindTheOpponent accepts one real 1v1 player.
* CheckMatchMakingSuccess expects one player for 1v1, while retaining the
  original 4- and 6-player requirements for 2v2 and 3v3.
* TeamMemberSelection permits the one empty human team in solo 1v1 so the
  existing NPC-fill path can populate it after the player accepts.
* Equal team weights prefer red, keeping the solo human on the room-hosting
  side.
* A character's first beginner match still uses the beginner roster, while
  later one-human matches use the native randomized Hero/Epic NPC roster.

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
ORIGINAL_TEAM_CAVE = b"\xcc" * 14
ORIGINAL_TEAM_TIE = b"\x7d\x2f"  # jge blue assignment
PATCHED_TEAM_TIE = b"\x7f\x2f"  # jg: equal weights select red
ORIGINAL_SOLO_NPC_CAVE = b"\xcc" * 15
ORIGINAL_HERO_NPC_CAVE = b"\xcc" * 14


@dataclass(frozen=True)
class BinaryPatch:
    filename: str
    expected_size: int
    one_v_one_double_offset: int
    success_gate_offset: int
    cave_offset: int
    npc_mode_jump_offset: int
    npc_mode_cave_offset: int
    npc_mode_beginner_offset: int
    npc_mode_normal_offset: int
    hero_npc_cave_offset: int
    npc_mode_store_offset: int
    team_tie_offset: int
    red_team_jump_offset: int
    red_team_cave_offset: int
    red_team_continue_offset: int
    blue_team_jump_offset: int
    blue_team_cave_offset: int
    blue_team_continue_offset: int
    team_failure_offset: int
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

    @staticmethod
    def conditional_jump(source: int, target: int) -> bytes:
        displacement = target - (source + 6)
        return b"\x0f\x85" + struct.pack("<i", displacement)

    @staticmethod
    def near_jump(source: int, target: int) -> bytes:
        displacement = target - (source + 5)
        return b"\xe9" + struct.pack("<i", displacement)

    @staticmethod
    def equal_jump(source: int, target: int) -> bytes:
        displacement = target - (source + 6)
        return b"\x0f\x84" + struct.pack("<i", displacement)

    def original_team_jump(self, source: int) -> bytes:
        return self.conditional_jump(source, self.team_failure_offset)

    def patched_team_jump(self, source: int, cave: int) -> bytes:
        return self.conditional_jump(source, cave)

    def team_cave_code(self, cave: int, continue_offset: int) -> bytes:
        # ECX is the configured per-team size at both original comparisons.
        # Permit a deficient team only for solo 1v1; every other mode retains
        # the original fatal mismatch branch.
        compare_one = bytes.fromhex("83f901")  # cmp ecx, 1
        failure_jump_source = cave + len(compare_one)
        continue_jump_source = failure_jump_source + 6
        return (
            compare_one
            + self.conditional_jump(
                failure_jump_source,
                self.team_failure_offset,
            )
            + self.near_jump(continue_jump_source, continue_offset)
        )

    @property
    def red_original_team_jump(self) -> bytes:
        return self.original_team_jump(self.red_team_jump_offset)

    @property
    def red_patched_team_jump(self) -> bytes:
        return self.patched_team_jump(
            self.red_team_jump_offset,
            self.red_team_cave_offset,
        )

    @property
    def red_team_cave_code(self) -> bytes:
        return self.team_cave_code(
            self.red_team_cave_offset,
            self.red_team_continue_offset,
        )

    @property
    def blue_original_team_jump(self) -> bytes:
        return self.original_team_jump(self.blue_team_jump_offset)

    @property
    def blue_patched_team_jump(self) -> bytes:
        return self.patched_team_jump(
            self.blue_team_jump_offset,
            self.blue_team_cave_offset,
        )

    @property
    def blue_team_cave_code(self) -> bytes:
        return self.team_cave_code(
            self.blue_team_cave_offset,
            self.blue_team_continue_offset,
        )

    @property
    def original_npc_mode_jump(self) -> bytes:
        return self.conditional_jump(
            self.npc_mode_jump_offset,
            self.npc_mode_normal_offset,
        )

    @property
    def patched_npc_mode_jump(self) -> bytes:
        return self.conditional_jump(
            self.npc_mode_jump_offset,
            self.npc_mode_cave_offset,
        )

    @property
    def npc_mode_cave_code(self) -> bytes:
        # EBP is KMatchUserManager here. A non-beginner solo match gets a
        # guaranteed Hero/Epic NPC; non-solo matches retain the stock path.
        compare_one = bytes.fromhex("837d0801")  # cmp dword ptr [ebp+8], 1
        solo_jump_source = self.npc_mode_cave_offset + len(compare_one)
        normal_jump_source = solo_jump_source + 6
        return (
            compare_one
            + self.equal_jump(solo_jump_source, self.hero_npc_cave_offset)
            + self.near_jump(normal_jump_source, self.npc_mode_normal_offset)
        )

    @property
    def beginner_npc_mode_cave_code(self) -> bytes:
        """Return the superseded repeat-match cave for safe upgrades."""
        compare_one = bytes.fromhex("837d0801")
        solo_jump_source = self.npc_mode_cave_offset + len(compare_one)
        normal_jump_source = solo_jump_source + 6
        return (
            compare_one
            + self.equal_jump(
                solo_jump_source,
                self.npc_mode_beginner_offset,
            )
            + self.near_jump(normal_jump_source, self.npc_mode_normal_offset)
        )

    @property
    def hero_npc_cave_code(self) -> bytes:
        # Set PNT_HERO_NPC (2), then reuse the stock stores for both team
        # selection fields. GetPvpNpcInfo keeps the native randomized roster.
        select_hero = bytes.fromhex("b802000000")  # mov eax, 2
        jump_source = self.hero_npc_cave_offset + len(select_hero)
        code = select_hero + self.near_jump(
            jump_source,
            self.npc_mode_store_offset,
        )
        return code + b"\xcc" * (len(ORIGINAL_HERO_NPC_CAVE) - len(code))


PATCHES = (
    BinaryPatch(
        filename="GlobalServer.exe",
        expected_size=4_927_488,
        one_v_one_double_offset=0x23B3C5,
        success_gate_offset=0x2413AE,
        cave_offset=0x244F70,
        npc_mode_jump_offset=0x243456,
        npc_mode_cave_offset=0x25E331,
        npc_mode_beginner_offset=0x24345C,
        npc_mode_normal_offset=0x243657,
        hero_npc_cave_offset=0x25B4D2,
        npc_mode_store_offset=0x243461,
        team_tie_offset=0x25FDD5,
        red_team_jump_offset=0x25FEE0,
        red_team_cave_offset=0x25F1A2,
        red_team_continue_offset=0x25FEE6,
        blue_team_jump_offset=0x25FEFD,
        blue_team_cave_offset=0x260B90,
        blue_team_continue_offset=0x25FF03,
        team_failure_offset=0x260676,
    ),
    BinaryPatch(
        filename="_GlobalServer.exe",
        expected_size=4_919_296,
        one_v_one_double_offset=0x25A5F5,
        success_gate_offset=0x2605DE,
        cave_offset=0x2641A0,
        npc_mode_jump_offset=0x262676,
        npc_mode_cave_offset=0x27D5A1,
        npc_mode_beginner_offset=0x26267C,
        npc_mode_normal_offset=0x262877,
        hero_npc_cave_offset=0x27A742,
        npc_mode_store_offset=0x262681,
        team_tie_offset=0x27F075,
        red_team_jump_offset=0x27F180,
        red_team_cave_offset=0x27E442,
        red_team_continue_offset=0x27F186,
        blue_team_jump_offset=0x27F19D,
        blue_team_cave_offset=0x27FE30,
        blue_team_continue_offset=0x27F1A3,
        team_failure_offset=0x27F916,
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

    team_tie = region(data, patch.team_tie_offset, len(ORIGINAL_TEAM_TIE))
    if team_tie not in {ORIGINAL_TEAM_TIE, PATCHED_TEAM_TIE}:
        raise ValueError(
            f"{patch.filename} has unexpected team-tie bytes at "
            f"0x{patch.team_tie_offset:X}: {team_tie.hex()}"
        )

    npc_branch = region(
        data,
        patch.npc_mode_jump_offset,
        len(patch.original_npc_mode_jump),
    )
    npc_cave = region(
        data,
        patch.npc_mode_cave_offset,
        len(ORIGINAL_SOLO_NPC_CAVE),
    )
    hero_cave = region(
        data,
        patch.hero_npc_cave_offset,
        len(ORIGINAL_HERO_NPC_CAVE),
    )
    if npc_branch not in {
        patch.original_npc_mode_jump,
        patch.patched_npc_mode_jump,
    }:
        raise ValueError(
            f"{patch.filename} has unexpected NPC-mode branch bytes at "
            f"0x{patch.npc_mode_jump_offset:X}: {npc_branch.hex()}"
        )
    if npc_cave not in {
        ORIGINAL_SOLO_NPC_CAVE,
        patch.beginner_npc_mode_cave_code,
        patch.npc_mode_cave_code,
    }:
        raise ValueError(
            f"{patch.filename} has unexpected NPC-mode cave bytes at "
            f"0x{patch.npc_mode_cave_offset:X}: {npc_cave.hex()}"
        )
    if hero_cave not in {
        ORIGINAL_HERO_NPC_CAVE,
        patch.hero_npc_cave_code,
    }:
        raise ValueError(
            f"{patch.filename} has unexpected Hero-NPC cave bytes at "
            f"0x{patch.hero_npc_cave_offset:X}: {hero_cave.hex()}"
        )

    npc_state = (npc_branch, npc_cave, hero_cave)
    valid_npc_states = {
        (
            patch.original_npc_mode_jump,
            ORIGINAL_SOLO_NPC_CAVE,
            ORIGINAL_HERO_NPC_CAVE,
        ),
        # Upgrade state produced by the earlier repeat-match fix, which sent
        # every later solo match back through the beginner pool.
        (
            patch.patched_npc_mode_jump,
            patch.beginner_npc_mode_cave_code,
            ORIGINAL_HERO_NPC_CAVE,
        ),
        (
            patch.patched_npc_mode_jump,
            patch.npc_mode_cave_code,
            patch.hero_npc_cave_code,
        ),
    }
    if npc_state not in valid_npc_states:
        raise ValueError(
            f"{patch.filename} contains an incomplete NPC-roster patch; "
            "restore its .solo-pvp.bak copy before retrying"
        )

    team_regions = (
        (
            "red-team branch",
            patch.red_team_jump_offset,
            patch.red_original_team_jump,
            patch.red_patched_team_jump,
        ),
        (
            "red-team cave",
            patch.red_team_cave_offset,
            ORIGINAL_TEAM_CAVE,
            patch.red_team_cave_code,
        ),
        (
            "blue-team branch",
            patch.blue_team_jump_offset,
            patch.blue_original_team_jump,
            patch.blue_patched_team_jump,
        ),
        (
            "blue-team cave",
            patch.blue_team_cave_offset,
            ORIGINAL_TEAM_CAVE,
            patch.blue_team_cave_code,
        ),
    )
    team_states = []
    for name, offset, original, patched in team_regions:
        actual = region(data, offset, len(original))
        if actual not in {original, patched}:
            raise ValueError(
                f"{patch.filename} has unexpected {name} bytes at "
                f"0x{offset:X}: {actual.hex()}"
            )
        team_states.append(actual == patched)

    if any(team_states) and not all(team_states):
        raise ValueError(
            f"{patch.filename} contains an incomplete accepted-match patch; "
            "restore its .solo-pvp.bak copy before retrying"
        )


def is_patched(data: bytes | bytearray, patch: BinaryPatch) -> bool:
    validate_layout(data, patch)
    return (
        region(data, patch.one_v_one_double_offset, 2)
        == PATCHED_ONE_V_ONE_DOUBLE
        and region(
            data,
            patch.red_team_jump_offset,
            len(patch.red_patched_team_jump),
        )
        == patch.red_patched_team_jump
        and region(data, patch.team_tie_offset, len(PATCHED_TEAM_TIE))
        == PATCHED_TEAM_TIE
        and region(
            data,
            patch.npc_mode_jump_offset,
            len(patch.patched_npc_mode_jump),
        )
        == patch.patched_npc_mode_jump
        and region(
            data,
            patch.npc_mode_cave_offset,
            len(patch.npc_mode_cave_code),
        )
        == patch.npc_mode_cave_code
        and region(
            data,
            patch.hero_npc_cave_offset,
            len(patch.hero_npc_cave_code),
        )
        == patch.hero_npc_cave_code
    )


def patch_image(data: bytearray, patch: BinaryPatch) -> bool:
    if is_patched(data, patch):
        return False

    if (
        region(data, patch.one_v_one_double_offset, 2)
        == ORIGINAL_ONE_V_ONE_DOUBLE
    ):
        data[
            patch.one_v_one_double_offset : patch.one_v_one_double_offset + 2
        ] = PATCHED_ONE_V_ONE_DOUBLE
        data[
            patch.success_gate_offset :
            patch.success_gate_offset + len(ORIGINAL_SUCCESS_GATE)
        ] = patch.gate_jump
        data[
            patch.cave_offset : patch.cave_offset + len(ORIGINAL_CAVE)
        ] = patch.cave_code

    if (
        region(
            data,
            patch.red_team_jump_offset,
            len(patch.red_original_team_jump),
        )
        == patch.red_original_team_jump
    ):
        data[
            patch.red_team_jump_offset :
            patch.red_team_jump_offset + len(patch.red_patched_team_jump)
        ] = patch.red_patched_team_jump
        data[
            patch.red_team_cave_offset :
            patch.red_team_cave_offset + len(ORIGINAL_TEAM_CAVE)
        ] = patch.red_team_cave_code
        data[
            patch.blue_team_jump_offset :
            patch.blue_team_jump_offset + len(patch.blue_patched_team_jump)
        ] = patch.blue_patched_team_jump
        data[
            patch.blue_team_cave_offset :
            patch.blue_team_cave_offset + len(ORIGINAL_TEAM_CAVE)
        ] = patch.blue_team_cave_code

    if region(data, patch.team_tie_offset, len(ORIGINAL_TEAM_TIE)) == ORIGINAL_TEAM_TIE:
        data[
            patch.team_tie_offset :
            patch.team_tie_offset + len(PATCHED_TEAM_TIE)
        ] = PATCHED_TEAM_TIE

    npc_branch = region(
        data,
        patch.npc_mode_jump_offset,
        len(patch.original_npc_mode_jump),
    )
    npc_cave = region(
        data,
        patch.npc_mode_cave_offset,
        len(ORIGINAL_SOLO_NPC_CAVE),
    )
    if npc_branch == patch.original_npc_mode_jump:
        data[
            patch.npc_mode_jump_offset :
            patch.npc_mode_jump_offset + len(patch.patched_npc_mode_jump)
        ] = patch.patched_npc_mode_jump

    if npc_cave in {
        ORIGINAL_SOLO_NPC_CAVE,
        patch.beginner_npc_mode_cave_code,
    }:
        data[
            patch.npc_mode_cave_offset :
            patch.npc_mode_cave_offset + len(ORIGINAL_SOLO_NPC_CAVE)
        ] = patch.npc_mode_cave_code
        data[
            patch.hero_npc_cave_offset :
            patch.hero_npc_cave_offset + len(ORIGINAL_HERO_NPC_CAVE)
        ] = patch.hero_npc_cave_code

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
        print(f"{path.name} already supports solo Hero/Epic NPC matchmaking")
        return False

    if dry_run:
        print(f"Would patch {path.name} for solo Hero/Epic NPC matchmaking")
        return True

    if not patch.backup_path.exists():
        shutil.copy2(path, patch.backup_path)
        print(f"Backup written: {patch.backup_path}")

    path.write_bytes(data)
    written = path.read_bytes()
    if not is_patched(written, patch):
        path.write_bytes(original)
        raise OSError(f"Post-write verification failed for {path.name}; original restored")

    print(
        f"Patched {path.name}: later solo matches rotate through Hero/Epic NPCs"
    )
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
