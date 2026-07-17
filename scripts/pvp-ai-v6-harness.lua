-- Deterministic Lua 5.1 harness for the shared JoySword PvP AI V6 core.

local sourcePath = assert( arg[1],
	"usage: lua5.1 pvp-ai-v6-harness.lua <npc.lua> [--v7]" )
local runV7 = arg[2] == "--v7"
math.randomseed( 16072026 )

TRUE = true
FALSE = false

PVP_PRO_AI_MEMORY = setmetatable( {}, { __mode = "k" } )
PVP_PRO_AI_V4_OPTIONS = { "approach", "retreat", "jump", "feint", "hold" }
PVP_PRO_AI_V5_ATTACK_FAMILY = {
	combo = true, chase = true, air = true,
	burst = true, control = true, poke = true,
}

function PVP_PRO_AI_CLAMP( value, low, high )
	if value < low then return low end
	if value > high then return high end
	return value
end

function PVP_PRO_AI_V3_SMOOTH( current, sample, speed )
	return current + ( sample - current ) * speed
end

function PVP_PRO_AI_V3_BAND( distance )
	if distance < 330 then return "close" end
	if distance < 780 then return "mid" end
	return "far"
end

function PVP_PRO_AI_V4_COUNTER_ROLE( memory, option )
	local roles = {
		approach = "guard", retreat = "chase", jump = "air",
		feint = "poke", hold = "control",
	}
	return roles[option] or "control"
end

function PVP_PRO_AI_GET( unit )
	local memory = PVP_PRO_AI_MEMORY[unit]
	if memory ~= nil then return memory end
	memory = {
		tick = 0,
		hp_rate = 1,
		target_hp = 1000,
		target_hp_max = 1000,
		target_hp_rate = 1,
		mp = 120,
		distance = 560,
		vertical_offset = 0,
		distance_velocity = 0,
		pressure = 0,
		initiative = 0,
		round_index_v5 = 1,
		round_lead_v5 = 0,
		belief_entropy_v5 = 0.85,
		belief_option_v5 = "hold",
		observed_option = "hold",
		previous_observed_option = "hold",
		combo_active_v5 = false,
		combo_hits_v5 = 0,
		combo_scaling_v5 = 1,
		knockdown_risk_v5 = 0,
		pending_actions = {},
		last_used = {},
		last_considered = {},
		once = {},
		defense_exposure_v5 = {
			mana_break = 0, roll = 0, awakening = 0,
		},
		opponent_model = {
			aggression = 0.3, evasion = 0.2, aerial = 0.2,
			zoning = 0.2, reversal = 0.2, panic = 0.2,
		},
		strategic_profile = {
			reset_threshold = 0.65,
			playbooks = {
				download = {}, outplay = {}, pressure = {},
				deny = {}, stabilize = {}, survive = {}, finish = {},
			},
		},
		meta_profile = { finisher_threshold = 0.3 },
		playbook_roles_v5 = { "poke", "control", "escape" },
		playbook_step_v5 = 1,
		goal_until_v5 = 0,
		playbook_until_v5 = 0,
	}
	PVP_PRO_AI_MEMORY[unit] = memory
	return memory
end

function PVP_PRO_AI_HP_RATE( unit )
	return unit.hp / unit.max_hp
end

function PVP_PRO_AI_HAS_BACK_SPACE( unit, needed )
	return unit.back_space >= needed
end

function PVP_PRO_AI_ONCE( unit, key, chance )
	return chance >= 50
end

-- V5 compatibility stubs captured by the V6 aliases.
function PVP_PRO_AI_TICK( game, unit, reactionMin, reactionMax )
	local memory = PVP_PRO_AI_GET( unit )
	memory.tick = memory.tick + 1
	memory.hp_rate = PVP_PRO_AI_HP_RATE( unit )
	memory.mp = unit.mp
	memory.distance = game.distance
	memory.vertical_offset = game.vertical
	memory.distance_velocity = game.velocity
	memory.target_hp = game.target_hp
	memory.target_hp_max = game.target_max
	memory.target_hp_rate = game.target_hp / game.target_max
	memory.reaction_min = reactionMin
	memory.reaction_max = reactionMax
	return false
end

function PVP_PRO_AI_LEARN( memory, entry, success )
	-- The harness tests V6 learning in isolation.
end

function PVP_PRO_AI_READY(
	unit, action, family, chance, cooldown, reconsider, urgent )
	local memory = PVP_PRO_AI_GET( unit )
	if chance < 1 then return false end
	if PVP_PRO_AI_V5_ATTACK_FAMILY[family] == true then
		table.insert( memory.pending_actions, {
			action = action, family = family,
			tick = memory.tick, window = 4,
		} )
		while #memory.pending_actions > 3 do
			table.remove( memory.pending_actions, 1 )
		end
	end
	return true
end

function PVP_PRO_AI_DECIDE(
	game, unit, action, role,
	minDist, maxDist, minMP, chance, cooldown )
	if game.distance < minDist or game.distance > maxDist
		or unit.mp < minMP then return false end
	return PVP_PRO_AI_READY(
		unit, action, role, chance, cooldown, 2, false )
end

function PVP_PRO_AI_MANA_BREAK( unit )
	return unit.mp >= 100
end

function PVP_PRO_AI_ROLL( game, unit )
	return unit.back_space >= 180
end

function PVP_PRO_AI_COMBO_RESET( game, unit, resetRange, chance )
	return game.distance <= resetRange and chance >= 50
end

function PVP_PRO_AI_AWAKEN( game, unit, offensiveRange, aggression )
	return unit.hyper > 0 and aggression >= 0
end

function PVP_PRO_AI_SET_PROFILE( unit, profile ) end
function PVP_PRO_AI_SET_META_PROFILE( unit, profile ) end
function PVP_PRO_AI_SET_STRATEGIC_PROFILE( unit, profile )
	PVP_PRO_AI_GET( unit ).strategic_profile = profile
end

local file = assert( io.open( sourcePath, "rb" ) )
local source = file:read( "*a" )
file:close()
local marker =
	"-- Sixth-generation competitive cognition and arena-calibration layer"
local start = assert( source:find( marker, 1, true ), "V6 marker missing" )
local chunk, loadError = loadstring(
	source:sub( start ), "@" .. sourcePath .. ":V6" )
assert( chunk, loadError )
chunk()

local profileName = assert(
	source:match( "(PVP_PRO_AI_V6_PROFILE_[A-Z0-9_]+)%s*=" ),
	"V6 profile assignment missing" )
local profile = assert( _G[profileName], "V6 profile did not load" )
local runtimeProfileName = source:match(
	"(PVP_PRO_AI_V7_PROFILE_[A-Z0-9_]+)%s*=" )
local runtimeProfile = runtimeProfileName ~= nil
	and _G[runtimeProfileName] or nil

local function expect( condition, message )
	if condition ~= true then error( "ASSERTION_FAILED: " .. message, 2 ) end
end

local unit = {
	hp = 1000, max_hp = 1000, mp = 180,
	hyper = 3, hit = false, state_time = 0.4,
	state_id = 1, back_space = 900,
	pos = { x = 0, y = 0, z = 0 },
}
function unit:GetNowHP() return self.hp end
function unit:GetMaxHP() return self.max_hp end
function unit:GetNowMP() return self.mp end
function unit:GetHyperModeCount() return self.hyper end
function unit:GetUnitCondition_bHit() return self.hit end
function unit:GetStateTime() return self.state_time end
function unit:GetNowStateID() return self.state_id end
function unit:GetPos() return self.pos end

