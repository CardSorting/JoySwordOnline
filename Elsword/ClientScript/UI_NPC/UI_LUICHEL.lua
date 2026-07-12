-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_LUICHEL.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_LUICHEL.XET",
	
	WAIT_STATE_ID			= "LUICHEL_WAIT",	
	COME_IN_STATE_ID		= "LUICHEL_COME_IN",
	BUY_IN_STATE_ID			= "LUICHEL_BUY_IN",
	QUEST_IN_STATE_ID		= "LUICHEL_QUEST_IN",
	MENU_IN_STATE_ID		= "LUICHEL_MENU_IN",
							   
	--POS						= {-283, -130, 0},
	POS						= {340, -130, 0},
	SCALE                   = {-0.9, 0.9, 1.0},
	
}

LUICHEL_WAIT = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	POS						= {340, -130, 0},
	SCALE                   = {-0.9, 0.9, 1.0},
}

LUICHEL_COME_IN = 
{
	ANIM_NAME					= "Walk",
	
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-283, -130, 0},
	SCALE						= { 1.0, 1.0, 1.0},

	
	END_TALK =
	{
		POS				= { 230, 130, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1029,
		REMAIN_TIME		= 2,
	},
}

LUICHEL_BUY_IN = 
{

	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= { 400, 200, 0},
	SCALE						= { 0.5, 0.5, 0.5},
	
	START_TALK =
	{
		POS				= { 799, 73, },
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_RIGHT"],
		STRING			= STR_ID_2490,
		REMAIN_TIME		= 3,
	},
}

LUICHEL_QUEST_IN = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-283, -130, 0},
	SCALE						= { 1.0, 1.0, 1.0},
	
	START_TALK =
	{
		POS				= { 230, 130, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2491,
		REMAIN_TIME		= 2,
	},
}

LUICHEL_MENU_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS							= {-283, -130, 0},	
	SCALE						= { 1.0, 1.0, 1.0},
	
	START_TALK =
	{
		POS				= { 230, 130, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1032,
		REMAIN_TIME		= 2,
	},
}



















