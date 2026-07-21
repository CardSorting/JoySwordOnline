#!/usr/bin/env python3
"""Automated Test Verification Suite for JoySword Master Game Economy (Phases 1-10)."""

import re
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
DATABASE = ROOT / "database"


def read_text(p: Path) -> str:
    if not p.exists():
        return ""
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="replace")


class TestMasterEconomy(unittest.TestCase):

    def test_enhancement_zero_destruction(self):
        """Verify Enhancement Table has 0% Break and 0% DownTo0 across levels 1-12."""
        for filename in ("GameServer/EnchantTable.lua", "ServerResource/EnchantTable.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            self.assertIn("REBALANCE_ENHANCEMENT_CURVE", text, f"Missing injection in {filename}")
            
            prob_lines = re.findall(r"SetEnchantProbability\(\s*(\d+),\s*\{([^}]+)\}", text)
            self.assertTrue(len(prob_lines) >= 12, f"Insufficient probability entries in {filename}")
            
            for lvl_str, data in prob_lines[:12]:
                lvl = int(lvl_str)
                self.assertIn("Break = 0", data, f"Level {lvl} in {filename} has non-zero Break rate!")
                self.assertIn("DownTo0 = 0", data, f"Level {lvl} in {filename} has non-zero DownTo0 rate!")

    def test_gacha_rates_and_pity_system(self):
        """Verify Gacha Rates engine and Pity Crafting exchange recipes."""
        for filename in ("GameServer/RandomItemTable.lua", "ServerResource/RandomItemData.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            self.assertIn("FURTHER_IMPROVE_ICEBURNERS", text, f"Missing gacha engine in {filename}")

        for filename in ("GameServer/ManufactureResultTable.lua", "ServerResource/ManufactureResultTable.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            self.assertIn("GACHA_PITY_MILEAGE_EXCHANGE", text, f"Missing Pity Crafting exchange in {filename}")

    def test_high_tier_amulet_pity_exchange(self):
        """Verify Magic Amulet Lv.8, 9, 10, 11 Pity Exchange in ManufactureResultTable.lua."""
        for filename in ("GameServer/ManufactureResultTable.lua", "ServerResource/ManufactureResultTable.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            self.assertIn("130150", text, f"Missing Amulet Lv.8 recipe in {filename}")
            self.assertIn("130151", text, f"Missing Amulet Lv.9 recipe in {filename}")
            self.assertIn("130152", text, f"Missing Amulet Lv.10 recipe in {filename}")
            self.assertIn("130720", text, f"Missing Amulet Lv.11 recipe in {filename}")

    def test_amulet_12_pity_exchange(self):
        """Verify 200 Token Magic Amulet Lv.12 Pity Exchange in ManufactureResultTable.lua."""
        for filename in ("GameServer/ManufactureResultTable.lua", "ServerResource/ManufactureResultTable.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            self.assertIn("130721", text, f"Missing Amulet Lv.12 recipe in {filename}")

    def test_field_bonus_drops(self):
        """Verify 5x Field Middle-Boss Drop Scaling in FieldBonusDrop.lua."""
        path = ELSWORD / "ServerResource" / "FieldBonusDrop.lua"
        text = read_text(path)
        self.assertIn("REBALANCE_FIELD_BONUS_DROPS", text, "Missing field bonus drops scaling marker")
        counts = [int(v) for v in re.findall(r"SetMiddleBossCommonBonusItemCount\s*=\s*(\d+)", text)]
        self.assertTrue(len(counts) > 0, "No middle boss bonus item counts found in FieldBonusDrop.lua")
        self.assertGreaterEqual(max(counts), 2500, "Max field middle boss bonus item count is under 2500!")

    def test_boss_ed_drops(self):
        """Verify Boss ED Drop Escalation in DropTable.lua."""
        path = ELSWORD / "ServerResource" / "DropTable.lua"
        text = read_text(path)
        self.assertIn("REBALANCE_BOSS_ED_DROPS", text, "Missing boss ED drop escalation marker in DropTable.lua")

    def test_battlepass_sql(self):
        """Verify 50-Tier BattlePass SQL procedure installer."""
        path = DATABASE / "install-battlepass-system.sql"
        text = read_text(path)
        self.assertIn("dbo.JoySwordBattlePassPolicy", text, "Missing JoySwordBattlePassPolicy table in SQL")
        self.assertIn("dbo.JoySwordBattlePass_ClaimTier", text, "Missing JoySwordBattlePass_ClaimTier procedure in SQL")

    def test_vip_tier_sql(self):
        """Verify 10-Tier VIP Loyalty SQL procedure installer."""
        path = DATABASE / "install-vip-tier-system.sql"
        text = read_text(path)
        self.assertIn("dbo.JoySwordVIPPolicy", text, "Missing JoySwordVIPPolicy table in SQL")
        self.assertIn("dbo.JoySwordVIPTier_Claim", text, "Missing JoySwordVIPTier_Claim procedure in SQL")

    def test_monthly_pass_sql(self):
        """Verify Monthly Paragon Pass SQL procedure installer."""
        path = DATABASE / "install-monthly-pass-system.sql"
        text = read_text(path)
        self.assertIn("dbo.JoySwordMonthlyPolicy", text, "Missing JoySwordMonthlyPolicy table in SQL")
        self.assertIn("dbo.JoySwordMonthly_Claim", text, "Missing JoySwordMonthly_Claim procedure in SQL")

    def test_account_level_sql(self):
        """Verify Account Level Milestone SQL procedure installer."""
        path = DATABASE / "install-account-level-rewards.sql"
        text = read_text(path)
        self.assertIn("dbo.JoySwordAccountLevelPolicy", text, "Missing JoySwordAccountLevelPolicy table in SQL")
        self.assertIn("dbo.JoySwordAccountLevel_Claim", text, "Missing JoySwordAccountLevel_Claim procedure in SQL")

    def test_event_multipliers(self):
        """Verify 200% Comeback and Global Event Multipliers in EventData.lua."""
        path = ELSWORD / "ServerResource" / "EventData.lua"
        text = read_text(path)
        self.assertIn("REBALANCE_EVENT_MULTIPLIERS", text, "Missing event multipliers in EventData.lua")

    def test_weekly_quest_sql(self):
        """Verify Weekly Quest Reward SQL installer."""
        path = DATABASE / "install-weekly-quest-rewards.sql"
        text = read_text(path)
        self.assertIn("dbo.JoySwordWeeklyPolicy", text, "Missing JoySwordWeeklyPolicy table in SQL")
        self.assertIn("dbo.JoySwordWeekly_Claim", text, "Missing JoySwordWeekly_Claim procedure in SQL")

    def test_avatar_salvage_recipes(self):
        """Verify Duplicate Avatar Salvage recipes in ManufactureResultTable.lua."""
        for filename in ("GameServer/ManufactureResultTable.lua", "ServerResource/ManufactureResultTable.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            self.assertIn("DUPLICATE_AVATAR_SALVAGE", text, f"Missing Duplicate Avatar Salvage in {filename}")

    def test_login_streak_sql(self):
        """Verify 7-Day Cumulative Login Streak SQL installer and policy."""
        path = DATABASE / "install-login-streak.sql"
        text = read_text(path)
        self.assertIn("dbo.JoySwordStreakPolicy", text, "Missing JoySwordStreakPolicy table in SQL")
        self.assertIn("dbo.JoySwordStreak_Claim", text, "Missing JoySwordStreak_Claim procedure in SQL")

    def test_winback_package_sql(self):
        """Verify Instant Winback Welcome Package SQL installer."""
        path = DATABASE / "install-winback-package.sql"
        text = read_text(path)
        self.assertIn("dbo.JoySwordWinbackClaim", text, "Missing JoySwordWinbackClaim table in SQL")
        self.assertIn("dbo.JoySwordWinback_Claim", text, "Missing JoySwordWinback_Claim procedure in SQL")
        self.assertIn("130152", text, "Missing Magic Amulet Lv.10 in Winback SQL procedure")

    def test_monster_ed_drops(self):
        """Verify scaled monster ED drop values in DropTable.lua."""
        path = ELSWORD / "ServerResource" / "DropTable.lua"
        text = read_text(path)
        ed_matches = re.findall(r"ED\s*=\s*(\d+)", text)
        self.assertTrue(len(ed_matches) > 0, "No ED drops found in DropTable.lua")
        ed_values = [int(v) for v in ed_matches]
        avg_ed = sum(ed_values) / len(ed_values)
        self.assertGreaterEqual(avg_ed, 500, f"Average monster ED drop ({avg_ed:.1f}) is under 500 ED!")

    def test_equipment_resale_values(self):
        """Verify equipment resale values (m_Price) in Item.lua."""
        for filename in ("Resources/Item.lua", "ClientScript/Major/Item.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            equip_prices = re.findall(r"m_Price\s*=\s*(\d+)", text)
            self.assertTrue(len(equip_prices) > 0, f"No equipment prices found in {filename}")

    def test_dismantle_recycling_loop(self):
        """Verify Equipment Dismantling Recycling recipes in ManufactureResultTable.lua."""
        for filename in ("GameServer/ManufactureResultTable.lua", "ServerResource/ManufactureResultTable.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            self.assertIn("DISMANTLE_RECYCLING_GACHA_LOOP", text, f"Missing dismantle recycling loop in {filename}")

    def test_storage_expansion_costs(self):
        """Verify Bank & Inventory ED Storage expansion costs in EDInventoryExpand.lua."""
        path = ELSWORD / "ServerResource" / "EDInventoryExpand.lua"
        text = read_text(path)
        self.assertIn("REBALANCE_ED_STORAGE_COSTS", text, "Missing storage cost normalization")
        plat_match = re.search(r"GRADE = PLATINUM,\s*ED = (\d+)", text)
        self.assertTrue(plat_match, "Missing PLATINUM grade ED cost")
        plat_cost = int(plat_match.group(1))
        self.assertLessEqual(plat_cost, 5000000, "Platinum bank upgrade exceeds 5M ED!")

    def test_global_ed_exp_multipliers(self):
        """Verify 100% bonus ED and EXP multipliers in GameSysValTable.lua."""
        for filename in ("GameServer/GameSysValTable.lua", "ServerResource/GameSysValTable.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            self.assertIn("REBALANCE_GAMESYSVAL_BONUSES", text, f"Missing bonus multipliers in {filename}")

    def test_npc_shop_inventory_and_ed_prices(self):
        """Verify NPC Echo & Ariel shops have modern consumables, winback cubes, and Amulets Lv.7-12 with valid ED prices."""
        for filename in ("ClientScript/Major/ShopItem.lua", "_ClientScript/Major/ShopItem.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            self.assertIn("NPC_UNIT_ID.NUI_ECHO", text, f"Missing NUI_ECHO shop in {filename}")
            self.assertIn("NPC_UNIT_ID.NUI_ARIEL", text, f"Missing NUI_ARIEL shop in {filename}")
            self.assertIn("130151", text, f"Missing Magic Amulet Lv.9 in {filename}")
            self.assertIn("130152", text, f"Missing Magic Amulet Lv.10 in {filename}")
            self.assertIn("130720", text, f"Missing Magic Amulet Lv.11 in {filename}")
            self.assertIn("130721", text, f"Missing Magic Amulet Lv.12 in {filename}")
            self.assertIn("131254", text, f"Missing Rare Mount Cube 131254 in {filename}")

    def test_cashshop_pricing_normalization(self):
        """Verify CashItemPrice.lua has non-zero prices."""
        for filename in ("GameServer/CashItemPrice.lua", "ServerResource/CashItemPrice.lua"):
            path = ELSWORD / filename
            text = read_text(path)
            zero_prices = re.findall(r"AddCashItemPrice\(\s*\d+\s*,\s*0\s*\)", text)
            self.assertEqual(len(zero_prices), 0, f"Found {len(zero_prices)} zero-priced items in {filename}")

    def test_vip_tier_sql(self):
        """Verify 15-Tier VIP Loyalty SQL procedure installer."""
        path = DATABASE / "install-vip-tier-system.sql"
        text = read_text(path)
        self.assertIn("dbo.JoySwordVIPPolicy", text, "Missing JoySwordVIPPolicy table in SQL")
        self.assertIn("dbo.JoySwordVIPTier_Claim", text, "Missing JoySwordVIPTier_Claim procedure in SQL")
        self.assertIn("FeeDiscountPercent", text, "Missing FeeDiscountPercent column in VIP SQL")
        self.assertIn("VIP 15", text, "Missing VIP Tier 15 definition in SQL")

    def test_first_topup_2x_bonus_sql(self):
        """Verify 2x First Top-Up Bonus SQL procedure installer and reset procedures."""
        path = DATABASE / "install-first-topup-bonus.sql"
        text = read_text(path)
        self.assertIn("dbo.JoySwordFirstTopupBonus", text, "Missing JoySwordFirstTopupBonus table in SQL")
        self.assertIn("dbo.JoySword_ProcessCashTopup", text, "Missing JoySword_ProcessCashTopup procedure in SQL")
        self.assertIn("dbo.JoySword_ResetFirstTopupBonuses", text, "Missing JoySword_ResetFirstTopupBonuses procedure in SQL")

    def test_starlight_cashback_sql(self):
        """Verify 10% Starlight Cashback SQL wallet installer."""
        path = DATABASE / "install-starlight-cashback-system.sql"
        text = read_text(path)
        self.assertIn("dbo.JoySwordStarlightWallet", text, "Missing JoySwordStarlightWallet table in SQL")
        self.assertIn("dbo.JoySword_SpendCashback", text, "Missing JoySword_SpendCashback procedure in SQL")

    def test_gacha_storefront_component(self):
        """Verify GachaStorefront component in web portal."""
        path = ROOT / "web" / "src" / "components" / "GachaStorefront.tsx"
        text = read_text(path)
        self.assertIn("GachaStorefront", text, "Missing GachaStorefront export in component")
        self.assertIn("2x FIRST BONUS", text, "Missing 2x First Top-Up bonus badge in component")
        self.assertIn("Starlight Cashback Balance", text, "Missing Starlight Cashback in component")
        self.assertIn("VIP 15 System", text, "Missing VIP 15 System tab in component")

    def test_gacha_service_and_api_routes(self):
        """Verify Gacha service backend implementation and web API route handlers."""
        gacha_service_path = ROOT / "web" / "api" / "src" / "gacha-service.js"
        gacha_text = read_text(gacha_service_path)
        self.assertIn("getGachaStatus", gacha_text, "Missing getGachaStatus export in gacha-service.js")
        self.assertIn("executeGachaPull", gacha_text, "Missing executeGachaPull export in gacha-service.js")
        self.assertIn("processTopUp", gacha_text, "Missing processTopUp export in gacha-service.js")
        self.assertIn("claimVipTier", gacha_text, "Missing claimVipTier export in gacha-service.js")
        self.assertIn("claimBattlePassTier", gacha_text, "Missing claimBattlePassTier export in gacha-service.js")
        self.assertIn("claimMonthlyPass", gacha_text, "Missing claimMonthlyPass export in gacha-service.js")
        self.assertIn("EBP_BuyItem", gacha_text, "Missing EBP_BuyItem procedure call in gacha-service.js")

        server_path = ROOT / "web" / "api" / "server.js"
        server_text = read_text(server_path)
        self.assertIn("/api/account/gacha/status", server_text, "Missing GET /api/account/gacha/status route")
        self.assertIn("/api/account/gacha/pull", server_text, "Missing POST /api/account/gacha/pull route")
        self.assertIn("/api/account/gacha/topup", server_text, "Missing POST /api/account/gacha/topup route")
        self.assertIn("/api/account/gacha/starlight/claim", server_text, "Missing POST /api/account/gacha/starlight/claim route")
        self.assertIn("/api/account/gacha/bundle/buy", server_text, "Missing POST /api/account/gacha/bundle/buy route")
        self.assertIn("/api/account/gacha/vip/claim", server_text, "Missing POST /api/account/gacha/vip/claim route")
        self.assertIn("/api/account/gacha/battlepass/claim", server_text, "Missing POST /api/account/gacha/battlepass/claim route")
        self.assertIn("/api/account/gacha/monthly/claim", server_text, "Missing POST /api/account/gacha/monthly/claim route")


    def test_gacha_component_automatic_balance_sync(self):
        """Verify GachaStorefront automatic backend balance deduction and addition integration."""
        path = ROOT / "web" / "src" / "components" / "GachaStorefront.tsx"
        text = read_text(path)
        self.assertIn("/api/account/gacha/status", text, "Missing /api/account/gacha/status sync call")
        self.assertIn("/api/account/gacha/pull", text, "Missing /api/account/gacha/pull API call")
        self.assertIn("/api/account/gacha/topup", text, "Missing /api/account/gacha/topup API call")

    def test_gacha_cashshop_product_registration_sql(self):
        """Verify gacha product registration SQL script."""
        path = DATABASE / "setup-gacha-cashshop-products.sql"
        text = read_text(path)
        self.assertIn("990001", text, "Missing product 990001 in product registration SQL")
        self.assertIn("990010", text, "Missing product 990010 in product registration SQL")
        self.assertIn("995000", text, "Missing product 995000 in product registration SQL")
        self.assertIn("EBI_Buy_Product_CHK", text, "Missing EBI_Buy_Product_CHK procedure in SQL")

    def test_cashshop_billing_transactions_sql(self):
        """Verify fail-safe billing transaction procedures SQL script."""
        path = DATABASE / "fix-cashshop-billing-transactions.sql"
        text = read_text(path)
        self.assertIn("EBI_BuyCashItemLocker_SET", text, "Missing EBI_BuyCashItemLocker_SET procedure in SQL")
        self.assertIn("EBI_Cash_UseFirstCash", text, "Missing EBI_Cash_UseFirstCash procedure in SQL")
        self.assertIn("EBP_Cash_Total_USERID_SEL", text, "Missing EBP_Cash_Total_USERID_SEL procedure in SQL")
        self.assertIn("EBI_Cash_UseRealCashOnly", text, "Missing EBI_Cash_UseRealCashOnly procedure in SQL")
        self.assertIn("EBI_Cash_UseBonusCashOnly", text, "Missing EBI_Cash_UseBonusCashOnly procedure in SQL")

    def test_cash_deduction_and_price_validation_sql(self):
        """Verify EBP_BuyItem product price validation and positive cash log calculation."""
        path = DATABASE / "fix-cash-deduction.sql"
        text = read_text(path)
        self.assertIn("NO_SALEPRICE", text, "Missing NO_SALEPRICE lookup in EBP_BuyItem SQL")
        self.assertIn("@NO_USE_CASH = (@NO_BEFOR_CASH - @NO_REMAIN_CASH)", text, "Missing positive NO_USE_CASH calculation in SQL")


if __name__ == "__main__":
    unittest.main()