local game = {
	distance = 560, vertical = 0, velocity = 0,
	target_hp = 1000, target_max = 1000,
}
function game:GetFocusUnitPos_LUA()
	return { x = self.distance, y = self.vertical, z = 0 }
end
local target = {}
function target:GetNowHP() return game.target_hp end
function unit:GetTargetUser() return target end
local memory = PVP_PRO_AI_GET( unit )
PVP_PRO_AI_V6_INIT( memory )
PVP_PRO_AI_SET_COMPETITIVE_PROFILE(
	unit, profile )
if runtimeProfile ~= nil
	and type( PVP_PRO_AI_SET_RUNTIME_PROFILE ) == "function" then
	PVP_PRO_AI_SET_RUNTIME_PROFILE( unit, runtimeProfile )
end

-- Bounded structured telemetry.
for index = 1, 130 do
	memory.tick = index
	PVP_PRO_AI_V6_EVENT( memory, "harness_event", { index = index } )
end
expect( #memory.telemetry_v6.events == 96,
	"telemetry ring must evict old events" )

-- Evidence cannot become certain from one observation.
memory.tick = 140
PVP_PRO_AI_V6_EVIDENCE(
	memory, "panic_escape", true, 1, "pressure", true )
expect( memory.hypotheses_v6.panic_escape.confidence <= 0.55,
	"one observation exceeded weak-evidence confidence cap" )
memory.tick = 146
PVP_PRO_AI_V6_EVIDENCE(
	memory, "panic_escape", true, 1, "pressure", true )
memory.tick = 152
PVP_PRO_AI_V6_EVIDENCE(
	memory, "panic_escape", true, 1, "pressure", true )
expect( memory.hypotheses_v6.panic_escape.confirmations == 3,
	"independent confirmations were not counted" )
expect( memory.hypotheses_v6.panic_escape.confidence <= 0.88,
	"hypothesis exceeded hard confidence cap" )

-- Severe threats and lethal opportunities override inertia only for
-- explicitly eligible strategies.
local initialStrategy = profile.strategy_order[1]
local survivalStrategy, survivalWeight = nil, -1
local lethalStrategy, lethalWeight = nil, -1
for name, strategy in pairs( profile.strategies ) do
	local survival = ( strategy.drivers or {}).survival or 0
	local lethal = ( strategy.drivers or {}).lethal or 0
	if survival > survivalWeight then
		survivalStrategy, survivalWeight = name, survival
	end
	if lethal > lethalWeight then
		lethalStrategy, lethalWeight = name, lethal
	end
end

memory.match_strategy_v6 = initialStrategy
memory.strategy_since_v6 = 80
memory.strategy_until_v6 = 999
memory.tick = 180
memory.target_hp_rate = 0.82
PVP_PRO_AI_V6_SELECT_STRATEGY( memory, 0.15, 120, false )
expect( memory.match_strategy_v6 == survivalStrategy,
	"lethal-risk strategy override did not select survival theory" )

memory.match_strategy_v6 = initialStrategy
memory.strategy_since_v6 = 120
memory.strategy_until_v6 = 999
memory.tick = 220
memory.target_hp_rate = 0.15
PVP_PRO_AI_V6_SELECT_STRATEGY( memory, 0.80, 240, false )
expect( memory.match_strategy_v6 == lethalStrategy,
	"lethal opportunity did not select finishing theory" )

-- One failed action cannot replace a match strategy.
memory.match_strategy_v6 = initialStrategy
memory.strategy_since_v6 = 220
memory.strategy_until_v6 = 999
memory.strategy_failures_v6 = 1
memory.tick = 230
memory.target_hp_rate = 0.75
PVP_PRO_AI_V6_SELECT_STRATEGY( memory, 0.72, 170, false )
expect( memory.match_strategy_v6 == initialStrategy,
	"single failure caused strategy thrashing" )

-- Every selected hierarchy reaches an executable tactical action.
memory.exchange_plan_v6 = nil
memory.tactical_intention_v6 = nil
memory.strategy_until_v6 = 999
PVP_PRO_AI_V6_UPDATE_HIERARCHY( memory, 0.72, 170, false )
expect( memory.exchange_plan_v6 ~= nil, "exchange plan was not selected" )
expect( memory.tactical_intention_v6 ~= nil,
	"tactical intention was not selected" )
expect( PVP_PRO_AI_V6_EXPECTED_ACTION( memory ) ~= nil,
	"tactical intention did not reach a motor action" )

-- Probes are suppressed at immediate risk.
memory.active_probe_v6 = nil
memory.probe_cooldown_until_v6 = 0
memory.hp_rate = 0.20
expect( PVP_PRO_AI_V6_SHOULD_PROBE( memory ) == false,
	"probe was allowed during immediate lethal risk" )
memory.hp_rate = 0.72

-- Contextual route memory stays bounded.
for index = 1, 70 do
	memory.tick = 240 + index
	PVP_PRO_AI_V6_ROUTE_STATS( memory, "route_" .. tostring( index ) )
end
expect( #memory.route_keys_v6 == 48,
	"route-context memory exceeded its bound" )

-- A deliberately split observation window requires repeated evidence before
-- declaring non-stationarity.
memory.recent_observations_v6 = {}
for index = 1, 6 do
	table.insert( memory.recent_observations_v6, {
		option = "approach", context = "neutral", tick = index,
	} )
end
for index = 7, 12 do
	table.insert( memory.recent_observations_v6, {
		option = "retreat", context = "neutral", tick = index,
	} )
end
memory.behavior_change_tick_v6 = 0
memory.behavior_change_score_v6 = 0
memory.behavior_changed_v6 = false
memory.tick = 300
PVP_PRO_AI_V6_DETECT_CHANGE( memory )
expect( memory.behavior_changed_v6 == false,
	"single divergence sample overfit opponent adaptation" )
memory.tick = 304
PVP_PRO_AI_V6_DETECT_CHANGE( memory )
expect( memory.behavior_changed_v6 == false,
	"two divergence samples overfit opponent adaptation" )
memory.tick = 308
PVP_PRO_AI_V6_DETECT_CHANGE( memory )
expect( memory.behavior_changed_v6 == true,
	"stable divergent window did not trigger change detection" )

-- Motor selection carries the complete hierarchy into pending-action
-- learning and produces a classified confirmation.
local motorStrategy, motorPlan, motorIntention
local motorAction, motorTrait
for strategyName, strategy in pairs( profile.strategies ) do
	for _, planName in ipairs( strategy.plans or {} ) do
		local plan = profile.plans[planName]
		for _, intentionName in ipairs(
			plan ~= nil and plan.intentions or {} ) do
			local intention = profile.intentions[intentionName]
			for _, action in ipairs(
				intention ~= nil and intention.actions or {} ) do
				local trait = profile.action_traits[action]
				if trait ~= nil
					and PVP_PRO_AI_V5_ATTACK_FAMILY[trait.role] == true then
					motorStrategy, motorPlan, motorIntention =
						strategyName, planName, intentionName
					motorAction, motorTrait = action, trait
					break
				end
			end
			if motorAction ~= nil then break end
		end
		if motorAction ~= nil then break end
	end
	if motorAction ~= nil then break end
end
expect( motorAction ~= nil, "profile has no attack motor for trace test" )
memory.match_strategy_v6 = motorStrategy
memory.exchange_plan_v6 = motorPlan
memory.tactical_intention_v6 = motorIntention
memory.intention_step_v6 = 1
memory.engagement_phase_v6 = "threat"
memory.distance = ( ( motorTrait.min_dist or 0 )
	+ ( motorTrait.max_dist or 1000 ) ) * 0.5
