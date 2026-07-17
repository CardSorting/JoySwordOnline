#!/usr/bin/env python3
"""Static validation for JoySword PvP AI V6 and V7 runtime grounding."""

from __future__ import annotations

import argparse
import hashlib
import itertools
import json
import os
import re
import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parent.parent
NPC_DIR = ROOT / "Elsword" / "ClientScript" / "Npc"
V6_MARKER = "-- Sixth-generation competitive cognition and arena-calibration layer"
V7_MARKER = "-- Seventh-generation runtime grounding and calibration-readiness layer"
BOT_FILES = (
    "PVP_HERO_AMELIA.lua",
    "PVP_HERO_APPLE.lua",
    "PVP_HERO_BALAK.lua",
    "PVP_HERO_EDAN.lua",
    "PVP_HERO_LIME.lua",
    "PVP_HERO_LOW.lua",
    "PVP_HERO_NOA.lua",
    "PVP_HERO_PENENSIO.lua",
    "PVP_HERO_Q-PROTO_00.lua",
    "PVP_HERO_SPIKA.lua",
)
HYPOTHESES = {
    "aggressive_opener",
    "defensive_opener",
    "reactive_counter",
    "movement_heavy",
    "panic_escape",
    "delayed_defense",
    "habitual_roller",
    "early_mana_break",
    "late_mana_break",
    "wakeup_attacker",
    "wakeup_evader",
    "corner_averse",
    "resource_hoarder",
    "burst_spender",
    "repetitive_approach",
    "adapts_after_punish",
}
IDENTITY_MODES = {
    "patient_analyst",
    "conversion_optimizer",
    "movement_technician",
    "relentless_pressure",
    "defensive_survivor",
    "volatile_momentum",
    "resource_controller",
    "tournament_all_rounder",
    "reactive_punisher",
    "deceptive_conditioner",
}
MOVEMENT_FALLBACK_SUFFIXES = (
    "_WALK",
    "_JUMP_UP",
    "_JUMP_UP_DIR",
)
V7_SIGNAL_CLASSES = {
    "VERIFIED_DIRECT",
    "VERIFIED_DERIVED",
    "HEURISTIC",
    "UNVERIFIED",
    "UNAVAILABLE",
}
V7_PROFILE_FIELDS = {
    "character",
    "identity",
    "calibration",
    "timing_scale",
    "role_timing",
    "action_timing",
    "occupancy",
    "identity_targets",
    "range_overrides",
    "dormant_actions",
}


def load_luaparser() -> tuple[Any, Any]:
    candidates = [
        os.environ.get("JOYSWORD_LUAPARSER_PATH"),
        r"C:\tmp\joysword-luaparser",
        "/tmp/joysword-luaparser",
    ]
    for candidate in candidates:
        if candidate and Path(candidate).is_dir() and candidate not in sys.path:
            sys.path.insert(0, candidate)
    try:
        from luaparser import ast
        from luaparser import astnodes
    except ImportError as exc:
        raise SystemExit(
            "luaparser is required. Set JOYSWORD_LUAPARSER_PATH or install it "
            "outside the repository."
        ) from exc
    return ast, astnodes


AST, ASTNODES = load_luaparser()


@dataclass
class Result:
    files: list[str] = field(default_factory=list)
    checks: dict[str, int] = field(default_factory=dict)
    errors: list[str] = field(default_factory=list)
    warnings: list[str] = field(default_factory=list)
    details: dict[str, Any] = field(default_factory=dict)

    def check(self, name: str, amount: int = 1) -> None:
        self.checks[name] = self.checks.get(name, 0) + amount

    def error(self, path: Path, message: str) -> None:
        self.errors.append(f"{path.name}: {message}")

    def warn(self, path: Path, message: str) -> None:
        self.warnings.append(f"{path.name}: {message}")


def strip_lua_comments(text: str) -> str:
    text = re.sub(r"--\[(=*)\[.*?\]\1\]", "", text, flags=re.DOTALL)
    return "\n".join(line.split("--", 1)[0] for line in text.splitlines())


