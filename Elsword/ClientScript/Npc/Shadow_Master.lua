-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2010/1/5 / 섀도우 마스터, 하멜 던전_1 보스/
	 MagicAttackA(흑염수), MagicAttackB(흑염각인), SpecialAttackA(섀도우 링크),
	 SpecialAttackB(흑염구 소환), SpecialAttackC(흑염 폭풍)
--]]

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 240.0,
	UNIT_HEIGHT		= 200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.0,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		-- 기본 텍스처
	    "NUI_SHADOW_MASTER_BODY_A.tga",
	    "NUI_SHADOW_MASTER_BODY_B.tga",
	    "NUI_SHADOW_MASTER_BODY_C.tga",
	    "NUI_SHADOW_MASTER_BODY_D.tga",
	    -- 흑염보
	    "Dark_fire_SM.tga",
	    -- 흑염구
	    "SM_MagicAttakcB_Smoke.tga",
	    "SM_DarkBall01.tga",
	    "Black_Ball01.tga",
	    "SM_SP_ShockWave.tga",
	    -- 죽을 때 이펙트
	    "dying_ball.tga",
	    "PinLight01_as.tga",
	    "DarkCloud02.dds",
	    -- 흑염수
	    "Circle_Dark02.tga",
	    "Circle_Dark05.tga",
	    "SM_Attack01.tga",
	    -- 흑염각인
	    "SM_Attack01.tga",
	    "SM_MagicAttakcB_Debuff01.tga",
	    "SM_MagicAttakcB_Smoke.tga",
	    -- 섀도우 링크
	    "SM_Circle_Dark01.tga",
	    "SM_Circle_Dark02.tga",
	    "Link02.tga",
	    -- 흑염폭풍
	    "SM_SpecialAttackC_light.tga",
	    "SM_Laser_Black.tga",
	    -- 시작 이펙트
	    "SM_waitstart.tga",
	    "Condense_pulse01.dds",
	    "Condense_Light01.dds",
	    "Nasod_King_Laser03.dds",
	},
	
	READY_SOUND = 
	{   
		"Shadow_Master_MagicAttackA01.ogg",
		"Shadow_Master_MagicAttackB01.ogg",
		"Shadow_Master_MagicAttackB02.ogg",
		"Shadow_Master_SpecialAttackA01.ogg",
		"Shadow_Master_SpecialAttackA02.ogg",
		"Shadow_Master_SpecialAttackB01.ogg",
		"Shadow_Master_SpecialAttackB02.ogg",
		"Shadow_Master_SpecialAttackC01.ogg",
		"Shadow_Master_SpecialAttackC02.ogg",
		"Landing_Big_Metal01.ogg",
		"Landing_Big_Metal02.ogg",
		"Swing_Big01.ogg",
		"Swing_Big02.ogg",
		"Shadow_Master_SpecialAttackB02.ogg",
		"Shadow_Master_Voice_WaitStart01.ogg",
		"Shadow_Master_Voice_Win.ogg",
		"Shadow_Master_Voice_MagicAttackA01.ogg",
		"Shadow_Master_Voice_MagicAttackB01.ogg",
		"Shadow_Master_Voice_SpecialAttackA01.ogg",
		"Shadow_Master_Voice_SpecialAttackB01.ogg",
		"Shadow_Master_Voice_SpecialAttackC_Ready01.ogg",
		"Shadow_Master_Voice_SpecialAttackC_Attack01.ogg",
		"Shadow_Master_Voice_Dying01.ogg",
		"Shadow_Master_Voice_BigHit01.ogg",
		"Shadow_Master_Voice_Hit01.ogg",
		"Shadow_Master_Voice_Hit02.ogg",
		"Shadow_Master_Voice_Hit03.ogg",
		"Shadow_Master_Voice_Hit04.ogg",
		"Shadow_Master_Voice_Hit05.ogg",
		"Shadow_Master_WaitStart01.ogg",
		"Shadow_Master_WaitStart02.ogg",
	},
		
	READY_XMESH = 
	{
		"Lightning02.Y",
		"SM_WaitStart.y",
	},
	
	READY_XSKIN_MESH = 
	{
		-- 흑염보
		"AttackBox_DarkFire.X",
		-- 흑염구
	    "DarkBall_AttackBox.X",
	    "DarkBall_COLLISION_SPHERE.X",
	    -- 죽을 때 이펙트
	    "DyingBall.X",
	    "SM_Dying_Light.X",
	    -- 흑염수
	    "MagicAttack_SM_01.X",
	    -- 흑염 폭풍
	    "SM_SpecialAttackC_Light.X",
	    -- 흑연결
	    "Linker_Link.X",
	    -- 흑염 각인
	    "magicattackB_Debuff_Dummy.X",
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_SHADOW_MASTER.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 750,
	RUN_SPEED			= 800,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MAX_HP				= 20000,
	MP_CHANGE_RATE		= 2,
	MP_CHARGE_RATE		= 1200,
		
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	
	DRAW_SMALL_MP_BAR	= FALSE,
	--MIND_FLAG_HEIGHT	= 230,
	HEAD_BONE_NAME		= "Bip01_Head",
	
	RAGE_COUNT_MAX		= 40,
	RAGE_TIME_MAX		= 6,
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_SHADOW_MASTER.dds",
    BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
    BOSS_GAGE_FACE_TEX_PIECE	= "NUI_SHADOW_MASTER",
    BOSS_NAME_TEX				= "HQ_BOSS_NAME_SHADOW_MASTER.dds",

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	
	DIE_FLY             = 0,
}
--------------------------------------------------------------------------
INIT_STATE = 
{		
	{ STATE_NAME = "SHADOW_MASTER_WAIT_START",	LUA_STATE_START_FUNC = "SHADOW_MASTER_WAIT_START_STATE",	},
	{ STATE_NAME = "SHADOW_MASTER_WAIT",		},
	{ STATE_NAME = "SHADOW_MASTER_WIN",			},
	{ STATE_NAME = "SHADOW_MASTER_WALK",		LUA_STATE_START_FUNC = "SHADOW_MASTER_WALK_START_STATE",	LUA_FRAME_MOVE_FUNC = "SHADOW_MASTER_WALK_FRAME_MOVE",},

    { STATE_NAME = "SHADOW_MASTER_MAGIC_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "SHADOW_MASTER_MAGIC_ATTACK_A_FRAME_MOVE",	STATE_COOL_TIME = 4,	},
    { STATE_NAME = "SHADOW_MASTER_MAGIC_ATTACK_B",			LUA_FRAME_MOVE_FUNC = "SHADOW_MASTER_MAGIC_ATTACK_B_FRAME_MOVE",	STATE_COOL_TIME = 20,	},
	{ STATE_NAME = "SHADOW_MASTER_SPECIAL_ATTACK_A",		LUA_STATE_START_FUNC = "SHADOW_MASTER_SPECIAL_ATTACK_A_STATE_START",
															LUA_FRAME_MOVE_FUNC = "SHADOW_MASTER_SPECIAL_ATTACK_A_FRAME_MOVE",	STATE_COOL_TIME = 10,	},
	{ STATE_NAME = "SHADOW_MASTER_SPECIAL_ATTACK_B",		LUA_FRAME_MOVE_FUNC = "SHADOW_MASTER_SPECIAL_ATTACK_B_FRAME_MOVE",	STATE_COOL_TIME = 20,	},
	{ STATE_NAME = "SHADOW_MASTER_SPECIAL_ATTACK_C_READY",	STATE_COOL_TIME = 20,	},
	{ STATE_NAME = "SHADOW_MASTER_SPECIAL_ATTACK_C",		LUA_FRAME_MOVE_FUNC = "SHADOW_MASTER_SPECIAL_ATTACK_C_FRAME_MOVE",	},
	{ STATE_NAME = "SHADOW_MASTER_SPECIAL_ATTACK_C_END",	},
	{ STATE_NAME = "SHADOW_MASTER_COMMON_RAGE",				}, --LUA_STATE_START_FUNC = "SHADOW_MASTER_COMMON_RAGE_START",		},

	--리액션 관련
	{ STATE_NAME = "SHADOW_MASTER_DAMAGE_FRONT",		LUA_FRAME_MOVE_FUNC = "SHADOW_MASTER_DAMAGE_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "SHADOW_MASTER_DAMAGE_BACK",			LUA_FRAME_MOVE_FUNC = "SHADOW_MASTER_DAMAGE_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "SHADOW_MASTER_DAMAGE_BIG_FRONT",	LUA_FRAME_MOVE_FUNC = "SHADOW_MASTER_DAMAGE_BIG_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "SHADOW_MASTER_DAMAGE_BIG_BACK",		LUA_FRAME_MOVE_FUNC = "SHADOW_MASTER_DAMAGE_BIG_BACK_FRAME_MOVE"	},
	{ STATE_NAME = "SHADOW_MASTER_DYING_LAND_FRONT",	LUA_STATE_START_FUNC = "SHADOW_MASTER_DYING_LAND_STATE_START",		},
	{ STATE_NAME = "SHADOW_MASTER_DYING_LAND_BACK",		LUA_STATE_START_FUNC = "SHADOW_MASTER_DYING_LAND_STATE_START",		},
	{ STATE_NAME = "SHADOW_MASTER_DYING_SKY",			LUA_STATE_START_FUNC = "SHADOW_MASTER_DYING_LAND_STATE_START",		},
	
	-- 다운, 플라이, 에어의 경우 BIG_DAMAGE + BACK MOVE
	{ STATE_NAME = "SHADOW_MASTER_DAMAGE",	LUA_STATE_START_FUNC = "SHADOW_MASTER_DAMAGE_STATE_START",	},
	--{ STATE_NAME = "SHADOW_MASTER_REVENGE",	LUA_STATE_START_FUNC = "SHADOW_MASTER_REVENGE_STATE_START",	},
	
	START_STATE	= "SHADOW_MASTER_WAIT_START",
	WAIT_STATE	= "SHADOW_MASTER_WAIT",
	RAGE_STATE	= "SHADOW_MASTER_COMMON_RAGE",
		
	SMALL_DAMAGE_LAND_FRONT	= "SHADOW_MASTER_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK	= "SHADOW_MASTER_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT	= "SHADOW_MASTER_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK	= "SHADOW_MASTER_DAMAGE_BIG_BACK",
	-- 다운, 플라이, 에어의 경우 BIG_DAMAGE + BACK MOVE
	DOWN_DAMAGE_LAND_FRONT	= "SHADOW_MASTER_DAMAGE_BIG_FRONT",
	DOWN_DAMAGE_LAND_BACK	= "SHADOW_MASTER_DAMAGE_BIG_BACK",
	FLY_DAMAGE_FRONT		= "SHADOW_MASTER_DAMAGE_BIG_FRONT",
	FLY_DAMAGE_BACK			= "SHADOW_MASTER_DAMAGE_BIG_BACK",
	SMALL_DAMAGE_AIR		= "SHADOW_MASTER_DAMAGE",	
	BIG_DAMAGE_AIR			= "SHADOW_MASTER_DAMAGE",
	DOWN_DAMAGE_AIR			= "SHADOW_MASTER_DAMAGE",
	UP_DAMAGE				= "SHADOW_MASTER_DAMAGE",
	
	--DAMAGE_REVENGE			= "SHADOW_MASTER_REVENGE",
	
	DYING_LAND_FRONT	= "SHADOW_MASTER_DYING_LAND_FRONT",
	DYING_LAND_BACK		= "SHADOW_MASTER_DYING_LAND_BACK",
	DYING_SKY			= "SHADOW_MASTER_DYING_SKY",

	REVENGE_ATTACK		= "",	
	
	COMMON_FRAME_FUNC   = "SHADOW_MASTER_COMMON_FRAME_MOVE",
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 9000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9000,		-- cm
		TARGET_LOST_RANGE			= 10000,	-- cm
		TARGET_SUCCESS_RATE			= 100,		-- 50,		-- %
		ATTACK_TARGET_RATE			= 50,		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 40,		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 500,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 600,
		
		DIR_CHANGE_INTERVAL = 0.3,
		
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 0,
		UP_JUMP_RATE		= 0, -- 40,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    --  20,
		DOWN_DOWN_RATE		= 0,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
	},
}
--------------------------------------------------------------------------
-- 시작
SHADOW_MASTER_WAIT_START = 
{
	ANIM_NAME	= "WaitStart",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SOUND_PLAY0 		= { 0.01, "Shadow_Master_Voice_WaitStart01.ogg" }, 
	SOUND_PLAY1 		= { 0.10, "Shadow_Master_WaitStart01.ogg" }, 
	SOUND_PLAY2 		= { 1.60, "Shadow_Master_WaitStart02.ogg" }, 

	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	
	SUPER_ARMOR			= TRUE,
	SUPER_ARMOR_NOT_RED = TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 시작
	EFFECT_SET_LIST =
	{
		"EffectSet_Shadow_Master_WaitStart", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.001, "Pa_SHADOW_MASTER_Basic", FALSE, "Dummy01", FALSE, TRUE, 0, 0, 0, TRUE, },
	},
}
--------------------------------------------------------------------------
-- 승리
SHADOW_MASTER_WIN =
{
	ANIM_NAME	= "Win",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SOUND_PLAY0 		= { 0.01, "Shadow_Master_Voice_Win01.ogg" }, 

	SPEED_X	= 0,
	SPEED_Y	= 0,

	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	
	SUPER_ARMOR			= TRUE,
	SUPER_ARMOR_NOT_RED = TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},
}
--------------------------------------------------------------------------
-- 대기
SHADOW_MASTER_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
		
	ALLOW_DIR_CHANGE	= TRUE,
	VIEW_TARGET			= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"SHADOW_MASTER_WIN",		"CF_SHADOW_MASTER_WIN",	},	
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_MASTER_JUMP_DOWN",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_MAGIC_ATTACK_A",			"CT_SHADOW_MASTER_MAGIC_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_MAGIC_ATTACK_B",			"CT_SHADOW_MASTER_MAGIC_ATTACK_B",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_SPECIAL_ATTACK_A",		"CT_SHADOW_MASTER_SPECIAL_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_SPECIAL_ATTACK_B",		"CT_SHADOW_MASTER_SPECIAL_ATTACK_B",		},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_SPECIAL_ATTACK_C_READY",	"CT_SHADOW_MASTER_SPECIAL_ATTACK_C_READY",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"SHADOW_MASTER_WALK",	},
	},
	
	CT_SHADOW_MASTER_MAGIC_ATTACK_A =
	{	-- 근접 공격
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 50,		
	},
	CT_SHADOW_MASTER_MAGIC_ATTACK_B =
	{	-- 디버프
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
	},
	CT_SHADOW_MASTER_SPECIAL_ATTACK_A =
	{	-- 섀도우 링크
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
		FLAG_FALSE                  = 0,
	},
	CT_SHADOW_MASTER_SPECIAL_ATTACK_B =
	{	-- 흑염구
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 40,
	},
	--[[CT_SHADOW_MASTER_SPECIAL_ATTACK_C_READY =
	{	-- 흑염 폭풍
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 100,
	},--]]
}
--------------------------------------------------------------------------
-- 걷기
SHADOW_MASTER_WALK = 
{
	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE	= TRUE,
	VIEW_TARGET			= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"SHADOW_MASTER_WIN",		"CF_SHADOW_MASTER_WIN",	},
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_MASTER_JUMP_DOWN",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_MAGIC_ATTACK_A",			"CT_SHADOW_MASTER_MAGIC_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_MAGIC_ATTACK_B",			"CT_SHADOW_MASTER_MAGIC_ATTACK_B",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_SPECIAL_ATTACK_A",		"CT_SHADOW_MASTER_SPECIAL_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_SPECIAL_ATTACK_B",		"CT_SHADOW_MASTER_SPECIAL_ATTACK_B",		},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_SPECIAL_ATTACK_C_READY",	"CT_SHADOW_MASTER_SPECIAL_ATTACK_C_READY",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"SHADOW_MASTER_WALK",	},
	},
	
	CT_SHADOW_MASTER_MAGIC_ATTACK_A =
	{	-- 근접 공격
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 50,		
	},
	CT_SHADOW_MASTER_MAGIC_ATTACK_B =
	{	-- 디버프
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
	},
	CT_SHADOW_MASTER_SPECIAL_ATTACK_A =
	{	-- 섀도우 링크
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
		FLAG_FALSE                  = 0,
	},
	CT_SHADOW_MASTER_SPECIAL_ATTACK_B =
	{	-- 흑염구
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 40,
	},
	--[[CT_SHADOW_MASTER_SPECIAL_ATTACK_C_READY =
	{	-- 흑염 폭풍
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 100,
	},--]]
}
--------------------------------------------------------------------------
-- 흑염수
SHADOW_MASTER_MAGIC_ATTACK_A = 
{
	ANIM_NAME	= "MagicAttackA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	
	SUPER_ARMOR			= TRUE,
		
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 2,
	
	SOUND_PLAY0 			= { 0.01, "Shadow_Master_Voice_MagicAttackA01.ogg" }, 
	SOUND_PLAY1				= { 0.65 , "Shadow_Master_MagicAttackA01.ogg" },
	SOUND_PLAY2				= { 1.45 , "Swing_Big02.ogg" },
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_Shadow_Master_Magic_Attack_A", 0,
	},
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},    
}
--------------------------------------------------------------------------
-- 흑염 각인
SHADOW_MASTER_MAGIC_ATTACK_B = 
{
	ANIM_NAME	= "MagicAttackB",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,

	SOUND_PLAY0 			= { 0.01 , "Shadow_Master_Voice_MagicAttackB01.ogg" }, 
   	SOUND_PLAY1				= { 1.40 , "Shadow_Master_MagicAttackB01.ogg" },
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= TRUE,
	SUPER_ARMOR			= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 2,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Shadow_Master_Magic_Attack_B", 0,
	},
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},	
}
--------------------------------------------------------------------------
-- 섀도우 링크
SHADOW_MASTER_SPECIAL_ATTACK_A = 
{
	ANIM_NAME	= "SpecialAttackA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	

	SOUND_PLAY0 			= { 0.01 , "Shadow_Master_Voice_SpecialAttackA01.ogg" }, 
   	SOUND_PLAY1				= { 0.25 , "Shadow_Master_SpecialAttackA01.ogg" },
	SOUND_PLAY2				= { 1.15 , "Shadow_Master_SpecialAttackA02.ogg" },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	VIEW_TARGET		= TRUE,
	NEVER_MOVE		= TRUE,
	SUPER_ARMOR		= TRUE,
		
	ALLOW_DIR_CHANGE	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 2,
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_MAGIC"],
		HIT_TYPE		= HIT_TYPE["HT_NO_SOUND"],
		REACT_TYPE		= REACT_TYPE["RT_DUMMY_DAMAGE"],

		DAMAGE =
		{
			MAGIC		= 1.0,
		},

        NO_DAMAGE               = TRUE,

		RE_ATTACK				= FALSE,
		HIT_GAP					= 1,
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Shadow_Master_Special_Attack_A", 0,
	},
	
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},	
}
--------------------------------------------------------------------------
-- 흑염구
SHADOW_MASTER_SPECIAL_ATTACK_B = 
{
	ANIM_NAME	= "SpecialAttackB",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	SOUND_PLAY0 			= { 0.01 , "Shadow_Master_Voice_SpecialAttackB01.ogg" }, 
	SOUND_PLAY1				= { 0.02 , "Shadow_Master_SpecialAttackB02.ogg" },
	SOUND_PLAY2				= { 1.50 , "Shadow_Master_SpecialAttackB01.ogg" },
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	SUPER_ARMOR		= TRUE,
	
	ALLOW_DIR_CHANGE	= TRUE,
	VIEW_TARGET			= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 2,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Shadow_Master_Special_Attack_B_Motion", 0,
	},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15181,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},	
}
--------------------------------------------------------------------------
-- 흑염 폭풍 준비
SHADOW_MASTER_SPECIAL_ATTACK_C_READY = 
{
	ANIM_NAME	= "SpecialAttackC_Ready",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	

    SOUND_PLAY0 			= { 0.01 , "Shadow_Master_Voice_SpecialAttackC_Ready01.ogg" }, 
	SOUND_PLAY1				= { 0.01, "Shadow_Master_SpecialAttackC01.ogg" },
	
	INVINCIBLE	= { 0, 100, }, 	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	RIGHT	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 2,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Shadow_Master_Special_Attack_C_Ready", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15182,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_SPECIAL_ATTACK_C",	},
	},	
}
--------------------------------------------------------------------------
-- 흑염 폭풍 발동
SHADOW_MASTER_SPECIAL_ATTACK_C = 
{
	ANIM_NAME	= "SpecialAttackC_Attack",
	ANIM_SPEED	= 0.7,
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	INVINCIBLE	= { 0, 100, }, 	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,

	SOUND_PLAY0 			= { 0.01 , "Shadow_Master_Voice_SpecialAttackC_Attack01.ogg" }, 
    SOUND_PLAY1				= { 0.01, "Shadow_Master_SpecialAttackC02.ogg" },
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 2,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Shadow_Master_Special_Attack_C", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_SPECIAL_ATTACK_C_END",	},
	},	
}
--------------------------------------------------------------------------
-- 흑염 폭풍 종료
SHADOW_MASTER_SPECIAL_ATTACK_C_END = 
{
	ANIM_NAME	= "SpecialAttackC_End",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	

	INVINCIBLE	= { 0, 100, }, 	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	RIGHT	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 2,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},	
}
--------------------------------------------------------------------------
-- 작은 데미지(앞)
SHADOW_MASTER_DAMAGE_FRONT =
{
	ANIM_NAME		= "DamageFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	SOUND_PLAY0	= { 0.01, "Shadow_Master_Voice_hit02.ogg",30 },
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	SPEED_Y         =0,
	
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},
}
--------------------------------------------------------------------------
-- 작은 데미지(뒤)
SHADOW_MASTER_DAMAGE_BACK =
{
	ANIM_NAME		= "DamageBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
		SOUND_PLAY0		= { 0.01, "Shadow_Master_Voice_hit03.ogg",30},
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	SPEED_Y         =0,
	
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},
}
--------------------------------------------------------------------------
-- 큰 데미지(앞)
SHADOW_MASTER_DAMAGE_BIG_FRONT =
{
	ANIM_NAME		= "DamageBigFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	SOUND_PLAY0		= { 0.01, "Shadow_Master_Voice_Bighit01.ogg",30},
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	SPEED_Y         =0,
	
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},
}
--------------------------------------------------------------------------
-- 큰 데미지(앞)
SHADOW_MASTER_DAMAGE_BIG_BACK =
{
	ANIM_NAME		= "DamageBigBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	SOUND_PLAY0		= { 0.01, "Shadow_Master_Voice_Bighit01.ogg",30},
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	SPEED_Y         =0,
	
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},
}
--------------------------------------------------------------------------
-- 기타 공격 받은 상태
SHADOW_MASTER_DAMAGE = 
{
	ANIM_NAME		= "DamageBigFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	SOUND_PLAY0		= { 0.01, "Shadow_Master_Voice_hit01.ogg",30},
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	SPEED_Y         =0,
	
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	NEVER_MOVE			= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_WAIT",	},
	},
}
--------------------------------------------------------------------------
-- 죽을 때
SHADOW_MASTER_DYING_LAND_FRONT = 
{
	ANIM_NAME		= "Dying",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, }, 		

    SOUND_PLAY0 			= { 0.01 , "Shadow_Master_Voice_Dying01.ogg" }, 
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Shadow_Master_Dying", 0,
	},
}
--------------------------------------------------------------------------
-- 죽을 때
SHADOW_MASTER_DYING_LAND_BACK = 
{
	ANIM_NAME		= "Dying",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE	= { 0, 100, }, 		

    SOUND_PLAY0 			= { 0.01 , "Shadow_Master_Voice_Dying01.ogg" }, 

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END	= TRUE,	
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Shadow_Master_Dying", 0,
	},
}
--------------------------------------------------------------------------
-- 죽을 때
SHADOW_MASTER_DYING_SKY = 
{
	ANIM_NAME		= "Dying",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE	= { 0, 100, }, 		

    SOUND_PLAY0 			= { 0.01 , "Shadow_Master_Voice_Dying01.ogg" }, 
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Shadow_Master_Dying", 0,
	},
}
--------------------------------------------------------------------------
SHADOW_MASTER_COMMON_RAGE =
{
	ANIM_NAME		= "Wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0		= 0.5,
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_SPECIAL_ATTACK_B",		"CT_SHADOW_MASTER_SPECIAL_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_MASTER_SPECIAL_ATTACK_C_READY",	"CT_SHADOW_MASTER_SPECIAL_ATTACK_C_READY",	},
	},

	--[[CT_SHADOW_MASTER_SPECIAL_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID	= 0,
		RATE	            = 50,
	},--]]
	CT_SHADOW_MASTER_SPECIAL_ATTACK_C_READY =
	{
		EVENT_INTERVAL_ID	= 0,
		RATE				= 50,
	},
}
--------------------------------------------------------------------------
function SHADOW_MASTER_WAIT_START_STATE( pKTDXApp, pX2Game, pNPCUnit )
	local iKeyCode = pNPCUnit:GetKeyCode()
	
	if iKeyCode == 1 then
		pNPCUnit:SetFlag_LUA( 2, true )
	else
		pNPCUnit:SetFlag_LUA( 2, false )
	end
