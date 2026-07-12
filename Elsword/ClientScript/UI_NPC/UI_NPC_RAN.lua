-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_RAN.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_RAN.XET",
	
	WAIT_STATE_ID			= "RAN_WAIT",	
	COME_IN_STATE_ID		= "RAN_COME_IN",
	
	POS						= {330, -150, 0},
	SCALE					= { 1.0, 1.0, 1.0, },
}

RAN_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_SPEED	= 0.3,
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	POS			= {330, -150, 0},
	SCALE		= { 1.0, 1.0, 1.0, },
}

RAN_COME_IN = 
{
	ANIM_NAME	= "Wait",
	PLAY_SPEED	= 1,
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION	= FALSE,
	PLAY_COUNT	= 1,
	
	POS			= {330, -150, 0},
	SCALE		= { 1.0, 1.0, 1.0, },
}
