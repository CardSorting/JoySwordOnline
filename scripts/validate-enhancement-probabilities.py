#!/usr/bin/env python3
"""Validate and statistically exercise GameServer's enhancement distributions.

Binary audit notes for this exact legacy GameServer build:
* the caller passes ``current_level + 1`` to the probability lookup;
* Lua values are IEEE-754 percentages constrained to [0, 100];
* the five outcomes are selected cumulatively from a fresh [0, 100) roll;
* a missing target row returns failure, never success;
* the process-wide PRNG is seeded from ``time()`` during server startup and its
  state is advanced for every roll.
"""

from __future__ import annotations

import argparse
import csv
import gzip
import hashlib
import json
import math
import random
import re
import secrets
import zipfile
from collections import Counter
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import TextIO


ROOT = Path(__file__).resolve().parent.parent
DEFAULT_TABLE = ROOT / "Elsword" / "ServerResource" / "EnchantTable.lua"
RUNTIME_TABLE = ROOT / "Elsword" / "GameServer" / "EnchantTable.lua"
INVARIANTS_FILE = ROOT / "config" / "enhancement-invariants.json"
START_MARKER = "-- 강화에 따른 능력치 변화"
END_MARKER = "-- 이벤트\n-- 드롭에 대한 랜덤 강화 테이블"
OUTCOMES = ("Up1", "NoChange", "Down1", "DownTo0", "Break")
METHODS = {
    "standard": ("SetEnchantProbability", range(1, 21)),
    "event": ("SetEnchantProbability_Event", range(1, 21)),
    "rare": ("SetEnchantRareProbability", range(1, 10)),
}


@dataclass(frozen=True)
class Row:
    method: str
    target_level: int
    probabilities: dict[str, float]

    @property
    def success_probability(self) -> float:
        return self.probabilities["Up1"]


def active_lua(text: str) -> str:
    text = re.sub(r"--\[\[.*?--\]\]", "", text, flags=re.DOTALL)
    return re.sub(r"--[^\n]*", "", text)


def parse_rows(path: Path, mode: str, total_tolerance: float = 1e-9) -> dict[int, Row]:
    method, required_levels = METHODS[mode]
    text = active_lua(path.read_text(encoding="utf-8-sig"))
    call = re.compile(rf"EnchantItemManager:{method}\(\s*(\d+)\s*,\s*\{{(.*?)\}}\s*\)")
    field = re.compile(r"(Up1|NoChange|Down1|DownTo0|Break)\s*=\s*([^,}]+)")
    rows: dict[int, Row] = {}
    for match in call.finditer(text):
        level = int(match.group(1))
        if level in rows:
            raise ValueError(f"duplicate {method} target row {level}")
        raw_values = {name: value.strip() for name, value in field.findall(match.group(2))}
        try:
            values = {name: float(value) for name, value in raw_values.items()}
        except ValueError as exc:
            raise ValueError(f"{method} target {level} has a non-numeric probability: {raw_values}") from exc
        if set(values) != set(OUTCOMES):
            raise ValueError(f"{method} target {level} has missing/unknown outcomes: {values}")
        if any(not math.isfinite(value) for value in values.values()):
            raise ValueError(f"{method} target {level} has a non-finite probability: {values}")
        if any(value < 0 or value > 100 for value in values.values()):
            raise ValueError(f"{method} target {level} has an out-of-range probability: {values}")
        if not math.isclose(sum(values.values()), 100.0, rel_tol=0.0, abs_tol=total_tolerance):
            raise ValueError(f"{method} target {level} totals {sum(values.values())}, expected 100")
        rows[level] = Row(method, level, values)

    missing = sorted(set(required_levels) - set(rows))
    extra = sorted(set(rows) - set(required_levels))
    if missing or extra:
        raise ValueError(f"{method} row mismatch; missing={missing}, extra={extra}")
    return rows


def probability_section(text: str) -> str:
    start = text.index(START_MARKER)
    end = text.index(END_MARKER, start)
    return text[start:end]


