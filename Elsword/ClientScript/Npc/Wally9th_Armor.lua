-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 330.0,
	UNIT_HEIGHT		= 250.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
		"Wally9th_Missile01.dds",
		"smoke.dds",
		"ColorBallRed3.dds",
		"WhiteImage.dds",
	},
	
	READY_SOUND = 
	{
     	"Wally9Armor_Slash.ogg",
		"Wally9Armor_AttackA.ogg",
		"Wally9Armor_DashStart.ogg",
		"Wally9Armor_DashEnd.ogg",
		"Wally9Armor_Death1.ogg",
		"Wally9Armor_Death2.ogg",
        "Wally9Armor_Death3.ogg",
		"Wally9Armor_Death4.ogg",
		"Wally9Armor_Death5.ogg",
		"Wally9Armor_Groggy.ogg",
		"Wally9Armor_GroggyAttack1.ogg",
		"Wally9Armor_MAttack1.ogg",
		"Wally9Armor_MAttack2.ogg",
		"Wally9Armor_MAttack3.ogg",
		"Wally9Armor_MAttack4.ogg",
		"Wally9Armor_MAttack5.ogg",
		"Wally9Armor_MAttack6.ogg",
		"Wally9Armor_ChargeBall1.ogg",
		"Wally9Armor_ChargeBall2.ogg",
		"Wally9Armor_ChargeBall3.ogg",
		"Wally9Armor_ChargeBall4.ogg",
		"Wally9Armor_ChargeBall5.ogg",
		"Wally9Armor_ChargeBall6.ogg",
		"Wally9Armor_ChargeBall7.ogg",
		"Wally9Armor_ChargeBall8.ogg",
		"Wally9Armor_ChargeBall9.ogg",
		"Wally9Armor_ChargeBall10.ogg",		
		"Wally9Armor_WaitStart.ogg",
		"Wally9Armor_Win1.ogg",
		"Wally9Armor_Win2.ogg",
		"Wally9Armor_Win3.ogg",
		"Wally9Armor_Win4.ogg",
		"Wally9Armor_Win5.ogg",
		"Wally9Armor_Win6.ogg",
		"Wally9Armor_JumpUp.ogg",
		"Wally9Armor_JumpUp2.ogg",
		"Wally9Armor_EarthQuake1.ogg",
		"Wally9Armor_EarthQuake2.ogg",
		"Wally9Armor_EarthQuake3.ogg",
		"Wally9Armor_Start.ogg",
        "Wally9Armor_DeathSteam.ogg",
        "Wally9Armor_DeathExplosion_1.ogg",
        "Wally9Armor_DeathExplosion_2.ogg",
        "Wally9Armor_DeathExplosion_3.ogg",
		"Wally9Armor_Creek1.ogg",
		"Wally9Armor_Creek2.ogg",
		"Wally9Armor_MissileFly.ogg",
		
		
		
	},
	
	
	READY_XMESH = 
	{
		"Booster01_WR8.y",
		
	},
	
	
	READY_XSKIN_MESH = 
	{
		"Wally9th_Armor_Missile.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Wally9th_Armor.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 1500,
	JUMP_SPEED			= 2000,
	DASH_JUMP_SPEED		= 1500,
}

INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MAX_HP				= 20000,

	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,

	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	DRAW_SMALL_MP_BAR	= TRUE,
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	RAGE_COUNT_MAX		= 20,
	RAGE_TIME_MAX		= 3,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_METAL"],
	
	FALL_DOWN			= TRUE,
	
	DAMAGE_DOWN         = FALSE,
	
	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "Willy_9th",						
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_WALLY_9TH.dds",		

    DIE_FLY             = 0,
    

	


	    --[[

	

		--]]
}

