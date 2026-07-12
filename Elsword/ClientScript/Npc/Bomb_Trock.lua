-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 120.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.2,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	"smoke.dds",
	"GroundShockWave.dds",
	"Explosion_Sphere.dds",
	"trockBome_0_wait_smoke.dds",
	"Particle_Blur.dds",
	"Steam_BP.dds",
	"trockBome_0_MagicAttackA_pieceCircle.dds",
	"RVC_SA_DeadlyRaid_spark.dds",
	"trockBome_0_MagicAttackA_piece.dds",
	"trockBome_0_Chase_fireWork.dds",
	"acce_fireWork_fireParticle.dds",

	},
	READY_XMESH = 
	{
	},
	READY_XSKIN_MESH = 
	{
	"trockBome_0_MagicAttackA_spark01.x",
	"trockBome_0_MagicAttackA_spark02.x",
	},	
	READY_SOUND = 
	{
	"Bomb_Trock_Voice_Wait01.ogg",
	"Bomb_Trock_Voice_AttackA01.ogg",
	"Bomb_Trock_Voice_DamageA01.ogg",
	"Bomb_Trock_Voice_DamageB01.ogg",
	"",
	"",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Bome_Trock.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}

INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,

	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW		= "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME		= 30,
	

	HITTED_TYPE				= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN				= TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "BOMB_TROCK_START",						LUA_STATE_START_FUNC = "BOMB_TROCK_START_STATE_START",					},
		
	{ STATE_NAME = "BOMB_TROCK_WAIT",						LUA_STATE_END_FUNC = "BOMB_TROCK_WAIT_STATE_END",						},
	
	{ STATE_NAME = "BOMB_TROCK_CHASE",						LUA_STATE_START_FUNC = "BOMB_TROCK_CHASE_STATE_START",					},
	
	{ STATE_NAME = "BOMB_TROCK_WAIT_HABIT",					},
	
	{ STATE_NAME = "BOMB_TROCK_WALK",						LUA_STATE_END_FUNC = "BOMB_TROCK_WALK_STATE_END"						},
	
	{ STATE_NAME = "BOMB_TROCK_DASH",						},
	{ STATE_NAME = "BOMB_TROCK_DASH_END",					},
	
	{ STATE_NAME = "BOMB_TROCK_JUMP_UP",					},
	{ STATE_NAME = "BOMB_TROCK_JUMP_DOWN",					LUA_STATE_END_FUNC = "BOMB_TROCK_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "BOMB_TROCK_JUMP_UP_DIR",				},
	{ STATE_NAME = "BOMB_TROCK_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "BOMB_TROCK_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "BOMB_TROCK_JUMP_LANDING",				},

	-- 자폭
	{ STATE_NAME = "BOMB_TROCK_ATTACK",						LUA_STATE_START_FUNC = "BOMB_TROCK_ATTACK_STATE_START",
															LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_ATTACK_FRAME_MOVE",					},
	
	--리액션 관련
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_DAMAGE_DOWN_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_AIR",					},
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "BOMB_TROCK_STAND_UP_FRONT",				},
	{ STATE_NAME = "BOMB_TROCK_STAND_UP_BACK",				},
	
	{ STATE_NAME = "BOMB_TROCK_DAMAGE_REVENGE",				},
	
	{ STATE_NAME = "BOMB_TROCK_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "BOMB_TROCK_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "BOMB_TROCK_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "BOMB_TROCK_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "BOMB_TROCK_DYING_SKY",					LUA_STATE_START_FUNC = "BOMB_TROCK_DYING_LAND_STATE_START",				},
	
	START_STATE					= "BOMB_TROCK_START",
	WAIT_STATE					= "BOMB_TROCK_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "BOMB_TROCK_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "BOMB_TROCK_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "BOMB_TROCK_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "BOMB_TROCK_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "BOMB_TROCK_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "BOMB_TROCK_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "BOMB_TROCK_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "BOMB_TROCK_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "BOMB_TROCK_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "BOMB_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "BOMB_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "BOMB_TROCK_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "BOMB_TROCK_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "BOMB_TROCK_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"BOMB_TROCK_DAMAGE_AIR_DOWN","BOMB_TROCK_DAMAGE_AIR_FALL","BOMB_TROCK_STAND_UP_FRONT","BOMB_TROCK_STAND_UP_BACK",
	"BOMB_TROCK_JUMP_DOWN","BOMB_TROCK_JUMP_LANDING",},
	
	
	DYING_LAND_FRONT			= "BOMB_TROCK_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "BOMB_TROCK_DYING_LAND_BACK",
	DYING_SKY					= "BOMB_TROCK_DYING_SKY",

	COMMON_FRAME_FUNC           = "BOMB_TROCK_COMMON_FRAME_MOVE",
	
	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 2000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 2000,		-- cm
		TARGET_LOST_RANGE			= 600,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 2000,
		DEST_GAP			= 150,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 0,   		-- 70,
		FAR_WALK_RATE		= 0,  	 	-- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, 		-- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,  	-- 20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50, 	--50,		
		PATROL_RANGE			= 150,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= FALSE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,		-- cm
		ESCAPE_GAP			= 10,		-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,		-- 초
		NEAR_WALK_RATE		= 100,   	-- 10,
		FAR_WALK_RATE		= 100,   	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 0, 		-- 30,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    	-- 30,
		DOWN_DOWN_RATE		= 0,
	},

}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_Wait01.ogg",30},		
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "BOMB_TROCK_WAIT", "CT_BOMB_TROCK_WAIT", },
	},
}

