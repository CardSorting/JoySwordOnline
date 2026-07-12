-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/8/23 / 좀비 글리터, 벨더 비밀 던전 몬스터/
	 Attack_A(), Anger()
--]]

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	LUA_SHAREABLE	= TRUE,
	UNIT_WIDTH		= 120.0 * 1.88,
	UNIT_HEIGHT		= 150.0 * 1.5,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.3 * 1.4,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"GLITER_ZOMBIE_Map_A.tga",
		"GLITER_ZOMBIE_Map_A.tga",
	},
	
	READY_SOUND = 
	{
		"Glitter_Landing.ogg",
		"Glitter_StandUp.ogg",
		"GlitterVoice_HurtRoar1.ogg",
		"GlitterVoice_DeathRoar.ogg",
		
		"Down.ogg",
		"GroundShockWave",
		"DieLight.ogg",
		
		"GLITER_ZOMBIE_Anger_A01.ogg",
		"GLITER_ZOMBIE_Attack_A01.ogg",
		"GLITER_ZOMBIE_Dash_A01.ogg",
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME	= "NUI_GLITER_ZOMBIE.x",
	MOTION_CHANGE_TEX_XET	= "BATER_FD_BOSS_A.XET",
	MOTION_ANI_TEX_XET		= "BATER_FD_BOSS_A.XET",

}
--------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 200,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	DEFAULT_ANIM_SPEED = 0.8,
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	
	RAGE_COUNT_MAX		= 30,
	RAGE_TIME_MAX		= 5,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	-- 대기
	{ STATE_NAME = "BATER_START",	},
	{ STATE_NAME = "BATER_WAIT",	},
	
	-- 이동
	{ STATE_NAME = "BATER_WALK",			LUA_STATE_END_FUNC = "BATER_WALK_STATE_END"			},
	{ STATE_NAME = "BATER_JUMP_UP",			},
	{ STATE_NAME = "BATER_JUMP_DOWN",		LUA_STATE_END_FUNC = "BATER_JUMP_DOWN_STATE_END"		},
	{ STATE_NAME = "BATER_JUMP_UP_DIR",		},
	{ STATE_NAME = "BATER_JUMP_DOWN_DIR",	LUA_STATE_END_FUNC = "BATER_JUMP_DOWN_DIR_STATE_END"			},
	{ STATE_NAME = "BATER_JUMP_LANDING",	},
	{ STATE_NAME = "BATER_DASH",			LUA_STATE_START_FUNC = "BATER_DASH_STATE_START" 		},
	{ STATE_NAME = "BATER_DASH_END",		LUA_STATE_END_FUNC = "BATER_DASH_END_STATE_END"			},

	-- 공격
	{ STATE_NAME = "BATER_ATTACK",		STATE_COOL_TIME = 5,	},
	{ STATE_NAME = "BATER_ANGER",		STATE_COOL_TIME = 10,	},
	{ STATE_NAME = "BATER_POISON_CLOUD",	LUA_FRAME_MOVE_FUNC = "BATER_POISON_CLOUD_FRAME_MOVE_FUNC", STATE_COOL_TIME = 20,		},
	
	{ STATE_NAME = "BATER_ANGER_DASH",	LUA_STATE_END_FUNC = "BATER_DASH_END_STATE_END"				},
		
	--리액션 관련
	{ STATE_NAME = "BATER_DAMAGE_FRONT",		LUA_FRAME_MOVE_FUNC = "BATER_DAMAGE_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "BATER_DAMAGE_BACK",			LUA_FRAME_MOVE_FUNC = "BATER_DAMAGE_BACK_FRAME_MOVE"	},
	{ STATE_NAME = "BATER_DAMAGE_DOWN_FRONT",	LUA_FRAME_MOVE_FUNC = "BATER_DAMAGE_DOWN_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "BATER_DAMAGE_DOWN_BACK",	LUA_FRAME_MOVE_FUNC = "BATER_DAMAGE_DOWN_BACK_FRAME_MOVE"	},
	{ STATE_NAME = "BATER_DAMAGE_FLY_FRONT",	},
	{ STATE_NAME = "BATER_DAMAGE_FLY_BACK",		},
	{ STATE_NAME = "BATER_DAMAGE_AIR",			},
	{ STATE_NAME = "BATER_DAMAGE_AIR_DOWN",		},
	{ STATE_NAME = "BATER_DAMAGE_AIR_UP",		},
	{ STATE_NAME = "BATER_DAMAGE_AIR_FALL",		},
	{ STATE_NAME = "BATER_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "BATER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "BATER_STAND_UP_FRONT",		},
	{ STATE_NAME = "BATER_STAND_UP_BACK",		},
	--{ STATE_NAME = "BATER_DAMAGE_REVENGE",		},
	{ STATE_NAME = "BATER_DYING_LAND_FRONT",	LUA_STATE_START_FUNC = "BATER_DYING_LAND_STATE_START",	},
	{ STATE_NAME = "BATER_DYING_LAND_BACK",		LUA_STATE_START_FUNC = "BATER_DYING_LAND_STATE_START",	},
	{ STATE_NAME = "BATER_DYING_SKY",			LUA_STATE_START_FUNC = "BATER_DYING_LAND_STATE_START",	},
		
	START_STATE		= "BATER_START",
	WAIT_STATE		= "BATER_WAIT",
			
	SMALL_DAMAGE_LAND_FRONT		= "BATER_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "BATER_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "BATER_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "BATER_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "BATER_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "BATER_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "BATER_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "BATER_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "BATER_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "BATER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "BATER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "BATER_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "BATER_DAMAGE_AIR_UP",
	--DAMAGE_REVENGE				= "BATER_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"BATER_DAMAGE_AIR_DOWN","BATER_DAMAGE_AIR_FALL","BATER_STAND_UP_FRONT","BATER_STAND_UP_BACK",
	"BATER_JUMP_DOWN","BATER_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "BATER_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "BATER_DYING_LAND_BACK",
	DYING_SKY					= "BATER_DYING_SKY",

	REVENGE_ATTACK				= "",	
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 2,
		TARGET_NEAR_RANGE			= 1500,
		TARGET_RANGE				= 9000,
		TARGET_LOST_RANGE			= 9900,
		TARGET_SUCCESS_RATE			= 100,
		ATTACK_TARGET_RATE			= 100,
		PRESERVE_LAST_TARGET_RATE	= 100,
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 70,
		FAR_WALK_RATE		= 70,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 50,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50,
		PATROL_RANGE			= 150,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{
		MOVE_SPLIT_RANGE	= 500,
		ESCAPE_GAP			= 600,
		
		WALK_INTERVAL		= 1.5,
		NEAR_WALK_RATE		= 100,
		FAR_WALK_RATE		= 100,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,
		DOWN_DOWN_RATE		= 30,
	},

}
--------------------------------------------------------------------------
BATER_START = 
{
	ANIM_NAME	= "Start",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	RIGHT		= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,	
	
	SOUND_PLAY0	= { 0.93, "GLITER_ZOMBIE_Anger_A01.ogg" },
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_WAIT",	"CT_BATER_WAIT"	},
	},
	
	CT_BATER_WAIT = 
	{
		STATE_TIME_OVER	= 2.190,
	},
}
--------------------------------------------------------------------------
BATER_ANGER = 
{
	ANIM_NAME	= "Anger",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	SUPER_ARMOR_TIME0 = { 0.0, 3, TRUE, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,	
	SOUND_PLAY0	= { 0.65, "GLITER_ZOMBIE_Anger_A01.ogg" },
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_ATTACK",	"CT_BATER_ATTACK"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_ANGER_DASH",	"CT_BATER_ANGER_DASH"	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"BATER_WAIT",	},
	},
	
	CT_BATER_ATTACK = 
	{
		RATE	= 100,
		STATE_TIME_OVER	= 1.8,
		DISTANCE_TO_TARGET_NEAR	= 300,
	},
	
	CT_BATER_ANGER_DASH = 
	{
		RATE	= 100,
		STATE_TIME_OVER	= 1.8,
		DISTANCE_OVER_TARGET_NEAR	= 400,
	},
}
--------------------------------------------------------------------------

