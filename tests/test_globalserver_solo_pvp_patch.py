from __future__ import annotations

import importlib.util
import struct
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SCRIPT = ROOT / "scripts" / "patch-globalserver-solo-pvp.py"

SPEC = importlib.util.spec_from_file_location("patch_globalserver_solo_pvp", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
PATCHER = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = PATCHER
SPEC.loader.exec_module(PATCHER)


def original_image(patch):
    data = bytearray(patch.expected_size)
    data[
        patch.one_v_one_double_offset : patch.one_v_one_double_offset + 2
    ] = PATCHER.ORIGINAL_ONE_V_ONE_DOUBLE
    data[
        patch.success_gate_offset :
        patch.success_gate_offset + len(PATCHER.ORIGINAL_SUCCESS_GATE)
    ] = PATCHER.ORIGINAL_SUCCESS_GATE
    jump_offset = patch.success_gate_offset + len(PATCHER.ORIGINAL_SUCCESS_GATE)
    data[
        jump_offset : jump_offset + len(PATCHER.ORIGINAL_SUCCESS_JUMP)
    ] = PATCHER.ORIGINAL_SUCCESS_JUMP
    data[
        patch.cave_offset : patch.cave_offset + len(PATCHER.ORIGINAL_CAVE)
    ] = PATCHER.ORIGINAL_CAVE
    data[
        patch.team_tie_offset :
        patch.team_tie_offset + len(PATCHER.ORIGINAL_TEAM_TIE)
    ] = PATCHER.ORIGINAL_TEAM_TIE
    data[
        patch.npc_mode_jump_offset :
        patch.npc_mode_jump_offset + len(patch.original_npc_mode_jump)
    ] = patch.original_npc_mode_jump
    data[
        patch.npc_mode_cave_offset :
        patch.npc_mode_cave_offset + len(PATCHER.ORIGINAL_SOLO_NPC_CAVE)
    ] = PATCHER.ORIGINAL_SOLO_NPC_CAVE
    data[
        patch.hero_npc_cave_offset :
        patch.hero_npc_cave_offset + len(PATCHER.ORIGINAL_HERO_NPC_CAVE)
    ] = PATCHER.ORIGINAL_HERO_NPC_CAVE
    data[
        patch.red_team_jump_offset :
        patch.red_team_jump_offset + len(patch.red_original_team_jump)
    ] = patch.red_original_team_jump
    data[
        patch.red_team_cave_offset :
        patch.red_team_cave_offset + len(PATCHER.ORIGINAL_TEAM_CAVE)
    ] = PATCHER.ORIGINAL_TEAM_CAVE
    data[
        patch.blue_team_jump_offset :
        patch.blue_team_jump_offset + len(patch.blue_original_team_jump)
    ] = patch.blue_original_team_jump
    data[
        patch.blue_team_cave_offset :
        patch.blue_team_cave_offset + len(PATCHER.ORIGINAL_TEAM_CAVE)
    ] = PATCHER.ORIGINAL_TEAM_CAVE
    return data


class GlobalServerSoloPvpPatchTests(unittest.TestCase):
    def test_original_images_patch_and_are_idempotent(self):
        for patch in PATCHER.PATCHES:
            with self.subTest(binary=patch.filename):
                data = original_image(patch)
                self.assertTrue(PATCHER.patch_image(data, patch))
                self.assertTrue(PATCHER.is_patched(data, patch))
                self.assertFalse(PATCHER.patch_image(data, patch))

    def test_trampoline_returns_to_original_conditional_jump(self):
        for patch in PATCHER.PATCHES:
            with self.subTest(binary=patch.filename):
                gate_displacement = struct.unpack("<i", patch.gate_jump[1:])[0]
                self.assertEqual(
                    patch.success_gate_offset + 5 + gate_displacement,
                    patch.cave_offset,
                )

                cave = patch.cave_code
                self.assertEqual(cave[:11], bytes.fromhex("8d0c3f83ff010f44cf3bc8"))
                return_displacement = struct.unpack("<i", cave[12:])[0]
                self.assertEqual(
                    patch.cave_offset + len(cave) + return_displacement,
                    patch.success_gate_offset + len(PATCHER.ORIGINAL_SUCCESS_GATE),
                )

    def test_team_mismatch_trampolines_only_bypass_solo_1v1(self):
        for patch in PATCHER.PATCHES:
            with self.subTest(binary=patch.filename):
                for branch, cave_offset, cave, continuation in (
                    (
                        patch.red_patched_team_jump,
                        patch.red_team_cave_offset,
                        patch.red_team_cave_code,
                        patch.red_team_continue_offset,
                    ),
                    (
                        patch.blue_patched_team_jump,
                        patch.blue_team_cave_offset,
                        patch.blue_team_cave_code,
                        patch.blue_team_continue_offset,
                    ),
                ):
                    branch_source = (
                        patch.red_team_jump_offset
                        if branch == patch.red_patched_team_jump
                        else patch.blue_team_jump_offset
                    )
                    branch_displacement = struct.unpack("<i", branch[2:])[0]
                    self.assertEqual(
                        branch_source + len(branch) + branch_displacement,
                        cave_offset,
                    )
                    self.assertEqual(cave[:3], bytes.fromhex("83f901"))

                    failure_displacement = struct.unpack("<i", cave[5:9])[0]
                    self.assertEqual(
                        cave_offset + 9 + failure_displacement,
                        patch.team_failure_offset,
                    )
                    continue_displacement = struct.unpack("<i", cave[10:14])[0]
                    self.assertEqual(
                        cave_offset + len(cave) + continue_displacement,
                        continuation,
                    )

    def test_team_tie_prefers_red_without_changing_branch_distance(self):
        for patch in PATCHER.PATCHES:
            with self.subTest(binary=patch.filename):
                data = original_image(patch)
                self.assertTrue(PATCHER.patch_image(data, patch))
                self.assertEqual(
                    data[
                        patch.team_tie_offset :
                        patch.team_tie_offset + len(PATCHER.PATCHED_TEAM_TIE)
                    ],
                    PATCHER.PATCHED_TEAM_TIE,
                )
                self.assertEqual(
                    PATCHER.ORIGINAL_TEAM_TIE[1:],
                    PATCHER.PATCHED_TEAM_TIE[1:],
                )

    def test_later_solo_matches_select_the_hero_epic_pool(self):
        for patch in PATCHER.PATCHES:
            with self.subTest(binary=patch.filename):
                data = original_image(patch)
                self.assertTrue(PATCHER.patch_image(data, patch))

                branch = patch.patched_npc_mode_jump
                branch_displacement = struct.unpack("<i", branch[2:])[0]
                self.assertEqual(
                    patch.npc_mode_jump_offset
                    + len(branch)
                    + branch_displacement,
                    patch.npc_mode_cave_offset,
                )

                cave = patch.npc_mode_cave_code
                self.assertEqual(cave[:4], bytes.fromhex("837d0801"))
                solo_displacement = struct.unpack("<i", cave[6:10])[0]
                self.assertEqual(
                    patch.npc_mode_cave_offset + 10 + solo_displacement,
                    patch.hero_npc_cave_offset,
                )
                normal_displacement = struct.unpack("<i", cave[11:15])[0]
                self.assertEqual(
                    patch.npc_mode_cave_offset
                    + len(cave)
                    + normal_displacement,
                    patch.npc_mode_normal_offset,
                )

                hero_cave = patch.hero_npc_cave_code
                self.assertEqual(hero_cave[:5], bytes.fromhex("b802000000"))
                hero_displacement = struct.unpack("<i", hero_cave[6:10])[0]
                self.assertEqual(
                    patch.hero_npc_cave_offset + 10 + hero_displacement,
                    patch.npc_mode_store_offset,
                )
                self.assertEqual(hero_cave[10:], b"\xcc" * 4)

    def test_pre_accept_patch_is_upgraded(self):
        for patch in PATCHER.PATCHES:
            with self.subTest(binary=patch.filename):
                data = original_image(patch)
                data[
                    patch.one_v_one_double_offset :
                    patch.one_v_one_double_offset + 2
                ] = PATCHER.PATCHED_ONE_V_ONE_DOUBLE
                data[
                    patch.success_gate_offset :
                    patch.success_gate_offset + len(PATCHER.ORIGINAL_SUCCESS_GATE)
                ] = patch.gate_jump
                data[
                    patch.cave_offset :
                    patch.cave_offset + len(PATCHER.ORIGINAL_CAVE)
                ] = patch.cave_code

                self.assertTrue(PATCHER.patch_image(data, patch))
                self.assertTrue(PATCHER.is_patched(data, patch))

    def test_pre_orientation_patch_is_upgraded(self):
        for patch in PATCHER.PATCHES:
            with self.subTest(binary=patch.filename):
                data = original_image(patch)
                self.assertTrue(PATCHER.patch_image(data, patch))
                data[
                    patch.team_tie_offset :
                    patch.team_tie_offset + len(PATCHER.ORIGINAL_TEAM_TIE)
                ] = PATCHER.ORIGINAL_TEAM_TIE

                self.assertTrue(PATCHER.patch_image(data, patch))
                self.assertTrue(PATCHER.is_patched(data, patch))

    def test_pre_repeat_match_patch_is_upgraded(self):
        for patch in PATCHER.PATCHES:
            with self.subTest(binary=patch.filename):
                data = original_image(patch)
                self.assertTrue(PATCHER.patch_image(data, patch))
                data[
                    patch.npc_mode_jump_offset :
                    patch.npc_mode_jump_offset + len(patch.original_npc_mode_jump)
                ] = patch.original_npc_mode_jump
                data[
                    patch.npc_mode_cave_offset :
                    patch.npc_mode_cave_offset
                    + len(PATCHER.ORIGINAL_SOLO_NPC_CAVE)
                ] = PATCHER.ORIGINAL_SOLO_NPC_CAVE
                data[
                    patch.hero_npc_cave_offset :
                    patch.hero_npc_cave_offset
                    + len(PATCHER.ORIGINAL_HERO_NPC_CAVE)
                ] = PATCHER.ORIGINAL_HERO_NPC_CAVE

                self.assertTrue(PATCHER.patch_image(data, patch))
                self.assertTrue(PATCHER.is_patched(data, patch))

    def test_beginner_only_repeat_patch_is_upgraded_to_hero_rotation(self):
        for patch in PATCHER.PATCHES:
            with self.subTest(binary=patch.filename):
                data = original_image(patch)
                self.assertTrue(PATCHER.patch_image(data, patch))
                data[
                    patch.npc_mode_cave_offset :
                    patch.npc_mode_cave_offset
                    + len(PATCHER.ORIGINAL_SOLO_NPC_CAVE)
                ] = patch.beginner_npc_mode_cave_code
                data[
                    patch.hero_npc_cave_offset :
                    patch.hero_npc_cave_offset
                    + len(PATCHER.ORIGINAL_HERO_NPC_CAVE)
                ] = PATCHER.ORIGINAL_HERO_NPC_CAVE

                self.assertTrue(PATCHER.patch_image(data, patch))
                self.assertTrue(PATCHER.is_patched(data, patch))

    def test_unexpected_binary_is_rejected(self):
        patch = PATCHER.PATCHES[0]
        data = original_image(patch)
        data[patch.success_gate_offset] = 0
        with self.assertRaisesRegex(ValueError, "match-success bytes"):
            PATCHER.patch_image(data, patch)

    def test_unexpected_team_tie_is_rejected(self):
        patch = PATCHER.PATCHES[0]
        data = original_image(patch)
        data[patch.team_tie_offset] = 0
        with self.assertRaisesRegex(ValueError, "team-tie bytes"):
            PATCHER.patch_image(data, patch)

    def test_incomplete_patch_is_rejected(self):
        patch = PATCHER.PATCHES[0]
        data = original_image(patch)
        data[
            patch.one_v_one_double_offset : patch.one_v_one_double_offset + 2
        ] = PATCHER.PATCHED_ONE_V_ONE_DOUBLE
        with self.assertRaisesRegex(ValueError, "incomplete"):
            PATCHER.patch_image(data, patch)

    def test_incomplete_accepted_match_patch_is_rejected(self):
        patch = PATCHER.PATCHES[0]
        data = original_image(patch)
        data[
            patch.red_team_jump_offset :
            patch.red_team_jump_offset + len(patch.red_patched_team_jump)
        ] = patch.red_patched_team_jump
        with self.assertRaisesRegex(ValueError, "incomplete accepted-match"):
            PATCHER.patch_image(data, patch)

    def test_incomplete_repeat_match_patch_is_rejected(self):
        patch = PATCHER.PATCHES[0]
        data = original_image(patch)
        data[
            patch.npc_mode_jump_offset :
            patch.npc_mode_jump_offset + len(patch.patched_npc_mode_jump)
        ] = patch.patched_npc_mode_jump
        with self.assertRaisesRegex(ValueError, "incomplete NPC-roster"):
            PATCHER.patch_image(data, patch)

    def test_workspace_binaries_have_supported_layout(self):
        for patch in PATCHER.PATCHES:
            if not patch.path.exists():
                continue
            with self.subTest(binary=patch.filename):
                PATCHER.validate_layout(patch.path.read_bytes(), patch)


if __name__ == "__main__":
    unittest.main()
