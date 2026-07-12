-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],	
}


INIT_DEVICE = 
{
    READY_TEXTURE = 
    {
        "ColorBallFire.dds",
        "Nasod_King_Wave01.dds",
        "GroundShockWave.dds",
        "stone_AirShip.dds",
        "Nasod_King_Laser03.dds",
        "Particle_Blur.dds",
        "Condense_Pulse01.dds",
        "Arme_Ring2.dds",
        "Light_Impact01.dds",
        "smoke.dds",
        "RingAlpha.dds",
        "Nasod_King_Splitlight01.tga",
        "Nasod_King_Splitlight02.tga",
        "Nasod_King_Splitlight03.dds",
        "SpreadLight01.dds",
        "SpreadLight02.dds",
        "smoke02.dds",
        "ColorBallFire.tga",
        "Explosion_Fire01.dds",
    },

	READY_SOUND = 
	{
       "KingNasod_AttackSlash1.ogg",
       "KingNasod_AttackSlash2.ogg",
       "KingNasod_GroundHit1.ogg",
       "KingNasod_GroundHit2.ogg",
       "KingNasod_Sweep.ogg",
       "KingNasod_Sweep2.ogg",
       "KingNasod_Sweep3.ogg",
       "KingNasod_ComboSlash1.ogg",
       "KingNasod_ComboSlash2.ogg",
       "KingNasod_ComboGroundHit1.ogg",
       "KingNasod_ComboGroundHit2.ogg",
 
       "KingNasod_KnockDown.ogg",
       "KingNasod_KnockDown2.ogg",
       "KingNasod_Laser1.ogg",

	   "KingNasod_Laser3.ogg",
	   "KingNasod_MissileHatchOpen.ogg",
	   "KingNasod_HitBreak.ogg",
	   "KingNasod_Lose.ogg",
	   "KingNasod_Lose2.ogg",
       "KingNasod_FlameEdge.ogg",

	   "KingNasod_DownStone1.ogg",
	   "KingNasod_DownStone2.ogg",

	   "KingNasod_Vibration.ogg",
	   "KingNasod_Vibration2.ogg",
	   "KingNasod_Vibration3.ogg",
	   
	   "BreakGround.ogg",



    },

    READY_XMESH = 
	{
        "Stone01_AirShip.y",
        "Stone02_AirShip.y",
        "Booster01_WR8.y",
        "Nasod_King_SpellAttack_PMesh01.Y",
        "Lightning02_1.Y",
        "Lightning02_2.Y",
        "Lightning01.Y",
        "Lightning02.Y",
        "Lightning03.Y",
    },
        
	READY_XSKIN_MESH = 
	{
	    "Missile_WR8.X",
	    "Nasod_King_Laser01.X",	    
	    "Nasod_King_FlameEdge.X",
        "Nasod_King_SpellAttack_Mesh01.X",
        "Motion_Stone.x",
        "Lightning01.X",
        "Lightning02_AttackLine.X",
        "FrozenMissile01.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Nasod_King.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500,
	RUN_SPEED			= 1300,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}


INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--HEAD_BONE_NAME		= "Altera_Plain_Recyle_Mine",
		
	SHOW_ON_MINIMAP		= FALSE,
		
	LIGHT_FLOW          = "Nasod_King_Line",	
	UNIT_FOG            = TRUE,
	NOT_EXTRA_DAMAGE    = TRUE,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_METAL2"],
	
	FALL_DOWN			= FALSE,
	
	DAMAGE_DOWN         = FALSE,
	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "NUI_King_Nasod",	
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_King_Nasod.dds",
	
	DIE_FLY             = 0,
	
	
	CAN_BE_STEPPED_ON_COLLISION_BOX = TRUE,
	
}

INIT_STATE = 
{
    { STATE_NAME = "NASOD_KING_START",				LUA_STATE_START_FUNC = "NASOD_KING_START_STATE_START",
                                                    LUA_CAMERA_MOVE_FUNC = "NASOD_KING_START_CAMERA_MOVE",       },
	--X2OPTIMIZE_NPC_SKINANIM_UPDATE_FREQUENCY( by hcsung: 의미없는 FRAME_MOVE는 제거 )
	--{ STATE_NAME = "NASOD_KING_WAIT",				LUA_FRAME_MOVE_FUNC = "NASOD_KING_WAIT_FRAME_MOVE",	                    },
	{ STATE_NAME = "NASOD_KING_WAIT",				},
	{ STATE_NAME = "NASOD_KING_LOSE",               LUA_FRAME_MOVE_FUNC = "NASOD_KING_LOSE_FRAME_MOVE",       },
	
	
	{ STATE_NAME = "NASOD_KING_KNOCKDOWN_WAIT",          },
	{ STATE_NAME = "NASOD_KING_KNOCKDOWN",          },
	{ STATE_NAME = "NASOD_KING_KNOCKDOWN2",         },	
	
	
	{ STATE_NAME = "NASOD_KING_ATTACK_PATTERN1",    },
	{ STATE_NAME = "NASOD_KING_ATTACK_PATTERN2",    },
	
    { STATE_NAME = "NASOD_KING_ATTACK1_LEFT",		LUA_FRAME_MOVE_FUNC = "NASOD_KING_ATTACK1_LEFT_FRAME_MOVE",	    STATE_COOL_TIME = 5 },
    { STATE_NAME = "NASOD_KING_ATTACK1_RIGHT",		LUA_FRAME_MOVE_FUNC = "NASOD_KING_ATTACK1_RIGHT_FRAME_MOVE",	STATE_COOL_TIME = 5 },
    { STATE_NAME = "NASOD_KING_ATTACK2",		    LUA_FRAME_MOVE_FUNC = "NASOD_KING_ATTACK2_FRAME_MOVE",	        STATE_COOL_TIME = 5 },
    { STATE_NAME = "NASOD_KING_ATTACK3_LEFT",		LUA_FRAME_MOVE_FUNC = "NASOD_KING_ATTACK3_LEFT_FRAME_MOVE",	    STATE_COOL_TIME = 5 },
    { STATE_NAME = "NASOD_KING_ATTACK3_RIGHT",		LUA_FRAME_MOVE_FUNC = "NASOD_KING_ATTACK3_RIGHT_FRAME_MOVE",	STATE_COOL_TIME = 5 },
    
    { STATE_NAME = "NASOD_KING_COMBOREADY",		    LUA_STATE_END_FUNC  = "NASOD_KING_COMBOREADY_STATE_END",	    STATE_COOL_TIME = 9 },
    { STATE_NAME = "NASOD_KING_COMBO1",		        LUA_FRAME_MOVE_FUNC = "NASOD_KING_COMBO1_FRAME_MOVE",	
                                                    LUA_STATE_END_FUNC  = "NASOD_KING_COMBO1_STATE_END",        },
    { STATE_NAME = "NASOD_KING_COMBO2",		        LUA_FRAME_MOVE_FUNC = "NASOD_KING_COMBO2_FRAME_MOVE",
                                                    LUA_STATE_END_FUNC  = "NASOD_KING_COMBO2_STATE_END",	    },
    { STATE_NAME = "NASOD_KING_COMBO3",		        LUA_FRAME_MOVE_FUNC = "NASOD_KING_COMBO3_FRAME_MOVE",
                                                    LUA_STATE_END_FUNC  = "NASOD_KING_COMBO3_STATE_END",  	    },
    { STATE_NAME = "NASOD_KING_COMBO4",		        LUA_FRAME_MOVE_FUNC = "NASOD_KING_COMBO4_FRAME_MOVE",
                                                    LUA_STATE_END_FUNC  = "NASOD_KING_COMBO4_STATE_END",	    },
    { STATE_NAME = "NASOD_KING_COMBOEND",		    LUA_FRAME_MOVE_FUNC = "NASOD_KING_COMBOEND_FRAME_MOVE",
                                                    LUA_STATE_END_FUNC  = "NASOD_KING_COMBOEND_STATE_END",	    },
                                                
    { STATE_NAME = "NASOD_KING_LASER",		        LUA_FRAME_MOVE_FUNC = "NASOD_KING_LASER_FRAME_MOVE",            STATE_COOL_TIME = 13 },
    { STATE_NAME = "NASOD_KING_MISSILE",		    LUA_FRAME_MOVE_FUNC = "NASOD_KING_MISSILE_FRAME_MOVE",          STATE_COOL_TIME = 13 },    
    { STATE_NAME = "NASOD_KING_SPELLATTACK",		LUA_FRAME_MOVE_FUNC = "NASOD_KING_SPELLATTACK_FRAME_MOVE", 
                                                    LUA_STATE_END_FUNC  = "NASOD_KING_SPELLATTACK_STATE_END",       STATE_COOL_TIME = 13 },
    
	START_STATE					= "NASOD_KING_START",
	WAIT_STATE					= "NASOD_KING_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "",
	SMALL_DAMAGE_LAND_BACK		= "",
	BIG_DAMAGE_LAND_FRONT		= "",
	BIG_DAMAGE_LAND_BACK		= "",
	DOWN_DAMAGE_LAND_FRONT		= "",
	DOWN_DAMAGE_LAND_BACK		= "",
	FLY_DAMAGE_FRONT			= "",
	FLY_DAMAGE_BACK				= "",
	SMALL_DAMAGE_AIR			= "",	
	BIG_DAMAGE_AIR				= "",
	DOWN_DAMAGE_AIR				= "",
	UP_DAMAGE					= "",
	DAMAGE_REVENGE				= "NASOD_KING_WAIT",
	
	DYING_LAND_FRONT			= "NASOD_KING_LOSE",
	DYING_LAND_BACK				= "NASOD_KING_LOSE",
	DYING_SKY					= "NASOD_KING_LOSE",

	REVENGE_ATTACK				= "",
	
	COMMON_FRAME_FUNC           = "NASOD_COMMON_FRAMEMOVE",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 5000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,		-- cm
		TARGET_LOST_RANGE			= 10800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 100, -- 40,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	
}