INIT_STATE = 
{
	{ STATE_NAME = "WALLY_9TH_ARMOR_START",						LUA_CAMERA_MOVE_FUNC = "WALLY_9TH_ARMOR_START_CAMERA_MOVE",				},
																
	{ STATE_NAME = "WALLY_9TH_ARMOR_WIN",						},
	{ STATE_NAME = "WALLY_9TH_ARMOR_WAIT",						},
	{ STATE_NAME = "WALLY_9TH_ARMOR_WALK",						},
															
	{ STATE_NAME = "WALLY_9TH_ARMOR_JUMP_UP",					LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_JUMP_UP_FRAME_MOVE", },	
	{ STATE_NAME = "WALLY_9TH_ARMOR_JUMP_DOWN",					},															
	{ STATE_NAME = "WALLY_9TH_ARMOR_JUMP_UP_DIR",				LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_JUMP_UP_DIR_FRAME_MOVE", },	
	{ STATE_NAME = "WALLY_9TH_ARMOR_JUMP_DOWN_DIR",				},
	{ STATE_NAME = "WALLY_9TH_ARMOR_JUMP_LANDING",				},	
	
	{ STATE_NAME = "WALLY_9TH_ARMOR_HIGH_JUMP_READY_DIR",		LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_HIGH_JUMP_READY_DIR_FRAME_MOVE", },	
	{ STATE_NAME = "WALLY_9TH_ARMOR_HIGH_JUMP_UP_DIR",			LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_HIGH_JUMP_UP_DIR_FRAME_MOVE", },	
	{ STATE_NAME = "WALLY_9TH_ARMOR_DASH_START",				LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_DASH_START_FRAME_MOVE", },	
	{ STATE_NAME = "WALLY_9TH_ARMOR_DASH",						LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_DASH_FRAME_MOVE", },															
	{ STATE_NAME = "WALLY_9TH_ARMOR_DASH_END",					},
	
	{ STATE_NAME = "WALLY_9TH_ARMOR_ATTACKA",					LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_ATTACKA_FRAME_MOVE", STATE_COOL_TIME = 10, },
	{ STATE_NAME = "WALLY_9TH_ARMOR_SP_CHARGE_BALL",			LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_SP_CHARGE_BALL_FRAME_MOVE", STATE_COOL_TIME = 30, },
	{ STATE_NAME = "WALLY_9TH_ARMOR_MISSILE",					LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_MISSILE_FRAME_MOVE", 
																STATE_COOL_TIME = 20,	},
	
	
	
	--리액션 관련
	{ STATE_NAME = "WALLY_9TH_ARMOR_DAMAGE_SMALL",				},															
	{ STATE_NAME = "WALLY_9TH_ARMOR_DAMAGE_BIG",				},
	
	{ STATE_NAME = "WALLY_9TH_ARMOR_DAMAGE_DOWN",				LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_DAMAGE_DOWN_FRAME_MOVE",		},
	{ STATE_NAME = "WALLY_9TH_ARMOR_STAND_UP_ATTACK",			LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_STAND_UP_ATTACK_FRAME_MOVE",			},
	{ STATE_NAME = "WALLY_9TH_ARMOR_DAMAGE_REVENGE",			},

	{ STATE_NAME = "WALLY_9TH_ARMOR_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "WALLY_9TH_ARMOR_DYING_LAND_FRONT_STATE_START",
																LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_DYING_LAND_FRONT_FRAME_MOVE",	
																LUA_STATE_END_FUNC = "WALLY_9TH_ARMOR_DYING_LAND_FRONT_STATE_END",		},
																
	{ STATE_NAME = "WALLY_9TH_ARMOR_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "WALLY_9TH_ARMOR_DYING_LAND_FRONT_STATE_START",
																LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_DYING_LAND_FRONT_FRAME_MOVE",	
																LUA_STATE_END_FUNC = "WALLY_9TH_ARMOR_DYING_LAND_FRONT_STATE_END",		},

	{ STATE_NAME = "WALLY_9TH_ARMOR_DYING_SKY",					LUA_STATE_START_FUNC = "WALLY_9TH_ARMOR_DYING_LAND_FRONT_STATE_START",	
																LUA_FRAME_MOVE_FUNC = "WALLY_9TH_ARMOR_DYING_LAND_FRONT_FRAME_MOVE",	
																LUA_STATE_END_FUNC = "WALLY_9TH_ARMOR_DYING_LAND_FRONT_STATE_END",		},

	
	
	START_STATE					= "WALLY_9TH_ARMOR_START",
	WAIT_STATE					= "WALLY_9TH_ARMOR_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "WALLY_9TH_ARMOR_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "WALLY_9TH_ARMOR_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "WALLY_9TH_ARMOR_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "WALLY_9TH_ARMOR_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "WALLY_9TH_ARMOR_DAMAGE_DOWN",
	DOWN_DAMAGE_LAND_BACK		= "WALLY_9TH_ARMOR_DAMAGE_DOWN",
	FLY_DAMAGE_FRONT			= "WALLY_9TH_ARMOR_DAMAGE_BIG",
	FLY_DAMAGE_BACK				= "WALLY_9TH_ARMOR_DAMAGE_BIG",
	SMALL_DAMAGE_AIR			= "WALLY_9TH_ARMOR_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "WALLY_9TH_ARMOR_DAMAGE_BIG",
	DOWN_DAMAGE_AIR				= "WALLY_9TH_ARMOR_DAMAGE_BIG",
	UP_DAMAGE					= "WALLY_9TH_ARMOR_DAMAGE_BIG",
	DAMAGE_REVENGE				= "WALLY_9TH_ARMOR_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "WALLY_9TH_ARMOR_STAND_UP_ATTACK","WALLY_9TH_ARMOR_JUMP_DOWN","WALLY_9TH_ARMOR_JUMP_LANDING", },

	
	DYING_LAND_FRONT			= "WALLY_9TH_ARMOR_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "WALLY_9TH_ARMOR_DYING_LAND_BACK",
	DYING_SKY					= "WALLY_9TH_ARMOR_DYING_SKY",

	REVENGE_ATTACK				= "",	
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 90000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10000,		-- cm
		TARGET_LOST_RANGE			= 12000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 100, -- 20,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 400,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 310,
		
		DIR_CHANGE_INTERVAL = 1,
		
		MOVE_SPLIT_RANGE	= 800,
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  90,
		FAR_WALK_RATE		= 100,   -- 70, 
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 10,
		UP_DOWN_RATE		= 10,
		DOWN_JUMP_RATE		= 100,    --  10,
		DOWN_DOWN_RATE		= 10,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50,		
		PATROL_RANGE			= 500,
		PATROL_COOL_TIME		= 1.5,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
}





--------------------------------------------------------------------------------------------------------
WALLY_9TH_ARMOR_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	LAND_CONNECT				= TRUE,
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,		


    SOUND_PLAY0			= { 0.01, "Wally9Armor_Start.ogg" },

	RIGHT						= TRUE,
	NEVER_MOVE					= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 1.2, "LED_Wally9th_Armor_WaitStart_BTLed01", FALSE, "Dummy6_Skirt",  TRUE },
		{ FALSE, 1.4, "LED_Wally9th_Armor_WaitStart_BTLed01", FALSE, "Dummy9_Skirt",  TRUE },
		{ FALSE, 1.6, "LED_Wally9th_Armor_WaitStart_BTLed01", FALSE, "Dummy7_Skirt",  TRUE },
		{ FALSE, 2.0, "LED_Wally9th_Armor_WaitStart_BTLed01", FALSE, "Dummy11_Skirt", TRUE },
		{ FALSE, 1.9, "LED_Wally9th_Armor_WaitStart_BTLed01", FALSE, "Dummy8_Skirt",  TRUE },
		{ FALSE, 1.8, "LED_Wally9th_Armor_WaitStart_BTLed01", FALSE, "Dummy10_Skirt", TRUE },
		
		{ TRUE, 1.3, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 1.5, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 1.7, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 2.1, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 2.0, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 1.9, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },
		
		{ FALSE,	2.2, "LED_Wally9th_Armor_WaitStart_EyeLed01",	FALSE, "Dummy1_Eye",  TRUE },
		{ TRUE,		2.35, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", FALSE, TRUE, 0, 0, -30 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_ARMOR_WAIT",						},
	},
}



----------------------------------------------------------
function WALLY_9TH_ARMOR_START_CAMERA_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetBonePos_LUA("Bip01_Pelvis")	
	camera = pX2Game:GetX2Camera()
	camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 900, 0, 0 ), D3DXVECTOR2( 0,0 ) )

end








WALLY_9TH_ARMOR_WIN = 
{
	ANIM_NAME					= "Win",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	 
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 0.360, "Wally9Armor_Win1.ogg" },
    SOUND_PLAY1 		= { 0.460, "Wally9Armor_Creek1.ogg" },
    SOUND_PLAY2			= { 0.648, "Wally9Armor_Win2.ogg" },
    SOUND_PLAY3			= { 0.748, "Wally9Armor_Creek2.ogg" },
    SOUND_PLAY4			= { 0.920, "Wally9Armor_Win3.ogg" },
    SOUND_PLAY5			= { 0.209, "Wally9Armor_Creek2.ogg" },
    SOUND_PLAY6			= { 1.175, "Wally9Armor_Win4.ogg" },
    SOUND_PLAY7			= { 0.209, "Wally9Armor_Creek1.ogg" },
    SOUND_PLAY8			= { 1.453, "Wally9Armor_Win5.ogg" },
    SOUND_PLAY9			= { 0.209, "Wally9Armor_Creek2.ogg" },
    SOUND_PLAY10 		= { 1.972, "Wally9Armor_Win6.ogg" },
    SOUND_PLAY11		= { 0.209, "Wally9Armor_Creek1.ogg" },

	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT						= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
	},
	
	TALK_BOX =
	{
		{ RATE = 50, MESSAGE = STR_ID_2430 },
 	},
}






WALLY_9TH_ARMOR_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	NEVER_MOVE					= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",	FALSE, "Dummy1_Eye", TRUE },
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"WALLY_9TH_ARMOR_WIN",						"CF_WALLY_9TH_ARMOR_WIN",	},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALLY_9TH_ARMOR_JUMP_DOWN",				},



		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_ATTACKA",					"CT_WALLY_9TH_ARMOR_ATTACKA",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_DASH_START",				"CT_WALLY_9TH_ARMOR_DASH_START",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_SP_CHARGE_BALL",			"CT_WALLY_9TH_ARMOR_SP_CHARGE_BALL",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_MISSILE",					"CT_WALLY_9TH_ARMOR_MISSILE",				},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"WALLY_9TH_ARMOR_WALK",						}, 
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"WALLY_9TH_ARMOR_WALK",						},

		
--		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"WALLY_9TH_ARMOR_JUMP_UP",					},
--		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"WALLY_9TH_ARMOR_JUMP_UP_DIR",				},
--		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"WALLY_9TH_ARMOR_JUMP_DOWN",				},
--		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"WALLY_9TH_ARMOR_JUMP_DOWN_DIR",			},
		