end
--------------------------------------------------------------------------
--------------------------------------------------------------------------
function CF_SHADOW_MASTER_WIN( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:LiveUserUnitNum() == 0 then
		return true
	else
		return false
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_WALK_START_STATE( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 4 )
end
--------------------------------------------------------------------------
function SHADOW_MASTER_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local fFireTime = 0.6 -- 흑염보 생성 타임( 예: 0.1초당 생성 )
	
	if true == pNPCUnit:GetFlag_LUA( 2 ) then
		fFireTime = 0.3
	end
	
	if fFireTime <= pNPCUnit:GetTimerElapsedTime( 4 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Shadow_Master_Dark_Fire_Step", pNPCUnit )
		pNPCUnit:SetTimerRestart( 4 )
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
		local vLandPos = pNPCUnit:GetLandPosition_LUA()
	    local vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
		local pDamageEffect = pX2Game:GetDamageEffect()		
	    pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_MAGICATTACK_A_BLACKHALL", vPos, vLandPos.y )
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_MAGIC_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.258 ) then
		if true == pNPCUnit:HasTarget() then		-- 대상이 있을 때
			local pEffectSet = pX2Game:GetEffectSet()
			
			local pTargetUnit = pNPCUnit:GetTargetUser()
			 if nil ~= pTargetUnit then
				local vTargetPos = pTargetUnit:GetPos()
				vTargetPos.y = vTargetPos.y + 100
			
				pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_Shadow_Master_Magic_Attack_B_Debuff3", pNPCUnit, vTargetPos, D3DXVECTOR3(0, 0, 0) )
			end
		end
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_SPECIAL_ATTACK_A_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetNowHP() <= 0 then
		pNPCUnit:SetFlag_LUA( 3, false )
		ClearEffect( pKTDXApp, pX2Game, pNPCUnit )
	end
	
	if true == pNPCUnit:GetFlag_LUA( 3 ) then
		local pLinkedUnit = pNPCUnit:GetNearestGUUser()

		if nil ~= pLinkedUnit then
			local vTargetPos = pLinkedUnit:GetPos()
			local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
			local fDist = pX2Game:GetDist_LUA( vTargetPos, vPos )
		
			if fDist > 2000 then
				pNPCUnit:SetFlag_LUA( 3, false )
				ClearEffect( pKTDXApp, pX2Game, pNPCUnit )
			end
		end
	end

	if false == pNPCUnit:GetFlag_LUA( 3 ) then
		local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
		local pUserUnit = pX2Game:GetNearestUserUnitInSpecificRange_LUA( vPos, 0, 2000 )
		pNPCUnit:SetNearestGUUser( pUserUnit )
		
		-- 방장의 NPC AI Taget 갱신
		if nil ~= pNPCUnit:GetTargetUser() then
			pNPCUnit:SetTargetUnit( pUserUnit )
		end
		
		pNPCUnit:SetFlag_LUA( 3, true )
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_SPECIAL_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.097 ) then
        local pMajorParticle = pX2Game:GetMajorParticle()

        -- 링크 일때
        if false == pNPCUnit:GetFlag_LUA(0) then
            if true == pNPCUnit:HasTarget() then
                
                local vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )

                -- NPC에게 걸리는 이펙트(검은 연기)
                if nil ~= pMajorParticle then
                    local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_SHADOW_LINKER_Smoke01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
                    pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() )
                end

                local pLinkedUnit = pNPCUnit:GetNearestGUUser()

				pNPCUnit:SetFlag_LUA( 0, true )		-- index, bool
				pNPCUnit:SetTimerRestart( 5 )		-- index

                -- 유닛이 있을 때
                if nil ~= pLinkedUnit then
                    pLinkedUnit:SetNowHit( false )
                    local vTargetPos = pLinkedUnit:GetPos()
                    vTargetPos.y = vTargetPos.y + 100

                    if nil ~= pMajorParticle then
                        -- 유저에게 검은 연기 이펙트를 검
                        local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_SHADOW_LINKER_Smoke01", vTargetPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
                        pNPCUnit:SetMajorParticle_LUA( 1, pParticle:GetHandle() )
                    end

					pLinkedUnit:SetAnimSpeed_LUA( 0.7 )

                    local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy01")
                    local rotDegree	= pNPCUnit:GetRotateDegree()
                    local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
                    local pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Mesh_SHADOW_LINKER_Line", vBonePos, rotDegree, rotDegree, 14 )
					                    
                    pNPCUnit:SetTimerRestart( 5 )
                    pNPCUnit:SetFlag_LUA( 0, true )

                    pNPCUnit:SetMajorMeshPlayer_LUA( 0, pMeshPlayer )
                end
            end
   		end
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_SPECIAL_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.809 ) then
		SummonDarkBall( pX2Game, pNPCUnit )
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_SPECIAL_ATTACK_C_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
		local pDamageEffect = pX2Game:GetDamageEffect()
		local vLandPos = pNPCUnit:GetLandPosition_LUA()
		
		--math.randomseed( os.time() )
		-- 같은 위치에 중복되어서 나오는 것 방지
		local bRandTable = { false, false, false, false, false, false, false, false }
		for i = 1, 8 do
			local iRandOffeset = 0
			local iRandInx = pNPCUnit:GetRandVal(iRandOffeset) % 8 + 1 --(math.random(1, 8))
			
			repeat
				iRandOffeset = iRandOffeset + 1
				iRandInx = pNPCUnit:GetRandVal(iRandOffeset) % 8 + 1 --(math.random(1, 8))
			until bRandTable[iRandInx] ~= true
			
			bRandTable[iRandInx] = true
			
			local vTargetPos = pX2Game:GetLineMap():GetStartPosition( iRandInx )
			local vCreatePos = D3DXVECTOR3(0,0,0)
			vCreatePos.x = pNPCUnit:GetRandVal(iRandOffeset) % 1200 - 600 --math.random(vTargetPos.x-600, vTargetPos.x+600)
			vCreatePos.y = vTargetPos.y + pNPCUnit:GetRandVal(iRandOffeset) % 1000 + 1500 --(math.random(1500, 2500))
			vCreatePos.z = pNPCUnit:GetRandVal(iRandOffeset) % 2000 - 1000 --math.random(vTargetPos.z-1000, vTargetPos.z+1000)
			local vDir = D3DXVECTOR3(0,0,0)
			vDir.x = vTargetPos.x - vCreatePos.x
			vDir.y = vTargetPos.y - vCreatePos.y
			vDir.z = vTargetPos.z - vCreatePos.z
			vDir = GetDirVecToDegree( vDir )
						
			if pDamageEffect ~= nil then
				local pDarkMeteor = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DAMAGE_EFFECT_SPECIAL_ATTACK_C", vCreatePos, vLandPos.y, vDir )
				pNPCUnit:SetLockOnPos( pDarkMeteor, vTargetPos )
			end
		end
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	-- Shadow Link 관련
	if pNPCUnit ~= nil then
		Shadow_link_func( pKTDXApp, pX2Game, pNPCUnit )
	end
	-- Magic Attack B
	MagicAttack_B_func( pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
function SHADOW_MASTER_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.049 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.096 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_DAMAGE_BIG_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_DAMAGE_BIG_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.132 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
	end
end
--------------------------------------------------------------------------
function SHADOW_MASTER_DAMAGE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
function SHADOW_MASTER_REVENGE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
function SHADOW_MASTER_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetFlag_LUA( 0, false )
	ClearEffect( pKTDXApp, pX2Game, pNPCUnit )
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	end
	
	local IsSummoned = pNPCUnit:GetFlag_LUA( 1 )
			
	-- 이전에 소환된 것이 있으면 강제로 폭발 시키기
	if true == IsSummoned then
		local NumDarkBall = pNPCUnit:GetInt_LUA( 8 )
		pX2Game:KillNPC( NPC_UNIT_ID["NUI_SHADOW_MASTER_DARK_BALL"], NumDarkBall )
		pNPCUnit:SetFlag_LUA( 1, false )
		pNPCUnit:SetInt_LUA( 8, 0 )
	end
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )	
end
--------------------------------------------------------------------------
-- 지속 시간 확인 후 이펙트 제거
function MagicAttack_B_func( pX2Game, pNPCUnit )
	
