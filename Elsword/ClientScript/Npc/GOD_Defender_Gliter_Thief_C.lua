-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 120.0 * GATE_OF_DARKNESS_NPC_SCALE["GOD_NS_NORMAL"] / 100,
	UNIT_HEIGHT		= 150.0 * GATE_OF_DARKNESS_NPC_SCALE["GOD_NS_NORMAL"] / 100,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.33 * GATE_OF_DARKNESS_NPC_SCALE["GOD_NS_NORMAL"] / 100, 
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
		"GliterGreatVoice_AttackRoar2.ogg",
		"Gliter_Thief_Great_Boss_AttackA",
		"Gliter_Thief_Great_AttackA.ogg",
		"GlitterVoice_DeathRoar.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME			= "Motion_God_Defender_Gliter_Thief_C.x",
	MOTION_CHANGE_TEX_XET		= "NUI_Deffence_GLITER_THIEF_GREAT_BOSS.xet",
	MOTION_ANI_TEX_XET			= "NUI_Deffence_GLITER_THIEF_GREAT_BOSS.xet",	
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL				= 2000,
	G_ACCEL						= 4000,
	MAX_G_SPEED					= -2000,
	
	WALK_SPEED					= 250,
	RUN_SPEED					= 600,
	JUMP_SPEED					= 1500,
	DASH_JUMP_SPEED				= 900,
}

INIT_COMPONENT = 
{
	MP_CHANGE_RATE				= 1,
	MP_CHARGE_RATE				= 130,

	SHADOW_SIZE					= 200,
	SHADOW_FILE_NAME			= "shadow.dds",
	
	SMALL_HP_BAR_BLUE			= "Small_HP_bar_Yellow.TGA",
	SMALL_HP_BAR_RED			= "Small_HP_bar_Yellow.TGA",
	SMALL_HP_BAR_YELLOW 		= "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ			= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ		= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT			= 0,
	MAX_HYPER_MODE_TIME			= 30,
	
	HITTED_TYPE					= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN					= TRUE,

	NO_RENDER_NAME				= TRUE,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME		= "THIEF_GREAT_BOSS_weapon.X",
		WEAPON_BONE_NAME		= "Dummy1_Rhand",
		
		USE_SLASH_TRACE			= TRUE,
		SLASH_TRACE_TOP_BONE	= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE	= "TRACE_END0",
	},
}

INIT_STATE = 
{
	-- 기본 스테이트
	{ STATE_NAME = "GOD_DEFENDER_GLITER_THIEF_C_START",		LUA_STATE_START_FUNC = "GOD_DEFENDER_GLITER_THIEF_C_STATE_START",						},
	{ STATE_NAME = "GOD_DEFENDER_GLITER_THIEF_C_WAIT",		LUA_FRAME_MOVE_FUNC = "GOD_DEFENDER_GLITER_THIEF_C_CHECK_POSSIBLE_ATTACK_FRAME_MOVE",	},
	{ STATE_NAME = "GOD_DEFENDER_GLITER_THIEF_C_WALK",		LUA_FRAME_MOVE_FUNC = "GOD_DEFENDER_GLITER_THIEF_C_CHECK_POSSIBLE_ATTACK_FRAME_MOVE",	},
	{ STATE_NAME = "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",	LUA_FRAME_MOVE_FUNC = "GOD_DEFENDER_GLITER_THIEF_C_CHECK_POSSIBLE_ATTACK_FRAME_MOVE",	},
	{ STATE_NAME = "GOD_DEFENDER_GLITER_THIEF_C_DYING",		LUA_STATE_START_FUNC = "GOD_DEFENDER_GLITER_THIEF_C_DYING_STATE_START",					},
		{ STATE_NAME = "GOD_DEFENDER_GLITER_THIEF_C_ESCAPE",	LUA_STATE_START_FUNC = "GOD_DEFENDER_GLITER_THIEF_C_ESCAPE_STATE_START",				},

	-- 공격 스테이트
	{ STATE_NAME = "GOD_DEFENDER_GLITER_THIEF_C_ATTACK",	INITIALIZE_STATE_ELAPSED_TIME = 4,	STATE_COOL_TIME	= 7,			},
	
	START_STATE					= "GOD_DEFENDER_GLITER_THIEF_C_START",
	WAIT_STATE					= "GOD_DEFENDER_GLITER_THIEF_C_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	FLY_DAMAGE_FRONT			= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	FLY_DAMAGE_BACK				= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	SMALL_DAMAGE_AIR			= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",	
	BIG_DAMAGE_AIR				= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	DOWN_DAMAGE_AIR				= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	DOWN_DAMAGE_AIR_LANDING		= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	UP_DAMAGE					= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	DAMAGE_REVENGE				= "GOD_DEFENDER_GLITER_THIEF_C_DAMAGE",
	
	DYING_LAND_FRONT			= "GOD_DEFENDER_GLITER_THIEF_C_DYING",
	DYING_LAND_BACK				= "GOD_DEFENDER_GLITER_THIEF_C_DYING",
	DYING_SKY					= "GOD_DEFENDER_GLITER_THIEF_C_DYING",

	COMMON_FRAME_FUNC           = "GOD_DEFENDER_GLITER_THIEF_C_COMMON_FRAME_MOVE",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST" ],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 250,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 500,		-- cm
		TARGET_LOST_RANGE			= 400,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_NPC					= TRUE,
		
		MANUAL_TARGETING_FUNC		= "GOD_DEFENDER_GLITER_THIEF_C_MANUAL_TARGET",
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,		-- 70,
		FAR_WALK_RATE		= 100,		-- 30,
	
		JUMP_INTERVAL		= 9999,
		UP_JUMP_RATE		= 0, 		-- 40,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    	-- 20,
		DOWN_DOWN_RATE		= 0,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50, 	-- 50,		
		PATROL_RANGE			= 150,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
}

