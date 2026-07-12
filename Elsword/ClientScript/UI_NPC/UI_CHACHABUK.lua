-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_CHACHABUK.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_CHACHABUK.XET",
		
	WAIT_STATE_ID			= "CHACHABUK_WAIT",	
	COME_IN_STATE_ID		= "CHACHABUK_COME_IN",
	BUY_IN_STATE_ID			= "CHACHABUK_BUY_IN",
	QUEST_IN_STATE_ID		= "CHACHABUK_QUEST_IN",
	MENU_IN_STATE_ID		= "CHACHABUK_MENU_IN",
	
	--POS						= {-263, -135, 0},	
	--SCALE					= { 1.0, 1.0, 1.0},
	POS						= {340, -135, 0},	
	SCALE					= { -0.9, 0.9, 1.0},
}

CHACHABUK_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	POS						= {340, -135, 0},	
	SCALE					= { -0.9, 0.9, 1.0},
}

CHACHABUK_COME_IN = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS						= {-263, -135, 0},	
	SCALE					= { 1.0, 1.0, 1.0},
		
	END_TALK =
	{
		POS				= { 230, 130, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2482,
		REMAIN_TIME		= 2,
	},
}

CHACHABUK_BUY_IN = 
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
		STRING			= STR_ID_1039,
		REMAIN_TIME		= 3,
	},
}

CHACHABUK_QUEST_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS						= {-263, -135, 0},	
	SCALE					= { 1.0, 1.0, 1.0},
	
	START_TALK =
	{
		POS				= { 230, 130, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2483,
		REMAIN_TIME		= 2,
	},
}

CHACHABUK_MENU_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS						= {-263, -135, 0},	
	SCALE					= { 1.0, 1.0, 1.0},
	
	START_TALK =
	{
		POS				= { 230, 130, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1042,
		REMAIN_TIME		= 2,
	},
}