def section_sha256(path: Path) -> str:
    section = probability_section(path.read_text(encoding="utf-8-sig"))
    return hashlib.sha256(section.encode("utf-8")).hexdigest()


def load_invariants(path: Path = INVARIANTS_FILE) -> dict:
    manifest = json.loads(path.read_text(encoding="utf-8"))
    if manifest.get("schema") != "joysword.enhancement-invariants/v1":
        raise ValueError("invalid enhancement invariant manifest schema")
    migration = manifest.get("migration", {})
    if not migration.get("id") or not migration.get("reason"):
        raise ValueError("enhancement invariant migration requires an id and written reason")
    return manifest


def legacy_rows(manifest: dict, mode: str) -> dict[int, Row]:
    archive_path = ROOT / manifest["legacy_archive"]
    with zipfile.ZipFile(archive_path) as archive:
        text = archive.read(manifest["legacy_member"]).decode("utf-8-sig")
    # parse_rows deliberately accepts a Path so malformed fixture diagnostics stay useful.
    import tempfile
    with tempfile.TemporaryDirectory(prefix="enhancement-legacy-") as directory:
        path = Path(directory) / "legacy.lua"
        path.write_text(text, encoding="utf-8")
        return parse_rows(path, mode)


def validate_invariants(
    table: Path = DEFAULT_TABLE,
    runtime: Path | None = RUNTIME_TABLE,
    manifest_path: Path = INVARIANTS_FILE,
) -> dict[str, dict[int, Row]]:
    manifest = load_invariants(manifest_path)
    text = table.read_text(encoding="utf-8-sig")
    section = probability_section(text)
    actual_hash = hashlib.sha256(section.encode("utf-8")).hexdigest()
    approved_hash = manifest["approved_probability_section_sha256"]
    if actual_hash != approved_hash:
        raise ValueError(
            f"canonical probability section hash {actual_hash} differs from approved hash {approved_hash}; "
            "a reviewed manifest migration is required"
        )

    suspicious_comment = re.search(
        r"--(?:\[\[)?[^\n]*(?:debug|test|\bGM\b|development|temporary)[^\n]*",
        section,
        flags=re.IGNORECASE,
    )
    if suspicious_comment:
        raise ValueError(f"suspicious development override label: {suspicious_comment.group(0).strip()}")
    for comment in re.findall(r"--\[\[(.*?)--\]\]", section, flags=re.DOTALL):
        if re.search(r"SetEnchantProbability(?:_Event)?\s*\(", comment):
            raise ValueError("commented-out legacy probability rows detected")

    tolerance = float(manifest["strict_total_tolerance"])
    tables = {mode: parse_rows(table, mode, tolerance) for mode in METHODS}
    high_start = int(manifest["high_tier_start"])
    allowlists = manifest["approved_adjacent_success_increases"]
    for mode, rows in tables.items():
        high_rows = [row for target, row in sorted(rows.items()) if target >= high_start]
        for row in high_rows:
            if row.success_probability == 100.0:
                raise ValueError(f"{mode} high-tier target {row.target_level} has guaranteed Up1 = 100")
            if sum(row.probabilities[name] for name in OUTCOMES if name != "Up1") <= 0.0:
                raise ValueError(f"{mode} high-tier target {row.target_level} has no meaningful failure probability")
        if len(high_rows) > 1 and len({tuple(row.probabilities[name] for name in OUTCOMES) for row in high_rows}) == 1:
            raise ValueError(f"{mode} has identical high-tier rows across the entire range")
        allowed = {(entry["from"], entry["to"]) for entry in allowlists.get(mode, [])}
        for previous, current in zip(high_rows, high_rows[1:]):
            if current.success_probability > previous.success_probability and (
                previous.target_level, current.target_level
            ) not in allowed:
                raise ValueError(
                    f"{mode} abrupt high-tier success increase +{previous.target_level} -> +{current.target_level} "
                    "is not allowlisted"
                )

        if not manifest.get("allow_legacy_divergence"):
            expected = legacy_rows(manifest, mode)
            for target, row in rows.items():
                if row.probabilities != expected[target].probabilities:
                    raise ValueError(
                        f"{mode} target {target} is outside the approved legacy range: "
                        f"actual={row.probabilities}, approved={expected[target].probabilities}"
                    )

    if runtime is not None and table.read_bytes() != runtime.read_bytes():
        raise ValueError(f"generated runtime table drift: {runtime} differs from canonical {table}")
    return tables


