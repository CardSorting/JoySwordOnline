-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 550.0,
	UNIT_HEIGHT		= 650.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.2,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{	
     "Nasod_Inspector_AttackAB_Shot.ogg",
     "Nasod_Inspector_AttackD_Laser.ogg",
	 "Nasod_Inspector_AttackE_Shot.ogg",
	 "Nasod_Inspector_SpAttack_Explosion.ogg",
	 "Nasod_Inspector_State_Effect.ogg",
	 "Nasod_Element_HitGround.ogg",
	 "BreakGround.ogg",
	 "Nasod_Inspector_Start.ogg",
	 "Nasod_Inspector_AttackA.ogg",
	 "Nasod_Inspector_AttackC.ogg",
	 "Nasod_Inspector_AttackD.ogg",
	 "Nasod_Inspector_AttackE.ogg",
	 "Nasod_Inspector_DashReady.ogg",
	 "Nasod_Inspector_DashAttack.ogg",
	 "Nasod_Inspector_SpAttack.ogg",
	 "Nasod_Inspector_States.ogg",
	 "Nasod_Inspector_Dying.ogg",
	 "Wally9Armor_DeathExplosion_2.ogg",
	 
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Nasod_Inspector.x",
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
	IMMUNITY_TIME_STOP = TRUE,
	
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,

	DRAW_SMALL_MP_BAR		= TRUE,
		
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	----MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_METAL"],
	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
    BOSS_GAGE_FACE_TEX_PIECE	= "Nasod_Inspector",
    BOSS_NAME_TEX				= "HQ_BOSS_Nasod_Inspector.dds",
    
    DIE_FLY					= 0,	
	
}

INIT_STATE = 
{
	{ STATE_NAME = "NASOD_INSPECTOR_START",																												},
	
	{ STATE_NAME = "NASOD_INSPECTOR_WAIT",																												},
	
	{ STATE_NAME = "NASOD_INSPECTOR_STATE_ANGRY",							LUA_STATE_START_FUNC = "NASOD_INSPECTOR_STATE_ANGRY_START_FUNC",			},
	
	{ STATE_NAME = "NASOD_INSPECTOR_STATE_N",								LUA_STATE_START_FUNC = "NASOD_INSPECTOR_STATE_N_START_FUNC",				},

	{ STATE_NAME = "NASOD_INSPECTOR_STATE_A",								LUA_STATE_START_FUNC = "NASOD_INSPECTOR_STATE_A_START_FUNC",				},
	
	{ STATE_NAME = "NASOD_INSPECTOR_STATE_B",								LUA_STATE_START_FUNC = "NASOD_INSPECTOR_STATE_B_START_FUNC",				},

	{ STATE_NAME = "NASOD_INSPECTOR_ATTACK_A",								LUA_FRAME_MOVE_FUNC = "NASOD_INSPECTOR_ATTACK_A_FRAME_MOVE",	
																			STATE_COOL_TIME	= 5, 														},
																			
	{ STATE_NAME = "NASOD_INSPECTOR_ATTACK_B",								STATE_COOL_TIME	= 9, 														},
																			
	{ STATE_NAME = "NASOD_INSPECTOR_ATTACK_C",								LUA_FRAME_MOVE_FUNC = "NASOD_INSPECTOR_ATTACK_C_FRAME_MOVE",	
																			STATE_COOL_TIME	= 5,														},

	{ STATE_NAME = "NASOD_INSPECTOR_ATTACK_C_ANGRY",						LUA_FRAME_MOVE_FUNC = "NASOD_INSPECTOR_ATTACK_C_ANGRY_FRAME_MOVE",	
																			STATE_COOL_TIME	= 3,														},		
																			
	{ STATE_NAME = "NASOD_INSPECTOR_ATTACK_D_BLUE",							STATE_COOL_TIME	= 9, 														},	
																			
	{ STATE_NAME = "NASOD_INSPECTOR_ATTACK_D_RED",							STATE_COOL_TIME	= 9, 														},	

	{ STATE_NAME = "NASOD_INSPECTOR_ATTACK_E",								LUA_FRAME_MOVE_FUNC = "NASOD_INSPECTOR_ATTACK_E_FRAME_MOVE",
																			STATE_COOL_TIME = 5, 														},
		

	{ STATE_NAME = "NASOD_INSPECTOR_DASH_ATTACK_READY",						STATE_COOL_TIME	= 5, 														},
	{ STATE_NAME = "NASOD_INSPECTOR_DASH_ATTACK",																										},	

	{ STATE_NAME = "NASOD_INSPECTOR_SP_ATTACK",								LUA_STATE_START_FUNC = "NASOD_INSPECTOR_SP_ATTACK_START_FUNC",				},



	--리액션 관련
	{ STATE_NAME = "NASOD_INSPECTOR_DAMAGE_FRONT",							LUA_FRAME_MOVE_FUNC = "NASOD_INSPECTOR_DAMAGE_FRONT_FRAME_MOVE"				},
	--{ STATE_NAME = "NASOD_INSPECTOR_DAMAGE_BACK",							LUA_FRAME_MOVE_FUNC = "NASOD_INSPECTOR_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "NASOD_INSPECTOR_DYING",									LUA_STATE_START_FUNC = "NASOD_INSPECTOR_DYING_STATE_START",},

	COMMON_FRAME_FUNC			= "NASOD_INSPECTOR_COMMON_FRAME_MOVE",

	START_STATE					= "NASOD_INSPECTOR_START",
	WAIT_STATE					= "NASOD_INSPECTOR_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "NASOD_INSPECTOR_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "NASOD_INSPECTOR_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_FRONT		= "NASOD_INSPECTOR_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "NASOD_INSPECTOR_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_FRONT		= "NASOD_INSPECTOR_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "NASOD_INSPECTOR_DAMAGE_FRONT",
	FLY_DAMAGE_FRONT			= "NASOD_INSPECTOR_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "NASOD_INSPECTOR_DAMAGE_FRONT",
	SMALL_DAMAGE_AIR			= "NASOD_INSPECTOR_DAMAGE_FRONT",	
	BIG_DAMAGE_AIR				= "NASOD_INSPECTOR_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "NASOD_INSPECTOR_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR_LANDING		= "NASOD_INSPECTOR_DAMAGE_FRONT",
	UP_DAMAGE					= "NASOD_INSPECTOR_DAMAGE_FRONT",

	DYING_LAND_FRONT			= "NASOD_INSPECTOR_DYING",
	DYING_LAND_BACK				= "NASOD_INSPECTOR_DYING",
	DYING_SKY					= "NASOD_INSPECTOR_DYING",
	
	DAMAGE_REVENGE				= "NASOD_INSPECTOR_WAIT",
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 250,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 6000,		-- cm
		TARGET_LOST_RANGE			= 7000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
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
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0, --50,		
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
		
		LINE_END_RANGE		= 80,	-- cm
	},

}