NASOD_KING_START = 
{   
    
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	


    EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"NASOD_KING_WAIT",		"CT_NASOD_KING_WAIT"				},
	},
	
	
	CT_NASOD_KING_WAIT = 
	{
		STATE_TIME_OVER			= 3,
	},    
}

NASOD_KING_LOSE = 
{   
    
	ANIM_NAME					= "Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.2, "KingNasod_Lose.ogg"	, 100, false, 65000, },
    SOUND_PLAY1			= { 0.2, "KingNasod_Lose2.ogg"	, 100, false, 65000, },
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
--[[	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,								
		{ TRUE, 2.5, "Wally_9th_Death_FadeOut", FALSE, "", FALSE, FALSE, 0, 400, -700, },
	},
--]]	

}

NASOD_KING_KNOCKDOWN = 
{   
    
	ANIM_NAME					= "KnockDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,


    SOUND_PLAY0			= { 0.01, "KingNasod_KnockDown.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY2			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY3			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		--DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15123,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"NASOD_KING_KNOCKDOWN2",		"CT_NASOD_KING_KNOCKDOWN2"				},
	},
	
	CT_NASOD_KING_KNOCKDOWN2 = 
	{
		STATE_TIME_OVER			= 4.2,
	},    
}

NASOD_KING_KNOCKDOWN2 = 
{   
    
	ANIM_NAME					= "KnockDown2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.01, "KingNasod_KnockDown2.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY2			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY3			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	},
	
}

NASOD_KING_KNOCKDOWN_WAIT = 
{   
    
	ANIM_NAME					= "KnockDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	
	
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"NASOD_KING_KNOCKDOWN2",		"CT_NASOD_KING_KNOCKDOWN2"				},
	},
	
	CT_NASOD_KING_KNOCKDOWN2 = 
	{
		STATE_TIME_OVER			= 15,
	},    
}

NASOD_KING_WAIT = 
{   
    
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		--DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15116,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = FALSE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 7, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],      "NASOD_KING_ATTACK_PATTERN1",               "CF_SPELLATTACK"    },	
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],         "NASOD_KING_ATTACK_PATTERN2",               "CT_NASOD_KING_ATTACK_PATTERN2"    },	
	},
	
	CT_NASOD_KING_ATTACK_PATTERN2 = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 80,
	},
}

NASOD_KING_ATTACK_PATTERN1 = 
{   
    
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_KING_ATTACK2",				    "CT_NASOD_KING_ATTACK2",	    },	    	
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],         "NASOD_KING_SPELLATTACK",               "CT_NASOD_KING_SPELLATTACK"     },	
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_KING_ATTACK3_LEFT",				"CT_NASOD_KING_ATTACK3_LEFT",	},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_KING_ATTACK3_RIGHT",				"CT_NASOD_KING_ATTACK3_RIGHT",	},	  
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_KING_ATTACK1_LEFT",				"CT_NASOD_KING_ATTACK1_LEFT",	},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_KING_ATTACK1_RIGHT",				"CT_NASOD_KING_ATTACK1_RIGHT",	},    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_KING_COMBOREADY",				"CT_NASOD_KING_COMBOREADY",	    },	    
	    
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	},
	
	CT_NASOD_KING_ATTACK1_LEFT = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 30,
	},	
	CT_NASOD_KING_ATTACK1_RIGHT = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 30,
	},	
	CT_NASOD_KING_ATTACK2 = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 50,
	},	
	CT_NASOD_KING_ATTACK3_LEFT = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 35,
	},	
	CT_NASOD_KING_ATTACK3_RIGHT = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 35,
	},	
	CT_NASOD_KING_COMBOREADY = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 50,
	},	
	CT_NASOD_KING_SPELLATTACK = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 60,
	},	
}

NASOD_KING_ATTACK_PATTERN2 = 
{   
    
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_KING_MISSILE",				    "CT_NASOD_KING_MISSILE",	    },		
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_KING_LASER",				        "CT_NASOD_KING_LASER",	        },			
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_KING_ATTACK2",				    "CT_NASOD_KING_ATTACK2",	    },
	    
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	},
	
	CT_NASOD_KING_MISSILE = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 50,
	},		
	CT_NASOD_KING_LASER = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 50,
	},	
	CT_NASOD_KING_ATTACK2 = 
	{
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 60,
	},
}

NASOD_KING_DIE = 
{    
    
	ANIM_NAME					= "Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.2, "KingNasod_Lose.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 0.2, "KingNasod_Lose2.ogg"        , 100, false, 62000, },
    
    RIGHT                       = TRUE,
    		
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	--DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}


NASOD_KING_ATTACK1_LEFT =
{   
    
	ANIM_NAME					= "Attack1_Left",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 1.931, "KingNasod_AttackSlash1.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 2.001, "KingNasod_GroundHit1.ogg"        , 100, false, 65000, },
    SOUND_PLAY2			= { 2.001, "KingNasod_HitBreak.ogg"        , 100, false, 65000, },
    SOUND_PLAY3			= { 3.692, "KingNasod_Sweep.ogg"        , 100, false, 62000, },
    SOUND_PLAY4			= { 5.242, "KingNasod_Sweep2.ogg"        , 100, false, 62000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY6			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY7			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },
    SOUND_PLAY8			= { 3.692, "KingNasod_Sweep3.ogg"        , 100, false, 62000, },
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	

    DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE18_Rfinger",
        "ATTACK_SPHERE8_Rfinger",
        "ATTACK_SPHERE5_Rfinger",
        "ATTACK_SPHERE6_Rfinger",
        "ATTACK_SPHERE17_Rfinger",
        "ATTACK_SPHERE1_Rhand",
        "ATTACK_SPHERE2_Rhand",
        "ATTACK_SPHERE4_Rhand",
        "ATTACK_SPHERE3_Rhand",
        "ATTACK_SPHERE7_Rfinger",
	},
	
    EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 3.0, "Nasod_King_Attack1_Left01", FALSE, "Bip01_L_Hand", TRUE, TRUE, -500, 0, 0, TRUE, },
		
		{ FALSE, 3.0, "Flare_Nasod_King_Attack1_Left01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, 0, -1000, TRUE, },
		{ FALSE, 2.0, "Nasod_King_GroundShockWave", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
	},
	
	ATTACK_TIME0				= { 1.5, 2.0, },
	ATTACK_TIME1				= { 2.5, 5.5, },    
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
		BACK_SPEED_W            = TRUE,
		BACK_SPEED_X			= 1500,
		BACK_SPEED_Y			= 4000,	
		
		CAN_REVENGE				= FALSE,		
		
	},
	DAMAGE_DATA_PRE =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.3,
		},
		
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
		
		CAN_REVENGE				= FALSE,	
		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.8,	
		
		CAMERA_CRASH_GAP		= 0.0,	
		CAMERA_CRASH_TIME		= 0.0,		
	},
	DAMAGE_DATA_NEXT = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_W            = TRUE,
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.8,
		BACK_SPEED_Y			= 0,
		
		CAN_REVENGE				= FALSE,		
		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.07,				
	},
	
		
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAN_REVENGE				= FALSE,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}

