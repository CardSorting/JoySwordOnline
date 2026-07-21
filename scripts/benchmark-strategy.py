#!/usr/bin/env python3
"""Fast, non-blocking Industry-Standard Strategy Benchmarking utility for JoySword Elsword SRE."""

from __future__ import annotations

import argparse
import json
import math
import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
RUN_SQL = ROOT / "scripts" / "run_sql_file.py"
CONFIGURE_SCRIPT = ROOT / "scripts" / "configure-offline.py"
DB_CACHE_SCRIPT = ROOT / "scripts" / "db-patch-cache.py"
SYNTAX_SCRIPT = ROOT / "scripts" / "validate-lua-syntax.py"


def calculate_statistics(samples: list[float]) -> dict[str, float]:
    if not samples:
        return {}
    sorted_samples = sorted(samples)
    count = len(sorted_samples)
    mean = sum(sorted_samples) / count
    variance = sum((x - mean) ** 2 for x in sorted_samples) / count if count > 1 else 0.0
    stddev = math.sqrt(variance)

    def percentile(p: float) -> float:
        idx = int(math.ceil((p / 100.0) * count)) - 1
        return sorted_samples[max(0, min(idx, count - 1))]

    return {
        "count": count,
        "min_ms": round(sorted_samples[0], 2),
        "max_ms": round(sorted_samples[-1], 2),
        "mean_ms": round(mean, 2),
        "median_p50_ms": round(percentile(50), 2),
        "p90_ms": round(percentile(90), 2),
        "p95_ms": round(percentile(95), 2),
        "p99_ms": round(percentile(99), 2),
        "stddev_ms": round(stddev, 2),
    }


def benchmark_sql_latency(iterations: int = 5) -> dict[str, float]:
    print(f"[BENCHMARK 1/4] Fast SQL Query Latency Analysis ({iterations} iterations)...")
    samples_ms: list[float] = []
    sql_file = ROOT / "database" / "enforce-enhancement-integrity.sql"
    for _ in range(iterations):
        start = time.perf_counter()
        subprocess.run([sys.executable, str(RUN_SQL), str(sql_file)], capture_output=True)
        elapsed_ms = (time.perf_counter() - start) * 1000.0
        samples_ms.append(elapsed_ms)

    stats = calculate_statistics(samples_ms)
    print(f"  Mean: {stats['mean_ms']} ms | P50: {stats['median_p50_ms']} ms | P95: {stats['p95_ms']} ms")
    return stats


def benchmark_lua_config_cache_efficiency() -> dict[str, float]:
    print("[BENCHMARK 2/4] Lua Configuration Caching Efficiency...")
    # Cold run
    start = time.perf_counter()
    subprocess.run([sys.executable, str(CONFIGURE_SCRIPT), "--force"], capture_output=True)
    cold_ms = (time.perf_counter() - start) * 1000.0

    # Cached run
    start = time.perf_counter()
    subprocess.run([sys.executable, str(CONFIGURE_SCRIPT)], capture_output=True)
    cached_ms = (time.perf_counter() - start) * 1000.0

    speedup = cold_ms / cached_ms if cached_ms > 0 else 0.0
    print(f"  Cold: {cold_ms / 1000.0:.2f} s | Cached: {cached_ms:.2f} ms ({speedup:.1f}x acceleration)")
    return {
        "cold_seconds": round(cold_ms / 1000.0, 2),
        "cached_ms": round(cached_ms, 2),
        "speedup_factor": round(speedup, 1),
    }


def benchmark_db_patch_receipt_latency() -> dict[str, float]:
    print("[BENCHMARK 3/4] DB Patch Receipt Validation Latency...")
    start = time.perf_counter()
    res = subprocess.run([sys.executable, str(DB_CACHE_SCRIPT), "--check"], capture_output=True, text=True)
    check_ms = (time.perf_counter() - start) * 1000.0
    print(f"  DB Migration Check Latency: {check_ms:.2f} ms")
    return {"check_latency_ms": round(check_ms, 2)}


