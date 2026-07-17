from __future__ import annotations

import importlib.util
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
VALIDATOR_PATH = ROOT / "scripts" / "validate-pvp-matchmaking.py"


def load_validator():
    spec = importlib.util.spec_from_file_location("pvp_matchmaking_validator", VALIDATOR_PATH)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Unable to load {VALIDATOR_PATH}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module


class PvpMatchmakingTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.validator = load_validator()

    def test_solo_queue_and_fallback_pool_are_valid(self) -> None:
        self.assertEqual(self.validator.validate_repository(ROOT), [])

    def test_missing_ranking_is_rejected(self) -> None:
        path = ROOT / "Elsword" / "ServerResource" / "PvpNpcData.lua"
        text = path.read_text(encoding="utf-8-sig", errors="replace")
        fallback_start = text.index(
            'm_PvpNpcID\t\t= NPC_UNIT_ID["NUI_NPC_ELSWORD_01"]'
        )
        ranking = '\tm_Ranking\t\t= PVP_RANK["PVPRANK_RANK_E"],\n'
        ranking_start = text.index(ranking, fallback_start)
        bad = text[:ranking_start] + text[ranking_start + len(ranking) :]
        with tempfile.TemporaryDirectory() as directory:
            bad_path = Path(directory) / "PvpNpcData.lua"
            bad_path.write_text(bad, encoding="utf-8")
            issues = self.validator.validate_npc_data(bad_path)
        self.assertTrue(
            any(
                "NUI_NPC_ELSWORD_01" in issue and "m_Ranking" in issue
                for issue in issues
            )
        )

    def test_commented_fallback_record_does_not_count_as_active(self) -> None:
        text = """
-- PvpMatchManager:AddPvpNpcInfo
-- {
--     m_PvpNpcID = NPC_UNIT_ID["NUI_PVP_BOT_ELSWORD"],
--     m_PvpNpcType = PVP_NPC_TYPE["PNT_BEGINNER_NPC"],
--     m_UnitClass = UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
--     m_Level = 50,
--     m_Rating = 500,
--     m_Ranking = PVP_RANK["PVPRANK_RANK_E"],
-- }
"""
        self.assertEqual(self.validator.parse_npc_blocks(text), [])

    def test_unused_empty_ai_npc_is_rejected_when_activated(self) -> None:
        text = """
PvpMatchManager:AddPvpNpcInfo
{
    m_PvpNpcID = NPC_UNIT_ID["NUI_PVP_BOT_ELSWORD"],
    m_PvpNpcType = PVP_NPC_TYPE["PNT_BEGINNER_NPC"],
    m_UnitClass = UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
    m_Level = 50,
    m_Rating = 500,
    m_Ranking = PVP_RANK["PVPRANK_RANK_E"],
}
"""
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "PvpNpcData.lua"
            path.write_text(text, encoding="utf-8")
            issues = self.validator.validate_npc_data(path)
        self.assertTrue(any("empty-AI NPC" in issue for issue in issues))

    def test_solo_begin_count_regression_is_detected(self) -> None:
        path = ROOT / "Elsword" / "ServerResource" / "PvpMatchData.lua"
        text = path.read_text(encoding="utf-8-sig", errors="replace")
        broken = text.replace(
            "PvpMatchManager:SetMatchMakingBeginCount( 1 )",
            "PvpMatchManager:SetMatchMakingBeginCount( 2 )",
            1,
        )
        with tempfile.TemporaryDirectory() as directory:
            bad_path = Path(directory) / "PvpMatchData.lua"
            bad_path.write_text(broken, encoding="utf-8")
            issues = self.validator.validate_match_data(bad_path)
        self.assertTrue(
            any("SetMatchMakingBeginCount" in issue for issue in issues)
        )

    def test_rank_enum_must_be_exact(self) -> None:
        self.assertFalse(
            self.validator.is_enum_value(
                'BAD_PVP_RANK["PVPRANK_RANK_E"]',
                "PVP_RANK",
                "PVPRANK_RANK_E",
            )
        )

    def test_runtime_and_release_paths_ship_the_guard(self) -> None:
        startup = (ROOT / "scripts" / "start-offline.py").read_text(encoding="utf-8")
        center_start = (ROOT / "Elsword" / "1CenterServer.bat").read_text(encoding="utf-8")
        global_start = (ROOT / "Elsword" / "3GlobalServer.bat").read_text(encoding="utf-8")
        deploy = (ROOT / "scripts" / "deploy_excludes.py").read_text(encoding="utf-8")
        release = (ROOT / "scripts" / "azure_release.py").read_text(encoding="utf-8")
        self.assertIn("\n    validate_pvp_matchmaking()\n", startup)
        self.assertIn("\n        validate_pvp_matchmaking()\n", startup)
        self.assertIn("apply_globalserver_pvp_patch()", startup)
        self.assertIn("validate-pvp-matchmaking.py", center_start)
        self.assertIn("patch-globalserver-solo-pvp.py", global_start)
        self.assertIn("scripts/validate-pvp-matchmaking.py", deploy)
        self.assertIn("scripts/patch-globalserver-solo-pvp.py", deploy)
        self.assertIn('"validate-pvp-matchmaking.py"', release)
        self.assertIn('"patch-globalserver-solo-pvp.py"', release)

    def test_code_overlay_contains_fixed_matchmaking_data(self) -> None:
        spec = importlib.util.spec_from_file_location(
            "build_code_overlay_pvp", ROOT / "scripts" / "build-code-overlay.py"
        )
        if spec is None or spec.loader is None:
            raise RuntimeError("Unable to load build-code-overlay.py")
        builder = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(builder)
        collected = {path.relative_to(ROOT).as_posix() for path in builder.collect()}
        self.assertIn("Elsword/ServerResource/PvpNpcData.lua", collected)
        self.assertIn("Elsword/ServerResource/PvpNpcData_EN.lua", collected)
        self.assertIn("Elsword/ServerResource/PvpMatchData.lua", collected)
        self.assertIn("Elsword/Resources/PvpMatchData.lua", collected)
        self.assertIn("scripts/patch-globalserver-solo-pvp.py", collected)


if __name__ == "__main__":
    unittest.main()