--		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_HIGH_JUMP_READY_DIR",		"CT_WALLY_9TH_ARMOR_HIGH_JUMP",		},

	},
	
	
	CT_WALLY_9TH_ARMOR_ATTACKA =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
	
	CT_WALLY_9TH_ARMOR_DASH_START =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 600,
		RATE						= 30,
	},
	
	
	CT_WALLY_9TH_ARMOR_SP_CHARGE_BALL = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,		
		RATE						= 30, 
	},
	
	CT_WALLY_9TH_ARMOR_MISSILE = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR		= 600,
		RATE					= 50,
	},
	
	CT_WALLY_9TH_ARMOR_HIGH_JUMP =
	{
		EVENT_INTERVAL_ID			= 0,
		HAVE_TARGET					= 0,	-- false
		RATE						= 80,
	},
		
}



WALLY_9TH_ARMOR_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	EVENT_INTERVAL_TIME1		= 3,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
	},
	
	EVENT_PROCESS = 
	{		

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"WALLY_9TH_ARMOR_WIN",							"CF_WALLY_9TH_ARMOR_WIN",					},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALLY_9TH_ARMOR_JUMP_DOWN_DIR",				},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_ATTACKA",						"CT_WALLY_9TH_ARMOR_ATTACKA",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_DASH_START",					"CT_WALLY_9TH_ARMOR_DASH_START",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_SP_CHARGE_BALL",				"CT_WALLY_9TH_ARMOR_SP_CHARGE_BALL",		},		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_MISSILE",						"CT_WALLY_9TH_ARMOR_MISSILE",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"WALLY_9TH_ARMOR_WAIT",							},
--		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"WALLY_9TH_ARMOR_DASH_START",					},
--		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"WALLY_9TH_ARMOR_JUMP_UP",						},
--		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"WALLY_9TH_ARMOR_JUMP_UP_DIR",					},
--		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"WALLY_9TH_ARMOR_JUMP_DOWN",					},
--		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"WALLY_9TH_ARMOR_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_HIGH_JUMP_READY_DIR",		"CT_WALLY_9TH_ARMOR_HIGH_JUMP",		},

	},
	
	CT_WALLY_9TH_ARMOR_ATTACKA =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
	
	CT_WALLY_9TH_ARMOR_DASH_START =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 600,
		RATE						= 30,
	},
	
	
	CT_WALLY_9TH_ARMOR_SP_CHARGE_BALL = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,		
		RATE						= 30, 
	},
	
	CT_WALLY_9TH_ARMOR_MISSILE = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 600,
		RATE						= 50,
	},
	
	CT_WALLY_9TH_ARMOR_HIGH_JUMP =
	{
		EVENT_INTERVAL_ID			= 0,
		HAVE_TARGET					= 0,	-- false
		RATE						= 80,
	}, 
	

	TALK_BOX =
	{
		EVENT_INTERVAL_ID		= 1,
		{ RATE = 10, MESSAGE = STR_ID_1438 },
		{ RATE = 10, MESSAGE = STR_ID_1551 },
 	}
}

----------------------------------------------------------
function WALLY_9TH_ARMOR_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimTimer_LUA( 0.033 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Foot" )
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
	end	
	
	if pNPCUnit:AnimTimer_LUA( 0.88 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Foot" )
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
	end	
	
end





WALLY_9TH_ARMOR_JUMP_UP = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.01, "Wally9Armor_JumpUp.ogg" },	
    SOUND_PLAY1			= { 0.01, "Wally9Armor_EarthQuake1.ogg" },	

	SPEED_X						= 0,
	PASSIVE_SPEED_Y				= 100,
	G_ACCEL						= 0,
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
		
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy4_Back", TRUE },
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy5_Back", TRUE },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WALLY_9TH_ARMOR_JUMP_DOWN",				"CT_WALLY_9TH_ARMOR_JUMP_DOWN",				},
	},
	
	CT_WALLY_9TH_ARMOR_JUMP_DOWN =
	{
		STATE_TIME_OVER				= 3,
	},
}


----------------------------------------------------------
function WALLY_9TH_ARMOR_JUMP_UP_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
			
	if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
	end	
	
end


WALLY_9TH_ARMOR_JUMP_DOWN = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
	},
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"WALLY_9TH_ARMOR_JUMP_LANDING",				},
	},
}


WALLY_9TH_ARMOR_JUMP_UP_DIR =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	
	SPEED_X						= INIT_PHYSIC["WALK_SPEED"],
	PASSIVE_SPEED_Y				= 100,
	G_ACCEL						= 0,
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
			{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
		
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy4_Back", TRUE },
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy5_Back", TRUE },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WALLY_9TH_ARMOR_JUMP_DOWN_DIR",				"CT_WALLY_9TH_ARMOR_JUMP_DOWN_DIR",				},
	},
	
	CT_WALLY_9TH_ARMOR_JUMP_DOWN_DIR =
	{
		STATE_TIME_OVER				= 3,
	},
}

----------------------------------------------------------
function WALLY_9TH_ARMOR_JUMP_UP_DIR_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
					
	if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
	end	
	
end


WALLY_9TH_ARMOR_JUMP_DOWN_DIR =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
	},
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"WALLY_9TH_ARMOR_JUMP_LANDING",				},
	},
}



WALLY_9TH_ARMOR_JUMP_LANDING = 
{
	ANIM_NAME					= "Death",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE, 

    SOUND_PLAY0			= { 0.047, "Wally9Armor_Death1.ogg" },
    SOUND_PLAY1			= { 0.109, "Wally9Armor_Death2.ogg" },
    SOUND_PLAY2			= { 0.209, "Wally9Armor_Creek1.ogg" },
    SOUND_PLAY3			= { 0.403, "Wally9Armor_Death3.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
		
	},

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALLY_9TH_ARMOR_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_ARMOR_WAIT",					},
	},
}