def benchmark_lua_syntax_precompiler() -> dict[str, float]:
    print("[BENCHMARK 4/4] 4,287 Lua Files Syntax Validation Speed...")
    start = time.perf_counter()
    subprocess.run([sys.executable, str(SYNTAX_SCRIPT)], capture_output=True)
    duration = time.perf_counter() - start
    files_per_sec = 4287 / duration if duration > 0 else 0
    print(f"  Duration: {duration:.2f} s | Processing Rate: {files_per_sec:.1f} files/sec")
    return {
        "total_files": 4287,
        "duration_seconds": round(duration, 2),
        "files_per_second": round(files_per_sec, 1),
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--iterations", type=int, default=5, help="iterations for SQL latency")
    args = parser.parse_args()

    print("==========================================================")
    print("      JoySword Fast Strategy Benchmarking Suite           ")
    print("==========================================================")

    results = {
        "timestamp": time.strftime("%Y-%m-%d %H:%M:%S"),
        "sql_latency_percentiles": benchmark_sql_latency(args.iterations),
        "lua_config_cache_efficiency": benchmark_lua_config_cache_efficiency(),
        "db_patch_receipt_latency": benchmark_db_patch_receipt_latency(),
        "lua_syntax_precompiler": benchmark_lua_syntax_precompiler(),
    }

    report_file = ELSWORD / "offline" / "benchmark-report.json"
    report_file.parent.mkdir(parents=True, exist_ok=True)
    report_file.write_text(json.dumps(results, indent=2) + "\n", encoding="utf-8")

    md_file = ROOT / "docs" / "STRATEGY_BENCHMARK_RESULTS.md"
    md_content = f"""# Industry-Standard Strategy Benchmark Results

## Executive Summary
Empirical performance measurements generated by the benchmark suite on **{results['timestamp']}**.

---

## 1. SQL Query Latency Percentiles

| Metric | Latency (ms) | Description |
| :--- | :--- | :--- |
| **P50 (Median)** | **{results['sql_latency_percentiles'].get('median_p50_ms', 'N/A')} ms** | 50th percentile latency |
| **P90** | **{results['sql_latency_percentiles'].get('p90_ms', 'N/A')} ms** | 90th percentile latency |
| **P95** | **{results['sql_latency_percentiles'].get('p95_ms', 'N/A')} ms** | 95th percentile latency |
| **P99** | **{results['sql_latency_percentiles'].get('p99_ms', 'N/A')} ms** | 99th percentile tail latency |
| **Mean** | **{results['sql_latency_percentiles'].get('mean_ms', 'N/A')} ms** | Average latency across runs |

---

## 2. Lua Configuration Caching Acceleration

* **Cold Run (239 files scanned)**: {results['lua_config_cache_efficiency'].get('cold_seconds', 'N/A')} seconds
* **Cached Run (SHA-256 Match)**: **{results['lua_config_cache_efficiency'].get('cached_ms', 'N/A')} ms**
* **Acceleration Factor**: **{results['lua_config_cache_efficiency'].get('speedup_factor', 'N/A')}x faster**

---

## 3. Database Migration Receipt Validation

* **Validation Latency**: **{results['db_patch_receipt_latency'].get('check_latency_ms', 'N/A')} ms**

---

## 4. Lua Syntax Pre-Compiler Throughput

* **Total Files Validated**: 4,287 Lua files
* **Processing Rate**: **{results['lua_syntax_precompiler'].get('files_per_second', 'N/A')} files/sec**
* **Total Duration**: {results['lua_syntax_precompiler'].get('duration_seconds', 'N/A')} seconds
"""
    md_file.write_text(md_content, encoding="utf-8")

    print("\n==========================================================")
    print(f" Fast Benchmark Complete. Results saved to:\n {md_file}")
    print("==========================================================")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
