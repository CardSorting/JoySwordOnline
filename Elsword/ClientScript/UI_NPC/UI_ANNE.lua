-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_ANNE.X",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_ANNE.XET",
	WAIT_STATE_ID			= "ANNE_WAIT",	
	COME_IN_STATE_ID		= "ANNE_COME_IN",
	BUY_IN_STATE_ID			= "ANNE_BUY_IN",
	QUEST_IN_STATE_ID		= "ANNE_QUEST_IN",
	MENU_IN_STATE_ID		= "ANNE_MENU_IN",
	
	POS							= {280, -130, 0},
	SCALE                       = {-0.9, 0.9, 1.0},
}

ANNE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	POS							= {280, -130, 0},
	SCALE                       = {-0.9, 0.9, 1.0},
}

ANNE_COME_IN = 
{
	ANIM_NAME					= "Walk",
	PLAY_SPEED					= 1,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	--POS							= {-263, -160, 0},	
	--SCALE						= { 1.0, 1.0, 1.0},
	POS                         = { 800, 300, 0 },
	SCALE                       = { -0.8, 0.8, 0.8 },
	
	END_TALK =
	{
		POS				= { 198, 232, },
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2480,
		REMAIN_TIME		= 2,
	},
}

ANNE_BUY_IN = 
{

	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	--POS							= { 300, 210, 0},
	--SCALE						= { 0.4, 0.4, 0.4},
	POS                         = { 800, 300, 0 },
	SCALE                       = { -0.8, 0.8, 0.8 },
	
	START_TALK =
	{
		POS				= { 710, 93, },
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_RIGHT"],
		STRING			= STR_ID_2481,
		REMAIN_TIME		= 3,
	},
}

ANNE_QUEST_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	--POS							= {-263, -160, 0},
	--SCALE						= { 1.0, 1.0, 1.0},
	POS                         = { 800, 300, 0 },
	SCALE                       = { -0.8, 0.8, 0.8 },
	
	START_TALK =
	{
		POS				= { 198, 232, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1004,
		REMAIN_TIME		= 2,
	},
}

ANNE_MENU_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	--POS							= {-263, -160, 0},
	--SCALE						= { 1.0, 1.0, 1.0},
	POS                         = { 800, 300, 0 },
	SCALE                       = { -0.8, 0.8, 0.8 },
	
	START_TALK =
	{
		POS				= { 198, 232, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1005,
		REMAIN_TIME		= 2,
	},
}



