def literal(node: Any) -> Any:
    kind = type(node).__name__
    if kind == "String":
        return node.s.decode("utf-8")
    if kind == "Number":
        return node.n
    if kind == "TrueExpr":
        return True
    if kind == "FalseExpr":
        return False
    if kind == "Nil":
        return None
    if kind == "Name":
        return {"$name": node.id}
    if kind == "Index":
        return {"$index": True}
    if kind == "Table":
        keyed: dict[str, Any] = {}
        array: list[Any] = []
        for table_field in node.fields:
            value = literal(table_field.value)
            if table_field.key is None:
                array.append(value)
                continue
            key = getattr(table_field.key, "id", None)
            if key is None and type(table_field.key).__name__ == "String":
                key = table_field.key.s.decode("utf-8")
            if key is None:
                key = f"$key_{len(keyed)}"
            keyed[str(key)] = value
        if keyed and array:
            keyed["$array"] = array
            return keyed
        return keyed if keyed else array
    return {"$node": kind}


def assignments(chunk: Any) -> dict[str, tuple[Any, Any]]:
    found: dict[str, tuple[Any, Any]] = {}
    for statement in chunk.body.body:
        if type(statement).__name__ != "Assign" or not statement.targets:
            continue
        target = statement.targets[0]
        name = getattr(target, "id", None)
        if name:
            found[name] = (statement.values[0], statement)
    return found


def find_profile(
    path: Path, chunk: Any, prefix: str
) -> tuple[str, dict[str, Any]] | None:
    for name, (value, _) in assignments(chunk).items():
        if name.startswith(prefix):
            converted = literal(value)
            if isinstance(converted, dict):
                return name, converted
    return None


def extract_assignment_block(text: str, name: str) -> str | None:
    match = re.search(rf"(?m)^\s*{re.escape(name)}\s*=\s*\{{", text)
    if not match:
        return None
    start = text.find("{", match.start())
    depth = 0
    quote: str | None = None
    escaped = False
    for index in range(start, len(text)):
        char = text[index]
        if quote:
            if escaped:
                escaped = False
            elif char == "\\":
                escaped = True
            elif char == quote:
                quote = None
            continue
        if char in "\"'":
            quote = char
        elif char == "{":
            depth += 1
        elif char == "}":
            depth -= 1
            if depth == 0:
                return text[match.start() : index + 1]
    return None


def callback_action_map(clean: str) -> dict[str, tuple[str, str]]:
    function_starts = [
        (match.start(), match.group(1))
        for match in re.finditer(
            r"(?m)^\s*function\s+(CF_[A-Za-z0-9_-]+)\s*\(", clean
        )
    ]
    mapped: dict[str, tuple[str, str]] = {}
    for match in re.finditer(
        r'PVP_PRO_AI_DECIDE\s*\([^)]*?"([^"]+)"\s*,\s*"([^"]+)"',
        clean,
        flags=re.DOTALL,
    ):
        preceding = [item for item in function_starts if item[0] < match.start()]
        if preceding:
            mapped[preceding[-1][1]] = (match.group(1), match.group(2))
    return mapped


def validate_runtime_graph(path: Path, clean: str, result: Result) -> None:
    functions = set(
        re.findall(
            r"(?m)^\s*function\s+([A-Za-z_][A-Za-z0-9_-]*)\s*\(", clean
        )
    )
    callback_refs = set(re.findall(r'"(CF_[A-Za-z0-9_-]+)"', clean))
    missing_callbacks = sorted(callback_refs - functions)
    if missing_callbacks:
        result.error(path, f"unresolved callbacks: {missing_callbacks}")
    else:
        result.check("callbacks_resolve", len(callback_refs))

    state_defs = set(
        re.findall(
            r"(?m)^\s*(PVP_BOT_[A-Za-z0-9_-]+)\s*=\s*\{", clean
        )
    )
    state_refs = set(
        re.findall(
            r'\{\s*STATE_CHANGE_TYPE\[[^\]]+\]\s*,\s*"(PVP_BOT_[A-Za-z0-9_-]+)"',
            clean,
        )
    )
    missing_states = sorted(state_refs - state_defs)
    if missing_states:
        result.error(path, f"unresolved state targets: {missing_states}")
    else:
        result.check("state_targets_resolve", len(state_refs))

    condition_defs = set(
        re.findall(r"(?m)^\s*(CT_PVP_BOT_[A-Za-z0-9_-]+)\s*=\s*\{", clean)
    )
    condition_refs = set(re.findall(r'"(CT_PVP_BOT_[A-Za-z0-9_-]+)"', clean))
    missing_conditions = sorted(condition_refs - condition_defs)
    if missing_conditions:
        result.error(path, f"unresolved condition tables: {missing_conditions}")
    else:
        result.check("condition_tables_resolve", len(condition_refs))

    targets = re.findall(
        r'\{\s*STATE_CHANGE_TYPE\[[^\]]+\]\s*,\s*"(PVP_BOT_[A-Za-z0-9_-]+)"',
        clean,
    )
    inbound = {state: targets.count(state) for state in state_defs}
    for state in state_defs:
        if inbound.get(state, 0) == 0:
            continue
        block = extract_assignment_block(clean, state)
        if block is None:
            result.error(path, f"could not inspect active state {state}")
            continue
        outgoing = re.findall(
            r'\{\s*STATE_CHANGE_TYPE\[[^\]]+\]\s*,\s*"(PVP_BOT_[A-Za-z0-9_-]+)"',
            block,
        )
        if not outgoing and not re.search(
            r"SCT_MOTION_END|SCT_STATE_TIME_OVER|SCT_HP_IS_ZERO", block
        ):
            result.warn(path, f"active state has no statically visible exit: {state}")
    result.check("active_state_exit_scan", len(state_defs))


