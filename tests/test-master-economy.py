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

    def test_cashshop_summon_catalog_and_package_contracts(self):
        """Verify valid summon definitions remain priced, categorized, and claimable."""
        item_template_pattern = re.compile(
            r"m_ItemID\s*=\s*(\d+)\s*,(?:(?!m_ItemID\s*=).)*?"
            r"m_ItemType\s*=\s*ITEM_TYPE\[\s*\"IT_SPECIAL\"\s*\]",
            re.DOTALL,
        )
        creation_patterns = {
            "pets": (
                ELSWORD / "ServerResource" / "PetData.lua",
                re.compile(
                    r"AddPetCreateItemInfo\(\s*(\d+)\s*,\s*PET_UNIT_ID\[[^\]]+\]\s*,\s*(-?\d+)\s*\)"
                ),
            ),
            "mounts": (
                ELSWORD / "ServerResource" / "RidingPetData.lua",
                re.compile(
                    r"AddRidingPetCreateItemInfo\(\s*(\d+)\s*,\s*RIDING_PET_UNIT_ID\[[^\]]+\]\s*,\s*(-?\d+)\s*\)"
                ),
            ),
        }
        template_ids: set[int] = set()
        all_template_ids: set[int] = set()
        for filename in (
            "Resources/Item.lua",
            "ClientScript/Major/Item.lua",
            "_ClientScript/Major/Item.lua",
        ):
            item_text = read_text(ELSWORD / filename)
            template_ids.update(int(item_id) for item_id in item_template_pattern.findall(item_text))
            all_template_ids.update(int(item_id) for item_id in re.findall(r"m_ItemID\s*=\s*(\d+)", item_text))

        expected_by_type: dict[str, set[int]] = {}
        for summon_type, (data_path, pattern) in creation_patterns.items():
            permanent_ids = {
                int(item_id)
                for item_id, period in pattern.findall(read_text(data_path))
                if int(period) == -1
            }
            expected_ids = permanent_ids & template_ids
            self.assertTrue(expected_ids, f"No valid {summon_type} definitions were discovered")
            expected_by_type[summon_type] = expected_ids

        self.assertIn(500000, expected_by_type["pets"])
        self.assertIn(550000, expected_by_type["mounts"])

        price_pattern = re.compile(r"AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)")
        malformed_prose = re.compile(
            r"(?m)^(?:Obtain the Aura of Destruction|If used while in Vitality mode|"
            r"and using Destruction skills|You can enter Destruction Mode)"
        )
        for filename in ("ServerResource/CashItemPrice.lua", "GameServer/CashItemPrice.lua"):
            text = read_text(ELSWORD / filename)
            prices = {int(item_id): int(price) for item_id, price in price_pattern.findall(text)}
            self.assertFalse(malformed_prose.search(text), f"Invalid bare prose in {filename}")
            for summon_type, expected_ids in expected_by_type.items():
                missing_ids = sorted(expected_ids - prices.keys())
                self.assertFalse(missing_ids, f"Missing {summon_type} price mappings in {filename}: {missing_ids}")
                self.assertTrue(
                    all(prices[item_id] > 0 for item_id in expected_ids),
                    f"Non-positive {summon_type} price in {filename}",
                )

        restore_text = read_text(ROOT / "scripts" / "restore-cashshop.py")
        category_start = restore_text.index("def category_for")
        category_end = restore_text.index("def default_price_for_category")
        category_logic = restore_text[category_start:category_end]
        self.assertIn("permanent_summon_item_ids()", category_logic)
        self.assertIn("if item_id in pet_item_ids:", category_logic)
        self.assertIn("if item_id in mount_item_ids:", category_logic)
        self.assertLess(
            category_logic.index("permanent_summon_item_ids()"),
            category_logic.index("metadata_accessory_category(meta)"),
            "Summon definitions must override name and accessory heuristics",
        )

        package_pattern = re.compile(
            r"g_pCashItemManager:AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)\s*,"
        )
        package_pairs_by_file: dict[str, list[tuple[int, int]]] = {}
        for filename in (
            "ClientScript/Major/PackageItemData.lua",
            "Resources/PackageItemData.lua",
        ):
            active_pairs: list[tuple[int, int]] = []
            for line in read_text(ELSWORD / filename).splitlines():
                active_line = line.split("--", 1)[0]
                match = package_pattern.search(active_line)
                if match:
                    active_pairs.append((int(match.group(1)), int(match.group(2))))
            self.assertEqual(
                len(active_pairs),
                len(set(active_pairs)),
                f"Duplicate package component registrations in {filename}",
            )
            package_pairs_by_file[filename] = active_pairs

        resource_package_file = ELSWORD / "Resources/PackageItemData.lua"
        self.assertTrue(
            resource_package_file.read_bytes().startswith(b"\xef\xbb\xbf"),
            "Server package mappings must retain the UTF-8 BOM required by the native Lua loader",
        )
        resource_pairs = package_pairs_by_file["Resources/PackageItemData.lua"]
        resource_item_ids = {item_id for pair in resource_pairs for item_id in pair}
        self.assertFalse(
            resource_item_ids - all_template_ids,
            "Server package mappings reference an item absent from the active templates",
        )
        invalid_client_package_ids = {
            package_id
            for package_id, component_id in package_pairs_by_file["ClientScript/Major/PackageItemData.lua"]
            if package_id not in all_template_ids or component_id not in all_template_ids
        }
        self.assertFalse(
            {package_id for package_id, _ in resource_pairs} & invalid_client_package_ids,
            "Server package mappings must omit packages with an invalid component",
        )

        self.assertIn('encoding="utf-8-sig"', restore_text)
        self.assertIn("def active_item_template_ids()", restore_text)
        self.assertIn("def package_mapping_contract()", restore_text)
        self.assertIn("active_line = source_line.split(\"--\", 1)[0]", restore_text)
        self.assertIn("if entry.item_id not in template_item_ids or entry.item_id in invalid_packages:", restore_text)

        recovery_text = read_text(ROOT / "scripts" / "recover-cashshop-variety.py")
        self.assertIn("RIDING_PET_CREATE_PATTERN", recovery_text)
        self.assertIn("ITEM_TEMPLATE_SPECIAL_PATTERN", recovery_text)

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
        for output_parameter in (
            "@DI_ISSALE BIT = NULL OUTPUT",
            "@DT_STARTDATE SMALLDATETIME = NULL OUTPUT",
            "@DT_ENDDATE SMALLDATETIME = NULL OUTPUT",
            "@DI_ENABLEGIFT BIT = NULL OUTPUT",
            "@NO_SALEPRICE INT = NULL OUTPUT",
            "@NO_REALPRICE INT = NULL OUTPUT",
        ):
            self.assertIn(output_parameter, text, f"Gacha setup removed native product-check output: {output_parameter}")

    def test_cashshop_billing_transactions_sql(self):
        """Verify fail-safe billing transaction procedures SQL script."""
        path = DATABASE / "fix-cashshop-billing-transactions.sql"
        text = read_text(path)
        self.assertIn("EBI_BuyCashItemLocker_SET", text, "Missing EBI_BuyCashItemLocker_SET procedure in SQL")
        self.assertIn("EBI_Cash_UseFirstCash", text, "Missing EBI_Cash_UseFirstCash procedure in SQL")
        self.assertIn("EBP_Cash_Total_USERID_SEL", text, "Missing EBP_Cash_Total_USERID_SEL procedure in SQL")
        self.assertIn("EBI_Cash_UseRealCashOnly", text, "Missing EBI_Cash_UseRealCashOnly procedure in SQL")
        self.assertIn("EBI_Cash_UseBonusCashOnly", text, "Missing EBI_Cash_UseBonusCashOnly procedure in SQL")

        product_check_match = re.search(
            r"CREATE OR ALTER PROCEDURE dbo\.EBI_Buy_Product_CHK.*?\nGO",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(product_check_match, "Missing native product-check procedure")
        product_check = product_check_match.group(0)
        native_product_check_parameters = (
            "@CD_PRODUCTNO BIGINT",
            "@DI_ISSALE BIT = NULL OUTPUT",
            "@DT_STARTDATE SMALLDATETIME = NULL OUTPUT",
            "@DT_ENDDATE SMALLDATETIME = NULL OUTPUT",
            "@DI_ENABLEGIFT BIT = NULL OUTPUT",
            "@NO_SALEPRICE INT = NULL OUTPUT",
            "@NO_REALPRICE INT = NULL OUTPUT",
        )
        positions = [product_check.index(parameter) for parameter in native_product_check_parameters]
        self.assertEqual(positions, sorted(positions), "Product-check procedure no longer matches native output order")

        selector_match = re.search(
            r"CREATE OR ALTER PROCEDURE dbo\.EBP_Product_SEL.*?\nGO",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(selector_match, "Missing EBP_Product_SEL procedure")
        selector = selector_match.group(0)
        expected_columns = (
            "CONVERT(INT, CD_PRODUCTNO) AS CD_PRODUCTNO",
            "NO_PRODUCTID",
            "DI_ISSALE",
            "DI_ISEVENT",
            "DI_ISSHOW",
            "DI_ISCASHINVENSKIP",
            "ST_PRODUCTNAME",
            "CD_CATEGORYNO",
            "NO_SALEPRICE",
            "NO_REALPRICE",
            "NO_PERIOD",
            "NO_QUANTITY",
            "DI_ENABLEGIFT",
            "NO_LIMITLEVEL",
            "ST_PRODUCTNAME_LOCAL",
        )
        positions = [selector.index(column) for column in expected_columns]
        self.assertEqual(positions, sorted(positions), "Product selector column order changed")
        for unsupported_column in ("NO_LIMIT_USERUID", "DT_STARTDATE", "DT_ENDDATE"):
            self.assertNotIn(unsupported_column, selector, f"Unexpected selector column: {unsupported_column}")

        locker_selector_match = re.search(
            r"CREATE OR ALTER PROCEDURE dbo\.EBP_BuyCashItemLocker_SEL.*?\nGO",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(locker_selector_match, "Missing cash locker selector")
        locker_selector = locker_selector_match.group(0)
        locker_projection = locker_selector.split("FROM dbo.EB_BuyCashItemLocker AS L", 1)[0]
        expected_locker_columns = (
            "L.CD_TRAN_NUM",
            "L.NO_PRODUCT_NUM AS CD_PRODUCTNO",
            "L.NO_QUANTITY",
            "L.DI_PACKAGE",
            "L.NO_NUMBER_PACKAGE",
            "L.NO_FROM_UNITUID",
            "ISNULL(L.ST_GIFT_MESSAGE, N'') AS ST_GIFT_MESSAGE",
        )
        positions = [locker_projection.index(column) for column in expected_locker_columns]
        self.assertEqual(positions, sorted(positions), "Cash locker selector column order changed")
        for unexpected_column in ("L.CD_USERUID", "L.NO_SERVER_SET_ID"):
            self.assertNotIn(
                unexpected_column,
                locker_projection,
                f"Cash locker selector exposes an input-only column: {unexpected_column}",
            )

        locker_insert_match = re.search(
            r"CREATE OR ALTER PROCEDURE dbo\.EBI_BuyCashItemLocker_SET.*?\nGO",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(locker_insert_match, "Missing cash locker insert procedure")
        locker_insert = locker_insert_match.group(0)
        self.assertIn("@PackageItemCount TINYINT = 0", locker_insert)
        self.assertIn("@IsPackage, @PackageItemCount", locker_insert)
        self.assertIn("INSERT INTO dbo.EB_BuyCashItemLockerPackage", locker_insert)

        package_selector_match = re.search(
            r"CREATE OR ALTER PROCEDURE dbo\.EBP_BuyCashItemLocker_Package_SEL.*?\nGO",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(package_selector_match, "Missing native cash locker package selector")
        package_selector = package_selector_match.group(0)
        package_projection = package_selector.split("FROM dbo.EB_BuyCashItemLockerPackage", 1)[0]
        package_columns = (
            "PackageItem.CD_TRAN_NUM",
            "PackageItem.NO_PRODUCT_NUM",
        )
        positions = [package_projection.index(column) for column in package_columns]
        self.assertEqual(positions, sorted(positions), "Package selector column order changed")
        self.assertIn("Locker.CD_TRAN_NUM BETWEEN 1 AND 2000000000", package_selector)

        locker_take_match = re.search(
            r"CREATE OR ALTER PROCEDURE dbo\.EBP_BuyCashItemTake_SET.*?\nGO",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(locker_take_match, "Missing native cash locker take procedure")
        locker_take = locker_take_match.group(0)
        self.assertIn("@ClientTransactionNumber BIGINT = @CD_TRAN_NUM", locker_take)
        self.assertIn("L.CD_TRAN_NUM % CONVERT(BIGINT, 4294967296)", locker_take)
        self.assertIn("SELECT @Result AS Result", locker_take)
        self.assertIn("RETURN @Result", locker_take)

        transaction_number_match = re.search(
            r"CREATE OR ALTER PROCEDURE dbo\.EBI_TransactionNumber_INT.*?\nGO",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(transaction_number_match, "Missing Cash Shop transaction-number procedure")
        transaction_number = transaction_number_match.group(0)
        self.assertIn("NEXT VALUE FOR dbo.JoySword_CashTransactionSequence", transaction_number)
        self.assertNotIn("CONVERT(VARCHAR(8), GETDATE(), 112)", transaction_number)
        self.assertIn("CREATE SEQUENCE dbo.JoySword_CashTransactionSequence AS INT", text)
        self.assertIn("JoySword_MigrateCashLockerTransactionNumbers", text)
        self.assertIn("sys.sp_sequence_get_range", text)
        self.assertIn("CK_EB_BuyCashItemLocker_ClientSafeTransaction", text)
        self.assertIn("EB_BuyCashItemLockerPackage'),", text)
        self.assertIn("EB_BuyCashItemLocker');", text)

        locker_count_match = re.search(
            r"CREATE OR ALTER PROCEDURE dbo\.EBP_BuyCashItemLockerCount_CHK.*?\nGO",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(locker_count_match, "Missing cash locker capacity procedure")
        locker_count = locker_count_match.group(0)
        self.assertIn("JoySword_SyncCashItemLockerCount", locker_count)
        self.assertIn("SELECT @Result AS Result", locker_count)
        self.assertIn("RETURN @Result", locker_count)
        self.assertNotIn("AS BEGIN SET NOCOUNT ON; RETURN 0; END", locker_count)
        self.assertIn("NO_PRODUCT_NUM BIGINT NOT NULL", text)
        self.assertIn("EB_BuyCashItemLockerCount", text)

        for required_cash_column in (
            "ST_USERID NVARCHAR(50) NOT NULL DEFAULT N''",
            "NO_TOTAL_CHARGE_BONUS INT NOT NULL DEFAULT 0",
            "DT_FIRST_CHARGE_DATE DATETIME NOT NULL DEFAULT GETDATE()",
        ):
            self.assertIn(required_cash_column, text, f"Missing native EB_Cash column: {required_cash_column}")

        cash_initializer_match = re.search(
            r"CREATE OR ALTER PROCEDURE dbo\.JoySword_EnsureUserCashAccount.*?\nGO",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(cash_initializer_match, "Missing cash-account initializer")
        cash_initializer = cash_initializer_match.group(0)
        self.assertIn("@ST_USERID NVARCHAR(50) = N''", cash_initializer)
        for required_initializer_field in (
            "ST_USERID",
            "NO_TOTAL_CHARGE_BONUS",
            "DT_FIRST_CHARGE_DATE",
        ):
            self.assertIn(required_initializer_field, cash_initializer)

        for procedure_name in (
            "EBI_Cash_UseFirstCash",
            "EBI_Cash_UseRealCashOnly",
            "EBI_Cash_UseBonusCashOnly",
            "EBI_Cash_Charge_SET",
            "EBP_BillOrder_Bonus_SET",
        ):
            procedure_match = re.search(
                rf"CREATE OR ALTER PROCEDURE dbo\.{procedure_name}.*?\nGO",
                text,
                re.DOTALL,
            )
            self.assertIsNotNone(procedure_match, f"Missing {procedure_name} procedure")
            self.assertIn(
                "EXEC dbo.JoySword_EnsureUserCashAccount @CD_USERUID, @ST_USERID;",
                procedure_match.group(0),
                f"{procedure_name} does not preserve the account ID when initializing cash",
            )

        for procedure_name in ("EBI_Cash_Detial_SEL", "EBP_Cash_Total_USERUID_SEL"):
            procedure_match = re.search(
                rf"CREATE OR ALTER PROCEDURE dbo\.{procedure_name}.*?\nGO",
                text,
                re.DOTALL,
            )
            self.assertIsNotNone(procedure_match, f"Missing {procedure_name} procedure")
            self.assertIn(
                "EXEC dbo.JoySword_EnsureUserCashAccount @CD_USERUID;",
                procedure_match.group(0),
                f"{procedure_name} must initialize by UID without an undefined account ID",
            )

        purchase_log_match = re.search(
            r"CREATE OR ALTER PROCEDURE dbo\.EBP_BuyItemLog_INS.*?\nGO",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(purchase_log_match, "Missing purchase audit log procedure")
        purchase_log = purchase_log_match.group(0)
        native_purchase_log_parameters = (
            "@ST_SERVERORDERID",
            "@ST_GROUPORDERID",
            "@CD_USERUID",
            "@ST_USERID",
            "@NO_SERVER_SET_ID",
            "@NO_UNITUID",
            "@NO_LEVEL",
            "@NO_PRODUCT_NUM",
            "@NO_QUANTITY",
            "@NO_PRICE",
            "@DI_ITEM_KEEP",
            "@NO_TO_USERUID",
            "@NO_TO_UNITUID",
            "@ST_GIFT_MESSAGE",
            "@DI_BUY_CASH",
            "@NO_CHANNEL_CODE",
        )
        positions = [purchase_log.index(parameter) for parameter in native_purchase_log_parameters]
        self.assertEqual(positions, sorted(positions), "Purchase log no longer accepts native argument order")
        for optional_parameter in (
            "@NO_TOTAL_CASH INT = 0",
            "@CD_TRAN_NUM BIGINT = 0",
            "@NO_REMAIN_CASH INT = 0",
            "@NO_REMAIN_BONUS INT = 0",
        ):
            self.assertIn(optional_parameter, purchase_log, f"Missing defaulted purchase-log parameter: {optional_parameter}")
        self.assertIn("IF @CD_TRAN_NUM = 0", purchase_log)
        self.assertIn("SELECT CAST(0 AS INT) AS Result", purchase_log)

        for installer in (
            ROOT / "scripts" / "setup-offline.bat",
            ROOT / "scripts" / "setup-offline.sh",
            ROOT / "scripts" / "install-post-restore.ps1",
            ROOT / "Start-Server-Automatic.ps1",
        ):
            self.assertIn(
                "fix-cashshop-billing-transactions.sql",
                read_text(installer),
                f"Missing Cash Shop selector installer in {installer}",
            )
            self.assertIn(
                "fix-cash-deduction.sql",
                read_text(installer),
                f"Missing Cash Shop purchase installer in {installer}",
            )

    def test_cash_deduction_and_price_validation_sql(self):
        """Verify EBP_BuyItem validation, native argument order, and positive cash logs."""
        path = DATABASE / "fix-cash-deduction.sql"
        text = read_text(path)
        self.assertIn("NO_SALEPRICE", text, "Missing NO_SALEPRICE lookup in EBP_BuyItem SQL")
        self.assertIn("@NO_USE_CASH = (@NO_BEFOR_CASH - @NO_REMAIN_CASH)", text, "Missing positive NO_USE_CASH calculation in SQL")

        buy_item_header_match = re.search(
            r"CREATE OR ALTER PROCEDURE \[dbo\]\.\[EBP_BuyItem\](.*?)\nAS",
            text,
            re.DOTALL,
        )
        self.assertIsNotNone(buy_item_header_match, "Missing EBP_BuyItem procedure header")
        buy_item_header = buy_item_header_match.group(1)
        native_purchase_parameters = (
            "@ST_SERVERORDERID",
            "@ST_GROUPORDERID",
            "@CD_USERUID",
            "@ST_USERID",
            "@NO_SERVER_SET_ID",
            "@NO_UNITUID",
            "@NO_LEVEL",
            "@NO_PRODUCT_NUM",
            "@NO_QUANTITY",
            "@NO_PRICE",
            "@DI_ITEM_KEEP",
            "@NO_TO_USERUID",
            "@NO_TO_UNITUID",
            "@ST_GIFT_MESSAGE",
            "@DI_BUY_CASH",
            "@NO_CHANNEL_CODE",
        )
        positions = [buy_item_header.index(parameter) for parameter in native_purchase_parameters]
        self.assertEqual(positions, sorted(positions), "EBP_BuyItem no longer matches native argument order")
        self.assertLess(
            buy_item_header.index("@NO_CHANNEL_CODE"),
            buy_item_header.index("@NO_TOTAL_CASH"),
            "Channel code must be the native sixteenth argument",
        )


if __name__ == "__main__":
    unittest.main()


