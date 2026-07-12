-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT = 
{
	MODEL_NAME				= "UI_NPC_VAPOR.X",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_VAPOR.XET",
			
	WAIT_STATE_ID			= "VAPOR_WAIT",	
	COME_IN_STATE_ID		= "VAPOR_COME_IN",

	POS						= {320, -100, 0},
	SCALE					= { 0.90, 0.90, 0.90, },	
}

VAPOR_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	POS						= {320, -100, 0},
	SCALE					= { 0.90, 0.90, 0.90, },	
}

VAPOR_COME_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= TRUE,
	PLAY_COUNT					= 1,
	
	POS						= {320, -100, 0},
	SCALE					= { 0.90, 0.90, 0.90, },	
}