BATER_POISON_CLOUD = 
{
	ANIM_NAME	= "Anger",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	SUPER_ARMOR	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	ANIM_SPEED			= 0.5, 
	IMMADIATE_PACKET_SEND	= TRUE,	
	VIEW_TARGET = TRUE,
	SOUND_PLAY0	= { 0.65, "GLITER_ZOMBIE_Anger_A01.ogg" },
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BATER_WAIT",	},
	},
	
	
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Bater_PoisonBall", 0,
	},
	
	DELETE_EFFECT_SET_ON_DIE = TRUE,
	EFFECT_SET_LIFE_TIME  = 1.7,
	
	-- 배터 독 뱉는 모션 관련 대사 처리
	TALK_BOX = 
	{
		{ RATE = 50, MESSAGE = STR_ID_23597}, -- 으어어어…
		{ RATE = 50, MESSAGE = STR_ID_23598}, -- 캬악- 퉷!
	},
}
--------------------------------------------------------------------------

BATER_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	PASSIVE_SPEED_X	= 0,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BATER_JUMP_DOWN",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_ATTACK",			"CT_BATER_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_POISON_CLOUD",		"CT_BATER_POISON_CLOUD",	},
						
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"BATER_WALK",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],		"BATER_DASH",	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"BATER_JUMP_UP",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"BATER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"BATER_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"BATER_JUMP_DOWN_DIR",	},
	},
	
	CT_BATER_ATTACK = 
	{
		RATE				= 30,
		EVENT_INTERVAL_ID		= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
	},
	
	
	CT_BATER_POISON_CLOUD = 
	{
		RATE				= 100,
		EVENT_INTERVAL_ID		= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
	},

	
}
--------------------------------------------------------------------------
BATER_WALK = 
{
	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE	= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_INTERVAL_TIME0	= 2,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BATER_JUMP_DOWN_DIR",	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_ATTACK",	"CT_BATER_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_POISON_CLOUD",		"CT_BATER_POISON_CLOUD",	},
	
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],		"BATER_WAIT",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],		"BATER_DASH",	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"BATER_JUMP_UP",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"BATER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"BATER_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"BATER_JUMP_DOWN_DIR",	},
	},
	
	CT_BATER_ATTACK = 
	{
		RATE	= 30,
		EVENT_INTERVAL_ID	= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
	},
	
	
	CT_BATER_POISON_CLOUD = 
	{
		RATE				= 100,
		EVENT_INTERVAL_ID		= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
	},

}

