-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_AGATHA.X",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	--ANIM_XET_NAME			= "UI_NPC_AGATHA.XET",
	
	WAIT_STATE_ID			= "AGATHA_WAIT",	
	COME_IN_STATE_ID		= "AGATHA_COME_IN",
	BUY_IN_STATE_ID			= "AGATHA_BUY_IN",
	QUEST_IN_STATE_ID		= "AGATHA_QUEST_IN",
	MENU_IN_STATE_ID		= "AGATHA_MENU_IN",
							   
	--POS						= {-263, -160, 0},
	--SCALE					= { 0.7, 0.7, 1.0, },
	POS						= {340, -160, 0},
	SCALE					= { -0.7, 0.7, 1.0, },
	
}

AGATHA_WAIT = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	POS						= {340, -160, 0},
	SCALE					= { -0.7, 0.7, 1.0, },
}

AGATHA_COME_IN = 
{
	ANIM_NAME					= "walk",
	PLAY_SPEED					= 1,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-263, -160, 0},	
		SCALE					= { 0.7, 0.7, 1.0, },
	
	END_TALK =
	{
		POS				= { 230, 230, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1064,		
		REMAIN_TIME		= 2,
	},
}

AGATHA_BUY_IN = 
{

	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= { 300, 210, 0},
	SCALE						= { 0.3, 0.3, 1 },
	
	START_TALK =
	{
		POS				= { 720, 110, },
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_RIGHT"],
		STRING			= STR_ID_2476,
		REMAIN_TIME		= 3,
	},
}

AGATHA_QUEST_IN = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-263, -160, 0},
		SCALE					= { 0.7, 0.7, 1.0, },
	
	START_TALK =
	{
		POS				= { 230, 230, },

		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2477,
		REMAIN_TIME		= 2,
	},
}

AGATHA_MENU_IN = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-263, -160, 0},
		SCALE					= { 0.7, 0.7, 1.0, },
	
	START_TALK =
	{
		POS				= { 230, 230, },

		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1067,
		REMAIN_TIME		= 2,
	},
}