WALLY_9TH_ARMOR_HIGH_JUMP_READY_DIR = 
{
	ANIM_NAME					= "DashStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	SUPER_ARMOR					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

         SOUND_PLAY0			= { 0.1, "Wally9Armor_DashStart.ogg" },

	IMMADIATE_PACKET_SEND		= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
		
		
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy4_Back", TRUE },
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy5_Back", TRUE },
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"WALLY_9TH_ARMOR_JUMP_DOWN_DIR",				},	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"WALLY_9TH_ARMOR_HIGH_JUMP_UP_DIR",			},
	},
}

----------------------------------------------------------
function WALLY_9TH_ARMOR_HIGH_JUMP_READY_DIR_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end



WALLY_9TH_ARMOR_HIGH_JUMP_UP_DIR = 
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.01, "Wally9Armor_JumpUp2.ogg" },
    SOUND_PLAY1			= { 0.01, "Wally9Armor_EarthQuake2.ogg" },	
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 0.6,
	PASSIVE_SPEED_Y				= 400,
	G_ACCEL						= 0,
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
		
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy4_Back", TRUE },
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy5_Back", TRUE },
	},
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WALLY_9TH_ARMOR_JUMP_DOWN_DIR",				"CT_WALLY_9TH_ARMOR_JUMP_DOWN_DIR",				},
	},
	
	CT_WALLY_9TH_ARMOR_JUMP_DOWN_DIR =
	{
		STATE_TIME_OVER				= 2,
	},
}

----------------------------------------------------------
function WALLY_9TH_ARMOR_HIGH_JUMP_UP_DIR_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
					
	if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
	end	
	
end





WALLY_9TH_ARMOR_DASH_START = 
{
	ANIM_NAME					= "DashStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.1, "Wally9Armor_DashStart.ogg" },
    SOUND_PLAY1			= { 0.1, "Wally9Armor_EarthQuake3.ogg" },

	PASSIVE_SPEED_X				= 0,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	VIEW_TARGET					= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
		
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy4_Back", TRUE },
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy5_Back", TRUE },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALLY_9TH_ARMOR_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_ARMOR_DASH",						},
	},
}

----------------------------------------------------------
function WALLY_9TH_ARMOR_DASH_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
					
	if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
	end	
	
end






WALLY_9TH_ARMOR_DASH =
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	SUPER_ARMOR					= TRUE,

	ATTACK_TIME0				= { 0.01, 100 },

	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	EVENT_INTERVAL_TIME0		= 0.15,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
		
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy4_Back", TRUE },
		{ TRUE,		0.01, "Flare_Wally9th_Booster01",					FALSE, "Dummy5_Back", TRUE },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"WALLY_9TH_ARMOR_WIN",						"CF_WALLY_9TH_ARMOR_WIN",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_DASH_END",					"CT_WALLY_9TH_ARMOR_DASH_END",			},
	},
	
	CT_WALLY_9TH_ARMOR_DASH_END =
	{
		STATE_TIME_OVER				= 1,
	},

	TALK_BOX =
	{
		{ RATE = 15, MESSAGE = STR_ID_1552 },
		{ RATE = 15, MESSAGE = STR_ID_1456 },
 	},
 	
 	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.3,
		},
		
		BACK_SPEED_X			= 1500.0,
		BACK_SPEED_Y			= 1000.0,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,		
		
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.4,	
	},
	
	
	DAMAGE_DATA2 = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.3,
		},
		
		BACK_SPEED_X			= 1500.0,
		BACK_SPEED_Y			= 1000.0,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,		
		
		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0,
	},
	
}

----------------------------------------------------------
function WALLY_9TH_ARMOR_DASH_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
					
	if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
	end	
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.8 ) == true then 
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA2" )
	end
	
end




WALLY_9TH_ARMOR_DASH_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

        SOUND_PLAY0			= { 0.1, "Wally9Armor_WaitStart.ogg" },
        SOUND_PLAY1			= { 0.262, "Wally9Armor_DashEnd.ogg" },
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALLY_9TH_ARMOR_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_ARMOR_WAIT",						},
	},
}



WALLY_9TH_ARMOR_ATTACKA = 
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


    SOUND_PLAY0			= { 0.542, "Wally9Armor_Slash.ogg" },
    SOUND_PLAY1			= { 0.83, "Wally9Armor_AttackA.ogg" },
    SOUND_PLAY2			= { 0.86, "Wally9Armor_Creek2.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	--SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,
		
	EVENT_INTERVAL_TIME0		= 1,
		
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1547 },
		{ RATE = 10, MESSAGE = STR_ID_1445 },
	},
		
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
		{ FALSE,	0.01, "Flare_Nasod_DR_Attack01",				FALSE, "Dummy2_Rhand", TRUE, TRUE, 0, 0, 0, TRUE, },
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALLY_9TH_ARMOR_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALLY_9TH_ARMOR_ATTACKA",				"CT_WALLY_9TH_ARMOR_ATTACKA",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_ARMOR_WAIT",					},	
	},

	ATTACK_TIME0				= { 1.350, 1400, },
	
	DISABLE_ATTACK_BOX = 
	{
		"UpBody",
		"LowBody",
		"LowBody",
		"Lhand",
	},
	
	CT_WALLY_9TH_ARMOR_ATTACKA = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		STATE_TIME_OVER				= 1.6,
		ATTACK_SUCCESS				= FALSE,
		RATE						= 50,
	},	
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.6,
		},
		
		BACK_SPEED_X			= 1500.0,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}




function WALLY_9TH_ARMOR_ATTACKA_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		vRotateDegree	= pNPCUnit:GetRotateDegree()
		orgLandPos		= pNPCUnit:GetLandPosition_LUA()
		
		transPos = pKTDXApp:GetVectorByRotate( D3DXVECTOR3( -150, 0, 0 ), vRotateDegree )
		
		orgLandPos.x = orgLandPos.x + transPos.x
		orgLandPos.y = orgLandPos.y + transPos.y
		orgLandPos.z = orgLandPos.z + transPos.z
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Wally9th_Armor01",	orgLandPos, D3DXVECTOR2(100,100), D3DXVECTOR2(2,-1) )
		
	end
	
end