def validate_authority_leaks(path: Path, clean: str, result: Result) -> None:
    leaks: list[str] = []
    symbol = path.stem.removeprefix("PVP_HERO_").replace("-", "_")
    primary_states = (
        f"PVP_BOT_{symbol}_WAIT",
        f"PVP_BOT_{symbol}_STANDUP_WAIT",
    )
    movement_targets = {
        f"PVP_BOT_{symbol}_WALK",
        f"PVP_BOT_{symbol}_DASH",
        f"PVP_BOT_{symbol}_JUMP_UP",
        f"PVP_BOT_{symbol}_JUMP_UP_DIR",
        f"PVP_BOT_{symbol}_DashJump",
    }
    for state in primary_states:
        block = extract_assignment_block(clean, state)
        if block is None:
            continue
        for target in re.findall(
            r'SCT_CONDITION_TABLE"\]\s*,\s*"(PVP_BOT_[A-Za-z0-9_-]+)"',
            block,
        ):
            if target not in movement_targets:
                leaks.append(f"{state}->{target}")
    if leaks:
        result.error(path, f"legacy combat table bypasses V6 authority: {leaks}")
    else:
        result.check("single_authority_path")


def strategy_score(
    profile: dict[str, Any],
    strategy: dict[str, Any],
    *,
    hp: float,
    target_hp: float,
    mp: int,
    geometry: str,
    changed: bool,
    initiative: float,
    entropy: float,
    hypothesis: float,
) -> float:
    drivers = strategy.get("drivers", {})
    score = float(strategy.get("base", 10))
    score += drivers.get("uncertainty", 0) * entropy * 10
    score += drivers.get("spacing", 0) * (
        2 if geometry == "preferred_band" else 7
    )
    score += drivers.get("resource", 0) * (
        8 if mp < profile.get("resource_target", 170) else -2
    )
    score += drivers.get("lead", 0) * max(0, hp - target_hp) * 18
    score += drivers.get("behind", 0) * max(0, target_hp - hp) * 18
    score += drivers.get("lethal", 0) * (10 if target_hp < 0.30 else 0)
    score += drivers.get("survival", 0) * (10 if hp < 0.32 else 0)
    score += drivers.get("change", 0) * (8 if changed else 0)
    score += drivers.get("vertical", 0) * (
        7 if geometry == "vertical_misalignment" else 0
    )
    score += drivers.get("initiative", 0) * max(0, initiative) * 8
    score += drivers.get("yield", 0) * hypothesis * 8
    if strategy.get("hypothesis"):
        score += hypothesis * strategy.get("hypothesis_weight", 9)
    return score


