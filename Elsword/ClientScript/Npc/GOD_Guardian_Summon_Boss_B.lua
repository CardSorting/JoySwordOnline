-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 500.0 * GATE_OF_DARKNESS_NPC_SCALE["GOD_NS_BOSS"] / 100,
	UNIT_HEIGHT		= 400.0 * GATE_OF_DARKNESS_NPC_SCALE["GOD_NS_BOSS"] / 100,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.25 * GATE_OF_DARKNESS_NPC_SCALE["GOD_NS_BOSS"] / 100, 
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
		"Summon_Boss_AttackA.ogg",
		"Summon_Boss_AttackA2.ogg",
		"Summon_Boss_AttackACombo1.ogg",
		"Summon_Boss_AttackAComboA2.ogg",
		"Summon_Boss_SpecialAttackA.ogg",
		"Summon_Boss_SpecialAttackA2.ogg",
		"Summon_Boss_Earthquake1.ogg",
		"Summon_Boss_DamageDownFront.ogg",
		"Summon_Boss_Dying.ogg",
		"Summon_Boss_Damage.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_God_Guardian_Summon_Boss_A.x",
	MOTION_CHANGE_TEX_XET	= "GOD_GUARDIAN_SUMMON_BOSS_B.xet",
	MOTION_ANI_TEX_XET		= "GOD_GUARDIAN_SUMMON_BOSS_B.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL				= 2000,
	G_ACCEL						= 4000,
	MAX_G_SPEED					= -2000,
	
	WALK_SPEED					= 175,
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
	
	DIE_FLY           		  	= 0,
	
	SET_HAS_BOSS_GAGE			= TRUE,
	SET_NUM_OF_GAGE				= 7,
	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "DARK_VERUDE_2",
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_SUMMON_BOSS.dds",	
	
	SET_RENDER_NAME_COLOR = 
	{
		COLOR_R = 1.0,
		COLOR_G = 0.5,
		COLOR_B = 0.5,
		COLOR_A = 1.0,
		
		OUTLINE_COLOR_R = 0.0,
		OUTLINE_COLOR_G = 0.0,
		OUTLINE_COLOR_B = 0.0,
		OUTLINE_COLOR_A = 1.0,
	},
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Summon_Boss_Acc_R_Hand.X",
		WEAPON_BONE_NAME			= "Bip01_R_Hand",
		
		ALPHA_OBJECT				= TRUE,
		Z_ENABLE_FOR_THIS_WEAPON	= TRUE,
	},

	WEAPON1 = 
	{
		WEAPON_FILE_NAME			= "Summon_Boss_Acc_L_Hand.X",
		WEAPON_BONE_NAME			= "Bip01_L_Hand",
		
		ALPHA_OBJECT				= TRUE,		
		Z_ENABLE_FOR_THIS_WEAPON	= TRUE,
	},
}