end
--------------------------------------------------------------------------
-- 이펙트 갱신 및 데미지에 따른 HP 획득
function Shadow_link_func( pKTDXApp, pX2Game, pNPCUnit )
	if true == pNPCUnit:GetFlag_LUA(0) then		-- 0번 플래그가 true 일 때
		local fDist = 0.0
		local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
		
		local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
		if nil ~= pParticle then
			pParticle:SetPosition( vPos )	-- NPC에 걸리는  이펙트 위치 갱신
		end
		
		-- 유저 이펙트 갱신
		local pLinkedUnit = pNPCUnit:GetNearestGUUser()
		
		if nil ~= pLinkedUnit then
			local vTargetPos = pLinkedUnit:GetPos()
			vTargetPos.y = vTargetPos.y + 100
			
			--{{ 검은 연기 파티클
			pParticle = pNPCUnit:GetMajorParticle_LUA( 1 )
			if nil ~= pParticle then
				pParticle:SetPosition( vTargetPos )
			end
			--}}
			
			--{{ 피 흡수 이펙트
			if true == pLinkedUnit:GetNowHit() then
				DrainHP( pNPCUnit, pLinkedUnit )
				pLinkedUnit:SetNowHit( false )
				pParticle = pX2Game:GetMajorParticle()

				local pSeq = pParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_SHADOW_LINKER_Link_Drain", vTargetPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
				if pSeq ~= nil then
					pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
					pNPCUnit:SetDrainHPSeq( pSeq:GetHandle() )
				end
			end
			--}}
			
			--{{ 링크 라인 이펙트 위치 및 회전 관련
			local pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 0 )
			if nil ~= pMeshPlayer then
				local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()

				if nil ~= pMajorXMeshPlayer then
					if false == pMajorXMeshPlayer:IsLiveInstance( pMeshPlayer ) then
						pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
					else
						local vBonePos = pNPCUnit:GetBonePos_LUA("Bip01_Neck")
						fDist = pX2Game:GetDist_LUA( vBonePos, vTargetPos )
						
						if fDist <= 0 then
							fDist = 1
						end
						
						local fScaleX = fDist / 280
						pMeshPlayer:SetPos( vBonePos )
						vTargetPos.x = (vTargetPos.x - vBonePos.x)
						vTargetPos.y = (vTargetPos.y - vBonePos.y)
						vTargetPos.z = (vTargetPos.z - vBonePos.z)
						local vDir = GetDirVecToDegree( vTargetPos )
						pMeshPlayer:SetRotateDegree( vDir )
						pMeshPlayer:SetMoveAxisAngleDegree( vDir )
						pMeshPlayer:SetScale_LUA( fScaleX, 1.0, 1.0 )
					end
				end
			end
			--}}
		
			local fLinkTime = 10.0		-- 링크 시간
			local fNearDist = 2000.0
			
			if fDist > fNearDist or fLinkTime <= pNPCUnit:GetTimerElapsedTime( 5 ) then
				pLinkedUnit:SetAnimSpeed_LUA( 1 )
				ClearEffect( pKTDXApp, pX2Game, pNPCUnit )
				pNPCUnit:SetFlag_LUA( 0, false )
				pNPCUnit:SetTimerRestart( 5 )
			end
		else
			ClearEffect( pKTDXApp, pX2Game, pNPCUnit )
			pNPCUnit:SetFlag_LUA( 0, false )
		end
    end