function BATER_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
BATER_DASH = 
{
	ANIM_NAME	= "Dash",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE	= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 1,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BATER_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"BATER_DASH_END",	},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"BATER_WALK",	},
	},
}

function BATER_DASH_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
BATER_DASH_END = 
{
	ANIM_NAME	= "DashEnd",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X	= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE	= FALSE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BATER_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BATER_WAIT",	},
	},
}

function BATER_DASH_END_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
BATER_ANGER_DASH = 
{
	ANIM_NAME	= "Dash",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE	= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 1,
	
	SOUND_PLAY0	= { 0.1, "GLITER_ZOMBIE_Dash_A01.ogg" },
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BATER_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_ATTACK",			"CT_BATER_ATTACK",	},
				
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BATER_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BATER_JUMP_DOWN_DIR",	},
	},
	
	CT_BATER_ATTACK = 
	{
		RATE	= 100,
		EVENT_INTERVAL_ID	= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
	},
}
--------------------------------------------------------------------------
BATER_JUMP_UP = 
{
	ANIM_NAME	= "JumpUp",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X	= 0,
	SPEED_Y	= INIT_PHYSIC["JUMP_SPEED"],
	
	ADD_POS_Y	= 45, 
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"BATER_JUMP_DOWN",	},
	},
}
--------------------------------------------------------------------------
BATER_JUMP_DOWN = 
{
	ANIM_NAME	= "JumpDown",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BATER_JUMP_LANDING",	},
	},
}