INIT_STATE = 
{
	-- 기본 스테이트
	{ STATE_NAME = "GOD_GUARDIAN_SUMMON_BOSS_B_START",				LUA_STATE_START_FUNC = "GOD_GUARDIAN_SUMMON_BOSS_B_STATE_START",						},
	{ STATE_NAME = "GOD_GUARDIAN_SUMMON_BOSS_B_WAIT",				LUA_FRAME_MOVE_FUNC = "GOD_GUARDIAN_SUMMON_BOSS_B_CHECK_POSSIBLE_ATTACK_FRAME_MOVE",	},
	{ STATE_NAME = "GOD_GUARDIAN_SUMMON_BOSS_B_SELECT_ATTACK",		},
	{ STATE_NAME = "GOD_GUARDIAN_SUMMON_BOSS_B_WALK",				LUA_FRAME_MOVE_FUNC = "GOD_GUARDIAN_SUMMON_BOSS_B_CHECK_POSSIBLE_ATTACK_FRAME_MOVE",	},
	{ STATE_NAME = "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",				LUA_FRAME_MOVE_FUNC = "GOD_GUARDIAN_SUMMON_BOSS_B_CHECK_POSSIBLE_ATTACK_FRAME_MOVE",	},
	{ STATE_NAME = "GOD_GUARDIAN_SUMMON_BOSS_B_DYING",				LUA_STATE_START_FUNC = "GOD_GUARDIAN_SUMMON_BOSS_B_DYING_STATE_START",					},
	
	-- 공격 스테이트
	{ STATE_NAME = "GOD_GUARDIAN_SUMMON_BOSS_B_ATTACK",			STATE_COOL_TIME	= 5,																},
	{ STATE_NAME = "GOD_GUARDIAN_SUMMON_BOSS_B_ATTACK_COMBO",		},
	{ STATE_NAME = "GOD_GUARDIAN_SUMMON_BOSS_B_SPECIAL_ATTACK",	INITIALIZE_STATE_ELAPSED_TIME = 29, STATE_COOL_TIME	= 30,																},
	
	START_STATE					= "GOD_GUARDIAN_SUMMON_BOSS_B_START",
	WAIT_STATE					= "GOD_GUARDIAN_SUMMON_BOSS_B_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	FLY_DAMAGE_FRONT			= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	FLY_DAMAGE_BACK				= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	SMALL_DAMAGE_AIR			= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",	
	BIG_DAMAGE_AIR				= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	DOWN_DAMAGE_AIR				= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	DOWN_DAMAGE_AIR_LANDING		= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	UP_DAMAGE					= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	DAMAGE_REVENGE				= "GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE",
	
	DYING_LAND_FRONT			= "GOD_GUARDIAN_SUMMON_BOSS_B_DYING",
	DYING_LAND_BACK				= "GOD_GUARDIAN_SUMMON_BOSS_B_DYING",
	DYING_SKY					= "GOD_GUARDIAN_SUMMON_BOSS_B_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST" ],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 250,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 5000,		-- cm
		TARGET_LOST_RANGE			= 400,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_NPC					= TRUE,
		
		MANUAL_TARGETING_FUNC		= "GOD_GUARDIAN_SUMMON_BOSS_B_MANUAL_TARGET",
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

GOD_GUARDIAN_SUMMON_BOSS_B_START = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= GATE_OF_DARKNESS_WALK_SPEED["GOD_WS_GUARDIAN"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_24014,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOD_GUARDIAN_SUMMON_BOSS_B_WALK",	},
	},
}

function GOD_GUARDIAN_SUMMON_BOSS_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetTimerRestart( 0 )		-- 공격 가능 여부 검사 쿨타임 초기화 ( 매 프레임마다 공격 가능 여부를 검사할 필요는 없어보여서, 쿨타임 부여 )
	pNPCUnit:SetTimerRestart( 1 )		-- 주변의 유저 회복 쿨타임
	
	pNPCUnit:SetVector_LUA( 0,  D3DXVECTOR3( 1.0, GATE_OF_DARKNESS_ATTACK_RANGE["GOD_AR_GUARDIAN"], 0.0 ) )		-- x = 공격 가능 여부 검사 간격, y = 원거리 공격 범위
	pNPCUnit:SetVector_LUA( 1,  D3DXVECTOR3( 1.0, 50.0, 700.0 ) )	-- x = 공격 검사 간격, y = 회복량 ( % ), z = 범위
	
	pNPCUnit:SetFlag_LUA( 0, true )		-- 이동 가능 여부 ( true = 이동 가능, false = 이동 제한 )		공격 범위 내에 타겟이 있다면, 이동을 제한시킨다.
	pNPCUnit:SetFlag_LUA( 9, true )		-- 거대 오펜스 몬스터는 아군 소환문 접근시, 접근 카운트 올라가지 않고 죽지도 않는다.
	
	pNPCUnit:SetKeyCode( 4 )		-- 소환 개체수 제한을 위한 키코드 설정
	
	-- 소환문에 방여력 증가 버프 전달
	local pSummonGate = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_GOD_GATE_ENEMY"] )
	
	if nil ~= pSummonGate then
		pSummonGate:SetBuffFactorToGameUnitByBuffFactorIDAndCreatorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_GATE_DEFENCE"], pNPCUnit:GetUID(), false, 1 )
	end

end

-----------------------------------------------------------------------------------------------------------

GOD_GUARDIAN_SUMMON_BOSS_B_WAIT = 
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GOD_GUARDIAN_SUMMON_BOSS_B_WALK",	"CT_GOD_GUARDIAN_SUMMON_BOSS_B_WALK",	},
	},
	
	CT_GOD_GUARDIAN_SUMMON_BOSS_B_WALK = 
	{
		FLAG_TRUE = 0,
	},
}

-----------------------------------------------------------------------------------------------------------

