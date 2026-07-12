-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 400.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_SCALE		= 1,
}
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Pa_Ran_SpaD_Smoke02A.dds",
		"NUI_TROCK_DOG_BOSS_MAP.tga",
		"Trock_Dog_Boss_Wave01.tga",
		"Trock_Dog_Dash_Attack.tga",		
	},
	READY_XMESH = 
	{
		"Trock_Dog_Dash_Attack_Attack.Y",
		"Trock_Dog_Dash_Attack_Wave.Y",
	},
	READY_XSKIN_MESH = 
	{
		"Trock_Dog_Boss_Attack_A.X",
		"Trock_Dog_Boss_ComboAttack.X",
		"Trock_Dog_Boss_SA_Re.X",
		"Trock_Dog_Dash_Attack_Dash.X",
	},	
	READY_SOUND = 
	{
	},
}
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Trock_Dog_Boss.x",
}
INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 300,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}
INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	--DRAW_SMALL_MP_BAR 		= TRUE,
	
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
	
	USE_GUARD_COLLISION_BOX		= FALSE,
	
	MIND_FLAG_HEIGHT					= 250,
	SUMMON_TIME			= 180,
}
INIT_STATE = 
{
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_START",						},
	
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_WAIT",						},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_END",						},
		
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_WALK",						LUA_STATE_END_FUNC = "CSM_TROCK_DOG_BOSS_WALK_STATE_END"						},
	
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DASH",						},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DASH_END",					},

	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_JUMP_UP",					},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_JUMP_DOWN",					LUA_STATE_END_FUNC = "CSM_TROCK_DOG_BOSS_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_JUMP_UP_DIR",				},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_JUMP_LANDING",				},

	-- 왼쪽 앞발 기본 공격
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_ATTACK_A",					STATE_COOL_TIME	= 7,	},
	
	-- 오른쪽 앞발 콤보 공격
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_ATTACK_A_COMBO",				STATE_COOL_TIME	= 1,	},
	
	-- 달려가면서 머리 박치기
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DASH_ATTACK_A",				LUA_FRAME_MOVE_FUNC = "CSM_TROCK_DOG_BOSS_DASH_ATTACK_A_FRAME_MOVE", STATE_COOL_TIME	= 15, },
	
	-- 독 가스 브레스
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_SPECIAL_ATTACK_A",			LUA_STATE_START_FUNC = "CSM_TROCK_DOG_BOSS_SPECIAL_ATTACK_A_START",
																STATE_COOL_TIME	= 20,	},

	-- 반격 공격
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_ATTACK_B",					STATE_COOL_TIME	= 7,	},
	
	--리액션 관련
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "CSM_TROCK_DOG_BOSS_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "CSM_TROCK_DOG_BOSS_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "CSM_TROCK_DOG_BOSS_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DAMAGE_AIR",					},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_STAND_UP_FRONT",			},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_STAND_UP_BACK",				},
	
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DAMAGE_REVENGE",			},
	
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "CSM_TROCK_DOG_BOSS_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "CSM_TROCK_DOG_BOSS_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "CSM_TROCK_DOG_BOSS_DYING_SKY",					LUA_STATE_START_FUNC = "CSM_TROCK_DOG_BOSS_DYING_LAND_STATE_START",			},
	
	START_STATE					= "CSM_TROCK_DOG_BOSS_START",
	WAIT_STATE					= "CSM_TROCK_DOG_BOSS_WAIT",
	SUMMON_END_STATE			= "CSM_TROCK_DOG_BOSS_END",
	
	SMALL_DAMAGE_LAND_FRONT		= "CSM_TROCK_DOG_BOSS_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "CSM_TROCK_DOG_BOSS_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "CSM_TROCK_DOG_BOSS_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "CSM_TROCK_DOG_BOSS_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "CSM_TROCK_DOG_BOSS_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CSM_TROCK_DOG_BOSS_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "CSM_TROCK_DOG_BOSS_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "CSM_TROCK_DOG_BOSS_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "CSM_TROCK_DOG_BOSS_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "CSM_TROCK_DOG_BOSS_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "CSM_TROCK_DOG_BOSS_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "CSM_TROCK_DOG_BOSS_DAMAGE_FRONT",
	
	DAMAGE_EXTRA_STATES         = {"CSM_TROCK_DOG_BOSS_DAMAGE_AIR_FALL","CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN",
	"CSM_TROCK_DOG_BOSS_STAND_UP_FRONT","CSM_TROCK_DOG_BOSS_STAND_UP_BACK",
	"CSM_TROCK_DOG_BOSS_JUMP_DOWN","CSM_TROCK_DOG_BOSS_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "CSM_TROCK_DOG_BOSS_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CSM_TROCK_DOG_BOSS_DYING_LAND_BACK",
	DYING_SKY					= "CSM_TROCK_DOG_BOSS_DYING_SKY",

	REVENGE_ATTACK				= "CSM_TROCK_DOG_BOSS_ATTACK_B",
}