NASOD_KING_ATTACK1_RIGHT =
{   
    
	ANIM_NAME					= "Attack1_Right",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.934, "KingNasod_AttackSlash1.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 2.001, "KingNasod_GroundHit1.ogg"        , 100, false, 65000, },
    SOUND_PLAY2			= { 2.001, "KingNasod_HitBreak.ogg"        , 100, false, 65000, },
    SOUND_PLAY3			= { 3.692, "KingNasod_Sweep.ogg"        , 100, false, 62000, },
    SOUND_PLAY4			= { 5.242, "KingNasod_Sweep2.ogg"        , 100, false, 62000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY6			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY7			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },
    SOUND_PLAY8			= { 3.692, "KingNasod_Sweep3.ogg"        , 100, false, 62000, },
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	

    DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE9_Lhand",
        "ATTACK_SPHERE10_Lhand",
        "ATTACK_SPHERE12_Lhand",
        "ATTACK_SPHERE11_Lhand",
        "ATTACK_SPHERE15_Lfinger",
        "ATTACK_SPHERE16_Lfinger",
        "ATTACK_SPHERE13_Lfinger",
        "ATTACK_SPHERE14_Lfinger",
        "ATTACK_SPHERE19_Lfinger",
        "ATTACK_SPHERE20_Lfinger",
	},
	
    EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 3.0, "Nasod_King_Attack1_Left01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 500, 0, 0, TRUE,  0, 180, 0},
		
		{ FALSE, 3.0, "Flare_Nasod_King_Attack1_Left01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, 0, -1000, TRUE, 0, 180, 0},
		{ FALSE, 2.0, "Nasod_King_GroundShockWave", FALSE, "Bip01_R_Hand", TRUE, FALSE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
	},
	
	ATTACK_TIME0				= { 1.5, 2.0, },
	ATTACK_TIME1				= { 2.5, 5.5, },    
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
		BACK_SPEED_W            = TRUE,
		BACK_SPEED_X			= -1500,
		BACK_SPEED_Y			= 4000,	
		
		CAN_REVENGE				= FALSE,		
		
	},
	DAMAGE_DATA_PRE =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.3,
		},
		
		
		BACK_SPEED_X			= -INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
		
		CAN_REVENGE				= FALSE,	
		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.8,	
		
		CAMERA_CRASH_GAP		= 0.0,	
		CAMERA_CRASH_TIME		= 0.0,		
	},
	DAMAGE_DATA_NEXT = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_W            = TRUE,
		BACK_SPEED_X			= -INIT_PHYSIC["RUN_SPEED"] * 1.8,
		BACK_SPEED_Y			= 0,
		
		CAN_REVENGE				= FALSE,		
		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.07,				
	},
	
		
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAN_REVENGE				= FALSE,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}

NASOD_KING_ATTACK2 =
{   
    
	ANIM_NAME					= "Attack2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 2.767, "KingNasod_AttackSlash2.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 2.850, "KingNasod_GroundHit1.ogg"        , 100, false, 65000, },
    SOUND_PLAY2			= { 2.852, "KingNasod_GroundHit2.ogg"        , 100, false, 65000, },
    SOUND_PLAY3			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY4			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },


	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	

    EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,		
		{ FALSE, 2.9, "Nasod_King_GroundShockWave", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, -250, -500, TRUE, },
		{ FALSE, 2.9, "Nasod_King_GroundShockWave", FALSE, "Bip01_R_Hand", TRUE, FALSE, 0, -250, -500, TRUE, },
		{ FALSE, 2.9, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.9, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.9, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.9, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.9, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.9, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
	},
	
	ATTACK_TIME0				= { 2.7, 3.1, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,	
		
		CAN_REVENGE				= FALSE,		
		
	},	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_GROUND_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 2000,	
		
		CAN_REVENGE				= FALSE,		
	},	
	
		
}

NASOD_KING_ATTACK3_LEFT =
{   
    
	ANIM_NAME					= "Attack3_Left",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 1.929, "KingNasod_AttackSlash1.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 2.001, "KingNasod_GroundHit1.ogg"        , 100, false, 65000, },
    SOUND_PLAY2			= { 2.001, "KingNasod_HitBreak.ogg"        , 100, false, 65000, },
    SOUND_PLAY3			= { 3.692, "KingNasod_Sweep.ogg"        , 100, false, 62000, },
    SOUND_PLAY4			= { 5.242, "KingNasod_Sweep2.ogg"        , 100, false, 62000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY6			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY7			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },
    SOUND_PLAY8			= { 3.692, "KingNasod_Sweep3.ogg"        , 100, false, 62000, },
	
	
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	

    DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE18_Rfinger",
        "ATTACK_SPHERE8_Rfinger",
        "ATTACK_SPHERE5_Rfinger",
        "ATTACK_SPHERE6_Rfinger",
        "ATTACK_SPHERE17_Rfinger",
        "ATTACK_SPHERE1_Rhand",
        "ATTACK_SPHERE2_Rhand",
        "ATTACK_SPHERE4_Rhand",
        "ATTACK_SPHERE3_Rhand",
        "ATTACK_SPHERE7_Rfinger",
	},
	
    EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 3.6, "Nasod_King_Attack1_Left01", FALSE, "Bip01_L_Hand", TRUE, TRUE, -500, 0, 0, TRUE, 0, 0, -5},
		
		{ FALSE, 3.6, "Flare_Nasod_King_Attack1_Left01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, 0, -1000, TRUE, },
		{ FALSE, 2.0, "Nasod_King_GroundShockWave", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
	},
	
	ATTACK_TIME0				= { 1.5, 2.0, },
	ATTACK_TIME1				= { 2.5, 5.5, },    
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
		BACK_SPEED_W            = TRUE,
		BACK_SPEED_X			= 2000,
		BACK_SPEED_Y			= 4000,	
		
		CAN_REVENGE				= FALSE,		
		
	},
	DAMAGE_DATA_NEXT =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.3,
		},
		
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
		
		CAN_REVENGE				= FALSE,	
		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.8,	
		
		CAMERA_CRASH_GAP		= 0.0,	
		CAMERA_CRASH_TIME		= 0.0,		
	},	
		
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
		BACK_SPEED_W            = TRUE,
		BACK_SPEED_X			= 6000,
		BACK_SPEED_Y			= 3000,
		
		CAN_REVENGE				= FALSE,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}

NASOD_KING_ATTACK3_RIGHT =
{   
    
	ANIM_NAME					= "Attack3_Right",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 1.929, "KingNasod_AttackSlash1.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 2.001, "KingNasod_GroundHit1.ogg"        , 100, false, 65000, },
    SOUND_PLAY2			= { 2.001, "KingNasod_HitBreak.ogg"        , 100, false, 65000, },
    SOUND_PLAY3			= { 3.692, "KingNasod_Sweep.ogg"        , 100, false, 62000, },
    SOUND_PLAY4			= { 5.242, "KingNasod_Sweep2.ogg"        , 100, false, 62000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY6			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY7			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },
    SOUND_PLAY8			= { 3.692, "KingNasod_Sweep3.ogg"        , 100, false, 62000, },
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	

    DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE9_Lhand",
        "ATTACK_SPHERE10_Lhand",
        "ATTACK_SPHERE12_Lhand",
        "ATTACK_SPHERE11_Lhand",
        "ATTACK_SPHERE15_Lfinger",
        "ATTACK_SPHERE16_Lfinger",
        "ATTACK_SPHERE13_Lfinger",
        "ATTACK_SPHERE14_Lfinger",
        "ATTACK_SPHERE19_Lfinger",
        "ATTACK_SPHERE20_Lfinger",
	},
	
    EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 3.6, "Nasod_King_Attack1_Left01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 500, 0, 0, TRUE,  0, 180, -5},
		
		{ FALSE, 3.6, "Flare_Nasod_King_Attack1_Left01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, 0, -1000, TRUE, 0, 180, 0},
		{ FALSE, 2.0, "Nasod_King_GroundShockWave", FALSE, "Bip01_R_Hand", TRUE, FALSE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 2.0, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
	},
	
	ATTACK_TIME0				= { 1.5, 2.0, },
	ATTACK_TIME1				= { 2.5, 5.5, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
		BACK_SPEED_W            = TRUE,
		BACK_SPEED_X			= -2000,
		BACK_SPEED_Y			= 4000,	
		
		CAN_REVENGE				= FALSE,		
		
	},
	DAMAGE_DATA_NEXT =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.3,
		},
		
		
		BACK_SPEED_X			= -INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
		
		CAN_REVENGE				= FALSE,	
		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.8,	
		
		CAMERA_CRASH_GAP		= 0.0,	
		CAMERA_CRASH_TIME		= 0.0,		
	},	
		
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
		BACK_SPEED_W            = TRUE,
		BACK_SPEED_X			= -10000,
		BACK_SPEED_Y			= 3000,
		
		CAN_REVENGE				= FALSE,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}