GOD_GUARDIAN_SUMMON_BOSS_B_SELECT_ATTACK = 
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
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GOD_GUARDIAN_SUMMON_BOSS_B_ATTACK",			"CT_GOD_GUARDIAN_SUMMON_BOSS_B_ATTACK",					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GOD_GUARDIAN_SUMMON_BOSS_B_SPECIAL_ATTACK",	"CT_GLITER_GOD_GUARDIAN_SUMMON_BOSS_B_SPECIAL_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"GOD_GUARDIAN_SUMMON_BOSS_B_WAIT",				},
	},
	
	CT_GOD_GUARDIAN_SUMMON_BOSS_B_ATTACK = 
	{
		EVENT_INTERVAL_ID	= 0,
	},
	
	CT_GLITER_GOD_GUARDIAN_SUMMON_BOSS_B_SPECIAL_ATTACK = 
	{
		EVENT_INTERVAL_ID	= 0,
	},
}

-----------------------------------------------------------------------------------------------------------

GOD_GUARDIAN_SUMMON_BOSS_B_WALK = 
{
	ANIM_SPEED					= 0.75,
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= GATE_OF_DARKNESS_WALK_SPEED["GOD_WS_GUARDIAN"],
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GOD_GUARDIAN_SUMMON_BOSS_B_WAIT",	"CT_GOD_GUARDIAN_SUMMON_BOSS_B_WAIT",	},
	},
	
	CT_GOD_GUARDIAN_SUMMON_BOSS_B_WAIT = 
	{
		FLAG_FALSE = 0,
	},
}

function GOD_GUARDIAN_SUMMON_BOSS_B_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

-----------------------------------------------------------------------------------------------------------

GOD_GUARDIAN_SUMMON_BOSS_B_ATTACK = 
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.798, "Summon_Boss_AttackA.ogg" },
	SOUND_PLAY1					= { 0.513, "Summon_Boss_AttackA2.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	

	SLASH_TRACE0				= { 0, 100, 3},
	SLASH_TRACE1				= { 0, 100, 4},	
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	APPLY_ANIM_MOVE				= FALSE,
	
			
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOD_GUARDIAN_SUMMON_BOSS_B_ATTACK_COMBO",		"CF_GOD_GUARDIAN_SUMMON_BOSS_B_ATTACK_COMBO",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOD_GUARDIAN_SUMMON_BOSS_B_WAIT",				},
	},
	
	CF_GOD_GUARDIAN_SUMMON_BOSS_B_ATTACK_COMBO	=
	{
		ANIM_EVENT_TIMER		= 1.0,
		ATTACK_SUCCESS			= TRUE,
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_SummonBossA_Attack_A", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END	= TRUE,
	
	ATTACK_TIME0				= { 0.80, 0.95, },

	DISABLE_ATTACK_BOX = 
	{
		"head",
		"Tail1",
		"Tail2",
		"Tail3",
		"Lhand",
		"Lhand2",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE				= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE				= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE				= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC				= 1.0,
		},
		BACK_SPEED_X			= 700,
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}

-----------------------------------------------------------------------------------------------------------

GOD_GUARDIAN_SUMMON_BOSS_B_ATTACK_COMBO =
{
	ANIM_NAME					= "AttackComboA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SLASH_TRACE0					= { 0, 100, 3},
	SLASH_TRACE1					= { 0, 100, 4},	
	
	SOUND_PLAY0					= { 0.600, "Summon_Boss_AttackACombo1.ogg" },
	SOUND_PLAY1					= { 0.634, "Summon_Boss_AttackAComboA2.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOD_GUARDIAN_SUMMON_BOSS_B_WAIT",	},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_GOD_SUMMON_BOSS_NORMAL_ATTACK", 0, 
	},
	
	ATTACK_TIME0				= { 0.50, 0.77, },	
	DISABLE_ATTACK_BOX = 
	{
		"Rhand",
		"Rhand2",
		"Tail1",
		"Tail2",
		"Tail3",
		"head",
	},
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 700,
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,		
		
		RE_ATTACK				= FALSE,
		HIT_GAP					= 0.5,
		CAN_REVENGE				= FALSE,
	},
}

-----------------------------------------------------------------------------------------------------------