WALLY_9TH_ARMOR_SP_CHARGE_BALL = 
{
	ANIM_NAME					= "SP_ChargeBall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	STOP_ALL_UNIT0				= { 0.625, 0.0, 0.6 },	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

        SOUND_PLAY0			= { 0.355, "Wally9Armor_ChargeBall1.ogg" },
        SOUND_PLAY1			= { 0.455, "Wally9Armor_Creek1.ogg" },
        SOUND_PLAY2			= { 0.602, "Wally9Armor_ChargeBall2.ogg" },
        SOUND_PLAY3			= { 0.652, "Wally9Armor_Creek2.ogg" },
        SOUND_PLAY4			= { 0.942, "Wally9Armor_ChargeBall3.ogg" },
        SOUND_PLAY5			= { 0.992, "Wally9Armor_Creek2.ogg" },
        SOUND_PLAY6			= { 1.407, "Wally9Armor_ChargeBall4.ogg" },
        SOUND_PLAY7			= { 2.293, "Wally9Armor_ChargeBall5.ogg" },
        SOUND_PLAY8			= { 2.393, "Wally9Armor_Creek1.ogg" },
        SOUND_PLAY9			= { 2.593, "Wally9Armor_ChargeBall6.ogg" },
        SOUND_PLAY10    	= { 2.623, "Wally9Armor_Creek2.ogg" },
        SOUND_PLAY11		= { 2.652, "Wally9Armor_ChargeBall7.ogg" },
        SOUND_PLAY12		= { 2.752, "Wally9Armor_Creek2.ogg" },
        SOUND_PLAY13 		= { 3.325, "Wally9Armor_ChargeBall8.ogg" },
        SOUND_PLAY14		= { 3.425, "Wally9Armor_Creek2.ogg" },
        SOUND_PLAY15 		= { 3.600, "Wally9Armor_ChargeBall9.ogg" },
        SOUND_PLAY16		= { 3.700, "Wally9Armor_Creek1.ogg" },
        SOUND_PLAY17 		= { 3.879, "Wally9Armor_ChargeBall10.ogg" },
        SOUND_PLAY18		= { 3.979, "Wally9Armor_Creek1.ogg" },
        SOUND_PLAY19 		= { 4.295, "Wally9Armor_WaitStart.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	RIGHT						= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,			0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
		
		{ TRUE,			1.13, "Wally9th_Armor_ChargeBall01",			FALSE, "Dummy2_Rhand", TRUE },
		{ TRUE,			1.13, "Wally9th_Armor_ChargeBall01",			FALSE, "Dummy3_Lhand", TRUE },
		
		{ FALSE,		2.6, "Flare_Wally9th_Joint01",					FALSE, "Bone_Wally9th_Armor_Lhand", TRUE },
		{ FALSE,		2.6, "Flare_Wally9th_Joint01",					FALSE, "Bone_Wally9th_Armor_Rhand", TRUE },
		
		{ FALSE,		3.4, "Flare_Wally9th_Joint01",					FALSE, "Bip01_L_Forearm", TRUE },
		{ FALSE,		3.4, "Flare_Wally9th_Joint01",					FALSE, "Bip01_R_Forearm", TRUE },
		
	},
	
	
	TALK_BOX = 
	{
		{ RATE = 80, MESSAGE = STR_ID_2431 },
		--{ RATE = 10, MESSAGE = STR_ID_1445 },
	},
	

	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALLY_9TH_ARMOR_JUMP_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_ARMOR_WAIT",								},	
	},

}




function WALLY_9TH_ARMOR_SP_CHARGE_BALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 2.6 ) then
	
		vRotateDegree	= pNPCUnit:GetRotateDegree()
		orgLandPos		= pNPCUnit:GetLandPosition_LUA()
		
		orgLandPos.y = orgLandPos.y + 50.0
		
		transPos = pKTDXApp:GetVectorByRotate( D3DXVECTOR3( 700, 0, 0 ), vRotateDegree )
		
		orgLandPos.x = orgLandPos.x + transPos.x
		orgLandPos.y = orgLandPos.y + transPos.y
		orgLandPos.z = orgLandPos.z + transPos.z
		
		pDamageEffect = pX2Game:GetDamageEffect()
		
		pMajorParticle = pX2Game:GetMajorParticle()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "WALLY9TH_ARMOR_CHARGE_BALL", orgLandPos, orgLandPos.y )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally9th_Armor_ChargeBall02",	orgLandPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )

		
		orgLandPos.x = orgLandPos.x - transPos.x
		orgLandPos.y = orgLandPos.y - transPos.y
		orgLandPos.z = orgLandPos.z - transPos.z
		
		transPos2 = pKTDXApp:GetVectorByRotate( D3DXVECTOR3( -700, 0, 0 ), vRotateDegree )
		orgLandPos.x = orgLandPos.x + transPos2.x
		orgLandPos.y = orgLandPos.y + transPos2.y
		orgLandPos.z = orgLandPos.z + transPos2.z
		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "WALLY9TH_ARMOR_CHARGE_BALL", orgLandPos, orgLandPos.y )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally9th_Armor_ChargeBall02",	orgLandPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			
	end
	
	if ( pNPCUnit:GetNowAnimTime_LUA() > 1.28 ) and  ( pNPCUnit:GetNowAnimTime_LUA() < 2.6 ) and ( GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 ) then
	
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5.0, 0.2 )
	
	end
	
	
	if ( pNPCUnit:GetNowAnimTime_LUA() > 2.6 ) and ( GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 ) then
	
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
	
	end

end





WALLY_9TH_ARMOR_MISSILE = 
{
	ANIM_NAME					= "MissileAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.445, "Wally9Armor_Mattack1.ogg" },
    SOUND_PLAY1			= { 0.545, "Wally9Armor_Creek1.ogg" },
    SOUND_PLAY2			= { 0.687, "Wally9Armor_Mattack2.ogg" },
    SOUND_PLAY3			= { 0.787, "Wally9Armor_Creek2.ogg" },
    SOUND_PLAY4			= { 1.070, "Wally9Armor_Mattack3.ogg" },
    SOUND_PLAY5			= { 1.170, "Wally9Armor_Creek2.ogg" },
    SOUND_PLAY6			= { 1.343, "Wally9Armor_Mattack4.ogg" },
    SOUND_PLAY7 		= { 1.443, "Wally9Armor_Creek1.ogg" },
    SOUND_PLAY8			= { 1.605, "Wally9Armor_Mattack5.ogg" },
    SOUND_PLAY9			= { 1.705, "Wally9Armor_Creek2.ogg" },
    SOUND_PLAY10		= { 2.528, "Wally9Armor_Mattack5.ogg" },
    SOUND_PLAY11		= { 2.628, "Wally9Armor_Creek2.ogg" },
    SOUND_PLAY12		= { 2.844, "Wally9Armor_Mattack4.ogg" },
    SOUND_PLAY13		= { 2.944, "Wally9Armor_Creek1.ogg" },
    SOUND_PLAY14		= { 3.339, "Wally9Armor_Mattack3.ogg" },
    SOUND_PLAY15		= { 3.439, "Wally9Armor_Creek2.ogg" },
    SOUND_PLAY16		= { 3.618, "Wally9Armor_Mattack2.ogg" },
    SOUND_PLAY17		= { 3.718, "Wally9Armor_Creek2.ogg" },
    SOUND_PLAY18		= { 3.950, "Wally9Armor_Mattack1.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	--VIEW_TARGET					= TRUE,	
	IMMADIATE_PACKET_SEND		= TRUE,	
	SUPER_ARMOR					= TRUE,
	RIGHT						= TRUE,
	NEVER_MOVE					= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",						FALSE, "Dummy1_Eye", TRUE },
		
		{ FALSE,		0.4, "Flare_Wally9th_Joint01",					FALSE, "Bone_Wally9th_Armor_Lhand", TRUE },
		{ FALSE,		0.4, "Flare_Wally9th_Joint01",					FALSE, "Bone_Wally9th_Armor_Rhand", TRUE },
		{ FALSE,		1.3, "Flare_Wally9th_Joint01",					FALSE, "Bip01_L_UpperArm", TRUE },
		{ FALSE,		1.3, "Flare_Wally9th_Joint01",					FALSE, "Bip01_R_UpperArm", TRUE },
		{ FALSE,		2.5, "Flare_Wally9th_Joint01",					FALSE, "Bip01_L_UpperArm", TRUE },
		{ FALSE,		2.5, "Flare_Wally9th_Joint01",					FALSE, "Bip01_R_UpperArm", TRUE },
		{ FALSE,		3.7, "Flare_Wally9th_Joint01",					FALSE, "Bone_Wally9th_Armor_Lhand", TRUE },
		{ FALSE,		3.7, "Flare_Wally9th_Joint01",					FALSE, "Bone_Wally9th_Armor_Rhand", TRUE },
	},
	
	TALK_BOX = 
	{
		{ RATE = 60, MESSAGE = STR_ID_2432 },
	},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15093,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALLY_9TH_ARMOR_JUMP_DOWN",							},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_ARMOR_WAIT",								},	
	},

}




