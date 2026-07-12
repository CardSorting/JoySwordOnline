-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_Hanna.X",
	MODEL_MOVE_BONE_NAME	= "Bip01",

	
	WAIT_STATE_ID			= "HANNA_WAIT",	
	COME_IN_STATE_ID		= "HANNA_COME_IN",
	
	--POS						= {-240, -170, 0},
	--SCALE					= { 0.7, 0.7, 1.0, },
	POS						= {330, -150, 0},
	SCALE					= { 1.0, 1.0, 1.0, },
	
}

HANNA_WAIT = 
{
	ANIM_NAME					= "Normal",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	POS						= {330, -150, 0},
	SCALE					= { 1.0, 1.0, 1.0, },
}

HANNA_COME_IN = 
{
	ANIM_NAME					= "Normal",
	PLAY_SPEED					= 1,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS						= {330, -150, 0},
	SCALE					= { 1.0, 1.0, 1.0, },
}