GOD_GUARDIAN_SUMMON_BOSS_B_SPECIAL_ATTACK = 
{
	ANIM_NAME					= "SpecialAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0					= { 1.650, "Summon_Boss_SpecialAttackA.ogg" },
	SOUND_PLAY1					= { 1.661, "Summon_Boss_SpecialAttackA2.ogg" },
    SOUND_PLAY2					= { 1.660, "Summon_Boss_Earthquake1.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	SLASH_TRACE0				= { 0, 100, 3},
	SLASH_TRACE1				= { 0, 100, 4},	
    VIEW_TARGET					= TRUE,
    
	IMMADIATE_PACKET_SEND		= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
		
	
	APPLY_ANIM_MOVE				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOD_GUARDIAN_SUMMON_BOSS_B_WAIT",	},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_GOD_SUMMON_BOSS_ATTACK", 0,
	},
	DISABLE_ATTACK_BOX = 
	{
		"Rhand",
		"Rhand2",
		"Tail1",
		"Tail2",
		"Tail3",
		"Lhand",
		"Lhand2",
	},
}

-----------------------------------------------------------------------------------------------------------

GOD_GUARDIAN_SUMMON_BOSS_B_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	SOUND_PLAY0					= { 0.840, "Summon_Boss_Damage.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOD_GUARDIAN_SUMMON_BOSS_B_WALK",	},
	},
}

-----------------------------------------------------------------------------------------------------------

GOD_GUARDIAN_SUMMON_BOSS_B_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	RIGHT						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 1.735, "Summon_Boss_Dying.ogg" },
	SOUND_PLAY1					= { 0.710, "Summon_Boss_DamageAirDownLanding.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		DANGER  				 = FALSE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_24307,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = FALSE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
}

function GOD_GUARDIAN_SUMMON_BOSS_B_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	-- 소환문에 사망 전달
	local pSummonGate = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_GOD_GATE_ENEMY"] )
	
	if nil ~= pSummonGate then
	
		pSummonGate:SetInt_LUA( 7, 1 )
	
	end
	
	
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight", pos, D3DXVECTOR2( -1, -1 ), D3DXVECTOR2( 3, -1 ) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
	GOD_GUARDIAN_SUMMON_BOSS_B_HEAL( pX2Game, pNPCUnit )
	
end

-----------------------------------------------------------------------------------------------------------

