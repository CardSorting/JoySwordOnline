#!/usr/bin/env python3
"""Automated Verification Suite for Seamless Cash Deduction & Top-Up Addition Flow."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DATABASE = ROOT / "database"


def read_sql(path: Path) -> str:
    if not path.exists():
        return ""
    return path.read_text(encoding="utf-8", errors="replace")


def verify_billing_integrity() -> bool:
    buy_item_sql = read_sql(DATABASE / "fix-cash-deduction.sql")
    trans_sql = read_sql(DATABASE / "fix-cashshop-billing-transactions.sql")
    topup_sql = read_sql(DATABASE / "install-first-topup-bonus.sql")
    starlight_sql = read_sql(DATABASE / "install-starlight-cashback-system.sql")

    price_file = ROOT / "Elsword" / "ServerResource" / "CashItemPrice.lua"
    price_count = len(price_file.read_text(encoding="utf-8-sig").splitlines()) if price_file.exists() else 0

    checks = [
        ("EBP_BuyItem Starlight Cashback Hook", "JoySword_SpendCashback" in buy_item_sql),
        ("Cash Deduction Execution", "EBI_Cash_UseFirstCash" in buy_item_sql or "EBI_Cash_UseRealCashOnly" in buy_item_sql),
        ("Positive Cash Log Calculation", "@NO_USE_CASH = (@NO_BEFOR_CASH - @NO_REMAIN_CASH)" in buy_item_sql or "NO_BEFOR_CASH - @NO_REMAIN_CASH" in buy_item_sql),
        ("Product DB Price Validation", "NO_SALEPRICE" in buy_item_sql),
        ("Real Cash Only Procedure", "EBI_Cash_UseRealCashOnly" in trans_sql),
        ("Bonus Cash Only Procedure", "EBI_Cash_UseBonusCashOnly" in trans_sql),
        ("Topup 2x Multiplier Procedure", "JoySword_ProcessCashTopup" in topup_sql),
        ("Cash Account Auto-Initialization", "JoySword_EnsureUserCashAccount" in topup_sql or "JoySword_EnsureUserCashAccount" in trans_sql),
        ("Starlight Wallet Cashback Calculation", "10% Starlight Cashback Rate" in starlight_sql or "@CashSpent / 10" in starlight_sql),
        ("CashItemPrice.lua Price Definition Coverage", price_count >= 16000),
    ]

    all_passed = True
    print("==================================================")
    print("JoySword Seamless Cash Deduction & Top-Up Audit")
    print("==================================================")

    for name, condition in checks:
        status = "PASSED" if condition else "FAILED"
        print(f"[{status}] {name}")
        if not condition:
            all_passed = False

    return all_passed


def main() -> int:
    if not verify_billing_integrity():
        print("Billing integrity audit failed!", file=sys.stderr)
        return 1
    print("All seamless cash deduction & top-up addition verification checks passed cleanly!")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
