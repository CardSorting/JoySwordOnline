#!/usr/bin/env python3
"""Propagate Amelia's validated V7 core and roster-specific runtime profiles."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
NPC_DIR = ROOT / "Elsword" / "ClientScript" / "Npc"
V6_MARKER = "-- Sixth-generation competitive cognition and arena-calibration layer"
V7_MARKER = "-- Seventh-generation runtime grounding and calibration-readiness layer"


PROFILES: dict[str, tuple[str, str]] = {
    "APPLE": (
        "PVP_PRO_AI_V7_PROFILE_APPLE",
        r'''PVP_PRO_AI_V7_PROFILE_APPLE = {
	character = "apple",
	identity = "high_conversion_optimizer_runtime",
	calibration = {
		confirmation_timeout = 10, state_start_timeout = 4,
		strategy_min_commit = 36, strategy_failure_threshold = 2,
		exchange_timeout = 32, range_tolerance = 82,
		surprise_hesitation = 1, probe_confidence = 0.61,
		resource_inference_decay = 0.020, route_drop_penalty = 8,
		repetition_tolerance = 4, defensive_option_confidence = 0.57,
		tempo_transition_min = 6, observation_ttl = 4,
		identity_snapshot_interval = 55, counterfactual_noise = 18,
		max_action_timeout = 19, range_failure_penalty = 7,
	},
	timing_scale = { startup = 0.94, contact = 0.92, recovery = 1.04, movement = 0.96 },
	role_timing = {
		combo = { followup_min = 1, followup_max = 5 },
		burst = { resource_delay_max = 6, callback_gap = true },
	},
	action_timing = {
		heavens_fist = { startup_min = 3, startup_max = 7, contact_min = 4,
			contact_max = 10, recovery_min = 6, recovery_max = 15,
			timeout = 20, timing_confidence = 0.19 },
		nasod_combo = { startup_min = 1, startup_max = 3, contact_min = 1,
			contact_max = 5, recovery_min = 3, recovery_max = 8,
			timeout = 12, timing_confidence = 0.29 },
		electron_combo_range = { startup_min = 2, startup_max = 5,
			contact_min = 2, contact_max = 8, recovery_min = 4,
			recovery_max = 11, timeout = 17, timing_confidence = 0.23 },
	},
	occupancy = { strategy_soft_min = 36, strategy_soft_max = 88,
		plan_soft_min = 14, plan_soft_max = 34,
		preferred_observation_rate = 0.12, preferred_commitment_rate = 0.32 },
	identity_targets = { preferred_range = "mid", observation = "low_to_measured",
		commitment = "confirm_then_convert", retreat = "route_preserving",
		probe = "conversion_test", strategy_persistence = "medium",
		resource_spending = "cashout_biased", combo_extension = "high",
		defensive_patience = "medium", momentum_sensitivity = "medium" },
	range_overrides = {
		electron_combo_range = { min_dist = 260, max_dist = 980 },
		nasod_dash_catch = { min_dist = 120, max_dist = 620 },
		heavens_fist = { min_dist = 0, max_dist = 760 },
	},
	dormant_actions = {},
}''',
    ),
    "BALAK": (
        "PVP_PRO_AI_V7_PROFILE_BALAK",
        r'''PVP_PRO_AI_V7_PROFILE_BALAK = {
	character = "balak",
	identity = "far_rotation_spacing_technician_runtime",
	calibration = {
		confirmation_timeout = 12, state_start_timeout = 5,
		strategy_min_commit = 42, strategy_failure_threshold = 2,
		exchange_timeout = 38, range_tolerance = 128,
		surprise_hesitation = 1, probe_confidence = 0.63,
		resource_inference_decay = 0.018, route_drop_penalty = 5,
		repetition_tolerance = 4, defensive_option_confidence = 0.55,
		tempo_transition_min = 5, observation_ttl = 4,
		identity_snapshot_interval = 55, counterfactual_noise = 30,
		max_action_timeout = 20, range_failure_penalty = 8,
	},
	timing_scale = { startup = 0.96, contact = 1.02, recovery = 0.94, movement = 0.84 },
	role_timing = {
		advance = { movement_max = 5, followup_max = 7 },
		air_move = { movement_max = 6, recovery_max = 7 },
	},
	action_timing = {
		shadow_step = { startup_min = 1, startup_max = 4, contact_min = 2,
			contact_max = 7, recovery_min = 3, recovery_max = 9,
			timeout = 14, timing_confidence = 0.26 },
		wild_charge = { startup_min = 2, startup_max = 5, contact_min = 3,
			contact_max = 8, recovery_min = 4, recovery_max = 11,
			timeout = 17, timing_confidence = 0.22 },
		valkyrie_javelin = { startup_min = 2, startup_max = 5,
			contact_min = 3, contact_max = 9, recovery_min = 4,
			recovery_max = 12, timeout = 18, timing_confidence = 0.21 },
	},
	occupancy = { strategy_soft_min = 42, strategy_soft_max = 96,
		plan_soft_min = 16, plan_soft_max = 39,
		preferred_observation_rate = 0.16, preferred_commitment_rate = 0.22 },
	identity_targets = { preferred_range = "far_rotation", observation = "moving_scan",
		commitment = "lane_aligned", retreat = "frequent_reposition",
		probe = "geometry_test", strategy_persistence = "medium_high",
		resource_spending = "range_conversion", combo_extension = "carry_first",
		defensive_patience = "movement_first", momentum_sensitivity = "low" },
	range_overrides = {
		valkyrie_javelin = { min_dist = 420, max_dist = 1280 },
		shadow_step = { min_dist = 240, max_dist = 1040 },
		assassin_advance = { min_dist = 360, max_dist = 1600 },
	},
	dormant_actions = {},
}''',
    ),
    "EDAN": (
        "PVP_PRO_AI_V7_PROFILE_EDAN",
        r'''PVP_PRO_AI_V7_PROFILE_EDAN = {
	character = "edan",
	identity = "relentless_pressure_runtime",
	calibration = {
		confirmation_timeout = 10, state_start_timeout = 4,
		strategy_min_commit = 30, strategy_failure_threshold = 3,
		exchange_timeout = 30, range_tolerance = 88,
		surprise_hesitation = 0, probe_confidence = 0.58,
		resource_inference_decay = 0.023, route_drop_penalty = 4,
		repetition_tolerance = 5, defensive_option_confidence = 0.54,
		tempo_transition_min = 4, observation_ttl = 3,
		identity_snapshot_interval = 50, counterfactual_noise = 16,
		max_action_timeout = 18, range_failure_penalty = 6,
	},
	timing_scale = { startup = 0.88, contact = 0.90, recovery = 1.10, movement = 0.88 },
	role_timing = {
		chase = { startup_max = 3, movement_max = 5, followup_max = 6 },
		combo = { followup_min = 1, followup_max = 5 },
	},
	action_timing = {
		shock_wave = { startup_min = 2, startup_max = 5, contact_min = 3,
			contact_max = 9, recovery_min = 5, recovery_max = 12,
			timeout = 18, timing_confidence = 0.21 },
		wolf_pang = { startup_min = 1, startup_max = 3, contact_min = 2,
			contact_max = 6, recovery_min = 3, recovery_max = 8,
			timeout = 13, timing_confidence = 0.28 },
		berserker_blade = { startup_min = 2, startup_max = 5,
			contact_min = 2, contact_max = 8, recovery_min = 5,
			recovery_max = 13, timeout = 18, timing_confidence = 0.22 },
	},
	occupancy = { strategy_soft_min = 30, strategy_soft_max = 74,
		plan_soft_min = 12, plan_soft_max = 31,
		preferred_observation_rate = 0.08, preferred_commitment_rate = 0.38 },
	identity_targets = { preferred_range = "close_to_mid", observation = "brief",
		commitment = "frequent_layered", retreat = "short_reset",
		probe = "pressure_gap_test", strategy_persistence = "medium_low",
		resource_spending = "tempo_accelerating", combo_extension = "pressure_first",
		defensive_patience = "low", momentum_sensitivity = "high" },
	range_overrides = {
		shock_wave = { min_dist = 470, max_dist = 1220 },
		wolf_pang = { min_dist = 180, max_dist = 860 },
		shadow_step = { min_dist = 250, max_dist = 1020 },
	},
	dormant_actions = {
		shock_wave = { parent_plans = { "layered_pressure", "shock_resource_turn" },
			parent_intention = "gap_overload_or_distant_closeout",
			coverage_policy = "targeted_high_mp_range_scenario" },
	},
}''',
    ),
    "LIME": (
        "PVP_PRO_AI_V7_PROFILE_LIME",
        r'''PVP_PRO_AI_V7_PROFILE_LIME = {
	character = "lime",
	identity = "defensive_survival_specialist_runtime",
	calibration = {
		confirmation_timeout = 12, state_start_timeout = 5,
		strategy_min_commit = 58, strategy_failure_threshold = 2,
		exchange_timeout = 44, range_tolerance = 108,
		surprise_hesitation = 2, probe_confidence = 0.70,
		resource_inference_decay = 0.012, route_drop_penalty = 6,
		repetition_tolerance = 4, defensive_option_confidence = 0.70,
		tempo_transition_min = 10, observation_ttl = 5,
		identity_snapshot_interval = 65, counterfactual_noise = 24,
		max_action_timeout = 21, range_failure_penalty = 5,
	},
	timing_scale = { startup = 1.04, contact = 1.06, recovery = 1.10, movement = 1.02 },
	role_timing = {
		guard = { startup_max = 4, recovery_max = 11 },
		escape = { followup_min = 3, followup_max = 9 },
	},
	action_timing = {
		airelinna = { startup_min = 2, startup_max = 6, contact_min = 3,
			contact_max = 8, recovery_min = 5, recovery_max = 14,
			timeout = 20, timing_confidence = 0.19 },
		reflect_kick = { startup_min = 1, startup_max = 3, contact_min = 1,
			contact_max = 5, recovery_min = 3, recovery_max = 8,
			timeout = 12, timing_confidence = 0.29 },
		tumbling_shot = { startup_min = 1, startup_max = 4, contact_min = 2,
			contact_max = 6, recovery_min = 3, recovery_max = 9,
			timeout = 14, timing_confidence = 0.26 },
	},
	occupancy = { strategy_soft_min = 58, strategy_soft_max = 122,
		plan_soft_min = 22, plan_soft_max = 48,
		preferred_observation_rate = 0.25, preferred_commitment_rate = 0.14 },
	identity_targets = { preferred_range = "mid_safe", observation = "high",
		commitment = "survival_gated", retreat = "frequent_safe",
		probe = "patient_defense_test", strategy_persistence = "very_high",
		resource_spending = "defense_reserved", combo_extension = "low_variance",
		defensive_patience = "very_high", momentum_sensitivity = "low" },
	range_overrides = {
		pulling_arrow = { min_dist = 300, max_dist = 1250 },
		longbow_poke = { min_dist = 360, max_dist = 1300 },
		dash_kick_catch = { min_dist = 100, max_dist = 560 },
	},
	dormant_actions = {},
}''',
    ),
    "LOW": (
        "PVP_PRO_AI_V7_PROFILE_LOW",
        r'''PVP_PRO_AI_V7_PROFILE_LOW = {
	character = "low",
	identity = "volatile_momentum_duelist_runtime",
	calibration = {
		confirmation_timeout = 10, state_start_timeout = 4,
		strategy_min_commit = 28, strategy_failure_threshold = 3,
		exchange_timeout = 29, range_tolerance = 78,
		surprise_hesitation = 1, probe_confidence = 0.57,
		resource_inference_decay = 0.026, route_drop_penalty = 5,
		repetition_tolerance = 5, defensive_option_confidence = 0.61,
		tempo_transition_min = 3, observation_ttl = 3,
		identity_snapshot_interval = 45, counterfactual_noise = 15,
		max_action_timeout = 19, range_failure_penalty = 7,
	},
	timing_scale = { startup = 0.91, contact = 0.91, recovery = 1.08, movement = 0.90 },
	role_timing = {
		guard = { startup_max = 3, contact_max = 5 },
		burst = { followup_min = 3, followup_max = 10 },
	},
	action_timing = {
		revenge_parry = { startup_min = 1, startup_max = 3, contact_min = 1,
			contact_max = 5, recovery_min = 3, recovery_max = 9,
			timeout = 13, timing_confidence = 0.27 },
		fatal_fury = { startup_min = 2, startup_max = 6, contact_min = 3,
			contact_max = 9, recovery_min = 6, recovery_max = 14,
			timeout = 20, timing_confidence = 0.20 },
		rolling_smash = { startup_min = 1, startup_max = 4, contact_min = 2,
			contact_max = 7, recovery_min = 3, recovery_max = 9,
			timeout = 14, timing_confidence = 0.25 },
	},
	occupancy = { strategy_soft_min = 28, strategy_soft_max = 70,
		plan_soft_min = 11, plan_soft_max = 30,
		preferred_observation_rate = 0.09, preferred_commitment_rate = 0.40 },
	identity_targets = { preferred_range = "close", observation = "momentary",
		commitment = "momentum_driven", retreat = "tempo_reset",
		probe = "parry_representation", strategy_persistence = "volatile_bounded",
		resource_spending = "comeback_burst", combo_extension = "momentum_high",
		defensive_patience = "read_dependent", momentum_sensitivity = "very_high" },
	range_overrides = {
		revenge_parry = { min_dist = 0, max_dist = 210 },
		fatal_fury = { min_dist = 0, max_dist = 280 },
		rolling_smash = { min_dist = 120, max_dist = 760 },
	},
	dormant_actions = {
		revenge_parry = { parent_plans = { "parry_download", "opponent_brake_check" },
			parent_intention = "parry_read_or_held_parry_punish",
			coverage_policy = "targeted_close_guard_scenario" },
		fatal_fury = { parent_plans = { "respect_test", "fatal_cashout" },
			parent_intention = "momentum_cashout_or_comeback_swing",
			coverage_policy = "targeted_high_mp_close_cashout" },
	},
}''',
    ),
    "NOA": (
        "PVP_PRO_AI_V7_PROFILE_NOA",
        r'''PVP_PRO_AI_V7_PROFILE_NOA = {
	character = "noa",
	identity = "resource_control_strategist_runtime",
	calibration = {
		confirmation_timeout = 12, state_start_timeout = 5,
		strategy_min_commit = 50, strategy_failure_threshold = 2,
		exchange_timeout = 42, range_tolerance = 112,
		surprise_hesitation = 2, probe_confidence = 0.68,
		resource_inference_decay = 0.013, route_drop_penalty = 6,
		repetition_tolerance = 4, defensive_option_confidence = 0.67,
		tempo_transition_min = 8, observation_ttl = 5,
		identity_snapshot_interval = 60, counterfactual_noise = 25,
		max_action_timeout = 22, range_failure_penalty = 6,
	},
	timing_scale = { startup = 1.06, contact = 1.08, recovery = 1.08, movement = 1.00 },
	role_timing = {
		resource = { resource_delay_max = 7, callback_gap = true },
		control = { contact_max = 8, recovery_max = 12 },
	},
	action_timing = {
		blizzard = { startup_min = 3, startup_max = 7, contact_min = 4,
			contact_max = 11, recovery_min = 6, recovery_max = 16,
			timeout = 22, timing_confidence = 0.18 },
		magic_missile = { startup_min = 2, startup_max = 5, contact_min = 3,
			contact_max = 9, recovery_min = 4, recovery_max = 12,
			timeout = 18, timing_confidence = 0.21 },
		teleport_reposition = { startup_min = 1, startup_max = 4,
			contact_min = 2, contact_max = 6, recovery_min = 3,
			recovery_max = 9, timeout = 14, timing_confidence = 0.25 },
	},
	occupancy = { strategy_soft_min = 50, strategy_soft_max = 110,
		plan_soft_min = 20, plan_soft_max = 46,
		preferred_observation_rate = 0.23, preferred_commitment_rate = 0.16 },
	identity_targets = { preferred_range = "mid_far_control", observation = "high",
		commitment = "resource_thresholded", retreat = "teleport_rebuild",
		probe = "resource_response", strategy_persistence = "high",
		resource_spending = "strict_budget", combo_extension = "resource_positive",
		defensive_patience = "high", momentum_sensitivity = "low" },
	range_overrides = {
		blizzard = { min_dist = 240, max_dist = 1050 },
		magic_missile = { min_dist = 360, max_dist = 1350 },
		teleport_reposition = { min_dist = 650, max_dist = 1600 },
	},
	dormant_actions = {},
}''',
    ),
    "PENENSIO": (
        "PVP_PRO_AI_V7_PROFILE_PENENSIO",
        r'''PVP_PRO_AI_V7_PROFILE_PENENSIO = {
	character = "penensio",
	identity = "adaptive_guard_allrounder_runtime",
	calibration = {
		confirmation_timeout = 12, state_start_timeout = 5,
		strategy_min_commit = 46, strategy_failure_threshold = 2,
		exchange_timeout = 40, range_tolerance = 96,
		surprise_hesitation = 1, probe_confidence = 0.66,
		resource_inference_decay = 0.016, route_drop_penalty = 6,
		repetition_tolerance = 4, defensive_option_confidence = 0.72,
		tempo_transition_min = 7, observation_ttl = 4,
		identity_snapshot_interval = 58, counterfactual_noise = 20,
		max_action_timeout = 21, range_failure_penalty = 6,
	},
	timing_scale = { startup = 1.00, contact = 1.04, recovery = 1.06, movement = 0.98 },
	role_timing = {
		guard = { contact_max = 7, recovery_max = 11, callback_gap = true },
		control = { resource_delay_max = 5, callback_gap = true },
	},
	action_timing = {
		revenge_parry = { startup_min = 1, startup_max = 3, contact_min = 1,
			contact_max = 5, recovery_min = 3, recovery_max = 9,
			timeout = 13, timing_confidence = 0.27 },
		rune_guard = { startup_min = 1, startup_max = 4, contact_min = 2,
			contact_max = 7, recovery_min = 4, recovery_max = 11,
			timeout = 16, timing_confidence = 0.23 },
		storm_blade = { startup_min = 3, startup_max = 7, contact_min = 4,
			contact_max = 11, recovery_min = 7, recovery_max = 16,
			timeout = 22, timing_confidence = 0.18 },
	},
	occupancy = { strategy_soft_min = 46, strategy_soft_max = 104,
		plan_soft_min = 18, plan_soft_max = 42,
		preferred_observation_rate = 0.20, preferred_commitment_rate = 0.21 },
	identity_targets = { preferred_range = "adaptive_mid", observation = "measured",
		commitment = "guard_confirmed", retreat = "matchup_dependent",
		probe = "element_and_guard_test", strategy_persistence = "high_bounded",
		resource_spending = "balanced", combo_extension = "confirm_quality",
		defensive_patience = "high_guard", momentum_sensitivity = "medium" },
	range_overrides = {
		revenge_parry = { min_dist = 0, max_dist = 210 },
		rune_guard = { min_dist = 250, max_dist = 650 },
		storm_blade = { min_dist = 0, max_dist = 520 },
	},
	dormant_actions = {
		revenge_parry = { parent_plans = { "element_lane_rotation", "opponent_change_review" },
			parent_intention = "sword_layer_or_storm_cashout",
			coverage_policy = "targeted_close_guard_scenario" },
	},
}''',
    ),
    "Q-PROTO_00": (
        "PVP_PRO_AI_V7_PROFILE_Q_PROTO_00",
        r'''PVP_PRO_AI_V7_PROFILE_Q_PROTO_00 = {
	character = "q_proto_00",
	identity = "reactive_punish_specialist_runtime",
	calibration = {
		confirmation_timeout = 11, state_start_timeout = 4,
		strategy_min_commit = 52, strategy_failure_threshold = 2,
		exchange_timeout = 39, range_tolerance = 90,
		surprise_hesitation = 2, probe_confidence = 0.72,
		resource_inference_decay = 0.014, route_drop_penalty = 7,
		repetition_tolerance = 3, defensive_option_confidence = 0.74,
		tempo_transition_min = 9, observation_ttl = 4,
		identity_snapshot_interval = 60, counterfactual_noise = 17,
		max_action_timeout = 20, range_failure_penalty = 7,
	},
	timing_scale = { startup = 0.98, contact = 0.96, recovery = 1.08, movement = 1.00 },
	role_timing = {
		guard = { followup_min = 2, followup_max = 7 },
		burst = { startup_max = 6, recovery_max = 14 },
	},
	action_timing = {
		atomic_blaster = { startup_min = 2, startup_max = 5, contact_min = 3,
			contact_max = 9, recovery_min = 5, recovery_max = 13,
			timeout = 19, timing_confidence = 0.21 },
		generate_blackhole = { startup_min = 3, startup_max = 7,
			contact_min = 4, contact_max = 11, recovery_min = 6,
			recovery_max = 16, timeout = 22, timing_confidence = 0.18 },
		nasod_reposition = { startup_min = 1, startup_max = 4,
			contact_min = 2, contact_max = 6, recovery_min = 3,
			recovery_max = 9, timeout = 14, timing_confidence = 0.25 },
	},
	occupancy = { strategy_soft_min = 52, strategy_soft_max = 112,
		plan_soft_min = 18, plan_soft_max = 43,
		preferred_observation_rate = 0.26, preferred_commitment_rate = 0.17 },
	identity_targets = { preferred_range = "counter_mid", observation = "high_reactive",
		commitment = "punish_only", retreat = "bait_spacing",
		probe = "challenge_timing", strategy_persistence = "high",
		resource_spending = "punish_confirmed", combo_extension = "high_conversion",
		defensive_patience = "very_high", momentum_sensitivity = "opponent_driven" },
	range_overrides = {
		atomic_blaster = { min_dist = 280, max_dist = 1080 },
		generate_blackhole = { min_dist = 180, max_dist = 900 },
		dash_catch = { min_dist = 120, max_dist = 560 },
	},
	dormant_actions = {},
}''',
    ),
    "SPIKA": (
        "PVP_PRO_AI_V7_PROFILE_SPIKA",
        r'''PVP_PRO_AI_V7_PROFILE_SPIKA = {
	character = "spika",
	identity = "deceptive_conditioning_specialist_runtime",
	calibration = {
		confirmation_timeout = 12, state_start_timeout = 5,
		strategy_min_commit = 44, strategy_failure_threshold = 2,
		exchange_timeout = 38, range_tolerance = 102,
		surprise_hesitation = 1, probe_confidence = 0.67,
		resource_inference_decay = 0.017, route_drop_penalty = 6,
		repetition_tolerance = 5, defensive_option_confidence = 0.59,
		tempo_transition_min = 6, observation_ttl = 4,
		identity_snapshot_interval = 52, counterfactual_noise = 23,
		max_action_timeout = 22, range_failure_penalty = 6,
	},
	timing_scale = { startup = 1.00, contact = 1.06, recovery = 1.02, movement = 0.91 },
	role_timing = {
		air = { movement_max = 6, followup_max = 8 },
		control = { contact_max = 9, callback_gap = true },
	},
	action_timing = {
		aging = { startup_min = 3, startup_max = 7, contact_min = 4,
			contact_max = 11, recovery_min = 6, recovery_max = 16,
			timeout = 22, timing_confidence = 0.18 },
		teleport_reposition = { startup_min = 1, startup_max = 4,
			contact_min = 2, contact_max = 6, recovery_min = 3,
			recovery_max = 9, timeout = 14, timing_confidence = 0.25 },
		shadow_air_quad = { startup_min = 2, startup_max = 5,
			contact_min = 2, contact_max = 8, recovery_min = 4,
			recovery_max = 11, timeout = 17, timing_confidence = 0.22 },
	},
	occupancy = { strategy_soft_min = 44, strategy_soft_max = 100,
		plan_soft_min = 17, plan_soft_max = 40,
		preferred_observation_rate = 0.18, preferred_commitment_rate = 0.24 },
	identity_targets = { preferred_range = "variable_misdirection", observation = "rhythmic",
		commitment = "pattern_break", retreat = "teleport_feint",
		probe = "conditioning_heavy", strategy_persistence = "medium_high",
		resource_spending = "masked_cashout", combo_extension = "route_change",
		defensive_patience = "deceptive", momentum_sensitivity = "medium_high" },
	range_overrides = {
		aging = { min_dist = 0, max_dist = 680 },
		teleport_reposition = { min_dist = 720, max_dist = 1600 },
		shadow_air_quad = { min_dist = 0, max_dist = 760 },
	},
	dormant_actions = {
		aging = { parent_plans = { "trap_resource_cycle", "hellstone_close" },
			parent_intention = "cloud_trap_or_plasma_cashout",
			coverage_policy = "targeted_full_resource_control_scenario" },
	},
}''',
    ),
}


def assignment_end(text: str, assignment_name: str) -> int:
    match = re.search(rf"(?m)^\s*{re.escape(assignment_name)}\s*=\s*\{{", text)
    if not match:
        raise ValueError(f"assignment not found: {assignment_name}")
    start = text.find("{", match.start())
    depth = 0
    quote: str | None = None
    escaped = False
    line_comment = False
    index = start
    while index < len(text):
        char = text[index]
        next_char = text[index + 1] if index + 1 < len(text) else ""
        if line_comment:
            if char in "\r\n":
                line_comment = False
            index += 1
            continue
        if quote is not None:
            if escaped:
                escaped = False
            elif char == "\\":
                escaped = True
            elif char == quote:
                quote = None
            index += 1
            continue
        if char == "-" and next_char == "-":
            line_comment = True
            index += 2
            continue
        if char in {'"', "'"}:
            quote = char
        elif char == "{":
            depth += 1
        elif char == "}":
            depth -= 1
            if depth == 0:
                return index + 1
        index += 1
    raise ValueError(f"unterminated assignment: {assignment_name}")


def decode(path: Path) -> tuple[str, bool]:
    data = path.read_bytes()
    has_bom = data.startswith(b"\xef\xbb\xbf")
    if has_bom:
        data = data[3:]
    return data.decode("utf-8"), has_bom


def encode(path: Path, text: str, has_bom: bool) -> None:
    data = text.encode("utf-8")
    if has_bom:
        data = b"\xef\xbb\xbf" + data
    path.write_bytes(data)


def main() -> int:
    parser = argparse.ArgumentParser()
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--apply", action="store_true")
    mode.add_argument("--check", action="store_true")
    args = parser.parse_args()

    canonical_path = NPC_DIR / "PVP_HERO_AMELIA.lua"
    canonical, _ = decode(canonical_path)
    core_start = canonical.index(V6_MARKER)
    core_end = canonical.index("PVP_PRO_AI_V6_PROFILE_AMELIA =")
    canonical_core = canonical[core_start:core_end]
    if canonical_core.count(V7_MARKER) != 1:
        raise SystemExit("canonical Amelia V7 core is missing or duplicated")

    changed: list[str] = []
    for suffix, (runtime_name, runtime_profile) in PROFILES.items():
        path = NPC_DIR / f"PVP_HERO_{suffix}.lua"
        text, has_bom = decode(path)
        original = text
        v6_match = re.search(r"(?m)^(PVP_PRO_AI_V6_PROFILE_[A-Z0-9_]+)\s*=", text)
        if not v6_match:
            raise SystemExit(f"{path.name}: V6 profile missing")
        v6_name = v6_match.group(1)
        old_core_start = text.index(V6_MARKER)
        old_profile_start = v6_match.start()
        text = text[:old_core_start] + canonical_core + text[old_profile_start:]

        v6_end = assignment_end(text, v6_name)
        runtime_match = re.search(
            rf"(?m)^\s*{re.escape(runtime_name)}\s*=\s*\{{", text
        )
        if runtime_match:
            runtime_end = assignment_end(text, runtime_name)
            text = text[: runtime_match.start()] + runtime_profile + text[runtime_end:]
        else:
            text = text[:v6_end] + "\n\n" + runtime_profile + text[v6_end:]

        call_pattern = re.compile(
            rf"PVP_PRO_AI_SET_COMPETITIVE_PROFILE\(\s*"
            rf"pNPCUnit,\s*{re.escape(v6_name)}\s*\)"
        )
        calls = list(call_pattern.finditer(text))
        if not calls:
            raise SystemExit(f"{path.name}: final V6 profile call missing")
        call = calls[-1]
        tail = text[call.end() : call.end() + 180]
        runtime_call = (
            f"\n\tPVP_PRO_AI_SET_RUNTIME_PROFILE(\n"
            f"\t\tpNPCUnit, {runtime_name} )"
        )
        if "PVP_PRO_AI_SET_RUNTIME_PROFILE" not in tail:
            text = text[: call.end()] + runtime_call + text[call.end() :]

        if text.count(V6_MARKER) != 1 or text.count(V7_MARKER) != 1:
            raise SystemExit(f"{path.name}: generation marker count invalid")
        if text.count(f"{runtime_name} =") != 1:
            raise SystemExit(f"{path.name}: runtime profile count invalid")
        if text != original:
            changed.append(path.name)
        if args.apply and text != original:
            encode(path, text, has_bom)

    if args.check:
        if changed:
            raise SystemExit(
                "PVP_AI_V7_SHARED_CORE_CHECK_FAIL files=" + ",".join(changed)
            )
        print("PVP_AI_V6_DIFF_CHECK_PASS")
        print("PVP_AI_V7_SHARED_CORE_CHECK_PASS files=10 propagated=9")
        return 0
    mode = "APPLIED" if args.apply else "DRY_RUN"
    print(f"PVP_AI_V7_PROPAGATION_{mode} files={len(changed)}")
    for name in changed:
        print(name)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