function BATER_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
BATER_JUMP_UP_DIR = 
{
	ANIM_NAME	= "JumpUp",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y	= INIT_PHYSIC["JUMP_SPEED"],
	
	ADD_POS_Y	= 45, 
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"BATER_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
BATER_JUMP_DOWN_DIR = 
{
	ANIM_NAME	= "JumpDown",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],

	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BATER_JUMP_LANDING",	},
	},
}

function BATER_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
BATER_JUMP_LANDING = 
{
	ANIM_NAME	= "JumpLanding",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
    SOUND_PLAY0	= { 0.121, "Glitter_Landing.ogg" },

	SPEED_X	= 0,
	SPEED_Y	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BATER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BATER_WAIT",	},
	},
}
--------------------------------------------------------------------------
BATER_ATTACK = 
{
	ANIM_NAME	= "AttackA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	--ANIM_SPEED	= 0.88,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	
	    	
	VIEW_TARGET	= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SUPER_ARMOR		= TRUE,
	SOUND_PLAY0	= { 0.4, "GLITER_ZOMBIE_Anger_A01.ogg" },
	SOUND_PLAY1	= { 1.75, "GLITER_ZOMBIE_Attack_A01.ogg" },
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BATER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BATER_WAIT",	},
	},

	ATTACK_TIME0	= { 1.683, 1.98, },
		
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 2,
		},
		
		BACK_SPEED_X	= 800,
		BACK_SPEED_Y	= 0.0,
		
		CAMERA_CRASH_GAP	= 5.0,	
		CAMERA_CRASH_TIME	= 0.2,		
	},
		
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 2,
		},
		
		BACK_SPEED_X	= 1200,
		BACK_SPEED_Y	= 0.0,
		
		CAMERA_CRASH_GAP	= 5.0,	
		CAMERA_CRASH_TIME	= 0.2,		
	},
}
--------------------------------------------------------------------------
BATER_DAMAGE_FRONT = 
{
	ANIM_NAME	= "Damage",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_INTERVAL_TIME0 = 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"BATER_WAIT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_ANGER",	"CT_BATER_ANGER"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_ATTACK",	"CT_BATER_ATTACK"	},
		
	},
	
	CT_BATER_ANGER =
	{
		RATE	= 10,
		EVENT_INTERVAL_ID	= 0,
	},
	
	CT_BATER_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE	= 50,
	},
}

function BATER_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
BATER_DAMAGE_BACK = 
{
	ANIM_NAME	= "Damage",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	EVENT_INTERVAL_TIME0 = 1,
	
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0	= { 0.160, "GlitterVoice_HurtRoar1.ogg", 24 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"BATER_WAIT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_ANGER",	"CT_BATER_ANGER"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BATER_ATTACK",	"CT_BATER_ATTACK"	},
	},
	
	CT_BATER_ANGER =
	{
		RATE	= 10,
		EVENT_INTERVAL_ID	= 0,
	},
	
	
	CT_BATER_ATTACK = 
	{
		EVENT_INTERVAL_ID	= 0,
		RATE				= 35,
	},
}

function BATER_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
BATER_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME	= "DamageDownFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 40, },

    SOUND_PLAY0	= { 0.172, "GlitterVoice_HurtRoar1.ogg", 24 },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BATER_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"BATER_STAND_UP_FRONT",	},
	},
}

function BATER_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
BATER_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME	= "DamageDownBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 40, },

    SOUND_PLAY0	= { 0.357, "GlitterVoice_HurtRoar1.ogg" , 24 },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BATER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"BATER_STAND_UP_BACK",			},
	},
}