NASOD_INSPECTOR_START = 
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0					= { 0.047, "Nasod_Inspector_Start.ogg" },
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"NASOD_INSPECTOR_WAIT",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_Start", 0,	
	},

}

NASOD_INSPECTOR_STATE_ANGRY = 
{
	ANIM_NAME					= "State",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	

	SOUND_PLAY0					= { 0.106, "Nasod_Inspector_States.ogg" },
	SOUND_PLAY1					= { 1.047, "Nasod_Inspector_State_Effect.ogg" },
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,	
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15214,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"NASOD_INSPECTOR_WAIT",		},
	},
}

NASOD_INSPECTOR_STATE_N = 
{
	ANIM_NAME					= "State",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	

	SOUND_PLAY0					= { 0.106, "Nasod_Inspector_States.ogg" },
	SOUND_PLAY1					= { 1.047, "Nasod_Inspector_State_Effect.ogg" },
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"NASOD_INSPECTOR_WAIT",		},
	},
}

NASOD_INSPECTOR_STATE_A = 
{
	ANIM_NAME					= "State",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	

	SOUND_PLAY0					= { 0.106, "Nasod_Inspector_States.ogg" },
	SOUND_PLAY1					= { 1.047, "Nasod_Inspector_State_Effect.ogg" },
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,	
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15210,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 7, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"NASOD_INSPECTOR_WAIT",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_STATE_A", 0,
	},

}

NASOD_INSPECTOR_STATE_B = 
{
	ANIM_NAME					= "State",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	

	SOUND_PLAY0					= { 0.106, "Nasod_Inspector_States.ogg" },
	SOUND_PLAY1					= { 1.047, "Nasod_Inspector_State_Effect.ogg" },
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,	
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15209,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 7, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"NASOD_INSPECTOR_WAIT",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_STATE_B", 0,
	},

}





