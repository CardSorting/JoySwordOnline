-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_ECHO.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_ECHO.XET",
		
	WAIT_STATE_ID			= "ECHO_WAIT",	
	COME_IN_STATE_ID		= "ECHO_COME_IN",
	BUY_IN_STATE_ID			= "ECHO_BUY_IN",
	QUEST_IN_STATE_ID		= "ECHO_QUEST_IN",
	MENU_IN_STATE_ID		= "ECHO_MENU_IN",
	
	--POS						= {-263, -175, 0},	
	--SCALE					= { 0.8, 0.8, 0.8},
	
	POS							= {340, -175, 0},
	SCALE                       = {-0.8, 0.8, 1.0},
}

ECHO_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	POS							= {340, -175, 0},
	SCALE                       = {-0.8, 0.8, 1.0},
}

ECHO_COME_IN = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-263, -175, 0},
	SCALE						= { 0.8, 0.8, 0.8},
		
	END_TALK =
	{
		POS				= { 230, 160, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1019,
		REMAIN_TIME		= 2,
	},
}

ECHO_BUY_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= { 300, 210, 0},
	SCALE						= { 0.4, 0.4, 0.4},
	
	START_TALK =
	{
		POS				= { 699, 73, },
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_RIGHT"],
		STRING			= STR_ID_1021,
		REMAIN_TIME		= 3,
	},
}

ECHO_QUEST_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-263, -175, 0},
	SCALE						= { 0.8, 0.8, 0.8},
	
	START_TALK =
	{
		POS				= { 230, 160, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1022,
		REMAIN_TIME		= 2,
	},
}

ECHO_MENU_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-263, -175, 0},
	SCALE						= { 0.8, 0.8, 0.8},
	
	START_TALK =
	{
		POS				= { 230, 160, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1023,
		REMAIN_TIME		= 2,
	},
}