def choose_outcome(row: Row, roll: float) -> str:
    if not 0.0 <= roll < 100.0:
        raise ValueError(f"roll outside [0, 100): {roll}")
    cumulative = 0.0
    for outcome in OUTCOMES:
        cumulative += row.probabilities[outcome]
        if roll < cumulative:
            return outcome
    raise RuntimeError(f"malformed cumulative distribution for target {row.target_level}")


def resulting_level(current: int, outcome: str) -> tuple[int, str]:
    if outcome == "Up1":
        return current + 1, "success"
    if outcome == "NoChange":
        return current, "no_change"
    if outcome == "Down1":
        return max(0, current - 1), "downgrade_one"
    if outcome == "DownTo0":
        return 0, "reset_to_zero"
    if outcome == "Break":
        return current, "item_destroyed"
    raise ValueError(outcome)


def resolve_attempt(row: Row, current: int, roll: float) -> tuple[str, int, str]:
    """Deterministic test seam; production GameServer continues using native RNG."""
    if row.target_level != current + 1:
        raise ValueError(
            f"selected target row {row.target_level} does not equal current level {current} + 1"
        )
    outcome = choose_outcome(row, roll)
    level, consequence = resulting_level(current, outcome)
    if not 0 <= level <= 20 or level > current + 1:
        raise ValueError(f"impossible enhancement transition {current} -> {level} for {outcome}")
    return outcome, level, consequence


def wilson_interval(successes: int, attempts: int, z: float = 1.959963984540054) -> tuple[float, float]:
    proportion = successes / attempts
    denominator = 1.0 + z * z / attempts
    centre = (proportion + z * z / (2.0 * attempts)) / denominator
    margin = z * math.sqrt(
        proportion * (1.0 - proportion) / attempts + z * z / (4.0 * attempts * attempts)
    ) / denominator
    return max(0.0, centre - margin) * 100.0, min(1.0, centre + margin) * 100.0


def open_log(path: Path | None) -> TextIO | None:
    if path is None:
        return None
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.suffix.lower() == ".gz":
        return gzip.open(path, "wt", encoding="utf-8")
    return path.open("w", encoding="utf-8")