def validate_strategy_scenarios(
    path: Path, profile: dict[str, Any], result: Result
) -> None:
    winners = {name: 0 for name in profile["strategy_order"]}
    scenario_count = 0
    axes = itertools.product(
        (0.15, 0.40, 0.68, 0.92),
        (0.15, 0.42, 0.72, 0.95),
        (30, 120, 210, 290),
        (
            "preferred_band",
            "compressed",
            "outside_band",
            "vertical_misalignment",
        ),
        (False, True),
        (-0.8, 0.0, 0.8),
        (0.25, 0.65, 0.95),
        (0.20, 0.65),
    )
    for hp, target_hp, mp, geometry, changed, initiative, entropy, hyp in axes:
        scored = {
            name: strategy_score(
                profile,
                profile["strategies"][name],
                hp=hp,
                target_hp=target_hp,
                mp=mp,
                geometry=geometry,
                changed=changed,
                initiative=initiative,
                entropy=entropy,
                hypothesis=hyp,
            )
            for name in profile["strategy_order"]
        }
        winner = max(scored, key=scored.get)
        winners[winner] += 1
        scenario_count += 1
    unreachable = sorted(name for name, count in winners.items() if count == 0)
    if unreachable:
        result.error(
            path,
            f"strategies never win deterministic context sweep: {unreachable}",
        )
    else:
        result.check("deterministic_strategy_reachability", scenario_count)

    survival = [
        name
        for name, strategy in profile["strategies"].items()
        if strategy.get("drivers", {}).get("survival", 0) >= 0.8
    ]
    lethal = [
        name
        for name, strategy in profile["strategies"].items()
        if strategy.get("drivers", {}).get("lethal", 0) >= 0.8
    ]
    if not survival:
        result.error(path, "no strategy is eligible for immediate lethal defense")
    if not lethal:
        result.error(path, "no strategy is eligible for a lethal opportunity")
    result.details.setdefault("strategy_winners", {})[path.name] = winners


