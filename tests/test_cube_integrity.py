from __future__ import annotations

import ast
import copy
import importlib.util
import subprocess
import sys
import tempfile
import unittest
import zlib
from dataclasses import replace
from decimal import Decimal
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
VALIDATOR = ROOT / "scripts" / "cube-integrity.py"
START_OFFLINE = ROOT / "scripts" / "start-offline.py"
KOM_PATCHER = ROOT / "scripts" / "patch-client-kom.py"
SHOP_SCRIPT = ROOT / "scripts" / "update-echo-npc-shop.py"
SHOP_FILES = (
    ROOT / "Elsword" / "ClientScript" / "Major" / "ShopItem.lua",
    ROOT / "Elsword" / "_ClientScript" / "Major" / "ShopItem.lua",
)
UNSAFE_ECHO_ITEMS = (
    224380,
    225180,
    131254,
    85002870,
    85002440,
    85002872,
    85002874,
    85002876,
    84001710,
)


def load_module(name: str, path: Path):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Could not import {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module


class CubeIntegrityTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.cube = load_module("cube_integrity", VALIDATOR)
        cls.kom = load_module("patch_client_kom", KOM_PATCHER)
        cls.clean_state = cls.cube.load_state()

    def test_repaired_cube_graph_passes_the_runtime_validator(self) -> None:
        result = subprocess.run(
            [sys.executable, str(VALIDATOR)],
            cwd=ROOT,
            text=True,
            capture_output=True,
            check=False,
        )

        self.assertEqual(0, result.returncode, result.stdout + result.stderr)
        self.assertIn("Cube integrity OK", result.stdout)

    def test_startup_validates_cubes_before_any_server_starts(self) -> None:
        source = START_OFFLINE.read_text(encoding="utf-8")

        self.assertIn(
            'CUBE_INTEGRITY_VALIDATOR = ROOT / "scripts" / "cube-integrity.py"',
            source,
        )
        configure = source.index('configure_script = ROOT / "scripts" / "configure-offline.py"')
        validation = source.index("    validate_cube_integrity()", configure)
        server_loop = source.index("        for spec in SERVERS:", validation)
        self.assertLess(configure, validation)
        self.assertLess(validation, server_loop)
        self.assertEqual(
            2,
            sum(line.strip() == "validate_cube_integrity()" for line in source.splitlines()),
        )

    def test_client_package_repair_has_a_dedicated_kom_patch(self) -> None:
        source = KOM_PATCHER.read_text(encoding="utf-8")

        self.assertIn("CUBE_DATA_PATCHES", source)
        self.assertIn('"RandomItem.lua": CLIENT_MAJOR / "RandomItem.lua"', source)
        self.assertIn('"PackageItemData.lua": CLIENT_MAJOR / "PackageItemData.lua"', source)
        self.assertIn("verify_kom_entries(kom_path, payloads)", source)
        self.assertIn('"--cube-data"', source)

    def test_packed_client_readback_detects_payload_corruption(self) -> None:
        payload = b"\x1bLua synchronized cube fixture"
        compressed = zlib.compress(payload, level=9)
        checksum = f"{zlib.adler32(compressed) & 0xffffffff:08x}"
        xml = (
            '<?xml version="1.0" ?><Files>'
            f'<File Algorithm="0" Checksum="{checksum}" '
            f'CompressedSize="{len(compressed)}" FileTime="{checksum}" '
            f'Name="RandomItem.lua" Size="{len(payload)}"/>'
            "</Files>"
        ).encode("utf-8")

        with tempfile.TemporaryDirectory() as directory:
            archive = Path(directory) / "fixture.kom"
            archive.write_bytes(b"KOM\x00" + xml + compressed)
            self.kom.verify_kom_entries(archive, {"RandomItem.lua": payload})
            with self.assertRaisesRegex(RuntimeError, "payload mismatch"):
                self.kom.verify_kom_entries(
                    archive, {"RandomItem.lua": payload + b" corrupt"}
                )

    def test_nonexistent_echo_cubes_cannot_be_sold_again(self) -> None:
        sources = [SHOP_SCRIPT.read_text(encoding="utf-8")]
        sources.extend(path.read_text(encoding="utf-8-sig") for path in SHOP_FILES)

        for item_id in UNSAFE_ECHO_ITEMS:
            for source in sources:
                self.assertNotIn(str(item_id), source)

    def test_zero_reward_group_requires_a_positive_native_scalar(self) -> None:
        state = copy.deepcopy(self.clean_state)
        index = next(
            index
            for index, route in enumerate(state.template_routes)
            if route.item_id in state.items
            and route.branches
            and not route.scalar_rewards
        )
        route = state.template_routes[index]
        state.template_routes[index] = replace(
            route,
            branches=((route.branches[0][0], 0),),
            scalar_rewards=(),
        )

        issues = self.cube.validate_state_contract(state)

        self.assertTrue(any("zero item group without scalar reward" in issue for issue in issues))

    def test_native_scalar_cube_is_not_rejected_as_a_null_route(self) -> None:
        issues = self.cube.validate_state_contract(copy.deepcopy(self.clean_state))

        self.assertFalse(any("cube=67003763" in issue for issue in issues))

    def test_client_server_cube_route_drift_is_rejected(self) -> None:
        state = copy.deepcopy(self.clean_state)
        state.client_routes.pop()

        issues = self.cube.validate_state_contract(state)

        self.assertTrue(any("client RandomItem.lua route" in issue for issue in issues))

    def test_route_less_nested_package_reward_is_rejected(self) -> None:
        state = copy.deepcopy(self.clean_state)
        nested_id = 999_900_001
        state.items[nested_id] = self.cube.ItemInfo(
            "Corrupt Reward Package",
            "IT_SPECIAL",
            "Right-click to open. Contains reward items.",
        )
        state.group_rows.append(
            self.cube.RandomGroupRow(999_900_002, nested_id, Decimal("1"), 0, 1)
        )

        issues = self.cube.validate_state_contract(state)

        self.assertTrue(any("route-less nested packages" in issue for issue in issues))

    def test_recursive_package_graph_is_rejected(self) -> None:
        state = copy.deepcopy(self.clean_state)
        package_a, package_b = 999_900_003, 999_900_004
        for package in (package_a, package_b):
            state.items[package] = self.cube.ItemInfo(
                "Corrupt Nested Package",
                "IT_PACKAGE",
                "Right-click to open. Contains reward items.",
            )
        state.packages[package_a] = {package_b}
        state.packages[package_b] = {package_a}
        state.package_rows.extend(
            (
                self.cube.PackageRow(package_a, package_b, 0, True),
                self.cube.PackageRow(package_b, package_a, 0, True),
            )
        )

        issues = self.cube.validate_state_contract(state)

        self.assertTrue(any("package mapping cycles" in issue for issue in issues))

    def test_modified_python_modules_parse(self) -> None:
        for path in (VALIDATOR, START_OFFLINE, KOM_PATCHER, SHOP_SCRIPT):
            ast.parse(path.read_text(encoding="utf-8"))


if __name__ == "__main__":
    unittest.main()