NASOD_INSPECTOR_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
		
	SUPER_ARMOR					= TRUE,	
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_STATE_ANGRY",				"CT_NASOD_INSPECTOR_STATE_ANGRY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"NASOD_INSPECTOR_STATE_N",					"CF_NASOD_INSPECTOR_STATE_N",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"NASOD_INSPECTOR_STATE_A",					"CF_NASOD_INSPECTOR_STATE_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"NASOD_INSPECTOR_STATE_B",					"CF_NASOD_INSPECTOR_STATE_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_DASH_ATTACK_READY",		"CT_NASOD_INSPECTOR_DASH_ATTACK_READY_ANGRY",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"NASOD_INSPECTOR_ATTACK_A",					"CF_NASOD_INSPECTOR_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"NASOD_INSPECTOR_ATTACK_E",					"CF_NASOD_INSPECTOR_ATTACK_E",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_C_ANGRY",			"CT_NASOD_INSPECTOR_ATTACK_C_ANGRY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_DASH_ATTACK_READY",		"CT_NASOD_INSPECTOR_DASH_ATTACK_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_SP_ATTACK",				"CT_NASOD_INSPECTOR_SP_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_C",					"CT_NASOD_INSPECTOR_ATTACK_C",	},


		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_A",					"CT_NASOD_INSPECTOR_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_B",					"CT_NASOD_INSPECTOR_ATTACK_B",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_D_BLUE",			"CT_NASOD_INSPECTOR_ATTACK_D_BLUE",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_D_RED",				"CT_NASOD_INSPECTOR_ATTACK_D_RED",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_E",					"CT_NASOD_INSPECTOR_ATTACK_E",	},
	},

	CT_NASOD_INSPECTOR_STATE_ANGRY = 
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 20,
		FLAG_FALSE					= 2,
		RATE						= 100,
	},
	
	CT_NASOD_INSPECTOR_DASH_ATTACK_READY_ANGRY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 700,
		DISTANCE_TO_TARGET_NEAR		= 6000,
		MY_HP_LESS_THAN_PERCENT		= 20,
		RATE						= 60,
	},
	
	CT_NASOD_INSPECTOR_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		DISTANCE_TO_TARGET_NEAR		= 4000,
		MY_HP_MORE_THAN_PERCENT		= 20,
		RATE						= 30,
	},

	CT_NASOD_INSPECTOR_SP_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		MY_MP_MORE_THAN_PERCENT  	= 80,
		RATE						= 100,
	},

	CT_NASOD_INSPECTOR_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
	},

	CT_NASOD_INSPECTOR_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		DISTANCE_TO_TARGET_NEAR		= 2000,		
		RATE						= 50,
	},

	CT_NASOD_INSPECTOR_ATTACK_C = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		MY_HP_MORE_THAN_PERCENT		= 20,
		RATE						= 30,
	},
	
	CT_NASOD_INSPECTOR_ATTACK_C_ANGRY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		MY_HP_LESS_THAN_PERCENT		= 20,
		RATE						= 80,
	},

	CT_NASOD_INSPECTOR_ATTACK_D_BLUE = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1500,	
		FLAG_TRUE					= 0,
		RATE						= 30,
	},
	
	CT_NASOD_INSPECTOR_ATTACK_D_RED = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1500,	
		FLAG_TRUE					= 1,
		RATE						= 30,
	},
	
	CT_NASOD_INSPECTOR_ATTACK_E = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		DISTANCE_TO_TARGET_NEAR		= 6000,
		RATE						= 20,
	},
}


NASOD_INSPECTOR_DASH_ATTACK_READY = 
{
	ANIM_NAME					= "DashReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X						= 100,

	VIEW_TARGET					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 0.059, "Nasod_Inspector_DashReady.ogg" },

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_INSPECTOR_DASH_ATTACK",						},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_DashReady", 0,	
	},
}



NASOD_INSPECTOR_DASH_ATTACK = 
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	PASSIVE_SPEED_X						= 30,
	--SPEED_X						= 0,
	--SPEED_Y						= 0,	

	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.035, "Nasod_Inspector_DashAttack.ogg" },

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_INSPECTOR_WAIT",									},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_DashAttack", 0,	
	},
	
	ATTACK_TIME0				= { 0.367, 0.45, },
	
	DISABLE_ATTACK_BOX = 
	{
		"LHand1",
		"LHand2",
		"LHand3",
		"LHand4",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_MAGIC"],
		HIT_TYPE		= HIT_TYPE["HT_METAL_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		CAN_REVENGE				= FALSE,	
		
		DAMAGE = 
		{
			MAGIC		= 1.0,
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
						2,
					},
				},
			},
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,		
	},

}



NASOD_INSPECTOR_ATTACK_A =
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,


	SOUND_PLAY0					= { 0.035, "Nasod_Inspector_AttackA.ogg" },
	SOUND_PLAY1					= { 1.16, "Nasod_Inspector_AttackAB_Shot.ogg" },
	
    SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_INSPECTOR_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_AttackA", 0,	
	},
}