function BOMB_TROCK_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, false )	-- 폭파 동작중 여부

	-- 입에서 검은 연기 나오는 이펙트
	local pEffectSet = pX2Game:GetEffectSet()	
	
	if nil ~= pEffectSet then
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Bomb_Trock_Wait", pNPCUnit )
		pNPCUnit:SetEffectSet_LUA( 1, hEffect )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_ATTACK",				"CT_BOMB_TROCK_ATTACK",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_CHASE",					"CT_BOMB_TROCK_CHASE",			},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"BOMB_TROCK_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BOMB_TROCK_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BOMB_TROCK_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BOMB_TROCK_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BOMB_TROCK_JUMP_DOWN_DIR",			},
	},
	
	-- 지폭
	CT_BOMB_TROCK_ATTACK = 
	{
		DISTANCE_TO_TARGET_NEAR		= 200,
		HAVE_TARGET					= 1,
		RATE						= 100,
	},
	
	-- 목표가 있을 때, 뛰어다니는 스테이트
	CT_BOMB_TROCK_CHASE =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		HAVE_TARGET					= 1,
	},	
}

function BOMB_TROCK_WAIT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_CHASE = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_ATTACK",				"CT_BOMB_TROCK_ATTACK",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_WAIT",					"CT_BOMB_TROCK_WAIT",			},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"BOMB_TROCK_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"BOMB_TROCK_DASH",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BOMB_TROCK_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BOMB_TROCK_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BOMB_TROCK_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BOMB_TROCK_JUMP_DOWN_DIR",			},
	},
	
	-- 자폭
	CT_BOMB_TROCK_ATTACK = 
	{
		HAVE_TARGET					= 1,
		DISTANCE_TO_TARGET_NEAR		= 200,
	},
	
	-- 타겟 없으면, 일반 Wait로
	CT_BOMB_TROCK_WAIT = 
	{
		HAVE_TARGET					= 0,
	},
}

function BOMB_TROCK_CHASE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	SetHeadFire( pX2Game, pNPCUnit )	-- 머리 위에 불붙임.

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_JUMP_DOWN_DIR", },
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_ATTACK",		"CT_BOMB_TROCK_ATTACK", },
	
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"BOMB_TROCK_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"BOMB_TROCK_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BOMB_TROCK_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BOMB_TROCK_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BOMB_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BOMB_TROCK_JUMP_DOWN_DIR",	},
	},
	
	CT_BOMB_TROCK_ATTACK = 
	{
		DISTANCE_TO_TARGET_NEAR		= 200,
		RATE						= 50,
	},
}

function BOMB_TROCK_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DASH = 
{
	ANIM_NAME					= "Chase",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_ATTACK",		"CT_BOMB_TROCK_ATTACK", },
		
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BOMB_TROCK_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BOMB_TROCK_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BOMB_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BOMB_TROCK_JUMP_DOWN_DIR",	},
	},
	
	CT_BOMB_TROCK_ATTACK = 
	{
		DISTANCE_TO_TARGET_NEAR		= 200,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DASH_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_JUMP_UP = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	ADD_POS_Y					= 45, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "BOMB_TROCK_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_JUMP_DOWN = 
{
	ANIM_NAME					= "Jumpdown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_JUMP_LANDING",	},
	},
}

function BOMB_TROCK_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_JUMP_UP_DIR = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	ADD_POS_Y					= 45, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "BOMB_TROCK_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "Jumpdown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_JUMP_LANDING",	},
	},
}

function BOMB_TROCK_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpdownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0			= { 0.121, "Glitter_Landing.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_ATTACK = 
{
	ANIM_NAME					= "Magic_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	ANIM_SPEED					= 2.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_AttackA01.ogg",30},
	SOUND_PLAY1 = { 0.51, "fire_ready.ogg"},
	SOUND_PLAY2 = { 2.51, "bomb.ogg"},


	
	--VIEW_TARGET					= TRUE,
	
	DYING_END					= TRUE,		-- 자폭 및 사망
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_JUMP_DOWN",	},
	},
	
	-- ATTACK_TIME0				= { 0.597, 0.799, },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		-- REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 1,
		-- },
		
		-- BACK_SPEED_X			= 1000,
		-- BACK_SPEED_Y			= 700,
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,	

		-- RE_ATTACK				= TRUE,		
		-- HIT_GAP					= 0.2,		
	-- },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Bomb_Trock_Attack", 0.0,	
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
}

function BOMB_TROCK_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	SetHeadFire( pX2Game, pNPCUnit )		-- 머리 위에 불 붙임

