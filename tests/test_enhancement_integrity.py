from __future__ import annotations

import importlib.util
import re
import subprocess
import sys
import tempfile
import unittest
import zipfile
from pathlib import Path
from unittest import mock


ROOT = Path(__file__).resolve().parent.parent
ENCHANT_TABLE = ROOT / "Elsword" / "ServerResource" / "EnchantTable.lua"
MIGRATION = ROOT / "database" / "enforce-enhancement-integrity.sql"


def load_module(name: str, path: Path):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Unable to load {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


class EnhancementRuntimeTests(unittest.TestCase):
    def test_active_probability_section_matches_bundled_untouched_backup(self) -> None:
        restore = load_module(
            "restore_enhancement", ROOT / "scripts" / "restore-enhancement-probabilities.py"
        )
        with zipfile.ZipFile(restore.ARCHIVE) as archive:
            legacy = archive.read("EnchantTable.lua.bak").decode("utf-8-sig")
        active = ENCHANT_TABLE.read_text(encoding="utf-8-sig")
        self.assertEqual(restore.probability_section(active), restore.probability_section(legacy))

    def test_exact_legacy_standard_curve_and_failure_outcomes(self) -> None:
        validator = load_module(
            "enhancement_validator", ROOT / "scripts" / "validate-enhancement-probabilities.py"
        )
        rows = validator.parse_rows(ENCHANT_TABLE, "standard")
        expected_success = [
            100, 100, 80, 60, 20, 10, 10, 5, 2, 0.7,
            0.6, 0, 0, 1, 0.5, 0.5, 0.3, 0.3, 0.1, 0,
        ]
        self.assertEqual([rows[level].success_probability for level in range(1, 21)], expected_success)
        self.assertEqual(rows[7].probabilities, {
            "Up1": 10.0, "NoChange": 20.0, "Down1": 40.0, "DownTo0": 20.0, "Break": 10.0,
        })
        self.assertEqual(rows[14].probabilities, {
            "Up1": 1.0, "NoChange": 7.0, "Down1": 27.0, "DownTo0": 40.0, "Break": 25.0,
        })

    def test_event_and_rare_tables_are_distinct_valid_distributions(self) -> None:
        validator = load_module(
            "enhancement_validator_tables", ROOT / "scripts" / "validate-enhancement-probabilities.py"
        )
        event = validator.parse_rows(ENCHANT_TABLE, "event")
        rare = validator.parse_rows(ENCHANT_TABLE, "rare")
        self.assertEqual(set(event), set(range(1, 21)))
        self.assertEqual(set(rare), set(range(1, 10)))
        self.assertTrue(all(row.probabilities["Break"] == 0 for row in event.values()))

    def test_binary_supported_api_is_used_without_nonexistent_limit_hook(self) -> None:
        table = ENCHANT_TABLE.read_text(encoding="utf-8-sig")
        binary = (ROOT / "Elsword" / "GameServer" / "GameServer.exe").read_bytes()
        self.assertNotRegex(table, r"(?m)^\s*EnchantItemManager:SetEnchantLimit\(")
        for method in (
            b"SetEnchantProbability", b"SetEnchantProbability_Event",
            b"SetEnchantRareProbability", b"SetEnchantRate",
        ):
            self.assertIn(method, binary)
        self.assertNotIn(b"SetEnchantLimit\x00", binary)

    def test_validator_fails_closed_for_missing_or_malformed_rows(self) -> None:
        validator_path = ROOT / "scripts" / "validate-enhancement-probabilities.py"
        with tempfile.TemporaryDirectory() as directory:
            bad = Path(directory) / "bad.lua"
            bad.write_text(
                "EnchantItemManager:SetEnchantProbability(1, "
                "{ Up1 = 100, NoChange = 0, Down1 = 0, DownTo0 = 0, Break = 1 })\n",
                encoding="utf-8",
            )
            result = subprocess.run(
                [sys.executable, str(validator_path), "--table", str(bad), "--check-only"],
                text=True, capture_output=True, check=False,
            )
        self.assertEqual(result.returncode, 2)
        self.assertIn("ENHANCEMENT TABLE ERROR", result.stdout)

    def test_simulation_never_jumps_and_uses_current_plus_one_row(self) -> None:
        validator = load_module(
            "enhancement_validator_sim", ROOT / "scripts" / "validate-enhancement-probabilities.py"
        )
        rows = validator.parse_rows(ENCHANT_TABLE, "standard")
        summaries = validator.simulate(rows, attempts=2_000, seed=12345, item_id=1, attempt_log=None)
        self.assertEqual([row["target_level"] for row in summaries], list(range(1, 21)))
        self.assertTrue(all(row["within_variance"] for row in summaries))

    def test_runtime_sync_includes_authoritative_enhancement_table(self) -> None:
        configure = (ROOT / "scripts" / "configure-offline.py").read_text(encoding="utf-8")
        self.assertIn('"sync-enhancement-table.py"', configure)
        self.assertIn('str(enhancement_sync), "--apply"', configure)

        authoritative = ENCHANT_TABLE.read_bytes().lstrip(b"\xef\xbb\xbf")
        runtime = (ROOT / "Elsword" / "GameServer" / "EnchantTable.lua").read_bytes().lstrip(
            b"\xef\xbb\xbf"
        )
        self.assertEqual(runtime, authoritative)

    def test_code_overlay_ships_authoritative_enhancement_table(self) -> None:
        builder = load_module("build_code_overlay", ROOT / "scripts" / "build-code-overlay.py")
        collected = {path.relative_to(ROOT).as_posix() for path in builder.collect()}
        self.assertIn("Elsword/ServerResource/EnchantTable.lua", collected)
        self.assertIn("Elsword/GameServer/EnchantTable.lua", collected)


class EnhancementDatabaseTests(unittest.TestCase):
    def test_migration_repairs_and_rejects_out_of_range_levels(self) -> None:
        sql = MIGRATION.read_text(encoding="utf-8")
        normalized = re.sub(r"\s+", " ", sql).upper()
        self.assertIn("WHERE ELEVEL IS NULL OR ELEVEL < 0 OR ELEVEL > 20", normalized)
        self.assertIn("CHECK (ELEVEL IS NOT NULL AND ELEVEL >= 0 AND ELEVEL <= 20)", normalized)
        self.assertIn("IF @IELEVEL IS NULL OR @IELEVEL < 0 OR @IELEVEL > 20", normalized)
        self.assertIn("DROP CONSTRAINT CK_GITEMENCHANT_ELEVEL_0_12", normalized)
        self.assertIn("ALTER PROCEDURE [DBO].[GUP_UPDATE_ENCHANT]", normalized)
        self.assertIn("IF @IELEVEL > @IPREVIOUSLEVEL + 1", normalized)
        self.assertIn("ENHANCEMENTINTEGRITYFAILURE", normalized)
        self.assertIn("WITH (UPDLOCK, HOLDLOCK)", normalized)

    def test_every_real_start_applies_migration_before_gameserver(self) -> None:
        startup = (ROOT / "scripts" / "start-offline.py").read_text(encoding="utf-8")
        validation_call = startup.index("    validate_enhancement_probabilities()")
        migration_call = startup.index("    enforce_enhancement_integrity()", validation_call)
        patch_call = startup.index("    apply_gameserver_patches()", migration_call)
        launch_loop = startup.index("        for spec in SERVERS:", patch_call)
        self.assertLess(validation_call, migration_call)
        self.assertLess(migration_call, patch_call)
        self.assertLess(patch_call, launch_loop)

    def test_sql_runner_can_use_bundled_container_tools(self) -> None:
        runner = load_module("run_sql_file", ROOT / "scripts" / "run_sql_file.py")
        completed = mock.Mock(returncode=0, stdout="ok\n", stderr="")
        env = {"DB_PASSWORD": "test-password", "MSSQL_CONTAINER": "test-mssql"}
        with mock.patch.object(runner.shutil, "which", return_value="docker.exe"), mock.patch.object(
            runner.subprocess, "run", return_value=completed
        ) as run:
            runner.run_sql_in_docker(env, "SELECT 1;")

        command = run.call_args.args[0]
        self.assertEqual(command[:6], ["docker.exe", "exec", "-i", "-e", "MSSQL_SA_PASSWORD", "test-mssql"])
        self.assertEqual(run.call_args.kwargs["input"], "SELECT 1;")
        self.assertEqual(run.call_args.kwargs["env"]["MSSQL_SA_PASSWORD"], "test-password")


if __name__ == "__main__":
    unittest.main()