NASOD_KING_COMBOREADY =
{       
	ANIM_NAME					= "ComboReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

--    SOUND_PLAY0			= { 0.113, "KingNasod_ComboReady.ogg" },

	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	    
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_COMBOEND",						},
	},
}

NASOD_KING_COMBO1 =
{   
    
	ANIM_NAME					= "Combo1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.082, "KingNasod_ComboSlash1.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 0.220, "KingNasod_ComboGroundHit1.ogg"        , 100, false, 65000, },
    SOUND_PLAY2			= { 0.220, "KingNasod_ComboGroundHit2.ogg"        , 100, false, 65000, },
    SOUND_PLAY3			= { 0.223, "KingNasod_HitBreak.ogg"        , 100, false, 62000, },
    SOUND_PLAY4			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY6			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },

	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
    
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 0.17, "Nasod_King_GroundShockWave", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },		
		
		{ FALSE, 0.17, "Nasod_King_GroundShockWave", FALSE, "Bip01_R_Hand", TRUE, FALSE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_COMBOEND",						},
	},
	
	ATTACK_TIME0				= { 0.1, 0.2, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{	
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_UNIT_SCALE"], BUFF_BEHAVIOR_TYPE["BBT_ATTACK_IMPOSSIBLE"], },
		
				BBT_CHANGE_UNIT_SCALE = 
				{
				},
				BBT_ATTACK_IMPOSSIBLE = 
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						4,
					},
				},
			},
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,	
		
		CAN_REVENGE				= FALSE,		
		
	},
}

NASOD_KING_COMBO2 =
{   
    
	ANIM_NAME					= "Combo2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 0.085, "KingNasod_ComboSlash1.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 0.183, "KingNasod_ComboGroundHit1.ogg"        , 100, false, 65000, },
    SOUND_PLAY2			= { 0.183, "KingNasod_ComboGroundHit2.ogg"        , 100, false, 65000, },
    SOUND_PLAY3			= { 0.185, "KingNasod_HitBreak.ogg"        , 100, false, 62000, },
    SOUND_PLAY4			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY6			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
    
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 0.17, "Nasod_King_GroundShockWave", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },		
		
		{ FALSE, 0.17, "Nasod_King_GroundShockWave", FALSE, "Bip01_R_Hand", TRUE, FALSE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_COMBOEND",						},
	},
	
	ATTACK_TIME0				= { 0.1, 0.2, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{	
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_UNIT_SCALE"], BUFF_BEHAVIOR_TYPE["BBT_ATTACK_IMPOSSIBLE"], },
		
				BBT_CHANGE_UNIT_SCALE = 
				{
				},
				BBT_ATTACK_IMPOSSIBLE = 
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						4,
					},
				},
			},
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,	
		
		CAN_REVENGE				= FALSE,		
		
	},
}

NASOD_KING_COMBO3 =
{   
    
	ANIM_NAME					= "Combo3",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 0.069, "KingNasod_ComboSlash1.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 0.183, "KingNasod_ComboGroundHit1.ogg"        , 100, false, 65000, },
    SOUND_PLAY2			= { 0.183, "KingNasod_ComboGroundHit2.ogg"        , 100, false, 65000, },
    SOUND_PLAY3			= { 0.185, "KingNasod_HitBreak.ogg"        , 100, false, 65000, },
    SOUND_PLAY4			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY6			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
    
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 0.17, "Nasod_King_GroundShockWave", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },		
		
		{ FALSE, 0.17, "Nasod_King_GroundShockWave", FALSE, "Bip01_R_Hand", TRUE, FALSE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_COMBOEND",						},
	},
	
	ATTACK_TIME0				= { 0.1, 0.2, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{	
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_UNIT_SCALE"], BUFF_BEHAVIOR_TYPE["BBT_ATTACK_IMPOSSIBLE"], },
		
				BBT_CHANGE_UNIT_SCALE = 
				{
				},
				BBT_ATTACK_IMPOSSIBLE = 
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						4,
					},
				},
			},
		},
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,	
		
		CAN_REVENGE				= FALSE,		
		
	},
}

NASOD_KING_COMBO4 =
{   
    
	ANIM_NAME					= "Combo4",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.085, "KingNasod_ComboSlash1.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 0.172, "KingNasod_ComboGroundHit1.ogg"        , 100, false, 65000, },
    SOUND_PLAY2			= { 0.172, "KingNasod_ComboGroundHit2.ogg"        , 100, false, 65000, },
    SOUND_PLAY3			= { 0.174, "KingNasod_HitBreak.ogg"        , 100, false, 65000, },
    SOUND_PLAY4			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY6			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
    
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 0.17, "Nasod_King_GroundShockWave", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },		
		
		{ FALSE, 0.17, "Nasod_King_GroundShockWave", FALSE, "Bip01_R_Hand", TRUE, FALSE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
		{ FALSE, 0.17, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -150, -500, TRUE, },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_COMBOEND",						},
	},
	
	ATTACK_TIME0				= { 0.1, 0.2, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{	
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_UNIT_SCALE"], BUFF_BEHAVIOR_TYPE["BBT_ATTACK_IMPOSSIBLE"], },
		
				BBT_CHANGE_UNIT_SCALE = 
				{
				},
				BBT_ATTACK_IMPOSSIBLE = 
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						4,
					},
				},
			},
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,	
		
		CAN_REVENGE				= FALSE,		
		
	},
}

NASOD_KING_COMBOEND =
{       
	ANIM_NAME					= "ComboEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.551, "KingNasod_ComboSlash1.ogg"        , 100, false, 62000, },
    SOUND_PLAY1			= { 0.626, "KingNasod_ComboGroundHit1.ogg"        , 100, false, 65000, },
    SOUND_PLAY2			= { 0.626, "KingNasod_ComboGroundHit2.ogg"        , 100, false, 65000, },
    SOUND_PLAY3			= { 0.628, "KingNasod_HitBreak.ogg"        , 100, false, 65000, },
    SOUND_PLAY4			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
    SOUND_PLAY6			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	   
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 0.6, "Nasod_King_GroundShockWave", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, -250, -500, TRUE, },
		{ FALSE, 0.6, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 0.6, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 0.6, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },		
		
		{ FALSE, 0.6, "Nasod_King_GroundShockWave", FALSE, "Bip01_R_Hand", TRUE, FALSE, 0, -250, -500, TRUE, },
		{ FALSE, 0.6, "Stone_Nasod_King_Attack1_01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 0.6, "Stone_Nasod_King_Attack1_02", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
		{ FALSE, 0.6, "Stone_Nasod_King_Attack1_03", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, -250, -500, TRUE, },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	}, 
	
	ATTACK_TIME0				= { 0.55, 0.61, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_NASOD_KING"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{	
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_UNIT_SCALE"], BUFF_BEHAVIOR_TYPE["BBT_ATTACK_IMPOSSIBLE"], },
		
				BBT_CHANGE_UNIT_SCALE = 
				{
				},
				BBT_ATTACK_IMPOSSIBLE = 
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						4,
					},
				},
			},
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,	
		
		CAN_REVENGE				= FALSE,		
		
	},
}