-----------------------------------------------------------------------------------------------------------

GOD_DEFENDER_GLITER_THIEF_C_START = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= GATE_OF_DARKNESS_WALK_SPEED["GOD_WS_DEFENDER"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOD_DEFENDER_GLITER_THIEF_C_WALK",	},
	},
}

function GOD_DEFENDER_GLITER_THIEF_C_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetTimerRestart( 0 )	-- 공격 가능 여부 검사 쿨타임 초기화 ( 매 프레임마다 공격 가능 여부를 검사할 필요는 없어보여서, 쿨타임 부여 )
	pNPCUnit:SetVector_LUA( 0,  D3DXVECTOR3( 1.0, GATE_OF_DARKNESS_ATTACK_RANGE["GOD_AR_DEFENDER"], 0.0 ) )		-- x = 공격 가능 여부 검사 간격, y = 공격 범위
	pNPCUnit:SetFlag_LUA( 0, true )		-- 이동 가능 여부 ( true = 이동 가능, false = 이동 제한 )		공격 범위 내에 타겟이 있다면, 이동을 제한시킨다.
	pNPCUnit:SetFlag_LUA( 1, false )	-- 아군 소환 게이트 접근으로 인한 도망 처리 여부
	pNPCUnit:SetFlag_LUA( 8, false )	-- 아군 소환 게이트 접근 여부 ( 접근시, 입장 스테이트 전환 )
	pNPCUnit:SetKeyCode( 4 )		-- 소환 개체수 제한을 위한 키코드 설정

end

-----------------------------------------------------------------------------------------------------------

GOD_DEFENDER_GLITER_THIEF_C_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GOD_DEFENDER_GLITER_THIEF_C_WALK",	"CT_GOD_DEFENDER_GLITER_THIEF_C_WALK",	},
	},
	
	CT_GOD_DEFENDER_GLITER_THIEF_C_WALK = 
	{
		FLAG_TRUE = 0,
	},
}

-----------------------------------------------------------------------------------------------------------

GOD_DEFENDER_GLITER_THIEF_C_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= GATE_OF_DARKNESS_WALK_SPEED["GOD_WS_DEFENDER"],
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GOD_DEFENDER_GLITER_THIEF_C_WAIT",	"CT_GOD_DEFENDER_GLITER_THIEF_C_WAIT",	},
	},
	
	CT_GOD_DEFENDER_GLITER_THIEF_C_WAIT = 
	{
		FLAG_FALSE = 0,
	},
}

function GOD_DEFENDER_GLITER_THIEF_C_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

-----------------------------------------------------------------------------------------------------------