def validate_profile(
    path: Path,
    text: str,
    clean: str,
    chunk: Any,
    profile_name: str,
    profile: dict[str, Any],
    result: Result,
) -> None:
    required = {
        "character",
        "identity",
        "identity_mode",
        "probe_style",
        "strategy_order",
        "strategies",
        "plans",
        "intentions",
        "action_traits",
        "probe_order",
        "probes",
        "conditioning_breaks",
        "fallback_intention",
        "error_profile",
    }
    missing = sorted(required - profile.keys())
    if missing:
        result.error(path, f"{profile_name} missing fields: {missing}")
        return

    strategies = profile["strategies"]
    plans = profile["plans"]
    intentions = profile["intentions"]
    traits = profile["action_traits"]
    errors: list[str] = []
    if profile["identity_mode"] not in IDENTITY_MODES:
        errors.append(f"unknown identity_mode {profile['identity_mode']!r}")
    if len(strategies) < 3:
        errors.append("fewer than three match strategies")
    for name in profile["strategy_order"]:
        if name not in strategies:
            errors.append(f"strategy_order references {name!r}")
    for name, strategy in strategies.items():
        plan_names = strategy.get("plans", [])
        if len(plan_names) < 2:
            errors.append(f"strategy {name!r} has fewer than two plans")
        for plan_name in plan_names:
            if plan_name not in plans:
                errors.append(f"strategy {name!r} references plan {plan_name!r}")
    for name, plan in plans.items():
        intention_names = plan.get("intentions", [])
        if len(intention_names) < 2:
            errors.append(f"plan {name!r} has fewer than two intentions")
        for intention_name in intention_names:
            if intention_name not in intentions:
                errors.append(
                    f"plan {name!r} references intention {intention_name!r}"
                )
    used_actions: set[str] = set()
    for name, intention in intentions.items():
        actions = intention.get("actions", [])
        roles = intention.get("roles", [])
        if not actions:
            errors.append(f"intention {name!r} has no motor actions")
        if len(actions) != len(roles):
            errors.append(f"intention {name!r} action/role lengths differ")
        for action in actions:
            used_actions.add(action)
            if action not in traits:
                errors.append(
                    f"intention {name!r} references unknown action {action!r}"
                )
    for probe_name in profile["probe_order"]:
        if probe_name not in profile["probes"]:
            errors.append(f"probe_order references {probe_name!r}")
    for name, probe in profile["probes"].items():
        if probe.get("hypothesis") not in HYPOTHESES:
            errors.append(f"probe {name!r} has unknown hypothesis")
        if probe.get("max_repetitions", 999) > 3:
            errors.append(f"probe {name!r} is not repetition-bounded")
        for action in probe.get("actions", []):
            if action not in traits:
                errors.append(f"probe {name!r} references {action!r}")
    for shown, breaker in profile["conditioning_breaks"].items():
        if shown not in traits or breaker not in traits:
            errors.append(
                f"conditioning pair {shown!r}->{breaker!r} is not executable"
            )
    if profile["fallback_intention"] not in intentions:
        errors.append("fallback intention does not exist")
    unused_traits = sorted(set(traits) - used_actions)
    if unused_traits:
        errors.append(f"action traits unreachable from intentions: {unused_traits}")

    callback_map = callback_action_map(clean)
    action_callbacks = {
        action: callback
        for callback, (action, _) in callback_map.items()
        if action in traits
    }
    missing_actions = sorted(set(traits) - set(action_callbacks))
    if missing_actions:
        errors.append(f"actions without DECIDE callbacks: {missing_actions}")
    active_callback_refs = set(re.findall(r'"(CF_[A-Za-z0-9_-]+)"', clean))
    inactive_actions = sorted(
        action
        for action, callback in action_callbacks.items()
        if callback not in active_callback_refs
    )
    if inactive_actions:
        errors.append(f"action callbacks not referenced by states: {inactive_actions}")

    v5 = find_profile(path, chunk, "PVP_PRO_AI_V5_PROFILE_")
    if v5:
        _, v5_profile = v5
        finishers = set(v5_profile.get("finisher_actions", []))
        missing_finishers = sorted(finishers - set(action_callbacks))
        if missing_finishers:
            errors.append(f"V5 finishers have no executable callback: {missing_finishers}")
        roles = {role for _, role in callback_map.values()}
        for playbook, steps in v5_profile.get("playbooks", {}).items():
            missing_roles = [step for step in steps if step not in roles]
            if missing_roles:
                errors.append(
                    f"V5 playbook {playbook!r} has unreachable roles {missing_roles}"
                )

    for message in errors:
        result.error(path, message)
    if not errors:
        result.check("hierarchy_graph_valid")
        result.check("motor_actions_reachable", len(traits))
        result.check("probes_bounded", len(profile["probes"]))
        result.check("conditioning_pairs_valid", len(profile["conditioning_breaks"]))
    validate_strategy_scenarios(path, profile, result)

    v6 = text[text.index(V6_MARKER) :]
    forbidden = re.findall(
        r"\b(?:io\.open|io\.write|os\.execute|GetCurrentInput|GetKeyState)\b", v6
    )
    if forbidden:
        result.error(path, f"forbidden V6 runtime access: {sorted(set(forbidden))}")
    if "PVP_PRO_AI_V6_TELEMETRY_LIMIT = 96" not in v6:
        result.error(path, "telemetry ring limit is not fixed at 96")
    if "while #telemetry.events > PVP_PRO_AI_V6_TELEMETRY_LIMIT" not in v6:
        result.error(path, "telemetry ring has no bounded eviction")
    if "pcall( print, message )" not in v6:
        result.error(path, "optional console telemetry is not guarded")
    else:
        result.check("telemetry_is_bounded_and_guarded")
    if "route_stats_limit_v6 = 48" not in v6:
        result.error(path, "route-context memory has no 48-entry bound")
    else:
        result.check("route_memory_is_bounded")
    if "PVP_PRO_AI_V6_CONFIRM_TYPE" not in v6:
        result.error(path, "V6 confirmation classifier is missing")
    if "motor_trace_v6" not in v6:
        result.error(path, "hierarchical motor trace is missing")