-- ATTACK_B 이지만 AttackE 모션을 사용함
NASOD_INSPECTOR_ATTACK_B =
{
	ANIM_NAME					= "AttackE",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0					= { 0.035, "Nasod_Inspector_AttackE.ogg" },
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_INSPECTOR_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_AttackB", 0,	
	},
	
	--[[
				ATTACK_TIME0				= { 0.72, 0.8, },
				
				DAMAGE_DATA = 
				{
					DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
					HIT_TYPE		= HIT_TYPE["HT_METAL_PUNCH_HIT"],
					REACT_TYPE		= REACT_TYPE["RT_DOWN"],
					
					DAMAGE = 
					{
						PHYSIC		= 1.0,
					},

					BACK_SPEED_X			= 0,
					BACK_SPEED_Y			= 0,
					
					CAMERA_CRASH_GAP		= 10.0,	
					CAMERA_CRASH_TIME		= 0.3,		
				},
	--]]
	
}


NASOD_INSPECTOR_ATTACK_C =
{
	ANIM_NAME					= "AttackC",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	
	SOUND_PLAY0					= { 0.035, "Nasod_Inspector_AttackC.ogg" },
	SOUND_PLAY1					= { 0.67, "Nasod_Element_HitGround.ogg" },
	SOUND_PLAY2					= { 2.015, "BreakGround.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	

	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_INSPECTOR_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_AttackC", 0,
	},
	
	ATTACK_TIME0				= { 0.54,	 0.8, 	},
	ATTACK_TIME1				= { 1.92, 	2.015, 	},
	
	
	DISABLE_ATTACK_BOX = 
	{
		"LHand4",
		"Head1",
		"LowBody1",	
		"UpBody1",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_METAL_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		CAN_REVENGE				= FALSE,	
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 3200,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,		
	},
	
	DAMAGE_DATA_NEXT = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_METAL_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		CAN_REVENGE				= FALSE,	
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
		BACK_SPEED_X			= 2000,
		BACK_SPEED_Y			= -1000,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,		
	},
}

NASOD_INSPECTOR_ATTACK_C_ANGRY =
{
	ANIM_NAME					= "AttackC",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	
	SOUND_PLAY0					= { 0.035, "Nasod_Inspector_AttackC.ogg" },
	SOUND_PLAY1					= { 0.67, "Nasod_Element_HitGround.ogg" },
	SOUND_PLAY2					= { 2.015, "BreakGround.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_INSPECTOR_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_AttackC", 0,
	},
	
	ATTACK_TIME0				= { 0.54,	 0.69, 	},
	ATTACK_TIME1				= { 1.92, 	2.015, 	},
	
	
	DISABLE_ATTACK_BOX = 
	{
		"LHand4",
		"Head1",
		"LowBody1",	
		"UpBody1",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_METAL_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		CAN_REVENGE				= FALSE,	
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 1600,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,		
	},
	
	DAMAGE_DATA_NEXT = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_METAL_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		CAN_REVENGE				= FALSE,	
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
		BACK_SPEED_X			= 2000,
		BACK_SPEED_Y			= -1000,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,		
	},
}

NASOD_INSPECTOR_ATTACK_D_BLUE =
{
	ANIM_NAME					= "AttackD",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0					= { 0.059, "Nasod_Inspector_AttackD.ogg" },
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_INSPECTOR_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_AttackD_Blue", 0,
	},
}

NASOD_INSPECTOR_ATTACK_D_RED =
{
	ANIM_NAME					= "AttackD",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0					= { 0.059, "Nasod_Inspector_AttackD.ogg" },
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_INSPECTOR_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_AttackD_Red", 0,
	},
}
-- A 모션을 쓰는 또 다른 공격
NASOD_INSPECTOR_ATTACK_E =
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0					= { 0.035, "Nasod_Inspector_AttackA.ogg" },
	SOUND_PLAY1					= { 1.16, "Nasod_Inspector_AttackAB_Shot.ogg" },
	
	
    SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	

	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_INSPECTOR_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_AttackE", 0,	
	},
	
}

NASOD_INSPECTOR_SP_ATTACK = 
{
	ANIM_NAME					= "SpAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0					= { 0.071, "Nasod_Inspector_SpAttack.ogg" },
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_INSPECTOR_WAIT",									},	
	},
	
	DISABLE_ATTACK_BOX = 
	{
		"LHand2",
		"LHand3",
		"LHand4",
		"Head1",
		"LowBody1",	
		"UpBody1",
		"RHand1",
		"RHand2",
	},
	
	ATTACK_TIME0				= { 0.96, 1.02, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_METAL_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		CAN_REVENGE				= FALSE,	
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},

		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,		
	},

	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_SpecialAttack", 0,
	},
}