NASOD_KING_LASER =
{       
	ANIM_NAME					= "Laser",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

   SOUND_PLAY0			= { 0.552, "KingNasod_Laser1.ogg"        , 100, false, 40000, },
   SOUND_PLAY1			= { 1.891, "KingNasod_Laser2.ogg"        , 100, false, 40000, },
   SOUND_PLAY2			= { 5.891, "KingNasod_Laser3.ogg"        , 100, false, 40000, },
   SOUND_PLAY3			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 62000, },
   SOUND_PLAY4			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 62000, },
   SOUND_PLAY5			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 62000, },

	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	   
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 5.9, "Light_Nasod_King_Laser01", FALSE, "Dummy1_Center", TRUE, FALSE, 0, 0, -200, TRUE, },
		{ TRUE, 1.3333, "Light_Nasod_King_Laser02", FALSE, "Dummy1_Center", TRUE, FALSE, 0, 0, -300, TRUE, },		
		{ TRUE, 0.2, "Light_Nasod_King_Laser03", FALSE, "Dummy1_Center", TRUE, FALSE, 0, 0, -300, TRUE, },
		{ TRUE, 0.3, "Light_Nasod_King_Laser04", FALSE, "Dummy1_Center", TRUE, FALSE, 0, 0, -300, TRUE, },
		{ TRUE, 5.8, "Light_Nasod_King_Laser05", FALSE, "Dummy1_Center", TRUE, FALSE, 0, 0, -700, TRUE, },
	},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15122,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	}, 
}

NASOD_KING_MISSILE =
{       
	ANIM_NAME					= "Missile",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 1.281, "KingNasod_MissileHatchOpen.ogg"        , 100, false, 40000, },
    SOUND_PLAY1			= { 1.628, "KingNasod_MissileHatchOpen.ogg"        , 100, false, 40000, },
    SOUND_PLAY2			= { 1.941, "KingNasod_MissileHatchOpen.ogg"        , 100, false, 40000, },
    SOUND_PLAY3			= { 2.251, "KingNasod_MissileHatchOpen.ogg"        , 100, false, 40000, },
    SOUND_PLAY4			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 40000, },
    SOUND_PLAY5			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 40000, },
    SOUND_PLAY6			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 40000, },


	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	   
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 2.666, "Nasod_King_MissileAttack01", FALSE, "Dummy14_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 2.666, "Nasod_King_MissileAttack01", FALSE, "Dummy16_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 2.9, "Nasod_King_MissileAttack01", FALSE, "Dummy13_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 2.9, "Nasod_King_MissileAttack01", FALSE, "Dummy17_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 3.133, "Nasod_King_MissileAttack01", FALSE, "Dummy15_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 3.133, "Nasod_King_MissileAttack01", FALSE, "Dummy19_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 3.366, "Nasod_King_MissileAttack01", FALSE, "Dummy12_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 3.366, "Nasod_King_MissileAttack01", FALSE, "Dummy18_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		
		{ FALSE, 2.666, "Nasod_King_MissileAttack02", FALSE, "Dummy14_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 2.666, "Nasod_King_MissileAttack02", FALSE, "Dummy16_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 2.9, "Nasod_King_MissileAttack02", FALSE, "Dummy13_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 2.9, "Nasod_King_MissileAttack02", FALSE, "Dummy17_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 3.133, "Nasod_King_MissileAttack02", FALSE, "Dummy15_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 3.133, "Nasod_King_MissileAttack02", FALSE, "Dummy19_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 3.366, "Nasod_King_MissileAttack02", FALSE, "Dummy12_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
		{ FALSE, 3.366, "Nasod_King_MissileAttack02", FALSE, "Dummy18_Armor1", TRUE, FALSE, 0, 0, -50, TRUE, },
	},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15121,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	}, 
}

NASOD_KING_SPELLATTACK =
{       
	ANIM_NAME					= "SpellAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

   SOUND_PLAY0			= { 0.737, "KingNasod_SpellAttack1.ogg"        , 100, false, 40000, },
   SOUND_PLAY1			= { 2.088, "KingNasod_SpellAttack2.ogg"        , 100, false, 40000, },
   SOUND_PLAY2			= { 4.431, "KingNasod_SpellAttack3.ogg"        , 100, false, 40000, },
   SOUND_PLAY3			= { 4.431, "KingNasod_SpellAttack3.ogg"        , 100, false, 40000, },
   SOUND_PLAY4			= { 0.01, "KingNasod_Vibration.ogg"        , 100, false, 38000, },
   SOUND_PLAY5			= { 0.01, "KingNasod_Vibration2.ogg"        , 100, false, 38000, },
   SOUND_PLAY6			= { 0.01, "KingNasod_Vibration3.ogg"        , 100, false, 38000, },
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	   
	
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,		
		{ TRUE, 0.73333, "Nasod_King_SpellAttack_Splitlight02", FALSE, "Dummy1_Center", TRUE, FALSE, 0, 660, -1200, TRUE, },
		{ TRUE, 1.06666, "Nasod_King_SpellAttack_Splitlight03", FALSE, "Dummy01", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 1.07, "Nasod_King_SpellAttack_Splitlight04", FALSE, "Dummy01", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 2.03, "Nasod_King_SpellAttack_Spreadlight01", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, TRUE, },
		{ TRUE, 2.03, "Nasod_King_SpellAttack_Spreadlight02", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, TRUE, },
		{ TRUE, 2.03, "Nasod_King_SpellAttack_Spreadlight02", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, TRUE, },
		{ TRUE, 2.03333, "Nasod_King_SpellAttack_Splitlight05", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, TRUE, },				
		{ TRUE, 4.33, "Nasod_King_SpellAttack_Splitlight06", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, TRUE, },
		{ TRUE, 4.33, "Nasod_King_SpellAttack_Splitlight07", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, TRUE, },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_KING_WAIT",						},
	}, 
}

----------------------------------------------------------------------------------------------------------------------------------------------

function AttackCameraCrash( pX2Game, pNPCUnit )
    
    if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.5 )
    end
         
    if pNPCUnit:AnimEventTimer_LUA( 2.65 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5.0, 3.7 )
    end  
end

function comboSkill( pNPCUnit, randVal )   
    
    comboCount = pNPCUnit:GetInt_LUA(1)
    
        
    if comboCount > 1 then
       return
    end

    comboCount = comboCount + 1
    pNPCUnit:SetInt_LUA(1, comboCount)
    
    if randVal == 0 then
        pNPCUnit:StateChange_LUA( "NASOD_KING_COMBO1", true )
    elseif randVal == 1 then
        pNPCUnit:StateChange_LUA( "NASOD_KING_COMBO2", true )
    elseif randVal == 2 then
        pNPCUnit:StateChange_LUA( "NASOD_KING_COMBO3", true )
    else
        pNPCUnit:StateChange_LUA( "NASOD_KING_COMBO4", true )
    end
end    

function CF_SPELLATTACK( pKTDXApp, pX2Game, pNPCUnit )

    nSpell = 0
    
    pNPCUnit:SetFlag_LUA(0, false)
    pNPCUnit:SetFlag_LUA(1, false)
    pNPCUnit:SetFlag_LUA(2, false)
    pNPCUnit:SetFlag_LUA(3, false)
    
    pUID1 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_FIRE"], 999999 )
    if pUID1 ~= 0 then	    
	    nSpell = nSpell + 1
	    pNPCUnit:SetFlag_LUA(0, true)
	end
	
	pUID2 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_ICE"], 999999 )
    if pUID2 ~= 0 then
	    nSpell = nSpell + 1
	    pNPCUnit:SetFlag_LUA(1, true)
	end
	
	pUID3 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_EARTH"], 999999 )
    if pUID3 ~= 0 then
	    nSpell = nSpell + 1
	    pNPCUnit:SetFlag_LUA(2, true)
	end
	
	pUID4 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_NOVA"], 999999 )
    if pUID4 ~= 0 then	    
	    nSpell = nSpell + 1
	    pNPCUnit:SetFlag_LUA(3, true)
	end
	        
    pNPCUnit:SetInt_LUA(0, nSpell)
    
    if nSpell > 0 then
        return true
    else
        return false
    end	        
end

function NASOD_KING_START_CAMERA_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")	
	camera = pX2Game:GetX2Camera()
	camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 5500, 900, -30 ), D3DXVECTOR2( 0,0 ) )

end