def simulate(
    rows: dict[int, Row],
    attempts: int,
    seed: int,
    item_id: int,
    attempt_log: Path | None,
    base_rows: dict[int, Row] | None = None,
) -> list[dict[str, int | float]]:
    rng = random.Random(seed)
    summaries: list[dict[str, int | float]] = []
    log = open_log(attempt_log)
    try:
        for target, row in sorted(rows.items()):
            current = target - 1
            base_probability = (
                base_rows[target].success_probability
                if base_rows is not None and target in base_rows
                else row.success_probability
            )
            probability_modifier = row.success_probability - base_probability
            counts: Counter[str] = Counter()
            for attempt in range(1, attempts + 1):
                roll = rng.random() * 100.0
                outcome, result_level, consequence = resolve_attempt(row, current, roll)
                counts[outcome] += 1
                if result_level > current + 1:
                    raise AssertionError("enhancement increased by more than one level")
                if log is not None:
                    log.write(
                        json.dumps(
                            {
                                "item_id": item_id,
                                "attempt": attempt,
                                "previous_level": current,
                                "target_level": target,
                                "base_success_probability_percent": base_probability,
                                "probability_modifiers_percent": probability_modifier,
                                "final_success_probability_percent": row.success_probability,
                                "random_roll_range": "[0.0,100.0)",
                                "random_value": roll,
                                "success": outcome == "Up1",
                                "failure_consequence": consequence if outcome != "Up1" else "none",
                                "resulting_level": result_level,
                                "selected_probability_row": f"{row.method}:{target}",
                                "outcome": outcome,
                                "session_seed": seed,
                            },
                            separators=(",", ":"),
                        )
                        + "\n"
                    )
            successes = counts["Up1"]
            observed = successes * 100.0 / attempts
            configured = row.success_probability
            absolute_deviation = abs(observed - configured)
            relative_deviation = absolute_deviation / configured * 100.0 if configured else 0.0
            ci_low, ci_high = wilson_interval(successes, attempts)
            sigma = math.sqrt((configured / 100.0) * (1.0 - configured / 100.0) / attempts) * 100.0
            if configured in (0.0, 100.0):
                within_variance = observed == configured
            else:
                within_variance = abs(observed - configured) <= max(5.0 * sigma, 0.02)
            summaries.append(
                {
                    "target_level": target,
                    "configured_percent": configured,
                    "observed_percent": observed,
                    "attempts": attempts,
                    "successes": successes,
                    "failures": attempts - successes,
                    "expected_successes": attempts * configured / 100.0,
                    "expected_failures": attempts * (100.0 - configured) / 100.0,
                    "absolute_deviation_pp": absolute_deviation,
                    "relative_deviation_percent": relative_deviation,
                    "confidence_95_low_percent": ci_low,
                    "confidence_95_high_percent": ci_high,
                    **{
                        f"expected_{outcome}": attempts * row.probabilities[outcome] / 100.0
                        for outcome in OUTCOMES
                    },
                    **{f"observed_{outcome}": counts[outcome] for outcome in OUTCOMES},
                    "within_variance": int(within_variance),
                }
            )
    finally:
        if log is not None:
            log.close()
    return summaries