GOD_DEFENDER_GLITER_THIEF_C_ATTACK = 
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	


    SOUND_PLAY0					= { 0.312, "GliterGreatVoice_AttackRoar2.ogg" }, 
	SOUND_PLAY1					= { 0.280, "Gliter_Thief_Great_Boss_AttackA.ogg" },
	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	APPLY_ANIM_MOVE				= FALSE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOD_DEFENDER_GLITER_THIEF_C_WAIT",	},
	},

	ATTACK_TIME0				= { 0.32, 0.4, },
	
	ANIM_SPEED					= 0.7,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE				= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE				= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE				= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC				= 1.0,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,		
		CAN_REVENGE				= TRUE,	
	},
}

-----------------------------------------------------------------------------------------------------------

GOD_DEFENDER_GLITER_THIEF_C_DAMAGE = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOD_DEFENDER_GLITER_THIEF_C_WALK",	},
	},
}

-----------------------------------------------------------------------------------------------------------

GOD_DEFENDER_GLITER_THIEF_C_DYING = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0					= { 0.175, "GlitterVoice_DeathRoar.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function GOD_DEFENDER_GLITER_THIEF_C_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight", pos, D3DXVECTOR2( -1, -1 ), D3DXVECTOR2( 3, -1 ) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

-----------------------------------------------------------------------------------------------------------

GOD_DEFENDER_GLITER_THIEF_C_ESCAPE = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	ESCAPE_END					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

function GOD_DEFENDER_GLITER_THIEF_C_ESCAPE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 0.0, TRUE, TRUE)

end

-----------------------------------------------------------------------------------------------------------

function GOD_DEFENDER_GLITER_THIEF_C_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	local bNowEscape = pNPCUnit:GetFlag_LUA( 1 )

	if true == bNowEscape then
		return
	end

	local bApproachUserGate = pNPCUnit:GetFlag_LUA( 8 )

	if true == bApproachUserGate then	-- 아군 소환문에 근접했는지 검사

		pNPCUnit:StateChange_LUA("GOD_DEFENDER_GLITER_THIEF_C_ESCAPE", true)
		pNPCUnit:SetFlag_LUA( 1, true )

	end

end

-----------------------------------------------------------------------------------------------------------

-- 공격 가능 여부에 대한 검사 함수
function GOD_DEFENDER_GLITER_THIEF_C_CHECK_POSSIBLE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	local fCheckAttackCoolTime	= pNPCUnit:GetTimerElapsedTime( 0 )	-- 공격 가능 여부 검사 쿨타임
	local vCheckAttackInterval	= pNPCUnit:GetVector_LUA( 0 )		-- 공격 가능 여부 검사 간격
	
	if vCheckAttackInterval.x <= fCheckAttackCoolTime then
	
		local fCheckAttackRange = vCheckAttackInterval.y
	
		if true == GOD_DEFENDER_GLITER_THIEF_C_CHECK_NEAR_ENEMY( fCheckAttackRange, pX2Game, pNPCUnit ) then	-- 근처에 적( User 혹은 팀이 다른 NPC )이 있는지 검사
		
			pNPCUnit:SetFlag_LUA( 0, false )		-- 적이 공격 범위에 있기 때문에, 이동 제한
			pNPCUnit:StateChange_LUA( "GOD_DEFENDER_GLITER_THIEF_C_ATTACK", true )	-- 적이 있다면, 공격 수행
			
		else
		
			pNPCUnit:SetFlag_LUA( 0, true )	-- 적이 공격 범위에 없으니, 이동 설정
			
		end
	
		pNPCUnit:SetTimerRestart( 0 )		-- 쿨타임 초기화
	
	end

end

-----------------------------------------------------------------------------------------------------------