function NASOD_KING_LOSE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
--[[    
    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
        pNPCUnit:SetFocusCamera(true)
        rotCamera = -30
        heightCamera = 100
        distanceCamera = 1000
    end        
    

    if pNPCUnit:GetNowAnimTime_LUA() <= 7.3 then        
	    pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")	
	    pos.x = -4250 
	    pos.y = 1000
	    pos.z = 2600
    	
	    rotCamera = rotCamera + 0.15  	    
	    --heightCamera = heightCamera + 1 
	    distanceCamera = distanceCamera - 15
	    
	        
    end
    
    camera = pX2Game:GetX2Camera()	
    camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 5000, heightCamera, rotCamera ), D3DXVECTOR2( 0,0 ) )
--]]    

end
----------------------------------------------------------------------------------------------------------------------------------------------

function NASOD_KING_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )        
    
    pNPCUnit:SetLightFlowMin(200)
    pNPCUnit:SetLightFlowMax(2600)
    pNPCUnit:SetLightFlowSpeed(300)
    pNPCUnit:SetLightFlowWide(9)
    pNPCUnit:SetLightFlowColor( D3DXCOLOR(0.8,0.8,1,1) )
    
end

--X2OPTIMIZE_NPC_SKINANIM_UPDATE_FREQUENCY( by hcsung: 의미없는 FRAME_MOVE는 제거 )
--function NASOD_KING_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )        
    
--end


function NASOD_KING_ATTACK1_LEFT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )               
    
    if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_PRE" )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 4.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
	end
			
	if pNPCUnit:AnimEventTimer_LUA( 4.9 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
	
	AttackCameraCrash( pX2Game, pNPCUnit )    
end

function NASOD_KING_ATTACK1_RIGHT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 

    if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_PRE" )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 4.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
	end
			
	if pNPCUnit:AnimEventTimer_LUA( 4.9 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
	
    AttackCameraCrash( pX2Game, pNPCUnit )    
end

function NASOD_KING_ATTACK2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 
 
	
	if pNPCUnit:AnimEventTimer_LUA( 3.0 ) then
	    pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 50.0, 0.8 )
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )				
	end	
	
	
	if pNPCUnit:AnimEventTimer_LUA( 3.3 ) then	
	
	    nMonster1 = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"] )
	    nMonster2 = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"] )

	    if nMonster1 < 1 then
	    	    vSummonPos1 = pX2Game:GetLineMap():GetRandomPosition_LUA()
		    vSummonPos1.y = vSummonPos1.y + 2000
		    pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"], pNPCUnit:GetHardLevel(), false, vSummonPos1, false, 0.3, true  )
	    end

	    if nMonster2 < 1 then
	         vSummonPos2 = pX2Game:GetLineMap():GetRandomPosition_LUA()
		    vSummonPos2.y = vSummonPos2.y + 2000
		    pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"], pNPCUnit:GetHardLevel(), false, vSummonPos2, false, 0.9, true  )
	    end
	
	    --[[for nMon1=1, 3-nMonster1 do
	    	    vSummonPos1 = pX2Game:GetLineMap():GetRandomPosition_LUA()
		    vSummonPos1.y = vSummonPos1.y + 2000
		    pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"], pNPCUnit:GetHardLevel(), false, vSummonPos1, false, 0.3, true  )
	    end
	    
	    for nMon1=1, 2-nMonster2 do
	         vSummonPos2 = pX2Game:GetLineMap():GetRandomPosition_LUA()
		    vSummonPos2.y = vSummonPos2.y + 2000
		    pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"], pNPCUnit:GetHardLevel(), false, vSummonPos2, false, 0.9, true  )
	    end
	    --]]
	     
    end
                 
end

function NASOD_KING_ATTACK3_LEFT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 

    if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 4.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
		
    AttackCameraCrash( pX2Game, pNPCUnit )              
end

function NASOD_KING_ATTACK3_RIGHT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 

    if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 4.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
	
    AttackCameraCrash( pX2Game, pNPCUnit )               
end

function NASOD_KING_COMBO1_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 

    if pNPCUnit:AnimEventTimer_LUA( 0.18 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.5 )
    end                   
end

function NASOD_KING_COMBO2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 

    if pNPCUnit:AnimEventTimer_LUA( 0.18 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.5 )
    end                   
end

function NASOD_KING_COMBO3_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 

    if pNPCUnit:AnimEventTimer_LUA( 0.18 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.5 )
    end                   
end

function NASOD_KING_COMBO4_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 

    if pNPCUnit:AnimEventTimer_LUA( 0.18 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.5 )
    end                   
end

function NASOD_KING_COMBOREADY_STATE_END( pKTDXApp, pX2Game, pNPCUnit )    
    
    randVal = pNPCUnit:GetRandVal() % 4        
    comboSkill(pNPCUnit, randVal)
end

function NASOD_KING_COMBO1_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

    comboCount = pNPCUnit:GetInt_LUA(1)
    dungeonLv = pX2Game:GetGameLevel()
        
    if comboCount < 2 and dungeonLv == 2 then
        randVal = pNPCUnit:GetRandVal() % 4
        
        if randVal == 0 then
            randVal = (randVal + 9) % 4
        end
        
        comboSkill(pNPCUnit, randVal)      
        
    else
        pNPCUnit:StateChange_LUA( "NASOD_KING_COMBOEND", true )
    end
end

function NASOD_KING_COMBO2_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

    comboCount = pNPCUnit:GetInt_LUA(1)
    dungeonLv = pX2Game:GetGameLevel()
        
    if comboCount < 2 and dungeonLv == 2 then
        randVal = pNPCUnit:GetRandVal() % 4
        
        if randVal == 1 then
            randVal = (randVal + 9) % 4
        end
        
        comboSkill(pNPCUnit, randVal)      
        
    else
        pNPCUnit:StateChange_LUA( "NASOD_KING_COMBOEND", true )
    end
end

function NASOD_KING_COMBO3_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

    comboCount = pNPCUnit:GetInt_LUA(1)
    dungeonLv = pX2Game:GetGameLevel()
        
    if comboCount < 2 and dungeonLv == 2 then
        randVal = pNPCUnit:GetRandVal() % 4
        
        if randVal == 2 then
            randVal = (randVal + 9) % 4
        end
        
        comboSkill(pNPCUnit, randVal)      
        
    else
        pNPCUnit:StateChange_LUA( "NASOD_KING_COMBOEND", true )
    end
end

function NASOD_KING_COMBO4_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

    comboCount = pNPCUnit:GetInt_LUA(1)
    dungeonLv = pX2Game:GetGameLevel()
        
    if comboCount < 2 and dungeonLv == 2 then
        randVal = pNPCUnit:GetRandVal() % 4
        
        if randVal == 3 then
            randVal = (randVal + 9) % 4
        end
        
        comboSkill(pNPCUnit, randVal)      
        
    else
        pNPCUnit:StateChange_LUA( "NASOD_KING_COMBOEND", true )
    end
end

function NASOD_KING_COMBOEND_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 

    if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.5 )
    end                   
end

function NASOD_KING_COMBOEND_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

    pNPCUnit:SetInt_LUA(1, 0)
    
    -- 몬스터 소환
end  

function NASOD_KING_LASER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 

    if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5.0, 5.35 )
    end
        
    if pNPCUnit:AnimEventTimer_LUA( 5.933 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 1.766 )
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 7.7 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5.0, 1.0 )
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 5.9 ) then
        pDamageEffect = pX2Game:GetDamageEffect()
        if pDamageEffect ~= nil then
            unitPos = pNPCUnit:GetNearestUserPos()
	        unitLandPos = pX2Game:GetLineMap():GetLandPosition_LUA( unitPos )	
            
            vBonePos = pNPCUnit:GetBonePos_LUA("Dummy1_Center")
            vBonePos.z = vBonePos.z - 150
            
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_KING_LASER", vBonePos, unitLandPos.y )
        end
    end        