INIT_AI = 
{
	ALLY = 
	{
		FAR_LOST_RANGE	= 1400,			-- 이 거리보다 멀어지면 유저 옆으로 텔레포트
		LOST_RANGE		= 1400,			-- 이 거리보다 멀어지면 유저 쪽으로 걸어감
	},

	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL 			= 1,
		TARGET_NEAR_RANGE 			= 1000,
		TARGET_RANGE 				= 2000,
		TARGET_LOST_RANGE 			= 5000,
		TARGET_SUCCESS_RATE 		= 100,
		ATTACK_TARGET_RATE 			= 100,
		PRESERVE_LAST_TARGET_RATE 	= 20,
	},
	

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 300,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 150,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 70,   	-- 70,
		FAR_WALK_RATE		= 70,   	-- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 0, 		-- 40,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,  	-- 20,
		DOWN_DOWN_RATE		= 0,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50, 	--50,		
		PATROL_RANGE			= 150,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,		-- cm
		ESCAPE_GAP			= 600,		-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,		-- 초
		NEAR_WALK_RATE		= 100,   	-- 10,
		FAR_WALK_RATE		= 100,   	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, 		-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    	-- 30,
		DOWN_DOWN_RATE		= 30,
	},

}

----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_START = 
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	SOUND_PLAY0					= { 0.01, "Trock_Dog_Boss_Voice_WaitStart01.ogg", 100, FALSE, -1.0, FALSE },
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "CSM_TROCK_DOG_BOSS_WAIT", "CT_CSM_TROCK_DOG_BOSS_WAIT", },
	},
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21540 },
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_WAIT = 
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
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_TROCK_DOG_BOSS_ATTACK_A",			"CT_CSM_TROCK_DOG_BOSS_ATTACK_A",},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_TROCK_DOG_BOSS_DASH_ATTACK_A",		"CT_CSM_TROCK_DOG_BOSS_DASH_ATTACK_A",},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_TROCK_DOG_BOSS_SPECIAL_ATTACK_A",	"CT_CSM_TROCK_DOG_BOSS_SPECIAL_ATTACK_A",},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CSM_TROCK_DOG_BOSS_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CSM_TROCK_DOG_BOSS_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CSM_TROCK_DOG_BOSS_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CSM_TROCK_DOG_BOSS_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CSM_TROCK_DOG_BOSS_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR",		},
	},
	
	-- 독 가스 브레스
	CT_CSM_TROCK_DOG_BOSS_SPECIAL_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		--MY_MP_MORE_THAN_PERCENT		= 100,
		RATE						= 100,
	},
	
	-- 왼쪽 앞발 기본 공격
	CT_CSM_TROCK_DOG_BOSS_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 30,
	},
	
	-- 달려가면서 머리 박치기
	CT_CSM_TROCK_DOG_BOSS_DASH_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 30,
	},	
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_WALK = 
{
	ANIM_SPEED					= 0.8,
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
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR", 	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_TROCK_DOG_BOSS_ATTACK_A",			"CT_CSM_TROCK_DOG_BOSS_ATTACK_A",},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_TROCK_DOG_BOSS_DASH_ATTACK_A",		"CT_CSM_TROCK_DOG_BOSS_DASH_ATTACK_A",},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_TROCK_DOG_BOSS_SPECIAL_ATTACK_A",	"CT_CSM_TROCK_DOG_BOSS_SPECIAL_ATTACK_A",},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"CSM_TROCK_DOG_BOSS_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CSM_TROCK_DOG_BOSS_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CSM_TROCK_DOG_BOSS_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CSM_TROCK_DOG_BOSS_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CSM_TROCK_DOG_BOSS_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR",	},
	},
	-- 독 가스 브레스
	CT_CSM_TROCK_DOG_BOSS_SPECIAL_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		MY_MP_MORE_THAN_PERCENT		= 100,
		RATE						= 100,
	},
	
	-- 왼쪽 앞발 기본 공격
	CT_CSM_TROCK_DOG_BOSS_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 30,
	},
	
	-- 달려가면서 머리 박치기
	CT_CSM_TROCK_DOG_BOSS_DASH_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 30,
	},	
}
function CSM_TROCK_DOG_BOSS_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DASH = 
{
	ANIM_NAME					= "Dash",
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_TROCK_DOG_BOSS_ATTACK_A",			"CT_CSM_TROCK_DOG_BOSS_ATTACK_A", },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"CSM_TROCK_DOG_BOSS_DASH_END",			},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CSM_TROCK_DOG_BOSS_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CSM_TROCK_DOG_BOSS_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CSM_TROCK_DOG_BOSS_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CSM_TROCK_DOG_BOSS_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR",	},
	},
	-- 왼쪽 앞발 기본 공격
	CT_CSM_TROCK_DOG_BOSS_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 0,
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DASH_END = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_WAIT",				},
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "CSM_TROCK_DOG_BOSS_JUMP_DOWN",	},
	},
	
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "CSM_TROCK_DOG_BOSS_JUMP_LANDING",	},
	},
}
function CSM_TROCK_DOG_BOSS_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR",	},
	},
	
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "CSM_TROCK_DOG_BOSS_JUMP_LANDING",	},
	},
}
function CSM_TROCK_DOG_BOSS_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_WAIT",			},
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
-- 왼쪽 앞발 기본 공격
CSM_TROCK_DOG_BOSS_ATTACK_A = 
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	SOUND_PLAY0 = { 0.15, "Swing_Medium01.ogg"},
	SOUND_PLAY1 = { 0.01, "Trock_Dog_Boss_Voice_AttackA01.ogg",30},

	ATTACK_TIME0				= { 0.27, 0.33, },	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 800,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= FALSE,	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Trock_Dog_Boss_Attack_A", 0,			
	},	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_TROCK_DOG_BOSS_ATTACK_A_COMBO",			"CT_CSM_TROCK_DOG_BOSS_ATTACK_A_COMBO",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_WAIT",			},	
	},
	
	-- 오른쪽 앞발 콤보 공격
	CT_CSM_TROCK_DOG_BOSS_ATTACK_A_COMBO = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		ANIM_PLAY_COUNT				= 1,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
}
-- 오른쪽 앞발 콤보 공격
CSM_TROCK_DOG_BOSS_ATTACK_A_COMBO =
{
	ANIM_NAME					= "Attack_A_Combo",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0 = { 0.21, "Swing_Medium02.ogg"},
		SOUND_PLAY1 = { 0.01, "Trock_Dog_Boss_Voice_AttackA02.ogg",30},
	
	ATTACK_TIME0				= { 0.27, 0.33, },
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
		BACK_SPEED_X			= 500,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= FALSE,	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Trock_Dog_Boss_Attack_A_Combo", 0,			
	},	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_WAIT",			},	
	},
}
-- 달려가면서 머리 박치기
CSM_TROCK_DOG_BOSS_DASH_ATTACK_A =
{
	ANIM_NAME					= "Dash_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	SUPER_ARMOR					= TRUE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Trock_Dog_Boss_Voice_DashAttackA01.ogg"},

	
	ATTACK_TIME0				= { 0.292, 2.5, },
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_X			= 800,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,	
		HIT_GAP					= 0.2,
	},
	
	DAMAGE_DATA_NEXT = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
		BACK_SPEED_X			= 1400,
		BACK_SPEED_Y			= 1500,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.1,	

		RE_ATTACK				= FALSE,	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Trock_Dog_Boss_Dash_Attack_A", 0,			
	},	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_WAIT",			},	
	},
}
function CSM_TROCK_DOG_BOSS_DASH_ATTACK_A_FRAME_MOVE ( pKTDXApp, pX2Game, pNPCUnit )
	-- 데미지 데이터 변경 여부
	local bChangeDamageData = pNPCUnit:GetFlag_LUA( 0 )

	-- 스테이트 시간이 0.5를 넘으면, 데미지 모션 없는 지속 데미지 적용
	if false == bChangeDamageData and 2.1 <= pNPCUnit:GetStateTime() then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
		pNPCUnit:SetFlag_LUA( 0, true )
	end	
