-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_HAGERS.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_HAGERS.XET",
	
	WAIT_STATE_ID			= "HAGERS_WAIT",	
	COME_IN_STATE_ID		= "HAGERS_COME_IN",
	
	--POS						= {-240, -170, 0},
	
	POS							= {370, -170, 0},
	SCALE                       = {-0.8, 0.8, 1.0},
}

HAGERS_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	POS							= {370, -170, 0},
	SCALE                       = {-0.8, 0.8, 1.0},
}

HAGERS_COME_IN = 
{
	ANIM_NAME					= "Walk",
	PLAY_SPEED					= 1,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-240, -170, 0},
	
	END_TALK =
	{
		POS				= { 230, 130, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1007,
		REMAIN_TIME		= 2,
	},
}