function WALLY_9TH_ARMOR_MISSILE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.1 ) then
		pNPCUnit:PlaySound_LUA( "Wally9Armor_MissileFly.ogg" )
		function MissileGoGo( BipName, bLeft, randomOffset, fRotateZ )
	
			landPos = pNPCUnit:GetLandPosition_LUA()
			rotDegree = pNPCUnit:GetRotateDegree()
					
			pDamageEffect = pX2Game:GetDamageEffect()

			BonePos 	= pNPCUnit:GetBonePos_LUA( BipName )
			
			
			if bLeft == false then
			
				--rotDegree.y = rotDegree.y + 180.0
				rotDegree.z = rotDegree.z + 180.0
			
			end
			
			rotDegree.z = rotDegree.z + fRotateZ

			
			Missile = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "WALLY_9TH_MISSILE", BonePos, landPos.y, rotDegree )
			
			--pNPCUnit:SetLockOn( Missile, randomOffset )
	
		end
		
			
		vRotateDegree	= pNPCUnit:GetRotateDegree()
		skirtTransPos = pKTDXApp:GetVectorByRotate( D3DXVECTOR3( 10, 0, -50 ), vRotateDegree )

		
		function CreateMissileAttackEffect( boneName )
		
			skirtPos = pNPCUnit:GetBonePos_LUA( boneName )
	
			skirtPos.x = skirtPos.x + skirtTransPos.x
			skirtPos.y = skirtPos.y + skirtTransPos.y
			skirtPos.z = skirtPos.z + skirtTransPos.z

			pMinorParticle = pX2Game:GetMinorParticle()
			pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally9th_MissileAttack02",	skirtPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	
		end 
		
		MissileGoGo( "Dummy6_Skirt",	false,	0, -30 )
  		MissileGoGo( "Dummy7_Skirt",	false,	1, -15 )
  		MissileGoGo( "Dummy8_Skirt",	false,	2, 0 )
  		MissileGoGo( "Dummy9_Skirt",	true,	3, 30 )
 		MissileGoGo( "Dummy10_Skirt",	true,	4, 15 )
  		MissileGoGo( "Dummy11_Skirt",	true,	5, 0 )

		CreateMissileAttackEffect( "Dummy6_Skirt" )
		CreateMissileAttackEffect( "Dummy7_Skirt" )
		CreateMissileAttackEffect( "Dummy8_Skirt" )
		CreateMissileAttackEffect( "Dummy9_Skirt" )
		CreateMissileAttackEffect( "Dummy10_Skirt" )
		CreateMissileAttackEffect( "Dummy11_Skirt" )
		
		
		eyePos = pNPCUnit:GetBonePos_LUA( "Dummy1_Eye" )
		eyeTransPos = pKTDXApp:GetVectorByRotate( D3DXVECTOR3( 0, 0, -10 ), vRotateDegree )
		
		eyePos.x = eyePos.x + eyeTransPos.x
		eyePos.y = eyePos.y + eyeTransPos.y
		eyePos.z = eyePos.z + eyeTransPos.z

		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "LED_Wally9th_Armor_MissileAttack_EyeLed01",	eyePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		

	end
	
end









WALLY_9TH_ARMOR_DAMAGE_SMALL =
{
	ANIM_NAME					= "DamageSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 0,
	SPEED_Y						= 0,	
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_ARMOR_WAIT",						},
	},

	TALK_BOX =
 	{
		{ RATE = 30, MESSAGE = STR_ID_2426 },
	},
}


WALLY_9TH_ARMOR_DAMAGE_BIG = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 0,
	SPEED_Y				= 0,	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"WALLY_9TH_ARMOR_WAIT",					},
	},
		
	TALK_BOX =
 	{
		{ RATE = 10, MESSAGE = STR_ID_2427 },
	},
}



WALLY_9TH_ARMOR_DAMAGE_DOWN = 
{
	ANIM_NAME					= "Groggy",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"WALLY_9TH_ARMOR_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"WALLY_9TH_ARMOR_STAND_UP_ATTACK",		"CT_WALLY_9TH_ARMOR_STAND_UP_ATTACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"WALLY_9TH_ARMOR_WAIT",					},
	},
	
	CT_WALLY_9TH_ARMOR_STAND_UP_ATTACK = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 10,
	},
}


function WALLY_9TH_ARMOR_DAMAGE_DOWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )



	
	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then
		pNPCUnit:PlaySound_LUA( "Wally9Armor_Groggy.ogg" )
		pMajorParticle = pX2Game:GetMajorParticle()
				
		vZVector		= pNPCUnit:GetZVector()
		vPos = pNPCUnit:GetBonePos_LUA("Bip01_Spine")	
		vPos = MovePos( vPos, vZVector, -100 )
		vPos.y = vPos.y + 100
	
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally_9th_Spark01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
	end
		
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
		pNPCUnit:PlaySound_LUA( "Wally9Armor_Groggy.ogg" )
		pMajorParticle = pX2Game:GetMajorParticle()
				
		vZVector		= pNPCUnit:GetZVector()
		vPos = pNPCUnit:GetBonePos_LUA("Bip01_L_Forearm")	
		vPos = MovePos( vPos, vZVector, -30 )
		
	
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally_9th_Spark01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
	end
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.65 ) then
		pNPCUnit:PlaySound_LUA( "Wally9Armor_Groggy.ogg" )
		pMajorParticle = pX2Game:GetMajorParticle()
				
		vPos = pNPCUnit:GetBonePos_LUA("Dummy2_Rhand")	
		bIsRight		= pNPCUnit:GetIsRight()
		vDirVector		= pNPCUnit:GetDirVector()
		
		if bIsRight == true then
			vPos = MovePos( vPos, vDirVector, -45 )
		else
			vPos = MovePos( vPos, vDirVector, 45 )
		end
	
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally_9th_Spark01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
	end

