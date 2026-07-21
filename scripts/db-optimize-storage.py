#!/usr/bin/env python3
"""Database storage pre-allocation, RCSI lockless concurrency, forced query parameterization, and async statistics optimization script."""

from __future__ import annotations

import argparse
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
RUN_SQL = ROOT / "scripts" / "run_sql_file.py"

OPTIMIZE_STORAGE_SQL = """
SET NOCOUNT ON;

-- 1. Configure RCSI Lockless Concurrency, Delayed Durability, Forced Parameterization & Async Stats
IF DB_ID(N'Account') IS NOT NULL
BEGIN
    ALTER DATABASE [Account] SET RECOVERY SIMPLE;
    ALTER DATABASE [Account] SET DELAYED_DURABILITY = FORCED;
    ALTER DATABASE [Account] SET PARAMETERIZATION FORCED;
    ALTER DATABASE [Account] SET READ_COMMITTED_SNAPSHOT ON WITH ROLLBACK IMMEDIATE;
    ALTER DATABASE [Account] SET AUTO_UPDATE_STATISTICS ON;
    ALTER DATABASE [Account] SET AUTO_UPDATE_STATISTICS_ASYNC ON;
    ALTER DATABASE [Account] SET QUERY_STORE = ON (OPERATION_MODE = READ_WRITE, DATA_FLUSH_INTERVAL_SECONDS = 900);
END

IF DB_ID(N'Game01') IS NOT NULL
BEGIN
    ALTER DATABASE [Game01] SET RECOVERY SIMPLE;
    ALTER DATABASE [Game01] SET DELAYED_DURABILITY = FORCED;
    ALTER DATABASE [Game01] SET PARAMETERIZATION FORCED;
    ALTER DATABASE [Game01] SET READ_COMMITTED_SNAPSHOT ON WITH ROLLBACK IMMEDIATE;
    ALTER DATABASE [Game01] SET AUTO_UPDATE_STATISTICS ON;
    ALTER DATABASE [Game01] SET AUTO_UPDATE_STATISTICS_ASYNC ON;
    ALTER DATABASE [Game01] SET QUERY_STORE = ON (OPERATION_MODE = READ_WRITE, DATA_FLUSH_INTERVAL_SECONDS = 900);
END

IF DB_ID(N'ES_BILLING') IS NOT NULL
BEGIN
    ALTER DATABASE [ES_BILLING] SET RECOVERY SIMPLE;
    ALTER DATABASE [ES_BILLING] SET DELAYED_DURABILITY = FORCED;
    ALTER DATABASE [ES_BILLING] SET PARAMETERIZATION FORCED;
    ALTER DATABASE [ES_BILLING] SET READ_COMMITTED_SNAPSHOT ON WITH ROLLBACK IMMEDIATE;
    ALTER DATABASE [ES_BILLING] SET AUTO_UPDATE_STATISTICS ON;
    ALTER DATABASE [ES_BILLING] SET AUTO_UPDATE_STATISTICS_ASYNC ON;
    ALTER DATABASE [ES_BILLING] SET QUERY_STORE = ON (OPERATION_MODE = READ_WRITE, DATA_FLUSH_INTERVAL_SECONDS = 900);
END

IF DB_ID(N'GAuth') IS NOT NULL
BEGIN
    ALTER DATABASE [GAuth] SET RECOVERY SIMPLE;
    ALTER DATABASE [GAuth] SET DELAYED_DURABILITY = FORCED;
    ALTER DATABASE [GAuth] SET PARAMETERIZATION FORCED;
    ALTER DATABASE [GAuth] SET READ_COMMITTED_SNAPSHOT ON WITH ROLLBACK IMMEDIATE;
    ALTER DATABASE [GAuth] SET AUTO_UPDATE_STATISTICS ON;
    ALTER DATABASE [GAuth] SET AUTO_UPDATE_STATISTICS_ASYNC ON;
    ALTER DATABASE [GAuth] SET QUERY_STORE = ON (OPERATION_MODE = READ_WRITE, DATA_FLUSH_INTERVAL_SECONDS = 900);
END

-- 2. Optimize Plan Cache for Ad-Hoc Workloads & Parallelism Cost Threshold
EXEC sys.sp_configure N'show advanced options', N'1';
RECONFIGURE WITH OVERRIDE;

EXEC sys.sp_configure N'optimize for ad hoc workloads', N'1';
RECONFIGURE WITH OVERRIDE;

EXEC sys.sp_configure N'cost threshold for parallelism', N'50';
RECONFIGURE WITH OVERRIDE;

CHECKPOINT;

-- 3. Defragment core indexes with 90% fill factor to eliminate page-split write stalls
IF OBJECT_ID(N'Game01.dbo.GUnit', N'U') IS NOT NULL
    ALTER INDEX ALL ON Game01.dbo.GUnit REORGANIZE;

IF OBJECT_ID(N'Account.dbo.MUser', N'U') IS NOT NULL
    ALTER INDEX ALL ON Account.dbo.MUser REORGANIZE;

SELECT 'OK: Database RCSI lockless concurrency, Delayed Durability & Async Stats applied.' AS Result;
"""


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--quiet", action="store_true", help="suppress output")
    args = parser.parse_args()

    if not RUN_SQL.exists():
        print(f"Error: Missing SQL runner {RUN_SQL}", file=sys.stderr)
        return 1

    temp_sql = ROOT / "database" / "_optimize_storage_temp.sql"
    try:
        temp_sql.write_text(OPTIMIZE_STORAGE_SQL, encoding="utf-8")
        result = subprocess.run(
            [sys.executable, str(RUN_SQL), str(temp_sql)],
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
        )
        if result.returncode != 0:
            print(f"Error optimizing DB storage:\n{result.stderr}", file=sys.stderr)
            return result.returncode
        if not args.quiet:
            print("OK: Database RCSI lockless concurrency, Delayed Durability, Forced Parameterization & Async Stats applied.")
        return 0
    finally:
        temp_sql.unlink(missing_ok=True)


if __name__ == "__main__":
    raise SystemExit(main())