NASOD_INSPECTOR_DAMAGE_FRONT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_STATE_ANGRY",				"CT_NASOD_INSPECTOR_STATE_ANGRY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"NASOD_INSPECTOR_STATE_N",					"CF_NASOD_INSPECTOR_STATE_N",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"NASOD_INSPECTOR_STATE_A",					"CF_NASOD_INSPECTOR_STATE_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"NASOD_INSPECTOR_STATE_B",					"CF_NASOD_INSPECTOR_STATE_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_DASH_ATTACK_READY",		"CT_NASOD_INSPECTOR_DASH_ATTACK_READY_ANGRY",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"NASOD_INSPECTOR_ATTACK_A",					"CF_NASOD_INSPECTOR_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"NASOD_INSPECTOR_ATTACK_E",					"CF_NASOD_INSPECTOR_ATTACK_E",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_C_ANGRY",			"CT_NASOD_INSPECTOR_ATTACK_C_ANGRY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_DASH_ATTACK_READY",		"CT_NASOD_INSPECTOR_DASH_ATTACK_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_SP_ATTACK",				"CT_NASOD_INSPECTOR_SP_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_C",					"CT_NASOD_INSPECTOR_ATTACK_C",	},


		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_A",					"CT_NASOD_INSPECTOR_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_B",					"CT_NASOD_INSPECTOR_ATTACK_B",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_D_BLUE",			"CT_NASOD_INSPECTOR_ATTACK_D_BLUE",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_D_RED",				"CT_NASOD_INSPECTOR_ATTACK_D_RED",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"NASOD_INSPECTOR_ATTACK_E",					"CT_NASOD_INSPECTOR_ATTACK_E",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"NASOD_INSPECTOR_WAIT",									},	
	},
	
	
	CT_NASOD_INSPECTOR_STATE_ANGRY = 
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 20,
		FLAG_FALSE					= 2,
		RATE						= 100,
	},
	
	CT_NASOD_INSPECTOR_DASH_ATTACK_READY_ANGRY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 700,
		DISTANCE_TO_TARGET_NEAR		= 6000,
		MY_HP_LESS_THAN_PERCENT		= 20,
		RATE						= 60,
	},
	
	CT_NASOD_INSPECTOR_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		DISTANCE_TO_TARGET_NEAR		= 4000,
		MY_HP_MORE_THAN_PERCENT		= 20,
		RATE						= 30,
	},

	CT_NASOD_INSPECTOR_SP_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		MY_MP_MORE_THAN_PERCENT  	= 80,
		RATE						= 100,
	},

	CT_NASOD_INSPECTOR_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
	},

	CT_NASOD_INSPECTOR_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 700,
		DISTANCE_TO_TARGET_NEAR		= 2000,		
		RATE						= 50,
	},

	CT_NASOD_INSPECTOR_ATTACK_C = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		MY_HP_MORE_THAN_PERCENT		= 20,
		RATE						= 30,
	},
	
	CT_NASOD_INSPECTOR_ATTACK_C_ANGRY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		MY_HP_LESS_THAN_PERCENT		= 20,
		RATE						= 80,
	},

	CT_NASOD_INSPECTOR_ATTACK_D_BLUE = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1500,	
		FLAG_TRUE					= 0,
		RATE						= 30,
	},
	
	CT_NASOD_INSPECTOR_ATTACK_D_RED = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1500,	
		FLAG_TRUE					= 1,
		RATE						= 30,
	},
	
	CT_NASOD_INSPECTOR_ATTACK_E = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		DISTANCE_TO_TARGET_NEAR		= 6000,
		RATE						= 20,
	},
}


NASOD_INSPECTOR_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.825, "Nasod_Inspector_Dying.ogg" },
	SOUND_PLAY1					= { 2.247, "Wally9Armor_DeathExplosion_2.ogg" },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nasod_Inspector_Dying", 0,
	},
}



function NASOD_INSPECTOR_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end





function NASOD_INSPECTOR_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end


----------------------------------------------------------------------

function NASOD_INSPECTOR_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
		pDamageEffect = pX2Game:GetDamageEffect()
		landPos = pNPCUnit:GetLandPosition_LUA()
		pos 	= pNPCUnit:GetPos()
		pos.x	= pos.x - 800
		pos.y 	= pos.y + 1500
		
		for val = 0, 4, 1 do
			pos.x = pos.x + 400
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_INSPECTOR_ATTACK_A_MISSILE", pos, landPos.y )
			pos.y = pos.y + 200
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_INSPECTOR_ATTACK_A_MISSILE", pos, landPos.y )			
		end
	end
	