end





WALLY_9TH_ARMOR_STAND_UP_ATTACK = 
{
	ANIM_NAME					= "GroggyAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	ANIM_WAIT_TIME				= 1.5,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },


	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
	},
	
	TALK_BOX =
 	{
		{ RATE = 30, MESSAGE = STR_ID_2433 },
	},
	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALLY_9TH_ARMOR_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_ARMOR_WAIT",					},
	},
	
}





function WALLY_9TH_ARMOR_STAND_UP_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "Wally9Armor_GroggyAttack1.ogg" )
		pMajorParticle = pX2Game:GetMajorParticle()
		
		vRot			= pNPCUnit:GetRotateDegree()
		bIsRight		= pNPCUnit:GetIsRight()
		vDirVector		= pNPCUnit:GetDirVector()
		vZVector		= pNPCUnit:GetZVector()
		vLandPos		= pNPCUnit:GetLandPosition_LUA()
		
		vPos = pNPCUnit:GetPos()
		vPos = MovePos( vPos, vZVector, -50 )
		vPos.y = vPos.y + 300
	
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally9th_GroggyAttack01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
		pDamageEffect = pX2Game:GetDamageEffect()		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "WALLY9TH_ARMOR_GROGGY_ATTACK", vPos, vLandPos.y )
		
		
		
		
		-- 스파크
		vPos = pNPCUnit:GetPos()
--		pNPCUnit:PlaySound_LUA( "Wally9Armor_Groggy.ogg" )
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 210 )
		else
			vPos = MovePos( vPos, vDirVector, -210 )
		end
		vPos = MovePos( vPos, vZVector, -150 )
		vPos.y = vPos.y + 450

		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally_9th_Spark02", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )

			 
		-- 스파크
		vPos = pNPCUnit:GetPos()
--		pNPCUnit:PlaySound_LUA( "Wally9Armor_Groggy.ogg" )
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, -175 )
		else
			vPos = MovePos( vPos, vDirVector, 175 )
		end
		vPos = MovePos( vPos, vZVector, -250 )
		vPos.y = vPos.y + 200

		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally_9th_Spark02", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )


		
		-- 스파크
		vPos = pNPCUnit:GetPos()
--		pNPCUnit:PlaySound_LUA( "Wally9Armor_Groggy.ogg" )
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, -115 )
		else
			vPos = MovePos( vPos, vDirVector, 115 )
		end
		vPos = MovePos( vPos, vZVector, -250 )
		vPos.y = vPos.y + 480

		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally_9th_Spark02", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )	
		
		
		-- 스파크
		vPos = pNPCUnit:GetPos()
		pNPCUnit:PlaySound_LUA( "Wally9Armor_Groggy.ogg" )
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 175 )
		else
			vPos = MovePos( vPos, vDirVector, -175 )
		end
		vPos = MovePos( vPos, vZVector, -250 )
		vPos.y = vPos.y + 150

		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally_9th_Spark02", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
		
		-- 
		vPos = pNPCUnit:GetPos()
		vPos.y = vPos.y + 300

		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Counter_Particle01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
	end

end




WALLY_9TH_ARMOR_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	STOP_MY_UNIT0				= { 0.1, 0.2, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy6_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy9_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy7_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy11_Skirt", TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy8_Skirt",  TRUE },
		{ TRUE, 0.01, "LED_Wally9th_Armor01", FALSE, "Dummy10_Skirt", TRUE },

		--{ TRUE,		0.01, "LED_Wally9th_Armor02",					FALSE, "Dummy1_Eye", TRUE },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_ARMOR_WAIT",					},
	},
}



WALLY_9TH_ARMOR_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Death",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.047, "Wally9Armor_Death1.ogg" },
    SOUND_PLAY1			= { 0.109, "Wally9Armor_Death2.ogg" },
    SOUND_PLAY2			= { 0.209, "Wally9Armor_Creek1.ogg" },
    SOUND_PLAY3			= { 0.403, "Wally9Armor_Death3.ogg" },
    SOUND_PLAY4			= { 0.420, "Wally9Armor_Death4.ogg" },
    SOUND_PLAY5			= { 0.420, "Wally9Armor_Death5.ogg" },
    SOUND_PLAY6			= { 0.48, "Wally9Armor_Groggy.ogg" },
    SOUND_PLAY7 		= { 0.455, "Wally9Armor_DeathSteam.ogg" },
    SOUND_PLAY8 		= { 2.3, "Wally9Armor_DeathExplosion_1.ogg" },
    SOUND_PLAY9  		= { 2.4, "Wally9Armor_DeathExplosion_2.ogg" },
    SOUND_PLAY10 		= { 3.9, "Wally9Armor_DeathExplosion_3.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	DYING_SPEED = 1,
	
	RIGHT		= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.3, "Smoke_Wally9th_Armor_Death01", FALSE, "", TRUE, FALSE, -180, 0, 0, },
		{ TRUE, 0.3, "Smoke_Wally9th_Armor_Death02", FALSE, "", TRUE, FALSE, 100, 0, 0, },
		
		{ TRUE, 0.6, "Wally_9th_Spark01", FALSE, "Bip01_Spine", TRUE, FALSE, 0, 0, -100, },
		{ TRUE, 0.6, "Wally_9th_Spark01", FALSE, "Bip01_L_Forearm", TRUE, FALSE, 0, 0, -30, },
		{ TRUE, 0.7, "Wally_9th_Spark01", FALSE, "Dummy2_Rhand", TRUE, FALSE, 45, 150, -35, },
		
		{ TRUE, 0.7, "SteamAttack01", FALSE, "Bip01_R_UpperArm", TRUE, FALSE, 20, 30, 0, },
		{ TRUE, 0.85, "SteamAttack01", FALSE, "Bip01_L_UpperArm", TRUE, FALSE, -20, 30, 0, },
		
		{ TRUE, 2.2, "Wally_9th_Death_Explosion01", FALSE, "", TRUE, FALSE, 0, 300, -200, },
		--{ TRUE, 2.6, "Wally_9th_Death_FadeOut", FALSE, "", TRUE, FALSE, 0, 400, -700, },

	},
	
	
}