function BATER_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
BATER_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME	= "DamageAirFlyFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,	

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BATER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
BATER_DAMAGE_FLY_BACK = 
{
	ANIM_NAME	= "DamageAirFlyBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,	
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BATER_DAMAGE_DOWN_BACK",	},
	},
}
--------------------------------------------------------------------------
BATER_DAMAGE_AIR = 
{
	ANIM_NAME	= "DamageAirSmall",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BATER_WAIT",	},
	},
	
	VIEW_TARGET	= TRUE,
	ALLOW_DIR_CHANGE	= TRUE,

	ATTACK_TIME0	= { 0.15, 0.24, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE	= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC	= 2,
		},

		CAMERA_CRASH_GAP	= 10.0,	
		CAMERA_CRASH_TIME	= 0.2,	
		
		BACK_SPEED_X	= 1500,
		BACK_SPEED_Y	= -1000,
	},
}
--------------------------------------------------------------------------
BATER_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME	= "DamageAirDown",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BATER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
BATER_DAMAGE_AIR_UP = 
{
	ANIM_NAME	= "DamageAirUp",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"BATER_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BATER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
BATER_DAMAGE_AIR_FALL = 
{
	ANIM_NAME	= "DamageAirFall",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"BATER_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BATER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
BATER_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME	= "DamageDownLanding",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 40, },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BATER_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BATER_STAND_UP_FRONT",	},
	},
}

function BATER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		local pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then 
			pParticle:SetLandPosition( pos.y - 5 )
		end
		
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end		
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
BATER_STAND_UP_FRONT = 
{
	ANIM_NAME	= "DamageStandUpFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,	
	
	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 40, },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BATER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BATER_WAIT",	},
	},
}
--------------------------------------------------------------------------
BATER_STAND_UP_BACK = 
{
	ANIM_NAME	= "DamageStandUpBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 40, },

    SOUND_PLAY0	= { 0.283, "Glitter_StandUp.ogg" },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BATER_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BATER_WAIT", },
	},		
}
--------------------------------------------------------------------------
BATER_DYING_LAND_FRONT = 
{
	ANIM_NAME	= "DamageDownFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

    SOUND_PLAY0	= { 0.175, "GlitterVoice_DeathRoar.ogg" },
	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
}

BATER_DYING_LAND_BACK = 
{
	ANIM_NAME	= "DamageDownBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE	= { 0, 100, }, 		
    SOUND_PLAY0	= { 0.399, "GlitterVoice_DeathRoar.ogg" },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	DYING_END	= TRUE,	
}

BATER_DYING_SKY = 
{
	ANIM_NAME	= "DamageDownLanding",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE	= { 0, 100, }, 		

    SOUND_PLAY0	= { 0.105, "GlitterVoice_DeathRoar.ogg" },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
}

function BATER_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )

	if pSeq ~= nil then
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	end
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
end
--------------------------------------------------------------------------

--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
end
--------------------------------------------------------------------------


--------------------------------------------------------------------

function BATER_POISON_CLOUD_FRAME_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.77 ) then		
		local pDamageEffect = pX2Game:GetDamageEffect()
			
		local vLandPos = pNPCUnit:GetLandPosition_LUA()
		local vRHandPos = pNPCUnit:GetBonePos_LUA( "COLLISION_SPHERE2_Upbody" )
		local vRotDegree = pNPCUnit:GetRotateDegree()
		local pIns = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DAMAGE_EFFECT_BATER_POSION_BALL", vRHandPos, vLandPos.y, vRotDegree )
		local pIns = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DAMAGE_EFFECT_BATER_POSION_BALL", vRHandPos, vLandPos.y, vRotDegree )
		local pIns = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DAMAGE_EFFECT_BATER_POSION_BALL", vRHandPos, vLandPos.y, vRotDegree )
		local pIns = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DAMAGE_EFFECT_BATER_POSION_BALL", vRHandPos, vLandPos.y, vRotDegree )
		local pIns = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DAMAGE_EFFECT_BATER_POSION_BALL", vRHandPos, vLandPos.y, vRotDegree )
		local pIns = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DAMAGE_EFFECT_BATER_POSION_BALL", vRHandPos, vLandPos.y, vRotDegree )
		local pMainEffect = pIns:GetMainEffect()		
	end	
end
--------------------------------------------------------------------