end

-- 독 가스 브레스
CSM_TROCK_DOG_BOSS_SPECIAL_ATTACK_A =
{
	ANIM_NAME					= "Special_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	NEVER_MOVE					= TRUE,	
	SUPER_ARMOR					= TRUE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0 = { 1.01, "Trock_Dog_Boss_SpecialAttackA01.ogg"},
	SOUND_PLAY1 = { 1.01, "Trock_Dog_Boss_SpecialAttackA02.ogg"},

	EFFECT_SET_LIST =
	{
		"EffectSet_Trock_Dog_Boss_Special_Attack_A", 0,			
	},	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_WAIT",			},	
	},
}
function CSM_TROCK_DOG_BOSS_SPECIAL_ATTACK_A_START( pKTDXApp, pX2Game, pNPCUnit )
	--MP 소모
	pNPCUnit:SetNowMP(0)
end
-- 반격 공격
CSM_TROCK_DOG_BOSS_ATTACK_B =
{
	ANIM_NAME					= "Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	ATTACK_TIME0				= { 1.53, 1.69, },	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 1500,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= FALSE,	
	},
--[[	
		EFFECT_SET_LIST =
		{
			"EffectSet_Trock_Dog_Boss_Attack_A", 0,			
		},	
		DELETE_EFFECT_SET_ON_STATE_END = TRUE,
--]]	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_WAIT",			},	
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		SOUND_PLAY0 = { 0.01, "Trock_Dog_Boss_Voice_DamageB01.ogg",30},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "CSM_TROCK_DOG_BOSS_WAIT", },
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Trock_Dog_Boss_Voice_DamageB01.ogg",30},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CSM_TROCK_DOG_BOSS_ATTACK_B",			"CT_CSM_TROCK_DOG_BOSS_ATTACK_B",},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "CSM_TROCK_DOG_BOSS_WAIT",	 	},
	},
	
	-- 반격 공격
	CT_CSM_TROCK_DOG_BOSS_ATTACK_B = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 20,
	},	
}
function CSM_TROCK_DOG_BOSS_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
CSM_TROCK_DOG_BOSS_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0	= { 0.01, "Trock_Dog_Boss_Voice_DamageA01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "CSM_TROCK_DOG_BOSS_WAIT",	 	},
	},
}
function CSM_TROCK_DOG_BOSS_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	SOUND_PLAY0	= { 0.01, "Trock_Dog_Boss_Voice_DamageB01.ogg",30},

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_STAND_UP_BACK",	},
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21544 },
		{ RATE = 3, MESSAGE = STR_ID_21545 },
	},
}
function CSM_TROCK_DOG_BOSS_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	SOUND_PLAY0	= { 0.01, "Trock_Dog_Boss_Voice_DamageB01.ogg",30},
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "CSM_TROCK_DOG_BOSS_DAMAGE_DOWN_BACK",	},
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAir",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		SOUND_PLAY0	= { 0.01, "Trock_Dog_Boss_Voice_DamageB01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "CSM_TROCK_DOG_BOSS_WAIT", },
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0	= { 0.01, "Trock_Dog_Boss_Voice_DamageA01.ogg",30},
			
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
---------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		SOUND_PLAY0 = { 0.61, "Landing_Big_Meat01.ogg"},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_STAND_UP_FRONT",	},
	},
}
function CSM_TROCK_DOG_BOSS_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_WAIT",			},
	},
}
CSM_TROCK_DOG_BOSS_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	SOUND_PLAY0			= { 0.283, "sliding02.ogg" },	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_TROCK_DOG_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_TROCK_DOG_BOSS_WAIT",			},
	},		
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	DYING_END					= TRUE,
	
	SOUND_PLAY0	= { 0.01, "Trock_Dog_Boss_Voice_Dying01.ogg"},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21545 },
	},
}
----------------------------------------------------------------------------------------------------------------------------------------	
CSM_TROCK_DOG_BOSS_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	SOUND_PLAY0	= { 0.01, "Trock_Dog_Boss_Voice_Dying01.ogg"},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21545 },
	},
}
----------------------------------------------------------------------------------------------------------------------------------------
CSM_TROCK_DOG_BOSS_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	SOUND_PLAY0	= { 0.01, "Trock_Dog_Boss_Voice_Dying01.ogg"},	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21545 },
	},
}

CSM_TROCK_DOG_BOSS_END = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    INVINCIBLE					= { 0, 100, }, 
    
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT						= FALSE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,	
}
function CSM_TROCK_DOG_BOSS_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end