-- 근처에 적( User 혹은 팀이 다른 NPC )이 있는지 검사하는 함수
function GOD_DEFENDER_GLITER_THIEF_C_CHECK_NEAR_ENEMY( fRange, pX2Game, pNPCUnit )

	-- 접근한 NPC가 있는지 검사
	local iNumOfNPC = pX2Game:GetNPCUnitListSize()		-- NPC 개체수
		
	for i = 0, iNumOfNPC - 1 do

		local pNPC = pX2Game:GetNPCUnit( i )			-- NPC 유닛 객체
		
		if pNPC ~= nil and false == pNPC:IsUnitID( NPC_UNIT_ID["NUI_GOD_GATE_ALLY"] ) then
			
			local vDistance = pNPC:GetDistanceFrom( pNPCUnit:GetPos() )		-- 자신과 NPC와의 거리
			
			-- 일정 거리 아하이고, 살아있으며, 같은 팀이 아니면서 내가 보고 있는 방향에 있을 때 공격 수행
			 if fRange >= vDistance and 0.0 < pNPC:GetNowHP() and pNPC:GetTeam() ~= pNPCUnit:GetTeam() and true == GOD_DEFENDER_GLITER_THIEF_C_CHECK_ISRIGHT_OF_NPC_FROM_ME( pNPCUnit, pNPC ) then
					return true		-- 공격 처리
			end
			
		end
	
	end
	
	
	-- 접근한 User가 있는지 검사
	local iNumOfUser = pX2Game:GetUserUnitListSize()	-- User 개체수
		
	for i = 0, iNumOfUser - 1 do
	
		local pUser = pX2Game:GetUserUnit( i )			-- User 유닛 객체
		
		if pUser ~= nil then
			
			local vDistance = pUser:GetDistanceFrom( pNPCUnit:GetPos() )	-- 자신과 User와의 거리
			
			-- 일정 거리 아하이고, 살아있으며, 같은 팀이 아니면서 내가 보고 있는 방향에 있을 때 공격 수행
			if fRange >= vDistance and 0.0 < pUser:GetNowHP() and pUser:GetTeam() ~= pNPCUnit:GetTeam() and true == GOD_DEFENDER_GLITER_THIEF_C_CHECK_ISRIGHT_OF_USER_FROM_ME( pNPCUnit, pUser ) then
				return true		-- 공격 처리
			end
			
		end
	
	end
	
	
	return false	-- 가던길 가자

end

------------------------------------------------------------------------------

-- NPC 타겟이 내가 보고 있는 방향에 있는지 검사하는 함수
function GOD_DEFENDER_GLITER_THIEF_C_CHECK_ISRIGHT_OF_NPC_FROM_ME( pNPCUnit, pTargetNPC  )
	
	local vTargetNPCPos = pTargetNPC:GetPos()		-- 타겟 NPC의 위치
	local bIsRight		= pNPCUnit:GetIsRight()		-- 자신의 방향
		
	if pNPCUnit:IsRightTarget_LUA( pNPCUnit, vTargetNPCPos ) == true then	-- 타겟이 나를 기준으로 어느 방향에 있나
	
		if bIsRight == true then	-- 내가 오른쪽을 보고 있으며, 타겟도 오른쪽에 있다
			return true		-- 내가 보고 있는 방향에 있음
		end
		
	else
	
		if bIsRight == false then	-- 내가왼쪽을 보고 있으며, 타겟도 왼쪽에 있다
			return true		-- 내가 보고 있는 방향에 있음
		end
		
	end
	
	return false			-- 내가 보고 있는 방향과 반대로 있음
	
end

------------------------------------------------------------------------------

-- USer 타겟이 내가 보고 있는 방향에 있는지 검사하는 함수
function GOD_DEFENDER_GLITER_THIEF_C_CHECK_ISRIGHT_OF_USER_FROM_ME( pNPCUnit, pTargetUser  )
	
	local vTargetNPCPos = pTargetUser:GetPos()		-- 타겟 Uset의 위치
	local bIsRight		= pNPCUnit:GetIsRight()		-- 자신의 방향
		
	if pNPCUnit:IsRightTarget_LUA( pNPCUnit, vTargetNPCPos ) == true then	-- 타겟이 나를 기준으로 어느 방향에 있나
	
		if bIsRight == true then	-- 내가 오른쪽을 보고 있으며, 타겟도 오른쪽에 있다
			return true		-- 내가 보고 있는 방향에 있음
		end
		
	else
	
		if bIsRight == false then	-- 내가왼쪽을 보고 있으며, 타겟도 왼쪽에 있다
			return true		-- 내가 보고 있는 방향에 있음
		end
		
	end
	
	return false			-- 내가 보고 있는 방향과 반대로 있음
	
end

-----------------------------------------------------------------------------------------------------------

-- 강제 타겟팅 설정 함수
function GOD_DEFENDER_GLITER_THIEF_C_MANUAL_TARGET( pKTDXApp, pX2Game, pNPCUnit )
	
	local pNearestNPC = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_GOD_GATE_ALLY"], 999999 )
	
	if nil ~= pNearestNPC then
		pNPCUnit:SetTargetUnit( pNearestNPC )
	end

end

------------------------------------------------------------------------------

function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end