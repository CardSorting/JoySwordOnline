-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_HOFMANN.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_HOFMANN.XET",
	WAIT_STATE_ID			= "HOFMANN_WAIT",
	COME_IN_STATE_ID		= "HOFMANN_COME_IN",
	
	WAIT_STATE_ID			= "HOFMANN_WAIT",	
	COME_IN_STATE_ID		= "HOFMANN_COME_IN",
	
	--POS						= {-263, -130, 0},
	POS						= {300, -130, 0},
	SCALE                   = {-0.9, 0.9, 1.0},
	
}

HOFMANN_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	PLAY_SPEED					= 0.3,
	
	POS						= {300, -130, 0},
	SCALE                   = {-0.9, 0.9, 1.0},
}

HOFMANN_COME_IN = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-263, -130, 0},
	
	END_TALK =
	{
		POS				= { 230, 130, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2484,
		REMAIN_TIME		= 2,
	},
}
