from __future__ import annotations

import ast
import re
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
FIX_CREATION_SQL = ROOT / "database" / "fix-post-character-creation.sql"
HOTPATH_CREATION_SQL = ROOT / "database" / "install-hotpath-account-creation.sql"
REFACTOR_LOGIN_SQL = ROOT / "database" / "refactor-login.sql"
BENCHMARK_SCRIPT = ROOT / "scripts" / "benchmark-strategy.py"
STORAGE_OPTIMIZE_SCRIPT = ROOT / "scripts" / "db-optimize-storage.py"
CHANNEL_CONFIG = ROOT / "Elsword" / "ChannelServer" / "config_ch_US_SERVICE.lua"
LOGIN_CONFIG = ROOT / "Elsword" / "LoginServer" / "config_lg_US_SERVICE.lua"
GAME_CONFIG = ROOT / "Elsword" / "GameServer" / "config_gs_US_SERVICE.lua"


class ChannelConnectionBenchmarkTests(unittest.TestCase):
    def test_fix_post_character_creation_has_fast_path_and_rcsi(self) -> None:
        sql = FIX_CREATION_SQL.read_text(encoding="utf-8")

        # 1. Non-blocking Read Committed Snapshot Isolation & Auto-Stats
        self.assertIn("ALTER DATABASE [Account] SET READ_COMMITTED_SNAPSHOT ON", sql)
        self.assertIn("ALTER DATABASE [Account] SET ALLOW_SNAPSHOT_ISOLATION ON", sql)
        self.assertIn("ALTER DATABASE [Account] SET AUTO_UPDATE_STATISTICS_ASYNC ON", sql)
        self.assertIn("ALTER DATABASE [Game01] SET READ_COMMITTED_SNAPSHOT ON", sql)
        self.assertIn("ALTER DATABASE [ES_BILLING] SET READ_COMMITTED_SNAPSHOT ON", sql)

        # 2. Delayed Durability & Auto-Shrink Prevention
        self.assertIn("ALTER DATABASE [Account] SET DELAYED_DURABILITY = FORCED", sql)
        self.assertIn("ALTER DATABASE [Account] SET AUTO_CLOSE OFF", sql)
        self.assertIn("ALTER DATABASE [Account] SET AUTO_SHRINK OFF", sql)
        self.assertIn("ALTER DATABASE [Account] SET TARGET_RECOVERY_TIME = 60 SECONDS", sql)

        # 3. High-performance nonclustered indexes for fast channel validation
        self.assertIn("IX_MUser_UserID", sql)
        self.assertIn("IX_MUserAuthority_UserUID", sql)
        self.assertIn("IX_users_Login", sql)
        self.assertIn("IX_EB_Cash_CD_USERUID", sql)
        self.assertIn("IX_Unit_LoginUID", sql)

        # 4. Fast-path self-heal check in mup_auth_user
        self.assertIn("IF NOT EXISTS (SELECT 1 FROM Game01.dbo.users WITH (NOLOCK) WHERE Login = @strUserID_)", sql)
        self.assertIn("OR NOT EXISTS (SELECT 1 FROM ES_BILLING.dbo.EB_Cash WITH (NOLOCK) WHERE CD_USERUID = @iUserUID)", sql)

    def test_hotpath_account_creation_has_lockless_existence_checks(self) -> None:
        sql = HOTPATH_CREATION_SQL.read_text(encoding="utf-8")
        self.assertIn("FROM dbo.MUser WITH (NOLOCK)", sql)
        self.assertIn("FROM Game01.dbo.users WITH (NOLOCK)", sql)
        self.assertIn("FROM ES_BILLING.dbo.EB_Cash WITH (NOLOCK)", sql)

    def test_server_lua_configs_have_30_db_threads(self) -> None:
        ch_config = CHANNEL_CONFIG.read_text(encoding="utf-8")
        lg_config = LOGIN_CONFIG.read_text(encoding="utf-8")
        gs_config = GAME_CONFIG.read_text(encoding="utf-8")

        self.assertIn("DBLayer:AddDB( DC_ACCOUNT,\t'Account_US_SERVICE.dsn',\t\t50, false )", ch_config)
        self.assertIn("DBLayer:AddDB( DC_ACCOUNT,\t'Account_US_SERVICE.dsn',\t\t50, false )", lg_config)
        self.assertIn("DBLayer:AddDB( DC_ACCOUNT,\t'Account_US_SERVICE.dsn',\t\t50, false )", gs_config)

    def test_python_optimization_scripts_parse(self) -> None:
        ast.parse(BENCHMARK_SCRIPT.read_text(encoding="utf-8"))
        ast.parse(STORAGE_OPTIMIZE_SCRIPT.read_text(encoding="utf-8"))


if __name__ == "__main__":
    unittest.main()