function GOD_GUARDIAN_SUMMON_BOSS_B_HEAL( pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	
	if nil ~= pMajorParticle then	-- 힐 이펙트
	
		local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "TimeStop1", vPos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		
	end

	local pMMajorParticle 	= pX2Game:GetMajorParticle()
	
	local vHealValue		= pNPCUnit:GetVector_LUA( 1 )		-- 회복 정보
	
	for i = 0, 3 do
	
		local pUser = pX2Game:GetUserUnit( i )
		
		if nil ~= pUser then
			
			local vDistance = pUser:GetDistanceFrom( pNPCUnit:GetPos() )
			
			-- 힐 범위 내에 있고, 죽은 상태가 아니면 HP 회복 처리
			if vHealValue.z >= vDistance and 0.0 < pUser:GetNowHP() then
					
				if nil ~= pMMajorParticle then	-- 회복 이펙트
				
					pMMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Heal_Effect01", pUser:GetPos(), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
					pMMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "LobbyLevelUp01", pUser:GetPos(), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				
				end
				
				local fSetHPValue	= pUser:GetNowHP() + ( pUser:GetMaxHP() * ( vHealValue.y * 0.01 )	) 	-- 설정할 HP 량
				local fMaxHPValue 	= pUser:GetMaxHP()										-- 최대 HP
				
				if fSetHPValue > fMaxHPValue then	-- 채워 질 HP가 최대 HP보다 크면, 최대 HP로 설정
					fSetHPValue = fMaxHPValue
				end
				
				pUser:SetNowHP( fSetHPValue )	-- HP 설정
				local vHPPos = pUser:GetPos()
				pUser:ShowIncreaseValue( D3DXVECTOR3( vHPPos.x, vHPPos.y + 50.0, vHPPos.z ), true, fSetHPValue )
				
				
				local fSetMPValue	= pUser:GetNowMP() + ( pUser:GetMaxMP() * 0.5	) 	-- 설정할 MP 량
				local fMaxMPValue 	= pUser:GetMaxMP()									-- 최대 MP
				
				if fSetMPValue > fMaxMPValue then	-- 채워 질 MP가 최대 MP보다 크면, 최대 MP 설정
					fSetMPValue = fMaxMPValue
				end
				
				pUser:SetNowMP( fSetMPValue )	-- MP 설정
				pUser:ShowIncreaseValue( pUser:GetPos(), false, fSetMPValue )
					
			end
			
		end	-- if pUser ~= nil then
		
	end -- for i = 0, 3 do

end

-----------------------------------------------------------------------------------------------------------

-- 공격 가능 여부에 대한 검사 함수
function GOD_GUARDIAN_SUMMON_BOSS_B_CHECK_POSSIBLE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	local fCheckAttackCoolTime	= pNPCUnit:GetTimerElapsedTime( 0 )	-- 공격 가능 여부 검사 쿨타임
	local vCheckAttackInterval	= pNPCUnit:GetVector_LUA( 0 )		-- 공격 가능 여부 검사 간격
	
	if vCheckAttackInterval.x <= fCheckAttackCoolTime then
	
		local fCheckAttackRange = vCheckAttackInterval.y
	
		if true == GOD_GUARDIAN_SUMMON_BOSS_B_CHECK_NEAR_ENEMY( fCheckAttackRange, pX2Game, pNPCUnit ) then	-- 근처에 적( User 혹은 팀이 다른 NPC )이 있는지 검사
		
			pNPCUnit:SetFlag_LUA( 0, false )		-- 적이 공격 범위에 있기 때문에, 이동 제한
			pNPCUnit:StateChange_LUA( "GOD_GUARDIAN_SUMMON_BOSS_B_SELECT_ATTACK", true )	-- 적이 있다면, 공격 수행
			
		else
		
			pNPCUnit:SetFlag_LUA( 0, true )	-- 적이 공격 범위에 없으니, 이동 설정
			
		end
		
		pNPCUnit:SetTimerRestart( 0 )		-- 쿨타임 초기화
	
	end

end

-----------------------------------------------------------------------------------------------------------

-- 근처에 적( User 혹은 팀이 다른 NPC )이 있는지 검사하는 함수
function GOD_GUARDIAN_SUMMON_BOSS_B_CHECK_NEAR_ENEMY( fRange, pX2Game, pNPCUnit )

	-- 접근한 NPC가 있는지 검사
	local iNumOfNPC = pX2Game:GetNPCUnitListSize()		-- NPC 개체수
		
	for i = 0, iNumOfNPC - 1 do

		local pNPC = pX2Game:GetNPCUnit( i )			-- NPC 유닛 객체
		
		if pNPC ~= nil and false == pNPC:IsUnitID( NPC_UNIT_ID["NUI_GOD_GATE_ALLY"] ) then
			
			local vDistance = pNPC:GetDistanceFrom( pNPCUnit:GetPos() )		-- 자신과 NPC와의 거리
			
			-- 일정 거리 아하이고, 살아있으며, 같은 팀이 아니면서 내가 보고 있는 방향에 있을 때 공격 수행
			 if fRange >= vDistance and 0.0 < pNPC:GetNowHP() and pNPC:GetTeam() ~= pNPCUnit:GetTeam() and true == GOD_GUARDIAN_SUMMON_BOSS_B_CHECK_ISRIGHT_OF_NPC_FROM_ME( pNPCUnit, pNPC ) then
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
			if fRange >= vDistance and 0.0 < pUser:GetNowHP() and pUser:GetTeam() ~= pNPCUnit:GetTeam() and true == GOD_GUARDIAN_SUMMON_BOSS_B_CHECK_ISRIGHT_OF_USER_FROM_ME( pNPCUnit, pUser ) then
				return true		-- 공격 처리
			end
			
		end
	
	end
	
	
	return false	-- 가던길 가자

end

------------------------------------------------------------------------------

-- NPC 타겟이 내가 보고 있는 방향에 있는지 검사하는 함수
function GOD_GUARDIAN_SUMMON_BOSS_B_CHECK_ISRIGHT_OF_NPC_FROM_ME( pNPCUnit, pTargetNPC  )
	
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
function GOD_GUARDIAN_SUMMON_BOSS_B_CHECK_ISRIGHT_OF_USER_FROM_ME( pNPCUnit, pTargetUser  )
	
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
function GOD_GUARDIAN_SUMMON_BOSS_B_MANUAL_TARGET( pKTDXApp, pX2Game, pNPCUnit )
	
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