end
--------------------------------------------------------------------------
function ClearEffect( pKTDXApp, pX2Game, pNPCUnit )
    for i = 0, 1 do
        local pParticle = pNPCUnit:GetMajorParticle_LUA( i )
        if nil ~= pParticle then
            pParticle:SetAutoDie()
        end
    end
    
    local pMajorMeshPlayer = pX2Game:GetMajorXMeshPlayer()
	if pMajorMeshPlayer ~= nil then
		pMajorMeshPlayer:DestroyInstance( pNPCUnit:GetMajorMeshPlayerHandle( 0 ) )
		pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
	end
		
	local pLinkedUnit = pNPCUnit:GetNearestGUUser()
		
	if nil ~= pLinkedUnit then
		pLinkedUnit:SetAnimSpeed_LUA( 1 )
	end
end
--------------------------------------------------------------------------
-- 섀도우 링커와 다름(유저가 받은 데미지만큼 회복)
function DrainHP( pNPCUnit, pLinkedUnit )
    if nil ~= pNPCUnit and pLinkedUnit ~= nil then
		local fUserDamage = pLinkedUnit:GetRealDamage()
        local fHealHP = pNPCUnit:GetNowHP() + fUserDamage

        if fHealHP > pNPCUnit:GetMaxHP() then
            fHealHP = pNPCUnit:GetMaxHP()
        end

        pNPCUnit:SetNowHP_LUA( fHealHP )
    end
