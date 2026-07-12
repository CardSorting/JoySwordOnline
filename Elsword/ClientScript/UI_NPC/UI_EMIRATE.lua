-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT = 
{
	MODEL_NAME				= "UI_NPC_EMIRATE.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_EMIRATE.XET",
			
	WAIT_STATE_ID			= "EMIRATE_WAIT",	
	COME_IN_STATE_ID		= "EMIRATE_COME_IN",

	POS						= {330, -150, 0},
	SCALE					= { 0.75, 0.75, 0.75, },	
}

EMIRATE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	POS						= {330, -150, 0},
	SCALE					= { 0.75, 0.75, 0.75, },	
}

EMIRATE_COME_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= TRUE,
	PLAY_COUNT					= 1,
	
	POS						= {330, -150, 0},
	SCALE					= { 0.75, 0.75, 0.75, },	
}