def validate_v7_file(
    path: Path,
    text: str,
    chunk: Any,
    v6_profile: dict[str, Any],
    result: Result,
) -> tuple[str, str] | None:
    if V7_MARKER not in text:
        return None
    if text.count(V7_MARKER) != 1:
        result.error(path, "V7 marker must occur exactly once")
    profile_found = find_profile(path, chunk, "PVP_PRO_AI_V7_PROFILE_")
    if profile_found is None:
        result.error(path, "V7 runtime profile assignment not found")
        return None
    profile_name, profile = profile_found
    missing = sorted(V7_PROFILE_FIELDS - profile.keys())
    if missing:
        result.error(path, f"{profile_name} missing fields: {missing}")
    if profile.get("character") != v6_profile.get("character"):
        result.error(path, "V7 character does not match V6 profile")

    traits = v6_profile.get("action_traits", {})
    unknown_timing = sorted(set(profile.get("action_timing", {})) - set(traits))
    if unknown_timing:
        result.error(path, f"V7 timing references unknown actions: {unknown_timing}")
    unknown_ranges = sorted(set(profile.get("range_overrides", {})) - set(traits))
    if unknown_ranges:
        result.error(path, f"V7 range overrides unknown actions: {unknown_ranges}")
    unknown_dormant = sorted(set(profile.get("dormant_actions", {})) - set(traits))
    if unknown_dormant:
        result.error(path, f"V7 dormant metadata references unknown actions: {unknown_dormant}")

    v7_start = text.index(V7_MARKER)
    v6_assignment = re.search(
        r"(?m)^PVP_PRO_AI_V6_PROFILE_[A-Z0-9_]+\s*=", text[v7_start:]
    )
    if v6_assignment is None:
        result.error(path, "V7 shared-core boundary cannot find V6 profile")
        return None
    v7 = text[v7_start : v7_start + v6_assignment.start()]
    required_tokens = {
        "PVP_PRO_AI_V7_SIGNAL_CONTRACT": "canonical signal contract",
        "PVP_PRO_AI_V7_CAPTURE_RAW": "runtime observation adapter",
        "PVP_PRO_AI_V7_EMIT_OBSERVATION": "normalized observations",
        "PVP_PRO_AI_V7_LIFECYCLE_STATES": "action lifecycle",
        "PVP_PRO_AI_V7_ADVANCE_ACTION": "confirmation state machine",
        "PVP_PRO_AI_V7_FINALIZE_ACTION": "terminal action handling",
        "PVP_PRO_AI_V7_UPDATE_RESOURCE_BELIEF": "resource inference",
        "PVP_PRO_AI_V7_UPDATE_OCCUPANCY": "occupancy diagnostics",
        "PVP_PRO_AI_V7_COUNTERFACTUAL": "counterfactual diagnostics",
        "PVP_PRO_AI_V7_DIAGNOSTIC_SNAPSHOT": "diagnostic snapshot",
        "PVP_PRO_AI_V7_OBSERVATION_LIMIT = 32": "observation bound",
        "PVP_PRO_AI_V7_TERMINAL_ACTION_LIMIT = 24": "terminal-history bound",
    }
    for token, purpose in required_tokens.items():
        if token not in v7:
            result.error(path, f"V7 missing {purpose}: {token}")

    declared_classes = set(
        re.findall(r'PVP_PRO_AI_V7_SIGNAL\(\s*"([A-Z_]+)"', v7)
    )
    missing_classes = sorted(V7_SIGNAL_CLASSES - declared_classes)
    if missing_classes:
        result.error(path, f"V7 signal classes not represented: {missing_classes}")
    signal_names = re.findall(
        r"(?m)^\s*([a-z][a-z0-9_]*)\s*=\s*PVP_PRO_AI_V7_SIGNAL\(", v7
    )
    if len(signal_names) < 40:
        result.error(path, f"V7 signal census has only {len(signal_names)} entries")
    if len(signal_names) != len(set(signal_names)):
        result.error(path, "V7 signal contract contains duplicate names")

    unavailable_direct = re.findall(
        r'PVP_PRO_AI_V7_EMIT_OBSERVATION\([^\)]*"(?:frame_advantage|'
        r'opponent_cooldown_state|exact_defensive_resources|terrain_context|'
        r'platform_context|corner_context|stable_opponent_identity|collision_outcome|'
        r'animation_cancel_window|exact_hit_class)"',
        v7,
        flags=re.DOTALL,
    )
    if unavailable_direct:
        result.error(path, "UNAVAILABLE signal is emitted as runtime observation")

    for state in (
        "ACTION_SELECTED",
        "ACTION_REQUESTED",
        "ACTION_STARTED",
        "CONTACT_WINDOW",
        "PROBABLE_HIT",
        "CONFIRMED_DAMAGE",
        "PROBABLE_BLOCK_OR_ARMOR",
        "PROBABLE_WHIFF",
        "INTERRUPTED",
        "CANCELLED",
        "TIMED_OUT",
        "ACTION_RECOVERED",
        "RESULT_UNCERTAIN",
    ):
        if state not in v7:
            result.error(path, f"V7 lifecycle state is missing: {state}")

    if "while #memory.current_observations_v7" not in v7:
        result.error(path, "V7 observation storage has no bounded eviction")
    if "while #memory.terminal_actions_v7" not in v7:
        result.error(path, "V7 terminal action history has no bounded eviction")
    if "memory.v7_inside_legacy_tick" not in v7:
        result.error(path, "V7 does not separate legacy feedback attribution")
    if "engine rejection incorrectly" in v7:
        result.error(path, "test-only assertion leaked into NPC runtime")
    if re.search(r"\b(?:io\.open|io\.write|os\.execute|GetCurrentInput|GetKeyState)\b", v7):
        result.error(path, "forbidden V7 runtime access")
    if "PVP_PRO_AI_SET_RUNTIME_PROFILE(" not in text[text.index(profile_name) :]:
        result.error(path, "final AI tick does not install the V7 runtime profile")
    else:
        result.check("v7_runtime_profile_bound")

    result.check("v7_signal_contract_entries", len(signal_names))
    result.check("v7_lifecycle_states", 14)
    result.check("v7_runtime_profile_valid")
    result.check("v7_nil_guards")
    result.check("v7_bounded_observability")
    result.check("v7_counterfactual_diagnostics")
    core_hash = hashlib.sha256(v7.encode("utf-8")).hexdigest()
    return core_hash, str(profile.get("identity", "unknown"))


