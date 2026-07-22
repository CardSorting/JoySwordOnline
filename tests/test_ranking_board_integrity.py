from __future__ import annotations

import ast
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
MIGRATION = ROOT / "database" / "fix-ranking-board.sql"
START_OFFLINE = ROOT / "scripts" / "start-offline.py"


class RankingBoardIntegrityTests(unittest.TestCase):
    def test_personal_record_procedure_has_null_free_fallback(self) -> None:
        sql = MIGRATION.read_text(encoding="utf-8")

        self.assertIn("CREATE OR ALTER PROCEDURE dbo.gup_get_rank_myrecord", sql)
        self.assertIn("LEFT JOIN dbo.Rank_SpaceTime_MyRecord", sql)
        self.assertIn("ISNULL(record.Stage, 0)", sql)
        self.assertIn("ISNULL(record.PlayTime, 0)", sql)
        self.assertIn("ISNULL(record.[Level], unit.[Level])", sql)
        self.assertIn("ISNULL(record.UnitClass, unit.UnitClass)", sql)
        self.assertIn("ISNULL(record.RegDate, unit.RegDate)", sql)

    def test_migration_backfills_every_active_character(self) -> None:
        sql = MIGRATION.read_text(encoding="utf-8")

        self.assertIn("INSERT INTO dbo.Rank_SpaceTime_MyRecord", sql)
        self.assertIn("FROM dbo.GUnit AS unit", sql)
        self.assertIn("unit.Deleted = 0", sql)
        self.assertIn("record.UnitUID = unit.UnitUID", sql)

    def test_server_startup_applies_ranking_repair(self) -> None:
        source = START_OFFLINE.read_text(encoding="utf-8")

        self.assertIn(
            'RANKING_BOARD_INTEGRITY_SQL = ROOT / "database" / "fix-ranking-board.sql"',
            source,
        )
        self.assertIn("def enforce_ranking_board_integrity()", source)
        validation = source.index("    validate_enhancement_probabilities()")
        migration = source.index("    enforce_ranking_board_integrity()", validation)
        game_server_loop = source.index("        for spec in SERVERS:", migration)
        self.assertLess(validation, migration)
        self.assertLess(migration, game_server_loop)

    def test_startup_module_still_parses(self) -> None:
        ast.parse(START_OFFLINE.read_text(encoding="utf-8"))


if __name__ == "__main__":
    unittest.main()