end

function BOMB_TROCK_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if 0.0 >= pNPCUnit:GetNowHP() then
		pNPCUnit:StateChange_LUA("BOMB_TROCK_WAIT", true)
	end

	if pNPCUnit:AnimEventTimer_LUA( 2.5 ) then
		
		EraseHeadFire( pX2Game, pNPCUnit )		-- 머리 위에 불 끔
		
		-- 입에서 나오는 연기 끔
		local hEffect = pNPCUnit:GetEffectSet_LUA( 1 )
	
		if nil == hEffect then
			return
		end

		local pEffectSet = pX2Game:GetEffectSet()			-- 머리 위 심지에 불 끔

		if nil ~= pEffectSet then
			pEffectSet:StopEffectSet_LUA( hEffect )
			pNPCUnit:ClearEffectSet_LUA( 1 )
		end
		
	end	
	
end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "BOMB_TROCK_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.174, "Bomb_Trock_Voice_DamageA01.ogg" , 30 },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],							"BOMB_TROCK_JUMP_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "BOMB_TROCK_ATTACK", 			"CT_BOMB_TROCK_ATTACK",						},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "BOMB_TROCK_WAIT",																},
	},
	
	CT_BOMB_TROCK_ATTACK = 
	{	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
		DISTANCE_TO_TARGET_NEAR		= 500,
	},
}

function BOMB_TROCK_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,

    SOUND_PLAY0			= { 0.01, "Bomb_Trock_Voice_DamageA01.ogg" , 30 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],						"BOMB_TROCK_JUMP_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "BOMB_TROCK_ATTACK", 			"CT_BOMB_TROCK_ATTACK",						},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "BOMB_TROCK_WAIT",															},
	},
	
	CT_BOMB_TROCK_ATTACK = 
	{	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
		DISTANCE_TO_TARGET_NEAR		= 500,
	},
}

function BOMB_TROCK_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.174, "Bomb_Trock_Voice_DamageA01.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "BOMB_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_STAND_UP_FRONT",	},
	},
	
}

function BOMB_TROCK_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.1, "Bomb_Trock_Voice_DamageA01.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "BOMB_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_STAND_UP_BACK",		},
	},
	
}

function BOMB_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_DamageA01.ogg",30},

	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_DamageB01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_DAMAGE_DOWN_BACK",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_WAIT", },
	},
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,

	
	
	ATTACK_TIME0				= { 0.15, 0.24, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		BACK_SPEED_X		= 1500,
		BACK_SPEED_Y		= -1000,
		
		CAN_REVENGE			= TRUE,	
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_DamageA01.ogg",30},

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "BOMB_TROCK_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
			SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_DamageA01.ogg",30},

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "BOMB_TROCK_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_STAND_UP_FRONT",	},
	},
}

function BOMB_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then 
			pParticle:SetLandPosition( pos.y - 5 )
		end
		
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end		
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_WAIT",		},
	},
}

BOMB_TROCK_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.283, "Glitter_StandUp.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_WAIT", 		},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	DYING_END					= TRUE,
	
	SOUND_PLAY0 = { 0.01, "HitBomb.wav"},

	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------
	
BOMB_TROCK_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	SOUND_PLAY0 = { 0.01, "HitBomb.wav"},
		
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0 = { 0.01, "HitBomb.wav"},
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function BOMB_TROCK_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

----------------------------------------------------------------------------------------------------------------------------------------

function BOMB_TROCK_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	

end

-- 머리에 불 붙이는 함수
function SetHeadFire( pX2Game, pNPCUnit )

	local bIsAttackReady = pNPCUnit:GetFlag_LUA( 0 )	-- 불붙이고 쫓아오는 스테이트 인가
	
	if true == bIsAttackReady then
		return
	end
		
	local pEffectSet = pX2Game:GetEffectSet()			-- 머리 위 심지에 불 붙임
	
	if nil ~= pEffectSet then
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Bomb_Trock_Chase", pNPCUnit )
		
		if nil ~= hEffect then
			pNPCUnit:SetEffectSet_LUA( 0, hEffect )
		end
	end
	
	pNPCUnit:SetFlag_LUA( 0, true )						-- 머리 위 심지에 불붙고 쫓아오는 스테이트 설정

end

-- 머리에 불 끄는 함수
function EraseHeadFire( pX2Game, pNPCUnit )

	local bIsAttackReady = pNPCUnit:GetFlag_LUA( 0 )		-- 불붙이고 쫓아오는 스테이트 인가

	if  false == bIsAttackReady  then
		return
	end
	
	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )		-- 불붙는 이펙트 셋이 존재하는가
	
	if nil == hEffect then
		return
	end
	
	local pEffectSet = pX2Game:GetEffectSet()			-- 머리 위 심지에 불 끔
	
	if nil ~= pEffectSet then
		pEffectSet:StopEffectSet_LUA( hEffect )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end
	
	pNPCUnit:SetFlag_LUA( 0, false )					-- 일반 스테이트로 설정

end

function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end

