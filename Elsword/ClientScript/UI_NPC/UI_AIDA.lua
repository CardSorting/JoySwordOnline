-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_AIDA.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	--ANIM_XET_NAME			= "UI_NPC_AIDA.XET",
	
	WAIT_STATE_ID			= "AIDA_WAIT",	
	COME_IN_STATE_ID		= "AIDA_COME_IN",
	BUY_IN_STATE_ID			= "AIDA_BUY_IN",
	QUEST_IN_STATE_ID		= "AIDA_QUEST_IN",
	MENU_IN_STATE_ID		= "AIDA_MENU_IN",
							   
	--POS						= {-283, -160, 0},
	--SCALE					= { 0.7, 0.7, 1.0, },
	POS						= {340, -160, 0},
	SCALE					= { -0.7, 0.7, 1.0, },
	
}

AIDA_WAIT = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	POS						= {340, -160, 0},
	SCALE					= { -0.7, 0.7, 1.0, },
}

AIDA_COME_IN = 
{
	ANIM_NAME					= "Walk",
	
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-283, -160, 0},
	SCALE					= { 0.7, 0.7, 1.0, },

	
	END_TALK =
	{
		POS				= { 230, 230, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1068,				
		REMAIN_TIME		= 2,
	},
}

AIDA_BUY_IN = 
{

	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= { 400, 200, 0},
	SCALE						= { 0.3, 0.3, 1 },
	
	START_TALK =
	{
		POS				= { 799, 73, },
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_RIGHT"],
		STRING			= STR_ID_1069,
		REMAIN_TIME		= 3,
	},
}

AIDA_QUEST_IN = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-283, -160, 0},
	SCALE					= { 0.7, 0.7, 1.0, },
	
	START_TALK =
	{
		POS				= { 230, 230, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2478,
		REMAIN_TIME		= 2,
	},
}

AIDA_MENU_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-283, -160, 0},	
	SCALE					= { 0.7, 0.7, 1.0, },
	
	START_TALK =
	{
		POS				= { 230, 230, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1071,
		REMAIN_TIME		= 2,
	},
}



















