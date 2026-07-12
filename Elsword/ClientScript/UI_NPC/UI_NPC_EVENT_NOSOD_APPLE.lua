-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




INIT = 
{
	MODEL_NAME				= "UI_NPC_APPLE.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	--ANIM_XET_NAME			= "UI_NPC_APPLE_MISS_ELIOS.XET",
	--ANIM_XET_NAME			= "UI_NPC_APPLE_MISS_ELIOS_SILVER.XET", -- 은관
	ANIM_XET_NAME			= "UI_NPC_APPLE_MISS_ELIOS_GOLD.XET", -- 금관
			
	WAIT_STATE_ID			= "EVENT_APPLE_WAIT",	
	COME_IN_STATE_ID		= "EVENT_APPLE_COME_IN",

	POS						= {330, -170, 0},
	ROTATE					= { 0 , 0 , 0 },
	SCALE					= { 0.9, 0.9, 0.9, },
}

EVENT_APPLE_WAIT = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	POS						= {330, -170, 0},
	SCALE					= { 0.9, 0.9, 0.9, },
}

EVENT_APPLE_COME_IN = 
{
	ANIM_NAME					= "wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS						= {330, -170, 0},
	SCALE					= { 0.9, 0.9, 0.9, },
}

