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

    def test_unexpected_binary_is_rejected(self):
        patch = PATCHER.PATCHES[0]
        data = original_image(patch)
        data[patch.success_gate_offset] = 0
        with self.assertRaisesRegex(ValueError, "match-success bytes"):
            PATCHER.patch_image(data, patch)

    def test_incomplete_patch_is_rejected(self):
        patch = PATCHER.PATCHES[0]
        data = original_image(patch)
        data[
            patch.one_v_one_double_offset : patch.one_v_one_double_offset + 2
        ] = PATCHER.PATCHED_ONE_V_ONE_DOUBLE
        with self.assertRaisesRegex(ValueError, "incomplete"):
            PATCHER.patch_image(data, patch)

    def test_workspace_binaries_have_supported_layout(self):
        for patch in PATCHER.PATCHES:
            if not patch.path.exists():
                continue
            with self.subTest(binary=patch.filename):
                PATCHER.validate_layout(patch.path.read_bytes(), patch)


if __name__ == "__main__":
    unittest.main()
