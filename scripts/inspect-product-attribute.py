#!/usr/bin/env python3
"""Inspect ES_BILLING.EB_ProductAttribute schema and sample rows."""

from __future__ import annotations

import subprocess
import sys
from pathlib import Path

import importlib.util

ROOT = Path(__file__).resolve().parent.parent
spec = importlib.util.spec_from_file_location(
    "db_healthcheck", ROOT / "scripts" / "db-healthcheck.py"
)
db_healthcheck = importlib.util.module_from_spec(spec)
assert spec.loader is not None
spec.loader.exec_module(db_healthcheck)
load_env = db_healthcheck.load_env
run_docker_sql = db_healthcheck.run_docker_sql

SQL = r"""
SET NOCOUNT ON;
USE ES_BILLING;

SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'EB_ProductAttribute'
ORDER BY ORDINAL_POSITION;

SELECT TOP 5 * FROM dbo.EB_ProductAttribute;

SELECT COUNT(*) AS attribute_rows FROM dbo.EB_ProductAttribute;

EXEC dbo.EBP_ProductAttribute_SEL;
"""


def main() -> int:
    env = load_env()
    result = run_docker_sql(env, 60, SQL)
    print(result.stdout)
    if result.stderr:
        print(result.stderr, file=sys.stderr)
    return result.returncode


if __name__ == "__main__":
    raise SystemExit(main())