end
--------------------------------------------------------------------------
-- 흑염구 생성
function SummonDarkBall( pX2Game, pNPCUnit )
	local IsSummoned = pNPCUnit:GetFlag_LUA( 1 )
	local NumDarkBall = 0
		
	-- 이전에 소환된 것이 있으면 강제로 폭발 시키기
	if true == IsSummoned then
		NumDarkBall = pNPCUnit:GetInt_LUA( 8 )
		pX2Game:KillNPC( NPC_UNIT_ID["NUI_SHADOW_MASTER_DARK_BALL"], NumDarkBall )
		pNPCUnit:SetFlag_LUA( 1, false )
		pNPCUnit:SetInt_LUA( 8, 0 )
	end
	
	-- 던전 레벨에 따른 흑염구 수량 조절
	local dungeonLv = pX2Game:GetGameLevel()
	if dungeonLv == 0 then
		NumDarkBall = 8
	elseif dungeonLv == 1 then
		NumDarkBall = 10
	else
		NumDarkBall = 14
	end
	
	if true == pNPCUnit:GetFlag_LUA( 2 ) then
		NumDarkBall = 4
	end
	
	pNPCUnit:SetInt_LUA( 8, NumDarkBall )
	pNPCUnit:SetFlag_LUA( 1, true )
	
	-- Position의 경우 LineMap에 지정된 point 이용하기
	-- KTDX 내에 있는 pNPCUnit:GetRandVal()보다 lua의 rand가 더 좋은 결과를 보임
	math.randomseed( os.time() )

	-- random: 1 ~ 11(11은 보스 스테이지 상의 라인맵에 있는 위치 값의 최대 개수임, 라인맵 툴을 이용해 증가 또는 감소 시킬 수 있음) 
	for i = 1, NumDarkBall do
		local randInx = ( math.random( 1, 11 ) )
		local vPos = pX2Game:GetLineMap():GetStartPosition( randInx )
		vPos.y = vPos.y + 80
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_SHADOW_MASTER_DARK_BALL"], pNPCUnit:GetHardLevel(), false, vPos, false, 0.5, true )
	end
end
--------------------------------------------------------------------------
-- UTIL FUNCTION
--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
end