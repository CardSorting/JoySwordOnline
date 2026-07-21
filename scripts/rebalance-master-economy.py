#!/usr/bin/env python3
"""Master Orchestrator for JoySword Economy Rebalancing (Phases 1-10 Sovereign Masterpiece Engine).

Runs and verifies all economic sub-systems:
1. Cash Shop Price Normalization & Tiering
2. Gacha Rate Engine (0.8% SSR / 6.0% SR / 93.2% R), Pity Spark Exchange (Lv.8-12), & Avatar Salvage
3. Zero-Destruction Enhancement Curve (+1 to +12)
4. Permanent 100% ED, EXP, and AP Multipliers in GameSysValTable.lua
5. 200% Comeback & Global Event Multipliers in EventData.lua
6. 250x Monster ED Drop Scaling in DropTable.lua
7. 5x Field Middle-Boss Drop Scaling in FieldBonusDrop.lua
8. Dungeon Boss ED Drop Escalation (50k-250k ED per kill) in DropTable.lua
9. Equipment Resale Value Normalization in Item.lua
10. Equipment Dismantling Recycling & Gacha Crafting Loop
11. Bank & Inventory ED Storage Expansion Cost Normalization
12. NPC Echo & Ariel Shop Inventory, Magic Amulets Lv.7-12, Rare Mount Cubes, & ED Price Alignment
13. Daily Cash, Daily ED, 7-Day Login Streak, Weekly Quest, Monthly Pass, 50-Tier BattlePass, 10-Tier VIP Loyalty, Account Level Milestones, & Winback DB Sync
"""

from __future__ import annotations

import sys
import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SCRIPTS_DIR = ROOT / "scripts"

SCRIPTS = [
    (SCRIPTS_DIR / "rebalance-cashshop-economy.py", ["--apply"]),
    (SCRIPTS_DIR / "further_improve_iceburners.py", []),
    (SCRIPTS_DIR / "rebalance-enhancement-curve.py", []),
    (SCRIPTS_DIR / "rebalance-gamesysval.py", []),
    (SCRIPTS_DIR / "rebalance-event-multipliers.py", []),
    (SCRIPTS_DIR / "rebalance-monster-ed-drops.py", []),
    (SCRIPTS_DIR / "rebalance-field-bonus-drops.py", []),
    (SCRIPTS_DIR / "rebalance-boss-ed-drops.py", []),
    (SCRIPTS_DIR / "rebalance-equipment-resale-values.py", []),
    (SCRIPTS_DIR / "rebalance-dismantle-recycling.py", []),
    (SCRIPTS_DIR / "rebalance-ed-storage-costs.py", []),
    (SCRIPTS_DIR / "update-echo-npc-shop.py", []),
    (SCRIPTS_DIR / "install-cash-allowance.py", []),
    (SCRIPTS_DIR / "install-ed-allowance.py", []),
    (SCRIPTS_DIR / "install-login-streak.py", []),
    (SCRIPTS_DIR / "install-winback-package.py", []),
    (SCRIPTS_DIR / "install-weekly-quest-rewards.py", []),
    (SCRIPTS_DIR / "install-monthly-pass-system.py", []),
    (SCRIPTS_DIR / "install-battlepass-system.py", []),
    (SCRIPTS_DIR / "install-vip-tier-system.py", []),
    (SCRIPTS_DIR / "install-account-level-rewards.py", []),
]


def run_subscript(script_path: Path, args: list[str]) -> bool:
    if not script_path.exists():
        print(f"Error: missing script {script_path.relative_to(ROOT)}", file=sys.stderr)
        return False
    
    cmd = [sys.executable, str(script_path), *args]
    print(f"\n---> Executing {script_path.name} {' '.join(args)}...")
    res = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True)
    if res.stdout:
        print(res.stdout.strip())
    if res.returncode != 0:
        print(f"FAILED: {script_path.name} exited with code {res.returncode}", file=sys.stderr)
        if res.stderr:
            print(res.stderr.strip(), file=sys.stderr)
        return False
    return True


def main() -> int:
    print("==========================================================")
    print("      JOYSWORD MASTER GAME ECONOMY REBALANCE ENGINE       ")
    print("==========================================================")
    
    success_count = 0
    for script_path, args in SCRIPTS:
        if run_subscript(script_path, args):
            success_count += 1
        else:
            print(f"\nMaster rebalance halted due to failure in {script_path.name}")
            return 1

    print("\n==========================================================")
    print(f"SUCCESS: All {success_count}/{len(SCRIPTS)} economic sub-systems executed & synced!")
    print("  - Cash Shop Pricing Normalized")
    print("  - Gacha Rates (0.8% SSR / 6% SR / 93.2% R), Pity Spark (Lv.8-12), & Avatar Salvage Live")
    print("  - Enhancement Curve (Zero Destruction / Zero Reset) Applied")
    print("  - Permanent +100% ED & EXP Bonus Multipliers Active")
    print("  - 200% Comeback & Global Event Drop/EXP Multipliers Active")
    print("  - 250x Monster ED Drop Scaling Applied")
    print("  - 5x Field Middle-Boss Drop Scaling Applied")
    print("  - Dungeon Boss ED Drop Escalation Applied (50k-250k ED)")
    print("  - Equipment Vendor Resale Values Upgraded")
    print("  - Equipment Dismantling Recycling Loop Live")
    print("  - Storage Expansion Costs Normalized (Max 5M ED)")
    print("  - NPC Echo & Ariel Shops Updated with Magic Amulets Lv.7-12 & Rare Mount Cubes")
    print("  - Daily Cash, ED, Login Streak, Weekly Quest, Monthly Pass, BattlePass, VIP Tier, Account Level, & Winback DB Sync")
    print("==========================================================")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