function WALLY_9TH_ARMOR_DYING_LAND_FRONT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


	
		
end


function WALLY_9TH_ARMOR_DYING_LAND_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
				
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 4.0 )
		
	end
	
	
	if pNPCUnit:AnimEventTimer_LUA( 2.2 ) then
				
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 100.0, 4.0 )
		
	end
	
	
	if pNPCUnit:AnimEventTimer_LUA( 4.0 ) then
				
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 4.0 )
		
	end
	
	
	
	
	if pNPCUnit:AnimEventTimer_LUA( 2.6 ) then
	
		pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally_9th_Death_FadeOut", D3DXVECTOR3(0, 0, 0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	
	end
		
end


function WALLY_9TH_ARMOR_DYING_LAND_FRONT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	vPos = pNPCUnit:GetPos()
	local pNPC = nil
	if pNPCUnit:GetKeyCode() == 1 then
		pNPC = pX2Game:GetNPCUnitByKeyCode( 11 )
	elseif pNPCUnit:GetKeyCode() == 2 then
		pNPC = pX2Game:GetNPCUnitByKeyCode( 12 )
	else
		pNPC = pX2Game:GetNPCUnitByKeyCode( 1 )
	end
	if pNPC ~= nil then
	
		pNPC:SetPosition( vPos, true )
	
	end

			
end











	
WALLY_9TH_ARMOR_DYING_LAND_BACK = 
{
	ANIM_NAME					= "Death",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.047, "Wally9Armor_Death1.ogg" },
    SOUND_PLAY1			= { 0.109, "Wally9Armor_Death2.ogg" },
    SOUND_PLAY2			= { 0.209, "Wally9Armor_Creek1.ogg" },
    SOUND_PLAY3			= { 0.403, "Wally9Armor_Death3.ogg" },
    SOUND_PLAY4			= { 0.420, "Wally9Armor_Death4.ogg" },
    SOUND_PLAY5			= { 0.420, "Wally9Armor_Death5.ogg" },
    SOUND_PLAY6			= { 0.48, "Wally9Armor_Groggy.ogg" },
    SOUND_PLAY7			= { 0.455, "Wally9Armor_DeathSteam.ogg" },
    SOUND_PLAY8 		= { 1.8, "Wally9Armor_DeathExplosion_1.ogg" },
    SOUND_PLAY9  		= { 2.1, "Wally9Armor_DeathExplosion_2.ogg" },
    SOUND_PLAY10  		= { 4.1, "Wally9Armor_DeathExplosion_3.ogg" },

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	RIGHT		= TRUE,
	
	DYING_SPEED = 1,
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.3, "Smoke_Wally9th_Armor_Death01", FALSE, "", TRUE, FALSE, -180, 0, 0, },
		{ TRUE, 0.3, "Smoke_Wally9th_Armor_Death02", FALSE, "", TRUE, FALSE, 100, 0, 0, },
		
		{ TRUE, 0.6, "Wally_9th_Spark01", FALSE, "Bip01_Spine", TRUE, FALSE, 0, 0, -100, },
		{ TRUE, 0.6, "Wally_9th_Spark01", FALSE, "Bip01_L_Forearm", TRUE, FALSE, 0, 0, -30, },
		{ TRUE, 0.7, "Wally_9th_Spark01", FALSE, "Dummy2_Rhand", TRUE, FALSE, 45, 150, -35, },
		
		{ TRUE, 0.7, "SteamAttack01", FALSE, "Bip01_R_UpperArm", TRUE, FALSE, 20, 30, 0, },
		{ TRUE, 0.85, "SteamAttack01", FALSE, "Bip01_L_UpperArm", TRUE, FALSE, -20, 30, 0, },
		
		{ TRUE, 2.2, "Wally_9th_Death_Explosion01", FALSE, "", TRUE, FALSE, 0, 300, -200, },
		--{ TRUE, 2.6, "Wally_9th_Death_FadeOut", FALSE, "", TRUE, FALSE, 0, 400, -700, },

	},
	
}

WALLY_9TH_ARMOR_DYING_SKY = 
{
	ANIM_NAME					= "Death",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.047, "Wally9Armor_Death1.ogg" },
    SOUND_PLAY1			= { 0.109, "Wally9Armor_Death2.ogg" },
    SOUND_PLAY2			= { 0.209, "Wally9Armor_Creek1.ogg" },
    SOUND_PLAY3			= { 0.403, "Wally9Armor_Death3.ogg" },
    SOUND_PLAY4			= { 0.420, "Wally9Armor_Death4.ogg" },
    SOUND_PLAY5			= { 0.420, "Wally9Armor_Death5.ogg" },
    SOUND_PLAY6			= { 0.48, "Wally9Armor_Groggy.ogg" },
    SOUND_PLAY7			= { 0.455, "Wally9Armor_DeathSteam.ogg" },
    SOUND_PLAY8 		= { 1.8, "Wally9Armor_DeathExplosion_1.ogg" },
    SOUND_PLAY9  		= { 2.1, "Wally9Armor_DeathExplosion_2.ogg" },
    SOUND_PLAY10  		= { 4.1, "Wally9Armor_DeathExplosion_3.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	RIGHT		= TRUE,
	
	
	DYING_SPEED = 1,
	
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.3, "Smoke_Wally9th_Armor_Death01", FALSE, "", TRUE, FALSE, -180, 0, 0, },
		{ TRUE, 0.3, "Smoke_Wally9th_Armor_Death02", FALSE, "", TRUE, FALSE, 100, 0, 0, },
		
		{ TRUE, 0.6, "Wally_9th_Spark01", FALSE, "Bip01_Spine", TRUE, FALSE, 0, 0, -100, },
		{ TRUE, 0.6, "Wally_9th_Spark01", FALSE, "Bip01_L_Forearm", TRUE, FALSE, 0, 0, -30, },
		{ TRUE, 0.7, "Wally_9th_Spark01", FALSE, "Dummy2_Rhand", TRUE, FALSE, 45, 150, -35, },
		
		{ TRUE, 0.7, "SteamAttack01", FALSE, "Bip01_R_UpperArm", TRUE, FALSE, 20, 30, 0, },
		{ TRUE, 0.85, "SteamAttack01", FALSE, "Bip01_L_UpperArm", TRUE, FALSE, -20, 30, 0, },
		
		{ TRUE, 2.2, "Wally_9th_Death_Explosion01", FALSE, "", TRUE, FALSE, 0, 300, -200, },
		--{ TRUE, 2.6, "Wally_9th_Death_FadeOut", FALSE, "", TRUE, FALSE, 0, 400, -700, },

	},
}







----------------------------------------------------------
function CF_WALLY_9TH_ARMOR_WIN( pKTDXApp, pX2Game, pNPCUnit )

	if pX2Game:LiveUserUnitNum() == 0 then
		return true
	else
		return false
	end

end




------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end




