#!/usr/bin/env python3
"""Validate aggregate V7 engine-approximation output across all ten profiles.

This gate consumes only PVP_AI_V7_ENGINE_APPROX_PASS lines.  It deliberately
does not claim live-engine validity: it verifies deterministic disturbance
coverage, bounded state, and observable identity separation in the synthetic
runtime approximation.
"""

from __future__ import annotations

import math
import pathlib
import sys


PREFIX = "PVP_AI_V7_ENGINE_APPROX_PASS"
EXPECTED_CHARACTERS = {
    "amelia",
    "apple",
    "balak",
    "edan",
    "lime",
    "low",
    "noa",
    "penensio",
    "q_proto_00",
    "spika",
}
DORMANT_CHARACTERS = {"amelia", "edan", "low", "penensio", "spika"}
IDENTITY_FEATURES = (
    "identity_observation",
    "identity_commitment",
    "identity_retreat",
    "id_guard",
    "id_escape",
    "id_combo",
    "id_chase",
    "id_control",
    "id_poke",
    "id_burst",
    "id_advance",
    "id_air",
    "id_avg_range",
    "id_strategy_changes",
    "id_tempo_changes",
    "id_strategy_duration",
    "id_resource_spent",
    "id_resource_confidence",
    "id_resets",
    "id_extensions",
)


def fail(message: str) -> "NoReturn":
    raise SystemExit(f"PVP_AI_V7_ROSTER_CALIBRATION_FAIL {message}")


def parse_record(line: str) -> dict[str, str]:
    fields: dict[str, str] = {}
    for token in line.strip().split()[1:]:
        if "=" not in token:
            continue
        key, value = token.split("=", 1)
        fields[key] = value
    if "character" not in fields:
        fail("record_missing_character")
    return fields


def numeric(record: dict[str, str], key: str) -> float:
    if key not in record:
        fail(f"{record.get('character', 'unknown')}_missing_{key}")
    try:
        return float(record[key])
    except ValueError:
        fail(f"{record.get('character', 'unknown')}_invalid_{key}")


def require_equal(record: dict[str, str], key: str, expected: int) -> None:
    actual = numeric(record, key)
    if actual != expected:
        fail(f"{record['character']}_{key}={actual:g}_expected={expected}")


def load_records(path: pathlib.Path) -> dict[str, dict[str, str]]:
    records: dict[str, dict[str, str]] = {}
    for line in path.read_text(encoding="utf-8").splitlines():
        if not line.startswith(PREFIX):
            continue
        record = parse_record(line)
        character = record["character"]
        if character in records:
            fail(f"duplicate_character={character}")
        records[character] = record
    missing = sorted(EXPECTED_CHARACTERS - records.keys())
    extra = sorted(records.keys() - EXPECTED_CHARACTERS)
    if missing or extra:
        fail(f"roster_mismatch missing={','.join(missing)} extra={','.join(extra)}")
    return records


def validate_profile(record: dict[str, str]) -> None:
    character = record["character"]
    require_equal(record, "scenarios", 20)
    require_equal(record, "ticks", 2800)
    require_equal(record, "signal_contract", 48)
    require_equal(record, "unavailable", 10)
    require_equal(record, "telemetry_bound", 96)
    require_equal(record, "route_bound", 48)
    require_equal(record, "observation_bound", 32)
    if numeric(record, "requests") != numeric(record, "terminals"):
        fail(f"{character}_unterminated_action")
    if numeric(record, "terminal_classes") < 7:
        fail(f"{character}_insufficient_terminal_classes")
    if numeric(record, "uncertain") < 1:
        fail(f"{character}_uncertain_path_not_exercised")
    if not 0.0 <= numeric(record, "confirmed_rate") <= 1.0:
        fail(f"{character}_invalid_confirmed_rate")
    if numeric(record, "v6_max_repetition") > 0.59:
        fail(f"{character}_action_repetition_regression")
    if numeric(record, "cf_stability") < 0.70:
        fail(f"{character}_counterfactual_noise_instability")
    if numeric(record, "v6_strategies") < 4:
        fail(f"{character}_strategy_occupancy_too_narrow")
    if numeric(record, "v6_plans") < 7:
        fail(f"{character}_exchange_plan_coverage_too_narrow")
    if numeric(record, "runtime_strategies") < 4:
        fail(f"{character}_runtime_strategy_coverage_too_narrow")
    if numeric(record, "runtime_plans") < 3:
        fail(f"{character}_runtime_plan_coverage_too_narrow")
    if numeric(record, "telemetry_max") > numeric(record, "telemetry_bound"):
        fail(f"{character}_telemetry_bound_exceeded")
    if numeric(record, "route_max") > numeric(record, "route_bound"):
        fail(f"{character}_route_bound_exceeded")
    if numeric(record, "observation_max") > numeric(record, "observation_bound"):
        fail(f"{character}_observation_bound_exceeded")
    if numeric(record, "decision_failures") != 0:
        fail(f"{character}_synthetic_decision_failure")
    dormant = numeric(record, "dormant_selected")
    if character in DORMANT_CHARACTERS and dormant < 1:
        fail(f"{character}_dormant_target_not_exercised")
    if numeric(record, "identity_roles") < 2:
        fail(f"{character}_identity_action_families_too_narrow")
    for key in IDENTITY_FEATURES:
        numeric(record, key)


def identity_distances(
    records: dict[str, dict[str, str]],
) -> tuple[float, str, str, int]:
    names = sorted(records)
    columns: dict[str, list[float]] = {
        key: [numeric(records[name], key) for name in names]
        for key in IDENTITY_FEATURES
    }
    active = {
        key: values
        for key, values in columns.items()
        if max(values) - min(values) > 1e-9
    }
    if len(active) < 8:
        fail(f"identity_features_active={len(active)}")
    vectors: dict[str, list[float]] = {name: [] for name in names}
    for values in active.values():
        low, high = min(values), max(values)
        width = high - low
        for index, name in enumerate(names):
            vectors[name].append((values[index] - low) / width)
    closest = (math.inf, "", "")
    for left_index, left in enumerate(names):
        for right in names[left_index + 1 :]:
            squared = sum(
                (a - b) ** 2 for a, b in zip(vectors[left], vectors[right])
            )
            distance = math.sqrt(squared / len(active))
            if distance < closest[0]:
                closest = (distance, left, right)
    signatures = {
        tuple(round(value, 3) for value in vectors[name]) for name in names
    }
    if len(signatures) != len(names):
        fail(f"identity_signatures_unique={len(signatures)}/{len(names)}")
    if closest[0] < 0.20:
        fail(
            "identity_distance_too_small="
            f"{closest[0]:.3f}_{closest[1]}_vs_{closest[2]}"
        )
    return closest[0], closest[1], closest[2], len(active)


def main() -> None:
    if len(sys.argv) != 2:
        fail("usage=validate-pvp-ai-v7-roster.py_results.txt")
    records = load_records(pathlib.Path(sys.argv[1]))
    for record in records.values():
        validate_profile(record)
    distance, left, right, active = identity_distances(records)
    requests = sum(int(numeric(record, "requests")) for record in records.values())
    terminals = sum(int(numeric(record, "terminals")) for record in records.values())
    print("PVP_AI_V7_ROSTER_CALIBRATION_PASS")
    print(
        "profiles=10 scenarios=200 ticks=28000 "
        f"requests={requests} terminals={terminals} "
        f"identity_features={active} closest_identity_distance={distance:.3f} "
        f"closest_pair={left},{right}"
    )


if __name__ == "__main__":
    main()