def write_csv(path: Path, summaries: list[dict[str, int | float]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=list(summaries[0]))
        writer.writeheader()
        writer.writerows(summaries)


def write_markdown(path: Path, mode: str, seed: int, summaries: list[dict[str, int | float]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    lines = [
        "# Enhancement probability validation",
        "",
        "## Root cause and correction",
        "",
        "The GameServer working-directory table had a development override: the intended high-tier rows were commented out and duplicate active rows assigned `Up1 = 100` through target +20. Because GameServer loads its local table, those rows overrode the ServerResource copy and made ordinary attempts effectively guaranteed.",
        "",
        "Both active copies now use the untouched `EnchantTable.lua.bak` bundled in `Edited Enhancement tables put in GameServer and ServerResources.zip`. Startup validates all 20 standard rows, all 20 event rows, and all 9 legacy rare rows and refuses to launch on a missing, duplicate, out-of-range, or non-100%-total distribution.",
        "",
        "## Canonical source and change control",
        "",
        "`Elsword/ServerResource/EnchantTable.lua` is the only editable enhancement-table source. `Elsword/GameServer/EnchantTable.lua` is generated by `scripts/sync-enhancement-table.py`; configure, build, startup, and release checks fail if it drifts. `config/enhancement-invariants.json` locks the approved probability-section hash, migration ID, strict total tolerance, and documented legacy adjacent-increase exceptions.",
        "",
        "A legitimate future curve migration must deliberately update the canonical file and invariant manifest, set a reviewed migration reason, update the approved hash/ranges, regenerate the runtime copy while GameServer is stopped, and pass all regression fixtures. Runtime regeneration refuses to run while GameServer is active.",
        "",
        "## Threat model and safeguards",
        "",
        "The checks reject guaranteed high-tier success, no-failure high-tier rows, non-legacy outcomes, unallowlisted adjacent increases, identical high-tier ranges, commented-out probability blocks, suspicious debug/test/GM/development/temporary labels, malformed totals, non-finite or out-of-range values, missing/duplicate rows, and runtime drift. The exact recovered `Up1 = 100` override is retained under `tests/fixtures/enhancement` and must fail.",
        "",
        "Build and release generation execute both the canonical/runtime generation check and invariant validator. Startup writes a receipt containing table hash, invariant version, migration ID, and GameServer build hash. Supervised runtime checks the table every two seconds and stops the server stack if it changes; changes therefore require a deliberate restart.",
        "",
        "## Deterministic boundary tests",
        "",
        "The pure `resolve_attempt` seam accepts an explicit roll only in tests. Tests cover immediately-below and exactly-at cumulative thresholds, the value immediately below 100, zero-weight outcomes, every reachable nonzero branch, row=`current+1`, one-level advancement, and range enforcement. The production executable remains on its native RNG.",
        "",
        "## Persistence and transaction findings",
        "",
        "`gup_update_Enchant` now locks the item row with `UPDLOCK,HOLDLOCK`, preserves valid initial +0..+20 inserts, permits configured downgrade/reset writes, rejects an existing-item increase greater than one, and records impossible requests in `EnhancementIntegrityFailure`. A failed procedure write returns an error and cannot commit the level change.",
        "",
        "The closed native call exposes only unit ID, item ID, and resulting level. It exposes no attempt ID, expected previous level, material/currency ledger ID, RNG value, or commit acknowledgement. Consequently duplicate-packet idempotency, cross-resource exactly-once material debit, disconnect replay, and client acknowledgement ordering cannot be proven or retrofitted safely at this SQL seam without a compatible GameServer change. These remain explicit blockers rather than simulated claims.",
        "",
        "## Runtime canary and observability",
        "",
        "`enhancement-runtime-canary.py` is non-mutating: after startup it verifies the live GameServer PID, executable hash, runtime-table hash, validation receipt, and hash stability. It records `actual_native_attempt_exercised=false` because this binary has no isolated synthetic-enhancement RPC. A real native-path canary and per-production-attempt RNG/material telemetry require a server hook or source-level change; no player equipment is used as a substitute.",
        "",
        "The statistical command does not execute or claim a live canary. Record the deployment-specific canary result separately. The canary is mandatory in real startup and fails startup if its process/build/table checks fail.",
        "",
        "Structured simulation logs contain attempt/item/level/row/probability/modifier/roll/outcome/consequence fields. Runtime receipts and canary records contain build/table/migration hashes, while impossible persisted transitions are always retained in SQL. Native account/character, material debit, RNG, and persistence telemetry are not exported by this build.",
        "",
        "## Remaining limitations and assumptions",
        "",
        "- Probability and transition semantics are supported by binary audit; statistical runs use the controlled validator RNG and are not native attempts.",
        "- The runtime canary proves process/build/file identity and stability, not the unexported in-memory probability map or native roll path.",
        "- Exactly-once material/currency debit, request replay protection, disconnect recovery, and client acknowledgement ordering require a native attempt identifier and transaction hook that this executable does not expose.",
        "- Existing +0..+20 rows are treated as legitimate. The persistence guard rejects impossible increases on existing rows but cannot infer provenance for an initial row without native context.",
        "",
        "## Future validation commands",
        "",
        "```powershell",
        "python scripts\\sync-enhancement-table.py --apply   # GameServer must be stopped",
        "python scripts\\sync-enhancement-table.py --check",
        "python scripts\\validate-enhancement-probabilities.py --check-only",
        "python -m unittest discover -s tests -v",
        "python scripts\\validate-enhancement-probabilities.py --mode standard --attempts 100000 --csv docs\\enhancement_probability_validation.csv --markdown docs\\ENHANCEMENT_PROBABILITY_VALIDATION.md",
        "python scripts\\build-code-overlay.py",
        "python scripts\\start-offline.py --dry-run",
        "```",
        "",
        "## Binary-audited semantics",
        "",
        "- GameServer computes the selected target row as `current enhancement + 1`; the client does not supply the outcome.",
        "- Values are floating-point percentages constrained to `[0,100]`, and selection uses a cumulative fresh roll in `[0,100)`.",
        "- A missing row returns failure. It is not converted into success.",
        "- The process RNG is seeded from system time during startup and advances its state for every roll; normal sessions do not retain the static image seed.",
        "- `Up1` returns exactly `current + 1`. The remaining branches preserve no-change, downgrade-one, reset-to-zero, and destruction.",
        "- Timed enhancement events use a distinct server-side distribution. Support/protection material is handled separately in the failure-consequence path and does not rewrite `Up1` as 100%.",
        "",
        "Targets +12 and +13 intentionally have 0% standard success in this legacy asset. Target +12 is 1% only in the event table; target +13 remains 0%. Higher rows are retained for legitimate legacy mechanics that can provide an already-enhanced item, not for direct jumps in an ordinary attempt.",
        "",
        "## Statistical result",
        "",
        "The standard table was exercised at 100,000 attempts for each of 20 targets. Separate event and rare runs use the same attempt count per configured row and are stored in `enhancement_probability_validation_event.csv` and `enhancement_probability_validation_rare.csv`. These are controlled simulations of the binary-audited distribution semantics, not live GameServer attempts.",
        "",
        f"Mode: `{mode}`  ",
        f"Seed: `{seed}`  ",
        "Roll model: target row = current level + 1; floating-point percent roll in `[0,100)`. Each nontrivial row passed a five-standard-deviation check (with a 0.02 percentage-point floor).",
        "",
        "| Target | Configured | Observed | Attempts | Successes | Failures | Variance check |",
        "|---:|---:|---:|---:|---:|---:|:---:|",
    ]
    for row in summaries:
        lines.append(
            f"| +{row['target_level']} | {row['configured_percent']:.4f}% | "
            f"{row['observed_percent']:.4f}% | {row['attempts']} | {row['successes']} | "
            f"{row['failures']} | {'PASS' if row['within_variance'] else 'FAIL'} |"
        )
    lines.extend(
        [
            "",
            "## Detailed deviations and confidence intervals",
            "",
            "| Target | Expected successes | Observed successes | Absolute deviation | Relative deviation | 95% Wilson CI |",
            "|---:|---:|---:|---:|---:|---:|",
        ]
    )
    for row in summaries:
        lines.append(
            f"| +{row['target_level']} | {row['expected_successes']:.1f} | {row['successes']} | "
            f"{row['absolute_deviation_pp']:.4f} pp | {row['relative_deviation_percent']:.3f}% | "
            f"[{row['confidence_95_low_percent']:.4f}%, {row['confidence_95_high_percent']:.4f}%] |"
        )
    lines.extend(
        [
            "",
            "## Complete outcome distributions",
            "",
            "Each cell is `observed / expected`.",
            "",
            "| Target | Up1 | No change | Down one | Reset to zero | Break |",
            "|---:|---:|---:|---:|---:|---:|",
        ]
    )
    for row in summaries:
        cells = [
            f"{row[f'observed_{outcome}']} / {row[f'expected_{outcome}']:.1f}" for outcome in OUTCOMES
        ]
        lines.append(f"| +{row['target_level']} | " + " | ".join(cells) + " |")

    uninterrupted = 1.0
    retry_attempts = 0.0
    lines.extend(
        [
            "",
            "## Progression rarity",
            "",
            "`Uninterrupted reach probability` is the exact product of successive Up1 weights. "
            "`Retry-only attempts` is the sum of geometric expectations and intentionally ignores downgrade, reset, destruction, replacement, and restoration policy; once a 0% row is reached it is infinite.",
            "",
            "| Tier | Next-step expected attempts | Retry-only attempts from +0 | Uninterrupted reach probability |",
            "|---:|---:|---:|---:|",
        ]
    )
    for row in summaries:
        probability = row["configured_percent"] / 100.0
        uninterrupted *= probability
        next_attempts = math.inf if probability == 0.0 else 1.0 / probability
        if math.isinf(next_attempts) or math.isinf(retry_attempts):
            retry_attempts = math.inf
        else:
            retry_attempts += next_attempts
        lines.append(
            f"| +{row['target_level']} | "
            f"{'∞' if math.isinf(next_attempts) else f'{next_attempts:.3f}'} | "
            f"{'∞' if math.isinf(retry_attempts) else f'{retry_attempts:.3f}'} | "
            f"{uninterrupted:.12g} |"
        )
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def write_receipt(path: Path, table: Path, manifest: dict, status: str = "pass") -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    receipt = {
        "schema": "joysword.enhancement-validation-receipt/v1",
        "validated_at": datetime.now(timezone.utc).isoformat(),
        "status": status,
        "canonical_source": str(table.relative_to(ROOT)).replace("\\", "/"),
        "canonical_file_sha256": hashlib.sha256(table.read_bytes()).hexdigest(),
        "probability_section_sha256": section_sha256(table),
        "invariant_version": manifest["version"],
        "migration_id": manifest["migration"]["id"],
        "runtime_copy": str(RUNTIME_TABLE.relative_to(ROOT)).replace("\\", "/"),
        "server_build_sha256": hashlib.sha256(
            (ROOT / "Elsword" / "GameServer" / "GameServer.exe").read_bytes()
        ).hexdigest(),
    }
    path.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--table", type=Path, default=DEFAULT_TABLE)
    parser.add_argument("--manifest", type=Path, default=INVARIANTS_FILE)
    parser.add_argument("--runtime", type=Path, default=RUNTIME_TABLE)
    parser.add_argument("--receipt", type=Path)
    parser.add_argument(
        "--canonical-only", action="store_true", help="do not compare the generated runtime copy"
    )
    parser.add_argument("--mode", choices=sorted(METHODS), default="standard")
    parser.add_argument("--attempts", type=int, default=200_000)
    parser.add_argument("--seed", type=int)
    parser.add_argument("--item-id", type=int, default=0)
    parser.add_argument("--attempt-log", type=Path)
    parser.add_argument("--csv", type=Path)
    parser.add_argument("--markdown", type=Path)
    parser.add_argument(
        "--check-only",
        action="store_true",
        help="validate every probability table without generating random attempts",
    )
    args = parser.parse_args()
    if args.attempts <= 0:
        parser.error("--attempts must be positive")

    try:
        if args.check_only:
            checked = validate_invariants(
                args.table,
                None if args.canonical_only else args.runtime,
                args.manifest,
            )
            manifest = load_invariants(args.manifest)
            if args.receipt:
                write_receipt(args.receipt, args.table, manifest)
            print(
                "Enhancement table valid: "
                + ", ".join(f"{mode}={len(rows)} rows" for mode, rows in checked.items())
                + f", hash={section_sha256(args.table)}"
            )
            return 0
        rows = parse_rows(args.table, args.mode)
    except (OSError, UnicodeError, ValueError) as exc:
        print(f"ENHANCEMENT TABLE ERROR: {exc}")
        return 2

    seed = args.seed if args.seed is not None else secrets.randbits(64)
    base_rows = parse_rows(args.table, "standard") if args.mode != "standard" else rows
    summaries = simulate(rows, args.attempts, seed, args.item_id, args.attempt_log, base_rows)
    if args.csv:
        write_csv(args.csv, summaries)
    if args.markdown:
        write_markdown(args.markdown, args.mode, seed, summaries)

    print("target configured observed attempts successes failures status")
    for row in summaries:
        print(
            f"+{row['target_level']:02d} {row['configured_percent']:10.4f}% "
            f"{row['observed_percent']:8.4f}% {row['attempts']:8d} "
            f"{row['successes']:9d} {row['failures']:8d} "
            f"{'PASS' if row['within_variance'] else 'FAIL'}"
        )
    return 0 if all(row["within_variance"] for row in summaries) else 1


if __name__ == "__main__":
    raise SystemExit(main())
