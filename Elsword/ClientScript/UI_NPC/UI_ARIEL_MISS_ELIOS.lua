-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_ARIEL_MISS_ELIOS.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_ARIEL_MISS_ELIOS_SILVER.XET", -- 은관
	--ANIM_XET_NAME			= "UI_NPC_ARIEL_MISS_ELIOS_GOLD.XET", -- 금관
	
	WAIT_STATE_ID			= "ARIEL_WAIT",	
	COME_IN_STATE_ID		= "ARIEL_COME_IN",
	
	--POS						= {-240, -170, 0},
	--SCALE					= { 0.7, 0.7, 1.0, },
	POS						= {350, -150, 0},
	SCALE					= { 0.75, 0.75, 1.0, },	
}

ARIEL_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	POS						= {350, -150, 0},
	SCALE					= { 0.75, 0.75, 1.0, },
}

ARIEL_COME_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 1,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS						= {350, -150, 0},
	SCALE					= { 0.75, 0.75, 1.0, },
	
}