memory.vertical_offset = 0
unit.mp = math.max( unit.mp, motorTrait.mp or 0 )
memory.mp = unit.mp
memory.tick = 320
memory.v6_current_hp_rate = 1
game.distance = memory.distance
local selected = PVP_PRO_AI_DECIDE(
	game, unit, motorAction, motorTrait.role,
	motorTrait.min_dist or 0, motorTrait.max_dist or 2000,
	motorTrait.mp or 0, 100, 0 )
expect( selected == true, "expected motor action was not selected" )
expect( memory.motor_trace_v6.strategy == motorStrategy,
	"motor trace lost match strategy" )
expect( memory.motor_trace_v6.plan == motorPlan,
	"motor trace lost exchange plan" )
expect( memory.motor_trace_v6.intention == motorIntention,
	"motor trace lost tactical intention" )
local pending = memory.pending_actions[#memory.pending_actions]
expect( pending ~= nil and pending.route_key_v6 ~= nil,
	"pending action was not annotated with V6 context" )
memory.tick = 322
memory.v6_current_hp_rate = 1
memory.target_hp = 930
pending.damage = 70
pending.remaining_hp = 930
PVP_PRO_AI_LEARN( memory, pending, true )
expect( PVP_PRO_AI_V6_CONFIRM_TYPES[memory.last_confirm_type_v6] == true,
	"motor outcome did not receive a valid confirmation class" )

local function sortedActions( profile )
	local actions = {}
	for action, _ in pairs( profile.action_traits ) do
		table.insert( actions, action )
	end
	table.sort( actions )
	return actions
end

local function opponentFrame( scenario, tick )
	local phase = tick % 36
	if scenario == "aggressive" then
		return "approach", 250 + ( phase % 7 ) * 18, -28, 0
	elseif scenario == "defensive" then
		if phase < 24 then return "hold", 760, 2, 0 end
		return "retreat", 920, 24, 0
	elseif scenario == "repetitive" then
		return "approach", 330 + ( phase % 5 ) * 20, -22, 0
	elseif scenario == "movement_heavy" then
		if phase % 2 == 0 then return "jump", 620, -4, 190 end
		return "feint", 540, phase < 18 and -20 or 20, 70
	elseif scenario == "resource_conservative" then
		if phase < 30 then return "hold", 840, 0, 0 end
		return "approach", 310, -32, 0
	elseif scenario == "adaptive_shift" then
		if tick < 170 then return "approach", 320, -24, 0 end
		return "retreat", 900, 26, 0
	elseif scenario == "unfavorable" then
		return phase % 3 == 0 and "jump" or "approach",
			230 + phase * 3, -30, phase % 3 == 0 and 210 or 0
	elseif scenario == "favorable" then
		return phase < 20 and "retreat" or "hold",
			700 + phase * 5, 16, 0
	elseif scenario == "randomized" then
		local options = { "approach", "hold", "jump", "retreat", "feint" }
		local option = options[( tick * 7 ) % #options + 1]
		return option, 280 + ( tick * 43 ) % 720,
			( tick * 31 ) % 61 - 30,
			option == "jump" and 180 or 0
	end
	if phase < 9 then return "approach", 430, -18, 0 end
	if phase < 18 then return "hold", 580, 0, 0 end
	if phase < 27 then return "retreat", 760, 20, 0 end
	return "feint", 540, -16, 80
end

local function runScenario( scenario, seed )
	math.randomseed( 16072026 + seed )
	local simUnit = {
		hp = 1000, max_hp = 1000, mp = 160,
		hyper = 3, hit = false, state_time = 0.4,
		state_id = 1, back_space = 900,
		pos = { x = 0, y = 0, z = 0 },
	}
	function simUnit:GetNowHP() return self.hp end
	function simUnit:GetMaxHP() return self.max_hp end
	function simUnit:GetNowMP() return self.mp end
	function simUnit:GetHyperModeCount() return self.hyper end
	function simUnit:GetUnitCondition_bHit() return self.hit end
	function simUnit:GetStateTime() return self.state_time end
	function simUnit:GetNowStateID() return self.state_id end
	function simUnit:GetPos() return self.pos end
	local simGame = {
		distance = 560, vertical = 0, velocity = 0,
		target_hp = 1000, target_max = 1000,
	}
	function simGame:GetFocusUnitPos_LUA()
		return { x = self.distance, y = self.vertical, z = 0 }
	end
	local simTarget = {}
	function simTarget:GetNowHP() return simGame.target_hp end
	function simUnit:GetTargetUser() return simTarget end
	local simMemory = PVP_PRO_AI_GET( simUnit )
	PVP_PRO_AI_V6_INIT( simMemory )
	PVP_PRO_AI_SET_COMPETITIVE_PROFILE(
		simUnit, profile )
	if runtimeProfile ~= nil
		and type( PVP_PRO_AI_SET_RUNTIME_PROFILE ) == "function" then
		PVP_PRO_AI_SET_RUNTIME_PROFILE( simUnit, runtimeProfile )
	end
	local actions = sortedActions( profile )
	local actionCounts, strategySeen, planSeen = {}, {}, {}
	local attempts, confirms, damage, damageTaken = 0, 0, 0, 0

	for tick = 1, 360 do
		local option, distance, velocity, vertical =
			opponentFrame( scenario, tick )
		simMemory.observed_option = option
		simGame.distance = distance
		simGame.velocity = velocity
		simGame.vertical = vertical
		simUnit.mp = math.min( 300, simUnit.mp + 3 )
		PVP_PRO_AI_TICK( simGame, simUnit, 1, 3 )
		strategySeen[simMemory.match_strategy_v6 or "none"] = true
		planSeen[simMemory.exchange_plan_v6 or "none"] = true

		local bestAction, bestTrait, bestScore = nil, nil, -999
		for index, action in ipairs( actions ) do
			local trait = profile.action_traits[action]
			local signValid = true
			if action == "ranger_air_drop" then signValid = vertical < -55 end
			if action == "ranger_vertical_intercept" then
				signValid = vertical > 55
			end
			local feasible = signValid
				and distance >= ( trait.min_dist or 0 )
				and distance <= ( trait.max_dist or 2000 )
				and simUnit.mp >= ( trait.mp or 0 )
				and math.abs( vertical ) <= ( trait.vertical or 999 )
			if feasible then
				local score = PVP_PRO_AI_V6_ACTION_UTILITY(
					simMemory, action, trait.role, trait.mp or 0 )
					+ ( ( tick * 17 + index * 13 ) % 9 ) * 0.08
				if score > bestScore then
					bestAction, bestTrait, bestScore =
						action, trait, score
				end
			end
		end

		if bestAction ~= nil then
			simMemory.v6_context = {
				action = bestAction, role = bestTrait.role,
				min_mp = bestTrait.mp or 0,
				strategy = simMemory.match_strategy_v6,
				plan = simMemory.exchange_plan_v6,
				intention = simMemory.tactical_intention_v6,
				phase = simMemory.engagement_phase_v6,
				combo_goal = simMemory.combo_goal_v6,
				route_key = PVP_PRO_AI_V6_ROUTE_KEY(
					simMemory, bestAction ),
			}
			local selected = PVP_PRO_AI_READY(
				simUnit, bestAction, bestTrait.role,
				100, 0, 0, false )
			simMemory.v6_context = nil
			if selected == true then
				attempts = attempts + 1
				actionCounts[bestAction] =
					( actionCounts[bestAction] or 0 ) + 1
				local pendingAction =
					simMemory.pending_actions[
						#simMemory.pending_actions]
				local attack =
					PVP_PRO_AI_V5_ATTACK_FAMILY[
						bestTrait.role] == true
				if attack == true and pendingAction ~= nil
					and pendingAction.action == bestAction then
					local reliability = bestTrait.reliability or 0.65
					if scenario == "unfavorable" then
						reliability = reliability - 0.16
					elseif scenario == "favorable" then
						reliability = reliability + 0.10
					elseif scenario == "movement_heavy" then
						reliability = reliability - 0.08
					end
					local roll =
						( tick * 37 + seed * 19
							+ #bestAction * 11 ) % 100 / 100
					local success = roll < reliability
					local dealt = 0
					local taken = 0
					if success == true then
						confirms = confirms + 1
						dealt = 24 + ( bestTrait.conversion or 0.4 ) * 58
						if scenario == "aggressive" and tick % 5 == 0 then
							taken = 9
						end
					else
						taken = scenario == "unfavorable" and 28
							or ( scenario == "aggressive" and 20 or 10 )
					end
					damage = damage + dealt
					damageTaken = damageTaken + taken
					simGame.target_hp =
						math.max( 1, simGame.target_hp - dealt )
					simUnit.hp = math.max( 80, simUnit.hp - taken )
					simMemory.v6_current_hp_rate =
						simUnit.hp / simUnit.max_hp
					pendingAction.damage = dealt
					pendingAction.remaining_hp = simGame.target_hp
					PVP_PRO_AI_LEARN(
						simMemory, pendingAction, success )
					table.remove( simMemory.pending_actions )
					simUnit.mp = math.max(
						0, simUnit.mp
							- math.floor( ( bestTrait.mp or 0 ) * 0.18 ) )
				end
			end
		end

		if tick % 120 == 0 then
			simGame.target_hp = 1000
			simUnit.hp = 1000
			simMemory.round_index_v5 =
				simMemory.round_index_v5 + 1
			simMemory.strategy_until_v6 = simMemory.tick
		end
	end

	local uniqueActions, maxAction, maxActionName = 0, 0, "none"
	for action, count in pairs( actionCounts ) do
		uniqueActions = uniqueActions + 1
		if count > maxAction then
			maxAction, maxActionName = count, action
		end
	end
	local uniqueStrategies, uniquePlans = 0, 0
	for _ in pairs( strategySeen ) do uniqueStrategies = uniqueStrategies + 1 end
	for _ in pairs( planSeen ) do uniquePlans = uniquePlans + 1 end
	local repetition = attempts > 0 and maxAction / attempts or 1
	expect( uniqueActions >= 3,
		scenario .. " produced insufficient action diversity" )
	expect( uniqueStrategies >= 1,
		scenario .. " produced no match strategy" )
	expect( uniquePlans >= 2,
		scenario .. " produced insufficient exchange-plan diversity" )
	expect( repetition <= 0.68,
		scenario .. " allowed motor action " .. maxActionName
			.. " to dominate at " .. string.format( "%.3f", repetition ) )
	expect( #simMemory.telemetry_v6.events <= 96,
		scenario .. " exceeded telemetry bound" )
	return {
		actions = uniqueActions,
		strategies = uniqueStrategies,
		plans = uniquePlans,
		repetition = repetition,
		confirm_rate = confirms / math.max( 1, attempts ),
		damage = damage,
		damage_taken = damageTaken,
		probes = simMemory.telemetry_v6.counters.probe_started or 0,
		changes =
			simMemory.telemetry_v6.counters.opponent_change_detected or 0,
		action_names = actionCounts,
		strategy_names = strategySeen,
		plan_names = planSeen,
	}
end

local scenarios = {
	"mirror", "favorable", "unfavorable", "aggressive", "defensive",
	"repetitive", "movement_heavy", "resource_conservative",
	"randomized", "adaptive_shift",
}
local aggregateActions, aggregateStrategies, aggregatePlans = {}, {}, {}
local aggregateMaxRepetition = 0
for index, scenario in ipairs( scenarios ) do
	local metric = runScenario( scenario, index )
	aggregateMaxRepetition = math.max(
		aggregateMaxRepetition, metric.repetition )
	for name in pairs( metric.action_names ) do aggregateActions[name] = true end
	for name in pairs( metric.strategy_names ) do aggregateStrategies[name] = true end
	for name in pairs( metric.plan_names ) do aggregatePlans[name] = true end
	print(
		"PVP_AI_V6_SCENARIO"
		.. " character=" .. tostring( profile.character )
		.. " name=" .. scenario
		.. " actions=" .. tostring( metric.actions )
		.. " strategies=" .. tostring( metric.strategies )
		.. " plans=" .. tostring( metric.plans )
		.. " repetition=" .. string.format( "%.3f", metric.repetition )
		.. " confirm_rate=" .. string.format( "%.3f", metric.confirm_rate )
		.. " damage=" .. string.format( "%.1f", metric.damage )
		.. " damage_taken=" .. string.format( "%.1f", metric.damage_taken )
		.. " probes=" .. tostring( metric.probes )
		.. " changes=" .. tostring( metric.changes )
	)
end

local function countKeys( values )
	local count = 0
	for _ in pairs( values ) do count = count + 1 end
	return count
end

local dormantActions = {}
for _, action in ipairs( sortedActions( profile ) ) do
	if aggregateActions[action] ~= true then
		table.insert( dormantActions, action )
	end
end
print(
	"PVP_AI_V6_DORMANT_ACTIONS"
	.. " character=" .. tostring( profile.character )
	.. " count=" .. tostring( #dormantActions )
	.. " actions=" .. ( #dormantActions > 0
		and table.concat( dormantActions, "," ) or "none" )
)
expect( countKeys( aggregateActions ) >= 6,
	"scenario suite did not exercise enough motor actions" )
expect( countKeys( aggregateStrategies ) >= 3,
	"scenario suite did not exercise enough match strategies" )
expect( countKeys( aggregatePlans ) >= 5,
	"scenario suite did not exercise enough exchange plans" )

print(
	"PVP_AI_V6_LUA_HARNESS_PASS"
	.. " character=" .. tostring( profile.character )
	.. " aggregate_actions=" .. tostring( countKeys( aggregateActions ) )
	.. " aggregate_strategies=" .. tostring( countKeys( aggregateStrategies ) )
	.. " aggregate_plans=" .. tostring( countKeys( aggregatePlans ) )
	.. " max_repetition=" .. string.format( "%.3f", aggregateMaxRepetition )
	.. " telemetry=" .. tostring( #memory.telemetry_v6.events )
	.. " routes=" .. tostring( #memory.route_keys_v6 )
	.. " strategy=" .. tostring( memory.match_strategy_v6 )
	.. " plan=" .. tostring( memory.exchange_plan_v6 )
	.. " intention=" .. tostring( memory.tactical_intention_v6 )
	.. " confirm=" .. tostring( memory.last_confirm_type_v6 )
)

if runV7 ~= true then return end

expect( type( PVP_PRO_AI_V7_SIGNAL_CONTRACT ) == "table",
	"V7 signal contract missing" )
expect( type( PVP_PRO_AI_V7_DIAGNOSTIC_SNAPSHOT ) == "function",
	"V7 diagnostic snapshot missing" )
expect( runtimeProfile ~= nil, "V7 runtime profile missing" )

local requiredSignalFields = {
	"classification", "source", "data_type", "update_frequency",
	"persistence_lifetime", "stale_after", "nilable",
	"character_specific", "harness_simulated", "confidence", "consumers",
}
local signalCount, unavailableCount = 0, 0
for signalName, signal in pairs( PVP_PRO_AI_V7_SIGNAL_CONTRACT ) do
	signalCount = signalCount + 1
	expect( PVP_PRO_AI_V7_SIGNAL_CLASSES[signal.classification] == true,
		"invalid signal class for " .. signalName )
	for _, field in ipairs( requiredSignalFields ) do
		expect( signal[field] ~= nil,
			"signal " .. signalName .. " missing " .. field )
	end
	if signal.classification == "UNAVAILABLE" then
		unavailableCount = unavailableCount + 1
		expect( signal.confidence == 0,
			"unavailable signal carried nonzero confidence: " .. signalName )
	end
end
expect( signalCount >= 40, "signal census is incomplete" )
expect( unavailableCount >= 8, "unavailable signal boundary is incomplete" )

local v7ScenarioNames = {
	"delayed_confirmation",
	"ambiguous_confirmation",
	"false_positive_hp_change",
	"interrupted_startup",
	"recovery_overlap",
	"missed_followup_window",
	"stale_target_distance",
	"resource_update_delay",
	"callback_reordering",
	"temporary_nil_values",
	"opponent_death_pending",
	"life_reset_unresolved",
	"plan_invalidation_startup",
	"repeated_engine_rejection",
	"long_animation_lock",
	"short_recovery",
	"range_transition",
	"bounded_scheduling_jitter",
	"dormant_targeted",
	"identity_distinctness",
}

local function newRuntimeWorld()
	local game = {
		distance = 560, reported_distance = nil,
		vertical = 0, target_hp = 1000, target_max = 1000,
		nil_focus = false,
	}
	function game:GetFocusUnitPos_LUA()
		if self.nil_focus == true then return nil end
		return {
			x = self.reported_distance or self.distance,
			y = self.vertical, z = 0,
		}
	end
	local unit = {
		hp = 1000, max_hp = 1000, mp = 300,
		hyper = 3, hit = false, state_time = 0.8,
		state_id = 1, back_space = 900,
		pos = { x = 0, y = 0, z = 0 },
		nil_hp = false, nil_mp = false, nil_position = false,
		nil_state = false, nil_hit = false, nil_target = false,
		nil_target_hp = false,
	}
	function unit:GetNowHP()
		if self.nil_hp == true then return nil end
		return self.hp
	end
	function unit:GetMaxHP() return self.max_hp end
	function unit:GetNowMP()
		if self.nil_mp == true then return nil end
		return self.mp
	end
	function unit:GetHyperModeCount() return self.hyper end
	function unit:GetUnitCondition_bHit()
		if self.nil_hit == true then return nil end
		return self.hit
	end
	function unit:GetStateTime()
		if self.nil_state == true then return nil end
		return self.state_time
	end
	function unit:GetNowStateID()
		if self.nil_state == true then return nil end
		return self.state_id
	end
	function unit:GetPos()
		if self.nil_position == true then return nil end
		return self.pos
	end
	local target = {}
	function target:GetNowHP()
		if unit.nil_target_hp == true then return nil end
		return game.target_hp
	end
	function unit:GetTargetUser()
		if self.nil_target == true then return nil end
		return target
	end
	return game, unit
end

local function characterDormantActions()
	local actions = {}
	for action, metadata in pairs( PVP_PRO_AI_V7_DORMANT_ACTIONS ) do
		if string.find(
			metadata.character, profile.character, 1, true ) ~= nil
			and profile.action_traits[action] ~= nil then
			table.insert( actions, action )
		end
	end
	table.sort( actions )
	return actions
end

local function configureForAction( game, unit, action )
	local trait = profile.action_traits[action]
	if trait == nil then return end
	local minimum = trait.min_dist or 0
	local maximum = trait.max_dist or 1200
	game.distance = math.max( minimum + 12,
		math.min( maximum - 12, ( minimum + maximum ) * 0.5 ) )
	if maximum - minimum < 28 then game.distance = ( minimum + maximum ) * 0.5 end
	game.vertical = 0
	if action == "ranger_air_drop" then game.vertical = -120 end
	if action == "ranger_vertical_intercept" then game.vertical = 120 end
	unit.mp = math.max( unit.mp, trait.mp or 0, 300 )
end

local function chooseRuntimeAction( memory, game, unit, scenario, requestIndex )
	local dormant = characterDormantActions()
	if scenario == "dormant_targeted" and #dormant > 0 then
		local action = dormant[( requestIndex - 1 ) % #dormant + 1]
		configureForAction( game, unit, action )
		return action
	end
	if scenario == "ambiguous_confirmation" then
		for _, action in ipairs( sortedActions( profile ) ) do
			local trait = profile.action_traits[action]
			if PVP_PRO_AI_V5_ATTACK_FAMILY[trait.role] == true then
				configureForAction( game, unit, action )
				return action
			end
		end
	end
	local best = PVP_PRO_AI_V7_BEST_ACTION_AT(
		memory, game.distance, unit.mp, game.vertical )
	if best ~= nil then return best end
	for _, action in ipairs( sortedActions( profile ) ) do
		local trait = profile.action_traits[action]
		if PVP_PRO_AI_V5_ATTACK_FAMILY[trait.role] == true then
			configureForAction( game, unit, action )
			return action
		end
	end
	return sortedActions( profile )[1]
end

local function scheduleRuntimeAction(
	scenario, execution, requestIndex )
	local timing = execution.timing
	local model = {
		request_tick = execution.request_tick,
		contact_max = timing.contact_max,
		start_delay = 1,
		damage_delay = 3,
		recovery_delay = 5,
		resource_delay = nil,
		damage = 28,
		started = false, damaged = false, recovered = false,
		resource_spent = false, interrupted = false,
		maximum_age = math.max( 9, timing.timeout + 3 ),
	}
	if scenario == "delayed_confirmation" then
		model.start_delay = 2
		model.damage_delay = math.min(
			timing.contact_max, timing.contact_min + 3 ) + 2
		model.maximum_age = timing.timeout + 5
	elseif scenario == "ambiguous_confirmation" then
		model.start_delay, model.damage_delay = 1, nil
	elseif scenario == "false_positive_hp_change" then
		model.start_delay, model.damage_delay = 1, 3
	elseif scenario == "interrupted_startup" then
		model.start_delay, model.damage_delay = 4, nil
		model.interrupt_delay = 2
	elseif scenario == "recovery_overlap" then
		model.start_delay, model.damage_delay, model.recovery_delay = 1, 3, 3
	elseif scenario == "missed_followup_window" then
		model.start_delay, model.damage_delay = 1, nil
	elseif scenario == "stale_target_distance" then
		model.start_delay, model.damage_delay = 2, 4
	elseif scenario == "resource_update_delay" then
		model.start_delay, model.damage_delay = nil, 6
		model.resource_delay = 3
	elseif scenario == "callback_reordering" then
		model.start_delay, model.damage_delay = 4, 1
	elseif scenario == "temporary_nil_values" then
		model.start_delay, model.damage_delay = 2, 5
	elseif scenario == "opponent_death_pending" then
		model.start_delay, model.damage_delay = 1, 3
		model.damage = 5000
	elseif scenario == "life_reset_unresolved" then
		model.start_delay, model.damage_delay = 4, nil
		model.life_low_delay, model.life_reset_delay = 1, 2
	elseif scenario == "plan_invalidation_startup" then
		model.start_delay, model.damage_delay = 3, 6
		model.plan_invalidation_delay = 2
	elseif scenario == "repeated_engine_rejection" then
		model.start_delay, model.damage_delay = nil, nil
		model.recovery_delay = nil
		model.maximum_age = timing.timeout + 2
	elseif scenario == "long_animation_lock" then
		model.start_delay, model.damage_delay = 1, nil
		model.recovery_delay = timing.recovery_max + 5
	elseif scenario == "short_recovery" then
		model.start_delay, model.damage_delay, model.recovery_delay = 1, 2, 2
	elseif scenario == "range_transition" then
		model.start_delay, model.damage_delay = 1, nil
		model.range_escape_delay = 2
	elseif scenario == "bounded_scheduling_jitter" then
		model.start_delay = requestIndex % 3 + 1
		model.damage_delay = model.start_delay + requestIndex % 2 + 2
	elseif scenario == "dormant_targeted" then
		model.start_delay, model.damage_delay = 2, 4
	elseif scenario == "identity_distinctness" then
		model.start_delay = requestIndex % 2 + 1
		model.damage_delay = model.start_delay + 2
	end
	return model
end

local function countTable( values )
	local count = 0
	for _ in pairs( values or {} ) do count = count + 1 end
	return count
end

local function sumTable( values )
	local total = 0
	for _, value in pairs( values or {} ) do
		if type( value ) == "number" then total = total + value end
	end
	return total
end

local function runV7Scenario( scenario, seed )
	math.randomseed( 26072026 + seed )
	local game, unit = newRuntimeWorld()
	local memory = PVP_PRO_AI_GET( unit )
	PVP_PRO_AI_V6_INIT( memory )
	PVP_PRO_AI_SET_COMPETITIVE_PROFILE( unit, profile )
	PVP_PRO_AI_SET_RUNTIME_PROFILE( unit, runtimeProfile )
	PVP_PRO_AI_V7_EMIT_OBSERVATION(
		memory, "harness_expiring_observation", "distance_velocity",
		0.5, 1, nil, false, {} )
	local engineAction = nil
	local requests, terminalCount = 0, 0
	local terminalStates, terminalIDs = {}, {}
	local lastTerminalID = nil
	local falsePositiveAttributed = false
	local dormantRequested = {}

	for tick = 1, 140 do
		unit.hit = false
		unit.nil_hp, unit.nil_mp, unit.nil_position = false, false, false
		unit.nil_state, unit.nil_hit = false, false
		unit.nil_target, unit.nil_target_hp = false, false
		game.nil_focus = false
		unit.state_time = unit.state_time + 0.12
		unit.mp = math.min( 300, unit.mp + 2 )
		if scenario == "identity_distinctness" then
			local phase = tick % 32
			game.distance = 220 + phase * 31
			game.vertical = phase % 4 == 0 and 130 or 0
		elseif scenario ~= "range_transition" and engineAction == nil then
			game.distance = 280 + ( tick * 37 ) % 720
			game.vertical = tick % 9 == 0 and 120 or 0
		end

		if scenario == "false_positive_hp_change" and tick == 8 then
			game.target_hp = game.target_hp - 9
			falsePositiveAttributed = memory.action_execution_v7 ~= nil
		end
		if scenario == "temporary_nil_values" and tick >= 25 and tick <= 28 then
			unit.nil_position = true
			unit.nil_target_hp = true
			game.nil_focus = tick % 2 == 0
		end

		if engineAction ~= nil then
			local age = memory.tick + 1 - engineAction.request_tick
			if scenario == "ambiguous_confirmation" then
				unit.nil_target_hp = true
			end
			if scenario == "stale_target_distance" and age >= 1 and age <= 5 then
				game.reported_distance = engineAction.reported_distance
				game.distance = engineAction.reported_distance + age * 85
			else
				game.reported_distance = nil
			end
			if engineAction.start_delay ~= nil
				and age == engineAction.start_delay
				and engineAction.started ~= true then
				unit.state_id = unit.state_id + 1
				unit.state_time = 0
				engineAction.started = true
			end
			if engineAction.resource_delay ~= nil
				and age == engineAction.resource_delay
				and engineAction.resource_spent ~= true then
				unit.mp = math.max( 0, unit.mp - 30 )
				engineAction.resource_spent = true
			end
			if engineAction.interrupt_delay ~= nil
				and age == engineAction.interrupt_delay
				and engineAction.interrupted ~= true then
				unit.hp = math.max( 50, unit.hp - 65 )
				unit.hit = true
				engineAction.interrupted = true
			end
			if engineAction.life_low_delay ~= nil
				and age == engineAction.life_low_delay then
				unit.hp = 25
			end
			if engineAction.life_reset_delay ~= nil
				and age == engineAction.life_reset_delay then
				unit.hp = 1000
			end
			if engineAction.plan_invalidation_delay ~= nil
				and age == engineAction.plan_invalidation_delay then
				unit.hp = 170
				memory.strategy_until_v6 = memory.tick
			end
			if engineAction.range_escape_delay ~= nil
				and age >= engineAction.range_escape_delay then
				game.distance = engineAction.maximum_range + 420
			end
			if engineAction.damage_delay ~= nil
				and age == engineAction.damage_delay
				and engineAction.damaged ~= true then
				game.target_hp = math.max(
					0, game.target_hp - engineAction.damage )
				engineAction.damaged = true
			end
			if engineAction.recovery_delay ~= nil
				and age == engineAction.recovery_delay
				and engineAction.recovered ~= true then
				unit.state_id = unit.state_id + 1
				unit.state_time = 0
				engineAction.recovered = true
			end
			if age > engineAction.maximum_age then
				engineAction = nil
				game.reported_distance = nil
			end
		end

		PVP_PRO_AI_TICK( game, unit, 1, 3 )
		local terminal = memory.terminal_actions_v7[
			#memory.terminal_actions_v7]
		if terminal ~= nil and terminal.id ~= lastTerminalID then
			lastTerminalID = terminal.id
			terminalCount = terminalCount + 1
			terminalStates[terminal.result] =
				( terminalStates[terminal.result] or 0 ) + 1
			expect( terminalIDs[terminal.id] ~= true,
				"one result was attributed more than once" )
			terminalIDs[terminal.id] = true
		end

		local selectionStart = scenario == "false_positive_hp_change"
			and 25 or 1
		if tick <= 100 and tick >= selectionStart
			and memory.action_execution_v7 == nil
			and engineAction == nil then
			requests = requests + 1
			local action = chooseRuntimeAction(
				memory, game, unit, scenario, requests )
			configureForAction( game, unit, action )
			memory.raw_snapshot_v7 =
				PVP_PRO_AI_V7_CAPTURE_RAW( game, unit )
			local trait = profile.action_traits[action]
			memory.v7_decision_context = {
				action = action, role = trait.role,
				min_dist = trait.min_dist or 0,
				max_dist = trait.max_dist or 2000,
				min_mp = trait.mp or 0,
				strategy = memory.match_strategy_v6,
				plan = memory.exchange_plan_v6,
				intention = memory.tactical_intention_v6,
				phase = memory.engagement_phase_v6,
			}
			local selected = PVP_PRO_AI_READY(
				unit, action, trait.role, 100, 0, 0, false )
			memory.v7_decision_context = nil
			expect( selected == true,
				"engine approximation could not request " .. action )
			local execution = memory.action_execution_v7
			expect( execution ~= nil,
				"selected action did not create V7 lifecycle" )
			engineAction = scheduleRuntimeAction(
				scenario, execution, requests )
			engineAction.reported_distance = game.distance
			engineAction.maximum_range = execution.target_max
			if scenario == "dormant_targeted" then
				dormantRequested[action] = true
			end
		end
	end

	expect( memory.action_execution_v7 == nil,
		scenario .. " left an unresolved pending action" )
	expect( terminalCount >= 1,
		scenario .. " produced no terminal action" )
	expect( #memory.current_observations_v7 <= 32,
		scenario .. " exceeded observation bound" )
	expect( #memory.telemetry_v6.events <= 96,
		scenario .. " exceeded telemetry bound" )
	expect( #memory.route_keys_v6 <= 48,
		scenario .. " exceeded route-memory bound" )
	expect( memory.resource_belief_v7.confidence <= 0.82,
		scenario .. " resource inference exceeded confidence bound" )
	expect( memory.counterfactual_v7.evaluations >= requests,
		scenario .. " did not evaluate selected-action counterfactuals" )
	expect( PVP_PRO_AI_V7_OBSERVATION(
		memory, "harness_expiring_observation" ) == nil,
		"stale observation failed to expire" )
	for _, observation in ipairs( memory.current_observations_v7 ) do
		expect( observation.expires >= memory.tick,
			"expired observation remained active" )
		expect( observation.classification ~= "UNAVAILABLE",
			"unavailable signal was normalized as runtime truth" )
	end
	if scenario == "interrupted_startup" then
		expect( ( terminalStates.INTERRUPTED or 0 ) >= 1,
			"interrupted startup was not classified" )
	elseif scenario == "ambiguous_confirmation" then
		expect( ( terminalStates.RESULT_UNCERTAIN or 0 ) >= 1,
			"ambiguous evidence was not preserved as uncertain" )
	elseif scenario == "callback_reordering" then
		expect( ( memory.telemetry_v7.callback_reordering or 0 ) >= 1,
			"callback reordering was not diagnosed" )
	elseif scenario == "temporary_nil_values" then
		expect( countTable( memory.telemetry_v7.signal_nil ) >= 1,
			"temporary nil signals were not guarded" )
	elseif scenario == "life_reset_unresolved" then
		expect( ( terminalStates.CANCELLED or 0 ) >= 1,
			"life reset did not cancel unresolved execution" )
	elseif scenario == "repeated_engine_rejection" then
		expect( ( terminalStates.TIMED_OUT or 0 ) >= 1,
			"engine rejection did not reach bounded timeout"
				.. " uncertain=" .. tostring( terminalStates.RESULT_UNCERTAIN or 0 )
				.. " block=" .. tostring( terminalStates.PROBABLE_BLOCK_OR_ARMOR or 0 )
				.. " recovered=" .. tostring( terminalStates.ACTION_RECOVERED or 0 ) )
		expect( ( memory.strategy_failures_v6 or 0 ) == 0,
			"engine rejection incorrectly trained strategy failure" )
	elseif scenario == "range_transition" then
		expect( ( terminalStates.PROBABLE_WHIFF or 0 ) >= 1,
			"range transition did not produce probable whiff" )
	elseif scenario == "false_positive_hp_change" then
		expect( falsePositiveAttributed == false,
			"unrelated HP change was attached without pending action" )
	elseif scenario == "dormant_targeted" then
		for _, action in ipairs( characterDormantActions() ) do
			expect( dormantRequested[action] == true,
				"targeted dormant action was not requested: " .. action )
			expect( memory.dormant_v7[action] ~= nil
				and memory.dormant_v7[action].selected >= 1,
				"dormant action opportunity was not recorded: " .. action )
		end
	end
	return {
		requests = requests,
		terminals = terminalCount,
		states = terminalStates,
		telemetry = #memory.telemetry_v6.events,
		routes = #memory.route_keys_v6,
		observations = #memory.current_observations_v7,
		identity = memory.identity_metrics_v7,
		occupancy = memory.occupancy_v7,
		counterfactual = memory.counterfactual_v7,
		failures = memory.failure_stats_v7,
		resource = memory.resource_belief_v7,
		strategies = ( function()
			local values = {}
			for name in pairs( memory.occupancy_v7.strategy ) do
				values[name] = true
			end
			if memory.occupancy_v7.current_strategy ~= nil then
				values[memory.occupancy_v7.current_strategy] = true
			end
			return values
		end )(),
		plans = ( function()
			local values = {}
			for name in pairs( memory.occupancy_v7.plan ) do
				values[name] = true
			end
			if memory.occupancy_v7.current_plan ~= nil then
				values[memory.occupancy_v7.current_plan] = true
			end
			return values
		end )(),
		range_failures = ( function()
			local total = 0
			for _, stats in pairs( memory.range_stats_v7 ) do
				total = total + ( stats.range_failures or 0 )
			end
			return total
		end )(),
		dormant_selected = ( function()
			local total = 0
			for _, stats in pairs( memory.dormant_v7 ) do
				total = total + ( stats.selected or 0 )
			end
			return total
		end )(),
	}
end

local v7TicksPerScenario = 140
local v7TotalTicks, v7Requests, v7Terminals = 0, 0, 0
local v7TerminalStates = {}
local v7CounterfactualEvaluations, v7CounterfactualStable = 0, 0
local v7RangeFailures, v7DormantSelected = 0, 0
local v7MaxTelemetry, v7MaxRoutes, v7MaxObservations = 0, 0, 0
local v7RuntimeStrategies, v7RuntimePlans = {}, {}
local v7IdentityMetric = {
	ticks = 0, observation_ticks = 0, commitment_ticks = 0,
	retreat_actions = 0, role_actions = {},
	engagement_distance_sum = 0, engagement_distance_count = 0,
	strategy_changes = 0, tempo_changes = 0, resource_spent = 0,
	resets = 0, extensions = 0,
}
local v7IdentityStrategyDuration, v7IdentityStrategyVisits = 0, 0
local v7ResourceConfidenceTotal = 0
local v7DecisionFailures, v7ExecutionFailures = 0, 0
local v7ConfirmationFailures, v7TacticalFailures = 0, 0
local v7PlanCompletions, v7PlanAborts = 0, 0
for index, scenario in ipairs( v7ScenarioNames ) do
	local metric = runV7Scenario( scenario, index )
	v7TotalTicks = v7TotalTicks + v7TicksPerScenario
	v7Requests = v7Requests + metric.requests
	v7Terminals = v7Terminals + metric.terminals
	v7CounterfactualEvaluations = v7CounterfactualEvaluations
		+ metric.counterfactual.evaluations
	v7CounterfactualStable = v7CounterfactualStable
		+ metric.counterfactual.noise_stable
	v7RangeFailures = v7RangeFailures + metric.range_failures
	v7DormantSelected = v7DormantSelected + metric.dormant_selected
	v7MaxTelemetry = math.max( v7MaxTelemetry, metric.telemetry )
	v7MaxRoutes = math.max( v7MaxRoutes, metric.routes )
	v7MaxObservations = math.max(
		v7MaxObservations, metric.observations )
	v7DecisionFailures = v7DecisionFailures
		+ sumTable( metric.failures.decision )
	v7ExecutionFailures = v7ExecutionFailures
		+ sumTable( metric.failures.execution )
	v7ConfirmationFailures = v7ConfirmationFailures
		+ sumTable( metric.failures.confirmation )
	v7TacticalFailures = v7TacticalFailures
		+ sumTable( metric.failures.tactical )
	v7PlanCompletions = v7PlanCompletions
		+ ( metric.occupancy.plan_completions or 0 )
	v7PlanAborts = v7PlanAborts
		+ ( metric.occupancy.plan_aborts or 0 )
	for strategy in pairs( metric.strategies ) do
		v7RuntimeStrategies[strategy] = true
	end
	for plan in pairs( metric.plans ) do
		v7RuntimePlans[plan] = true
	end
	for role, count in pairs( metric.identity.role_actions or {} ) do
		v7IdentityMetric.role_actions[role] =
			( v7IdentityMetric.role_actions[role] or 0 ) + count
	end
	for _, key in ipairs( {
		"ticks", "observation_ticks", "commitment_ticks",
		"retreat_actions", "engagement_distance_sum",
		"engagement_distance_count", "strategy_changes",
		"tempo_changes", "resource_spent", "resets", "extensions",
	} ) do
		v7IdentityMetric[key] = v7IdentityMetric[key]
			+ ( metric.identity[key] or 0 )
	end
	for _, stats in pairs( metric.occupancy.strategy or {} ) do
		v7IdentityStrategyDuration = v7IdentityStrategyDuration
			+ ( stats.total or 0 )
		v7IdentityStrategyVisits = v7IdentityStrategyVisits
			+ ( stats.visits or 0 )
	end
	if metric.occupancy.current_strategy ~= nil then
		v7IdentityStrategyDuration = v7IdentityStrategyDuration + math.max(
			0, ( metric.identity.ticks or v7TicksPerScenario )
				- ( metric.occupancy.strategy_since or 0 ) )
		v7IdentityStrategyVisits = v7IdentityStrategyVisits + 1
	end
	v7ResourceConfidenceTotal = v7ResourceConfidenceTotal
		+ ( metric.resource.confidence or 0 )
	for state, count in pairs( metric.states ) do
		v7TerminalStates[state] = ( v7TerminalStates[state] or 0 ) + count
	end
	print(
		"PVP_AI_V7_SCENARIO"
		.. " character=" .. tostring( profile.character )
		.. " name=" .. scenario
		.. " ticks=" .. tostring( v7TicksPerScenario )
		.. " requests=" .. tostring( metric.requests )
		.. " terminals=" .. tostring( metric.terminals )
		.. " lifecycle_states=" .. tostring( countTable( metric.states ) )
		.. " telemetry=" .. tostring( metric.telemetry )
		.. " observations=" .. tostring( metric.observations )
	)
end

expect( countTable( v7TerminalStates ) >= 5,
	"V7 suite did not exercise enough lifecycle terminal classes" )
local identityTicks = math.max(
	1, v7IdentityMetric ~= nil and v7IdentityMetric.ticks or 0 )
local identityActionTotal = math.max(
	1, v7IdentityMetric ~= nil
		and sumTable( v7IdentityMetric.role_actions ) or 0 )
local function identityRoleRate( role )
	return ( v7IdentityMetric ~= nil
		and ( v7IdentityMetric.role_actions[role] or 0 ) or 0 )
		/ identityActionTotal
end
local identityAverageRange = 0
if v7IdentityMetric ~= nil
	and ( v7IdentityMetric.engagement_distance_count or 0 ) > 0 then
	identityAverageRange = v7IdentityMetric.engagement_distance_sum
		/ v7IdentityMetric.engagement_distance_count
end
print(
	"PVP_AI_V7_ENGINE_APPROX_PASS"
	.. " character=" .. tostring( profile.character )
	.. " scenarios=" .. tostring( #v7ScenarioNames )
	.. " ticks=" .. tostring( v7TotalTicks )
	.. " requests=" .. tostring( v7Requests )
	.. " terminals=" .. tostring( v7Terminals )
	.. " terminal_classes=" .. tostring( countTable( v7TerminalStates ) )
	.. " confirmed_rate=" .. string.format( "%.3f",
		( v7TerminalStates.CONFIRMED_DAMAGE or 0 )
			/ math.max( 1, v7Terminals ) )
	.. " uncertain=" .. tostring( v7TerminalStates.RESULT_UNCERTAIN or 0 )
	.. " signal_contract=" .. tostring( signalCount )
	.. " unavailable=" .. tostring( unavailableCount )
	.. " v6_actions=" .. tostring( countKeys( aggregateActions ) )
	.. " v6_strategies=" .. tostring( countKeys( aggregateStrategies ) )
	.. " v6_plans=" .. tostring( countKeys( aggregatePlans ) )
	.. " runtime_strategies=" .. tostring( countTable( v7RuntimeStrategies ) )
	.. " runtime_plans=" .. tostring( countTable( v7RuntimePlans ) )
	.. " v6_max_repetition=" .. string.format( "%.3f", aggregateMaxRepetition )
	.. " cf_stability=" .. string.format( "%.3f",
		v7CounterfactualStable / math.max( 1, v7CounterfactualEvaluations ) )
	.. " range_failures=" .. tostring( v7RangeFailures )
	.. " dormant_selected=" .. tostring( v7DormantSelected )
	.. " decision_failures=" .. tostring( v7DecisionFailures )
	.. " execution_failures=" .. tostring( v7ExecutionFailures )
	.. " confirmation_failures=" .. tostring( v7ConfirmationFailures )
	.. " tactical_failures=" .. tostring( v7TacticalFailures )
	.. " identity_observation=" .. string.format( "%.3f",
		( v7IdentityMetric ~= nil
			and v7IdentityMetric.observation_ticks or 0 ) / identityTicks )
	.. " identity_commitment=" .. string.format( "%.3f",
		( v7IdentityMetric ~= nil
			and v7IdentityMetric.commitment_ticks or 0 ) / identityTicks )
	.. " identity_retreat=" .. tostring(
		v7IdentityMetric ~= nil and v7IdentityMetric.retreat_actions or 0 )
	.. " identity_roles=" .. tostring(
		v7IdentityMetric ~= nil
			and countTable( v7IdentityMetric.role_actions ) or 0 )
	.. " id_guard=" .. string.format( "%.3f", identityRoleRate( "guard" ) )
	.. " id_escape=" .. string.format( "%.3f", identityRoleRate( "escape" ) )
	.. " id_combo=" .. string.format( "%.3f", identityRoleRate( "combo" ) )
	.. " id_chase=" .. string.format( "%.3f", identityRoleRate( "chase" ) )
	.. " id_control=" .. string.format( "%.3f", identityRoleRate( "control" ) )
	.. " id_poke=" .. string.format( "%.3f", identityRoleRate( "poke" ) )
	.. " id_burst=" .. string.format( "%.3f", identityRoleRate( "burst" ) )
	.. " id_advance=" .. string.format( "%.3f", identityRoleRate( "advance" ) )
	.. " id_air=" .. string.format( "%.3f",
		identityRoleRate( "air" ) + identityRoleRate( "air_move" ) )
	.. " id_avg_range=" .. string.format( "%.1f", identityAverageRange )
	.. " id_strategy_changes=" .. tostring(
		v7IdentityMetric ~= nil and v7IdentityMetric.strategy_changes or 0 )
	.. " id_tempo_changes=" .. tostring(
		v7IdentityMetric ~= nil and v7IdentityMetric.tempo_changes or 0 )
	.. " id_strategy_duration=" .. string.format( "%.2f",
		v7IdentityStrategyDuration
			/ math.max( 1, v7IdentityStrategyVisits ) )
	.. " id_plan_complete=" .. tostring(
		v7PlanCompletions )
	.. " id_plan_abort=" .. tostring(
		v7PlanAborts )
	.. " id_resource_spent=" .. string.format( "%.1f",
		v7IdentityMetric ~= nil and v7IdentityMetric.resource_spent or 0 )
	.. " id_resource_confidence=" .. string.format( "%.3f",
		v7ResourceConfidenceTotal / math.max( 1, #v7ScenarioNames ) )
	.. " id_resets=" .. tostring(
		v7IdentityMetric ~= nil and v7IdentityMetric.resets or 0 )
	.. " id_extensions=" .. tostring(
		v7IdentityMetric ~= nil and v7IdentityMetric.extensions or 0 )
	.. " telemetry_max=" .. tostring( v7MaxTelemetry )
	.. " route_max=" .. tostring( v7MaxRoutes )
	.. " observation_max=" .. tostring( v7MaxObservations )
	.. " telemetry_bound=96 route_bound=48 observation_bound=32"
)