def validate_file(
    path: Path, result: Result
) -> tuple[str, str, str, str, str | None, str | None] | None:
    text = path.read_text(encoding="utf-8-sig")
    clean = strip_lua_comments(text)
    try:
        chunk = AST.parse(text)
    except Exception as exc:  # luaparser exposes several parser exception types
        result.error(path, f"Lua parse failed: {type(exc).__name__}: {exc}")
        return None
    result.check("lua_parse")
    if V6_MARKER not in text:
        return None
    validate_runtime_graph(path, clean, result)
    if text.count(V6_MARKER) != 1:
        result.error(path, "V6 marker must occur exactly once")
    profile_found = find_profile(path, chunk, "PVP_PRO_AI_V6_PROFILE_")
    if profile_found is None:
        result.error(path, "V6 profile assignment not found")
        return None
    profile_name, profile = profile_found
    validate_authority_leaks(path, clean, result)
    validate_profile(
        path, text, clean, chunk, profile_name, profile, result
    )
    v7_info = validate_v7_file(path, text, chunk, profile, result)
    core = text[text.index(V6_MARKER) : text.index(profile_name)]
    core_hash = hashlib.sha256(core.encode("utf-8")).hexdigest()
    graph = {
        "strategy_order": profile.get("strategy_order", []),
        "strategies": {
            name: value.get("plans", [])
            for name, value in profile.get("strategies", {}).items()
        },
        "plans": {
            name: value.get("intentions", [])
            for name, value in profile.get("plans", {}).items()
        },
        "intentions": {
            name: value.get("actions", [])
            for name, value in profile.get("intentions", {}).items()
        },
    }
    graph_hash = hashlib.sha256(
        json.dumps(graph, sort_keys=True).encode("utf-8")
    ).hexdigest()
    return (
        core_hash,
        str(profile.get("identity", "unknown")),
        str(profile.get("identity_mode", "unknown")),
        graph_hash,
        v7_info[0] if v7_info else None,
        v7_info[1] if v7_info else None,
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--canonical-only",
        action="store_true",
        help="validate Amelia's V6 plus baseline syntax of all ten scripts",
    )
    parser.add_argument(
        "--require-all",
        action="store_true",
        help="fail unless all ten scripts contain V6",
    )
    parser.add_argument(
        "--require-v7",
        action="store_true",
        help="fail unless all ten scripts contain the V7 runtime-grounding layer",
    )
    parser.add_argument("--json", action="store_true")
    args = parser.parse_args()

    result = Result()
    core_hashes: dict[str, str] = {}
    identities: dict[str, str] = {}
    identity_modes: dict[str, str] = {}
    behavior_graphs: dict[str, str] = {}
    v7_core_hashes: dict[str, str] = {}
    runtime_identities: dict[str, str] = {}
    for filename in BOT_FILES:
        path = NPC_DIR / filename
        if not path.is_file():
            result.error(path, "target NPC script is missing")
            continue
        result.files.append(filename)
        validated = validate_file(path, result)
        if validated:
            (
                core_hashes[filename],
                identities[filename],
                identity_modes[filename],
                behavior_graphs[filename],
                v7_hash,
                runtime_identity,
            ) = validated
            if v7_hash is not None:
                v7_core_hashes[filename] = v7_hash
                runtime_identities[filename] = runtime_identity or "unknown"

    expected_v6_count = 1 if args.canonical_only else len(BOT_FILES)
    if args.require_all:
        expected_v6_count = len(BOT_FILES)
    if len(core_hashes) != expected_v6_count:
        result.errors.append(
            f"V6 coverage is {len(core_hashes)}/{expected_v6_count} expected files"
        )
    if len(core_hashes) > 1 and len(set(core_hashes.values())) != 1:
        result.errors.append(
            "shared V6 core differs across scripts: "
            + json.dumps(core_hashes, sort_keys=True)
        )
    if len(identities) > 1 and len(set(identities.values())) != len(identities):
        result.errors.append(
            "competitive identity names are not unique: "
            + json.dumps(identities, sort_keys=True)
        )
    if len(identity_modes) > 1 and len(set(identity_modes.values())) != len(
        identity_modes
    ):
        result.errors.append(
            "identity modes are not unique: "
            + json.dumps(identity_modes, sort_keys=True)
        )
    if len(identity_modes) == len(BOT_FILES) and set(identity_modes.values()) != IDENTITY_MODES:
        result.errors.append(
            "roster does not cover the ten distinct identity execution modes"
        )
    if len(behavior_graphs) > 1 and len(set(behavior_graphs.values())) != len(
        behavior_graphs
    ):
        result.errors.append(
            "character behavior graphs differ only by profile values: "
            + json.dumps(behavior_graphs, sort_keys=True)
        )
    if args.require_v7 and len(v7_core_hashes) != len(BOT_FILES):
        result.errors.append(
            f"V7 coverage is {len(v7_core_hashes)}/{len(BOT_FILES)} expected files"
        )
    if len(v7_core_hashes) > 1 and len(set(v7_core_hashes.values())) != 1:
        result.errors.append(
            "shared V7 core differs across scripts: "
            + json.dumps(v7_core_hashes, sort_keys=True)
        )
    if len(runtime_identities) > 1 and len(set(runtime_identities.values())) != len(
        runtime_identities
    ):
        result.errors.append(
            "V7 runtime identity names are not unique: "
            + json.dumps(runtime_identities, sort_keys=True)
        )
    result.details["v6_core_hashes"] = core_hashes
    result.details["identities"] = identities
    result.details["identity_modes"] = identity_modes
    result.details["behavior_graphs"] = behavior_graphs
    result.details["v6_coverage"] = f"{len(core_hashes)}/{len(BOT_FILES)}"
    result.details["v7_core_hashes"] = v7_core_hashes
    result.details["runtime_identities"] = runtime_identities
    result.details["v7_coverage"] = f"{len(v7_core_hashes)}/{len(BOT_FILES)}"

    payload = {
        "ok": not result.errors,
        "files": result.files,
        "checks": result.checks,
        "errors": result.errors,
        "warnings": result.warnings,
        "details": result.details,
    }
    if args.json:
        print(json.dumps(payload, indent=2, sort_keys=True))
    else:
        status = "PASS" if payload["ok"] else "FAIL"
        print(f"PVP_AI_V6_VALIDATION_{status}")
        if args.require_v7:
            print(f"PVP_AI_V7_STATIC_VALIDATION_{status}")
        print(
            f"files={len(result.files)} coverage={result.details['v6_coverage']} "
            f"v7_coverage={result.details['v7_coverage']}"
        )
        for name, count in sorted(result.checks.items()):
            print(f"check {name}={count}")
        for warning in result.warnings:
            print(f"warning {warning}")
        for error in result.errors:
            print(f"error {error}")
        for filename, winners in result.details.get(
            "strategy_winners", {}
        ).items():
            print(
                "strategy_reachability "
                + filename
                + " "
                + " ".join(f"{name}={count}" for name, count in winners.items())
            )
    return 0 if payload["ok"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