end	

  
function NASOD_KING_MISSILE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    dungeonLv = pX2Game:GetGameLevel()   
    
    if dungeonLv == 2 then
        randVal = pNPCUnit:GetRandVal() % 2
    else
        randVal = 0
    end 
    
        
    if pNPCUnit:AnimEventTimer_LUA( 2.666 ) then
        unitPos = pNPCUnit:GetNearestUserPos()
	    unitLandPos = pX2Game:GetLineMap():GetLandPosition_LUA( unitPos )	
        
		rotDegree1 = pNPCUnit:GetRotateDegree()
		rotDegree2 = pNPCUnit:GetRotateDegree()
		
		rotDegree1.y = rotDegree1.y + 90
		rotDegree1.z = rotDegree1.z + 15
		rotDegree2.y = rotDegree2.y + 90
		rotDegree2.z = rotDegree2.z + 15
				
		pDamageEffect = pX2Game:GetDamageEffect()

		LHandPos 	= pNPCUnit:GetBonePos_LUA("Dummy14_Armor1")
		RHandPos 	= pNPCUnit:GetBonePos_LUA("Dummy16_Armor1")

		if pDamageEffect ~= nil then
		    RightMissile1 = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_GUIDED_MISSILE", RHandPos, unitLandPos.y, rotDegree1 )		   
		    LeftMissile1  = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_GUIDED_MISSILE", LHandPos, unitLandPos.y, rotDegree2 )
        end		
        
        if randVal == 1 then
            pNPCUnit:SetLockOn( LeftMissile1, 0 )
		    pNPCUnit:SetLockOn( RightMissile1, 2 )
        end		    
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 2.9 ) then
        unitPos = pNPCUnit:GetNearestUserPos()
	    unitLandPos = pX2Game:GetLineMap():GetLandPosition_LUA( unitPos )
	    
		rotDegree1 = pNPCUnit:GetRotateDegree()
		rotDegree2 = pNPCUnit:GetRotateDegree()
		
		rotDegree1.y = rotDegree1.y + 85
		rotDegree1.z = rotDegree1.z + 5
		rotDegree2.y = rotDegree2.y + 105
		rotDegree2.z = rotDegree2.z + 5
				
		pDamageEffect = pX2Game:GetDamageEffect()

		LHandPos 	= pNPCUnit:GetBonePos_LUA("Dummy13_Armor1")
		RHandPos 	= pNPCUnit:GetBonePos_LUA("Dummy17_Armor1")

		if pDamageEffect ~= nil then
		    RightMissile2 = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_GUIDED_MISSILE", RHandPos, unitLandPos.y, rotDegree1 )		   
		    LeftMissile2  = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_GUIDED_MISSILE", LHandPos, unitLandPos.y, rotDegree2 )
        end		
        
        if randVal == 1 then
            pNPCUnit:SetLockOn( LeftMissile2, 1 )
		    pNPCUnit:SetLockOn( RightMissile2, 3 )
        end		
    end
    
    if dungeonLv >= 1 then
		if pNPCUnit:AnimEventTimer_LUA( 3.133 ) then
			unitPos = pNPCUnit:GetNearestUserPos()
			unitLandPos = pX2Game:GetLineMap():GetLandPosition_LUA( unitPos )
		    
			rotDegree1 = pNPCUnit:GetRotateDegree()
			rotDegree2 = pNPCUnit:GetRotateDegree()
			
			rotDegree1.y = rotDegree1.y + 80
			rotDegree1.z = rotDegree1.z + 15
			rotDegree2.y = rotDegree2.y + 100
			rotDegree2.z = rotDegree2.z + 15
					
			pDamageEffect = pX2Game:GetDamageEffect()

			LHandPos 	= pNPCUnit:GetBonePos_LUA("Dummy15_Armor1")
			RHandPos 	= pNPCUnit:GetBonePos_LUA("Dummy19_Armor1")

			if pDamageEffect ~= nil then
				RightMissile3 = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_GUIDED_MISSILE", RHandPos, unitLandPos.y, rotDegree1 )		   
				LeftMissile3  = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_GUIDED_MISSILE", LHandPos, unitLandPos.y, rotDegree2 )
			end
	        
			if randVal == 1 then
				pNPCUnit:SetLockOn( LeftMissile3, 4 )
				pNPCUnit:SetLockOn( RightMissile3, 6 )
			end		
		end
	end
    
    if dungeonLv == 2 then
		if pNPCUnit:AnimEventTimer_LUA( 3.366 ) then
			unitPos = pNPCUnit:GetNearestUserPos()
			unitLandPos = pX2Game:GetLineMap():GetLandPosition_LUA( unitPos )
		    
			rotDegree1 = pNPCUnit:GetRotateDegree()
			rotDegree2 = pNPCUnit:GetRotateDegree()
			
			rotDegree1.y = rotDegree1.y + 65
			rotDegree1.z = rotDegree1.z + 5
			rotDegree2.y = rotDegree2.y + 115
			rotDegree2.z = rotDegree2.z + 5
					 
			pDamageEffect = pX2Game:GetDamageEffect()

			LHandPos 	= pNPCUnit:GetBonePos_LUA("Dummy12_Armor1")
			RHandPos 	= pNPCUnit:GetBonePos_LUA("Dummy18_Armor1")

			if pDamageEffect ~= nil then
				RightMissile4 = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_GUIDED_MISSILE", RHandPos, unitLandPos.y, rotDegree1 )		   
				LeftMissile4  = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_GUIDED_MISSILE", LHandPos, unitLandPos.y, rotDegree2 )
			end
	        
			if randVal == 1 then
				pNPCUnit:SetLockOn( LeftMissile4, 5 )
				pNPCUnit:SetLockOn( RightMissile4, 7 )
			end		
		end
	end
    
    if randVal == 0  and pNPCUnit:AnimEventTimer_LUA( 5.0 ) then        
        pNPCUnit:SetLockOn( LeftMissile1, 0 )
		pNPCUnit:SetLockOn( RightMissile1, 2 )
		pNPCUnit:SetLockOn( LeftMissile2, 1 )
		pNPCUnit:SetLockOn( RightMissile2, 4 )
		if dungeonLv >= 1 then
			pNPCUnit:SetLockOn( LeftMissile3, 3 )
			pNPCUnit:SetLockOn( RightMissile3, 6 )
		end
		if dungeonLv == 2 then
			pNPCUnit:SetLockOn( LeftMissile4, 5 )
			pNPCUnit:SetLockOn( RightMissile4, 7 )
		end
    end		
end

function NASOD_KING_SPELLATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	

    if pNPCUnit:AnimEventTimer_LUA( 0.766 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.5 )
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 2.03 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5.0, 2.0 )
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 4.433 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.5 )
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 0.7333 ) then
    
        bonePos = pNPCUnit:GetBonePos_LUA("Dummy1_Center")
        bonePos.y = bonePos.y + 660
        bonePos.z = bonePos.z - 1100
        
		rotDegree 	= pNPCUnit:GetRotateDegree()
			
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		if pMajorXMeshPlayer ~= nil then
		    pMajorXMeshPlayer:CreateInstance_LUA( "Nasod_King_SpellAttack_Mesh01", bonePos, rotDegree, rotDegree, 14 )
        end		    
    end
        
    if pNPCUnit:AnimEventTimer_LUA( 2.03 ) then
        SelectSpell( pKTDXApp, pX2Game, pNPCUnit )
        
        spellInx = pNPCUnit:GetInt_LUA(2)
        if spellInx == 1 then 
            pX2Game:SetWorldColor_LUA( D3DXCOLOR(1,0.2,0.2,1) )
        elseif spellInx == 2 then            
            pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,1,1) )
        elseif spellInx == 3 then
            pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 30.0, 4.0 )
        else             
            pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
        end
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 4.433 ) or pNPCUnit:AnimEventTimer_LUA( 5.033 ) or pNPCUnit:AnimEventTimer_LUA( 5.633 ) then
        SpellAttack(pKTDXApp, pX2Game, pNPCUnit)
    end
    
end

function NASOD_KING_SPELLATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )	

    pNPCUnit:SetInt_LUA(2, 0)
end

---------------------------------------------------------------------------------------------------------