end

--------------------------------------------------------------------

function NASOD_INSPECTOR_ATTACK_D_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    	
end

---------------------------------------------------------------------
function NASOD_INSPECTOR_ATTACK_E_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	-- if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
		-- pDamageEffect 	= pX2Game:GetDamageEffect()
		-- myLandPos		= pNPCUnit:GetLandPosition_LUA()
		-- myPos 			= pNPCUnit:GetPos()
	
		-- myPos.y 		= myPos.y + 2000
	
		-- startPosX 		= 0
		-- endPosX 		= 0
	
		-- bCreateDamageEffect		= false
	
		-- for index = 0, 3, 1 do
			
			--lineGroup = pX2Game:GetLineMap():GetLineGroup( index )
			
			--if nil ~= lineGroup then
				
				
				
				-- if true == pNPCUnit:GetIsRight() then
					
					-- if myLandPos.x < lineGroup:GetEndPos().x then
					
						-- endPosX		= lineGroup:GetEndPos().x
						
						-- if myLandPos.x > lineGroup:GetStartPos().x then
							-- startPosX = myLandPos.x
						-- else
							-- startPosX = lineGroup:GetStartPos().x
						-- end

						-- bCreateDamageEffect = true
						
					-- end	
									
				-- else
					
					-- if myLandPos.x > lineGroup:GetStartPos().x then
					
						-- startPosX 	= lineGroup:GetStartPos().x
											
						-- if myLandPos.x < lineGroup:GetEndPos().x then
							-- endPosX = myLandPos.x
						-- else
							-- endPosX = lineGroup:GetEndPos().x
						-- end

						-- bCreateDamageEffect = true
						
					-- end	
					
				-- end
			
				-- if 8 == index then
				
					-- if true == pNPCUnit:GetIsRight() then
						-- startPosX 	= startPosX + 600
						-- endPosX		= endPosX - 30
					-- else
						-- startPosX	= startPosX + 30
						-- endPosX		= endPosX - 600
					-- end
					
				-- end
				
				-- if true == bCreateDamageEffect then
					
					-- bCreateDamageEffect = false
					
					-- while startPosX < endPosX do
						-- energyBallPos 	= myPos
						-- energyBallPos.x = startPosX
						-- energyBallPos.y	= myPos.y + ( pNPCUnit:GetRandVal() % 200 )

						-- pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_INSPECTOR_ATTACK_E_MISSILE", energyBallPos, lineGroup:GetStartPos().y )
						-- startPosX = startPosX + 200
					-- end
					
				-- end
			
			--end
			
		-- end
		
	-- end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
		pDamageEffect 	= pX2Game:GetDamageEffect()
		landPos 		= pNPCUnit:GetLandPosition_LUA()
		pos 			= pNPCUnit:GetPos()
		
		pos.y 	= pos.y + 2000
		
		startPosX 	= 0
		endPosX 	= 0
		
		if true == pNPCUnit:GetIsRight() then
			startPosX 	= landPos.x + 700
			endPosX		= pNPCUnit:GetLineGroupEndPos().x - 30
		else
			startPosX	= pNPCUnit:GetLineGroupStartPos().x + 30
			endPosX		= landPos.x - 700
		end
		
		while startPosX < endPosX do
			energyBallPos 	= pos
			energyBallPos.x = startPosX
			energyBallPos.y	= pos.y + ( pNPCUnit:GetRandVal() % 5 ) * 200
			
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_INSPECTOR_ATTACK_E_MISSILE_ON_SECOND_FLOOR", energyBallPos, landPos.y )
			startPosX = startPosX + 300
			energyBallPos.x	= startPosX 
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_INSPECTOR_ATTACK_E_MISSILE_ON_FIRST_FLOOR", energyBallPos, landPos.y )
			startPosX = startPosX + 300
		end
		
	end
	
end

-------------------------------------------------------------------

