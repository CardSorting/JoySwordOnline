from __future__ import annotations

import ast
import re
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SERVER_CHANNELS = ROOT / "Elsword" / "ServerResource" / "channels.lua"
RUNTIME_CHANNELS = ROOT / "Elsword" / "GameServer" / "channels.lua"
ROOM_LIST = ROOT / "Elsword" / "ServerResource" / "RoomListData.lua"
RUNTIME_ROOM_LIST = ROOT / "Elsword" / "GameServer" / "RoomListData.lua"
BOARD = ROOT / "Elsword" / "ClientScript" / "Dialog" / "NewVillageUI" / "DLG_Personal_Shop_Board.lua"
BOARD_ITEM = ROOT / "Elsword" / "ClientScript" / "Dialog" / "NewVillageUI" / "DLG_Personal_Shop_Board_ItemList.lua"
MIGRATION = ROOT / "database" / "fix-marketplace.sql"
START_OFFLINE = ROOT / "scripts" / "start-offline.py"
KOM_PATCHER = ROOT / "scripts" / "patch-client-kom.py"


class MarketplaceIntegrityTests(unittest.TestCase):
    def test_marketplace_uses_the_original_channel_and_room_list_id(self) -> None:
        channels = SERVER_CHANNELS.read_text(encoding="utf-8-sig")
        room_list = ROOM_LIST.read_text(encoding="utf-8-sig")

        square_channels = re.findall(
            r"CHANNEL_ID\s*=\s*(\d+).*?CHANNEL_TYPE\s*=\s*CHANNEL_TYPE\[\"CT_SQUARE\"\]",
            channels,
            flags=re.DOTALL,
        )
        self.assertEqual(["1"], square_channels)
        self.assertRegex(
            room_list,
            r"(?s)ROOM_LIST_ID\s*=\s*1,.*?ROOM_LIST_TYPE\s*=\s*ROOM_LIST_TYPE\[\"RLT_SQUARE\"\]",
        )
        self.assertNotIn("CHANNEL_ID\t\t= 40", channels)

    def test_canonical_and_runtime_marketplace_tables_match(self) -> None:
        self.assertEqual(
            SERVER_CHANNELS.read_text(encoding="utf-8-sig"),
            RUNTIME_CHANNELS.read_text(encoding="utf-8-sig"),
        )
        self.assertEqual(
            ROOM_LIST.read_text(encoding="utf-8-sig"),
            RUNTIME_ROOM_LIST.read_text(encoding="utf-8-sig"),
        )

    def test_board_has_no_visible_prototype_values(self) -> None:
        board = BOARD.read_text(encoding="utf-8-sig")
        item = BOARD_ITEM.read_text(encoding="utf-8-sig")

        self.assertNotRegex(board, r'(?m)^\s*MSG\s*=\s*"00"', msg=board)
        for prototype in ('"엘소드"', '"99개"', '"9,999,999 ED"', '"WWWWWWWWWWWW"'):
            self.assertNotRegex(item, rf"(?m)^\s*MSG\s*=\s*{re.escape(prototype)}")

    def test_migration_backfills_and_repairs_shop_lookup(self) -> None:
        sql = MIGRATION.read_text(encoding="utf-8")

        self.assertIn("INSERT INTO dbo.GPShopInfo", sql)
        self.assertIn("unit.Deleted = 0", sql)
        self.assertIn("CREATE OR ALTER PROCEDURE dbo.gup_get_PShop_info_UnitUID", sql)
        self.assertIn("WITH (NOLOCK)", sql)
        self.assertIn("ExpirationDate = @OfflineShopExpiry", sql)
        self.assertIn("CONVERT(BIT, info.IsPShopOpen)", sql)

    def test_startup_applies_marketplace_repair_before_servers_start(self) -> None:
        source = START_OFFLINE.read_text(encoding="utf-8")

        self.assertIn(
            'MARKETPLACE_INTEGRITY_SQL = ROOT / "database" / "fix-marketplace.sql"',
            source,
        )
        ranking = source.index("    enforce_ranking_board_integrity()")
        marketplace = source.index("    enforce_marketplace_integrity()", ranking)
        server_loop = source.index("        for spec in SERVERS:", marketplace)
        self.assertLess(ranking, marketplace)
        self.assertLess(marketplace, server_loop)

    def test_marketplace_ui_has_a_packed_client_patch_mode(self) -> None:
        source = KOM_PATCHER.read_text(encoding="utf-8")

        self.assertIn("MARKETPLACE_UI_PATCHES", source)
        self.assertIn('"DLG_UI_Market_list.lua"', source)
        self.assertIn('"DLG_Personal_Shop_Board.lua"', source)
        self.assertIn('"DLG_Personal_Shop_Board_ItemList.lua"', source)
        self.assertIn('"--marketplace-ui"', source)

    def test_modified_python_modules_parse(self) -> None:
        ast.parse(START_OFFLINE.read_text(encoding="utf-8"))
        ast.parse(KOM_PATCHER.read_text(encoding="utf-8"))


if __name__ == "__main__":
    unittest.main()