function FlameEdgeAttack( pKTDXApp, pX2Game, pNPCUnit )	

    --pNPCUnit:SetInt_LUA(2, 1)
    
    boltKind = pNPCUnit:GetInt_LUA(3)
    
    pDamageEffect = pX2Game:GetDamageEffect()    

    -- FlameEdge
    unitPos = pNPCUnit:GetNearestUserPos()
	unitLandPos = pX2Game:GetLineMap():GetLandPosition_LUA( unitPos )    
    --landPos = pNPCUnit:GetLandPosition_LUA()
    rotDegree = pNPCUnit:GetRotateDegree()
    --rotDegree.y = rotDegree.y + 180

	if pDamageEffect ~= nil then
	    if boltKind == 0 then
	        vPos1 = pX2Game:GetLineMap():GetStartPosition( 1 )
	        vPos2 = pX2Game:GetLineMap():GetStartPosition( 9 )
	        vPos3 = pX2Game:GetLineMap():GetStartPosition( 23 )
	        vPos4 = pX2Game:GetLineMap():GetStartPosition( 44 )
		    pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE0", vPos1, vPos1.y, rotDegree )
		    pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE0", vPos2, vPos2.y, rotDegree )
		    pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE0", vPos3, vPos3.y, rotDegree )
		    pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE0", vPos4, vPos4.y, rotDegree )
        elseif boltKind == 1 then
            vPos1 = pX2Game:GetLineMap():GetStartPosition( 10 )
	        vPos2 = pX2Game:GetLineMap():GetStartPosition( 21 )
	        vPos3 = pX2Game:GetLineMap():GetStartPosition( 35 )	        
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE4", vPos1, vPos1.y, rotDegree )
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE4", vPos2, vPos2.y, rotDegree )
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE4", vPos3, vPos3.y, rotDegree )
        else
            vPos1 = pX2Game:GetLineMap():GetStartPosition( 11 )
	        vPos2 = pX2Game:GetLineMap():GetStartPosition( 22 )
	        vPos3 = pX2Game:GetLineMap():GetStartPosition( 38 )
	        vPos4 = pX2Game:GetLineMap():GetStartPosition( 41 )
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE4", vPos1, vPos1.y, rotDegree )
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE4", vPos2, vPos2.y, rotDegree )
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE4", vPos3, vPos3.y, rotDegree )
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FLAME_EDGE4", vPos4, vPos4.y, rotDegree )
        end		    
    end
    
    boltKind = boltKind + 1
	
	if boltKind >= 3 then
	    boltKind = 0
    end
    
    pNPCUnit:SetInt_LUA(3, boltKind)	
end

function DropStoneAttack( pKTDXApp, pX2Game, pNPCUnit )

    --pNPCUnit:SetInt_LUA(2, 2)
    
    
    dungeonLv = pX2Game:GetGameLevel()   
       
	
    if dungeonLv == 2 then
        nMaxDrop = 4
    elseif dungeonLv == 1 then
        nMaxDrop = 3
    else
        nMaxDrop = 2
    end 
    
    pDamageEffect = pX2Game:GetDamageEffect()    
    
    if pDamageEffect ~= nil then
    
        for nDrop=0, nMaxDrop do
        
            vSummonPos = pX2Game:GetLineMap():GetRandomPosition_LUA()	
            landPos = vSummonPos.y
                    
	        randVal = pNPCUnit:GetRandVal() % 2 	        
		
		    pMinorParticle = pX2Game:GetMinorParticle()
		    if pMinorParticle ~= nil then
			    pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownStoneTrap_Dust", vSummonPos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
			    if pParticle ~= nil then 
				    pParticle:SetLandPosition( landPos - 5 )
			    end
		    end
		
	        if randVal == 0 then
	            vSummonPos.y = vSummonPos.y + 1200
	            pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_MINER_FAT_SPECIAL_ATTACK1", vSummonPos, landPos )
            	pNPCUnit:PlaySound_LUA( "KingNasod_DownStone1.ogg" )

	            -- 1.25
            else
                vSummonPos.y = vSummonPos.y + 2000
	            pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_MINER_FAT_SPECIAL_ATTACK2", vSummonPos, landPos )
            	pNPCUnit:PlaySound_LUA( "KingNasod_DownStone2.ogg" )

	            -- 2.0
            end	            
        end	        
	end
end

function LightningBoltAttack( pKTDXApp, pX2Game, pNPCUnit )
    
    --pNPCUnit:SetInt_LUA(2, 3)
    
    
    
    boltKind = pNPCUnit:GetInt_LUA(3)    
    
    
    dungeonLv = pX2Game:GetGameLevel()         
	
    if dungeonLv == 2 then
        nMaxDrop = 4
    elseif dungeonLv == 1 then
        nMaxDrop = 3
    else
        nMaxDrop = 2
    end 
    
    pDamageEffect = pX2Game:GetDamageEffect()    
    
    if pDamageEffect ~= nil then
    
        for nDrop=0, nMaxDrop do
        
            vSummonPos = pX2Game:GetLineMap():GetRandomPosition_LUA()	   	       
	        
	        if boltKind == 0 then
	            pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_KING_LIGHTNINGBOLT_B", vSummonPos, vSummonPos.y )
	        else
	            pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_KING_LIGHTNINGBOLT_A", vSummonPos, vSummonPos.y )
            end	            
        end	                    
	end    
	
	boltKind = boltKind + 1
	
	if boltKind >= 3 then
	    boltKind = 0
    end
    
    pNPCUnit:SetInt_LUA(3, boltKind)	    	
	
end

function FrozenMissileAttack( pKTDXApp, pX2Game, pNPCUnit )

    --pNPCUnit:SetInt_LUA(2, 4)    
    
    boltKind = pNPCUnit:GetInt_LUA(3)    
    
    
    dungeonLv = pX2Game:GetGameLevel()   
	
    if dungeonLv == 2 then
        nMaxDrop = 4
    elseif dungeonLv == 1 then
        nMaxDrop = 3
    else
        nMaxDrop = 2
    end 
    
    pDamageEffect = pX2Game:GetDamageEffect()    
    
    if pDamageEffect ~= nil then
    
        for nDrop=0, nMaxDrop do
        
            vRot = pNPCUnit:GetRotateDegree()	
	        vRot.z = vRot.z + 225.0
            vSummonPos = pX2Game:GetLineMap():GetRandomPosition_LUA()	
            vLandPos = vSummonPos.y
            vSummonPos.x = vSummonPos.x + 750.0
            vSummonPos.y = vSummonPos.y + 750.0               	       	        
	        
	        pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_KING_FROZENMISSILE", vSummonPos, vLandPos, vRot )	    
        end	                    
	end    
end

function SelectSpell( pKTDXApp, pX2Game, pNPCUnit )

    -- 시전할 속성스킬을 선택한다.        
    spellVal = (pNPCUnit:GetRandVal() % 4)
    stepVal = (pNPCUnit:GetRandVal() % 2)
    if stepVal == 0 then
        stepVal = -1
    end
    
    
    
    bSpell = CF_SPELLATTACK( pKTDXApp, pX2Game, pNPCUnit )
    isAttr = pNPCUnit:GetFlag_LUA(spellVal)
    
    if bSpell == true and isAttr == true then
        -- 속성 스펠 시전        
        pNPCUnit:SetInt_LUA(2, spellVal+1)
        return
    else
        nextSpell = spellVal
        for i=0, 4 do
            nextSpell = nextSpell+stepVal           
            
            if nextSpell > 3 then
                nextSpell = 0
            end
            if nextSpell < 0 then
                nextSpell = 3
            end
            
            bNextSpell = pNPCUnit:GetFlag_LUA(nextSpell)
            
            if bNextSpell == true then
                -- 속성 스펠 시전
                pNPCUnit:SetInt_LUA(2, nextSpell+1)
                return
            end
        end
    end
end

function SpellAttack( pKTDXApp, pX2Game, pNPCUnit )
    
    spellKind = pNPCUnit:GetInt_LUA(2)
    
    if spellKind == 1 then
        FlameEdgeAttack( pKTDXApp, pX2Game, pNPCUnit )
    elseif spellKind == 2 then        
        FrozenMissileAttack( pKTDXApp, pX2Game, pNPCUnit )        
    elseif spellKind == 3 then        
        DropStoneAttack( pKTDXApp, pX2Game, pNPCUnit )        
    elseif spellKind == 4 then       
        LightningBoltAttack( pKTDXApp, pX2Game, pNPCUnit )        
    end        
end

function NASOD_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )

    pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_POWER_PLANT"], 999999 )
    if pUID ~= 0 then
	    pUnit = pX2Game:GetNPCUnitByUID(pUID)
	    if pUnit ~= nil and pUnit:GetNowHP() > 0 then	 
            pNPCUnit:SetNowHP_LUA( pNPCUnit:GetMaxHP() );
        end
    end
end