function NASOD_INSPECTOR_STATE_ANGRY_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	pEffectSet		= pX2Game:GetEffectSet()
	
	hEffectState	= pNPCUnit:GetEffectSet_LUA( 0 )
	if nil ~= hEffectState then
		pEffectSet:StopEffectSet_LUA( hEffectState )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end
	
	pNPCUnit:ReInitAtkAndDef_LUA()
	pNPCUnit:SetAtkPhysic_LUA( pNPCUnit:GetAtkPhysic_LUA() * 1.2 )
	pNPCUnit:SetAtkMagic_LUA( pNPCUnit:GetAtkMagic_LUA() * 1.2 )
	pNPCUnit:SetDefaultAnimSpeed_LUA( pNPCUnit:GetDefaultAnimSpeed_LUA() * 1.5 )
	
	pNPCUnit:SetFlag_LUA( 0, TRUE )
	pNPCUnit:SetFlag_LUA( 1, TRUE )
	pNPCUnit:SetFlag_LUA( 2, TRUE )
	
end

--------------------------------------------------------------------
function CF_NASOD_INSPECTOR_STATE_N( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetInt_LUA(0) == 1 and pNPCUnit:GetInt_LUA(1) == 1 then
		pNPCUnit:SetInt_LUA(1, 2)
		return true
	elseif pNPCUnit:GetInt_LUA(0) == 3 and pNPCUnit:GetInt_LUA(1) == 3 then
		pNPCUnit:SetInt_LUA(1, 4)
		return true
	end
	return false
end
function CF_NASOD_INSPECTOR_STATE_A( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetInt_LUA(0) == 2 and pNPCUnit:GetInt_LUA(1) == 2 then
		pNPCUnit:SetInt_LUA(1, 3)
		return true
	end
	return false
end
function CF_NASOD_INSPECTOR_STATE_B( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetInt_LUA(0) == 4 and pNPCUnit:GetInt_LUA(1) == 4 then
		pNPCUnit:SetInt_LUA(1, 5)
		return true
	end
	return false
end

--------------------------------------------------------------------
function NASOD_INSPECTOR_STATE_N_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )

	pEffectSet		= pX2Game:GetEffectSet()
	hEffectState	= pNPCUnit:GetEffectSet_LUA( 0 )
	
	if nil ~= hEffectState then
		pEffectSet:StopEffectSet_LUA( hEffectState )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end

	pNPCUnit:ReInitAtkAndDef_LUA()
	pNPCUnit:SetAtkPhysic_LUA( pNPCUnit:GetAtkPhysic_LUA() * 0.6 )
	pNPCUnit:SetDefMagic_LUA( pNPCUnit:GetDefMagic_LUA() * 0.6 )    --------
	
	pNPCUnit:SetReflectDamageOnPhysicalDamage_LUA( FALSE )
	pNPCUnit:SetReflectDamageOnMagicalDamage_LUA( FALSE )

	healHP = pNPCUnit:GetNowHP() + pNPCUnit:GetMaxHP() * 0.1        ---피체우기 
	
	if healHP > pNPCUnit:GetMaxHP() then
		healHP = pNPCUnit:GetMaxHP()
	end
	
	pNPCUnit:SetNowHP_LUA( healHP )
end

--------------------------------------------------------------------
function NASOD_INSPECTOR_STATE_A_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )

	pEffectSet		= pX2Game:GetEffectSet()
	hEffectState	= pNPCUnit:GetEffectSet_LUA( 0 )
	
	if nil ~= hEffectState then
		pEffectSet:StopEffectSet_LUA( hEffectState )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end
	
	hEffect			= pEffectSet:PlayEffectSet_LUA( "EffectSet_Inspector_LED_A", pNPCUnit )
	
	if nil ~= hEffect then
		pNPCUnit:SetEffectSet_LUA( 0, hEffect )
	end
	
	pNPCUnit:ReInitAtkAndDef_LUA()
	pNPCUnit:SetAtkPhysic_LUA( pNPCUnit:GetAtkPhysic_LUA() * 1.0 )                 ---데미지 
	pNPCUnit:SetDefMagic_LUA( pNPCUnit:GetDefMagic_LUA() * 5.0 )				  ----방어 
	
	healHP = pNPCUnit:GetNowHP() + pNPCUnit:GetMaxHP() * 0.2						----회복 체력
	
	if healHP > pNPCUnit:GetMaxHP() then
		healHP = pNPCUnit:GetMaxHP()
	end
	
	pNPCUnit:SetNowHP_LUA( healHP )
	
	pNPCUnit:SetFlag_LUA( 0, TRUE )
	pNPCUnit:SetFlag_LUA( 1, FALSE )
end
-----------------------------------------------------------------------
function NASOD_INSPECTOR_STATE_B_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	pEffectSet		= pX2Game:GetEffectSet()
	hEffectState	= pNPCUnit:GetEffectSet_LUA( 0 )
	
	if nil ~= hEffectState then
		pEffectSet:StopEffectSet_LUA( hEffectState )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end
	
	hEffect			= pEffectSet:PlayEffectSet_LUA( "EffectSet_Inspector_LED_B", pNPCUnit )
	
	if nil ~= hEffect then
		pNPCUnit:SetEffectSet_LUA( 0, hEffect )
	end
	
	pNPCUnit:ReInitAtkAndDef_LUA()
	pNPCUnit:SetAtkMagic_LUA( pNPCUnit:GetAtkMagic_LUA() * 1.0 )                 ---데미지 
	pNPCUnit:SetDefPhysic_LUA( pNPCUnit:GetDefPhysic_LUA() * 5.0 )               ----방어 
	
	healHP = pNPCUnit:GetNowHP() + pNPCUnit:GetMaxHP() * 0.2					---회복 체력 
	
	if healHP > pNPCUnit:GetMaxHP() then
		healHP = pNPCUnit:GetMaxHP()
	end
	
	pNPCUnit:SetNowHP_LUA( healHP )
	
	pNPCUnit:SetFlag_LUA( 0, FALSE )
	pNPCUnit:SetFlag_LUA( 1, TRUE )
end

-------------------------------------------------------------
function NASOD_INSPECTOR_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetFlag_LUA( 2 ) then
		pNPCUnit:SetUseWorldColor( false )
		local unitColor = pNPCUnit:GetColor()
		
		unitColor.g = 0
		unitColor.b = 0
		pNPCUnit:SetColor( unitColor )	
	end		

	local fHpPercent = pNPCUnit:GetNowHP()/pNPCUnit:GetMaxHP()
	
	if fHpPercent >= 0.7 then                          ----0.8 까지는 일반 
		if pNPCUnit:GetInt_LUA(0) < 1 then
			pNPCUnit:SetInt_LUA(0, 1)
			pNPCUnit:SetInt_LUA(1, 1)
		end
	elseif fHpPercent >= 0.5 then                       -----0.8~0.6 마공 방어 높은 상태   
		if pNPCUnit:GetInt_LUA(0) < 2 then
			pNPCUnit:SetInt_LUA(0, 2)
			pNPCUnit:SetInt_LUA(1, 2)
		end
	elseif fHpPercent >= 0.4 then						------0.6~0.4 일반 상태 													
		if pNPCUnit:GetInt_LUA(0) < 3 then
			pNPCUnit:SetInt_LUA(0, 3)
			pNPCUnit:SetInt_LUA(1, 3)
		end
	elseif fHpPercent >= 0.2 then					-------------0.4~0.2 물공 상태 
		if pNPCUnit:GetInt_LUA(0) < 4 then
			pNPCUnit:SetInt_LUA(0, 4)
			pNPCUnit:SetInt_LUA(1, 4)
		end
	end

end

-----------------------------------------------------------------------------
function NASOD_INSPECTOR_ATTACK_C_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
	if pNPCUnit:AnimEventTimer_LUA( 1.92 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
	end
	
end

-----------------------------------------------------------------------------
function NASOD_INSPECTOR_ATTACK_C_ANGRY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
	if pNPCUnit:AnimEventTimer_LUA( 1.92 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
	end
	
end

-------------------------------------------------------------------------------
function NASOD_INSPECTOR_SP_ATTACK_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	pNPCUnit:SetNowMP(0)
	
end

----------------------------------------------------------------------------------

function CF_NASOD_INSPECTOR_ATTACK_A( pKTDXApp, pX2Game, pNPCUnit )

    local vPosLeft	= pX2Game:GetLineMap():GetStartPosition( 5 )
    local vPosRight	= pX2Game:GetLineMap():GetStartPosition( 1 )
    local vPosNPC	= pNPCUnit:GetPos()
    
    -- if pX2Game:AnyUserUnitInRange( vPosNPC, 1200 ) then
    
		if pX2Game:AnyUserUnitInRange( vPosLeft, 200 ) then
			return true
		elseif pX2Game:AnyUserUnitInRange( vPosRight, 200 ) then
    		return true
		end
		
	--end   
		
	return false

end

----------------------------------------------------------------------------------

function CF_NASOD_INSPECTOR_ATTACK_E( pKTDXApp, pX2Game, pNPCUnit )

    local vPosLeft	= pX2Game:GetLineMap():GetStartPosition( 5 )
    local vPosRight	= pX2Game:GetLineMap():GetStartPosition( 1 )
    
    if pX2Game:AnyUserUnitInRange( vPosLeft, 150 ) then
		return true
	elseif pX2Game:AnyUserUnitInRange( vPosRight, 150 ) then
    	return true
	end
	
	return false

end

------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end

