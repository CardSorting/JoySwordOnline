-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 샌틸러스 호_Stage0_Sub0 클리어 조건 몬스터
--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 10.0,
	UNIT_HEIGHT		= 10.0,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Dummy_Ani_Wait.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL	= 2000,
	G_ACCEL			= 4000,
	MAX_G_SPEED		= -2000,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 0,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	USE_SLASH_TRACE		= FALSE,
	
	HEAD_BONE_NAME			= "Bip01",

	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	SHOW_ON_MINIMAP		= FALSE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "MOTOR_SUB_START",	},
	{ STATE_NAME = "MOTOR_SUB_WAIT",	},
	{ STATE_NAME = "MOTOR_SUB_DYING",	},
	
	START_STATE	= "MOTOR_SUB_START",
	WAIT_STATE = "MOTOR_SUB_WAIT",
	
	DYING_LAND_FRONT	= "MOTOR_SUB_DYING",
	DYING_LAND_BACK		= "MOTOR_SUB_DYING",
	DYING_SKY			= "MOTOR_SUB_DYING",

	REVENGE_ATTACK	= "",	
}
--------------------------------------------------------------------------
INIT_AI = 
{
	NO_BRAIN = TRUE,
}
--------------------------------------------------------------------------
MOTOR_SUB_START =
{
	SHOW				= FALSE,
	ANIM_NAME			= "Wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	NEVER_MOVE		= TRUE,
	INVINCIBLE		= { 0, 100, },
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"MOTOR_SUB_WAIT",		"CT_MOTOR_SUB_WAIT"				},
	},
	
	CT_MOTOR_SUB_WAIT = 
	{
		STATE_TIME_OVER			= 0.1,
	},
}

--------------------------------------------------------------------------
MOTOR_SUB_WAIT = 
{
	SHOW					= FALSE,
	ANIM_NAME			= "Wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION			= FALSE,
	LAND_CONNECT	= FALSE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE		= TRUE,
	INVINCIBLE		= { 0, 100, },
}

--------------------------------------------------------------------------
MOTOR_SUB_DYING = 
{
	SHOW						= FALSE,
	ANIM_NAME				= "Wait",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= TRUE,

	INVINCIBLE	= { 0, 100, }, 		
	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------
