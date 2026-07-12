-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_LOW.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_LOW.XET",
		
	WAIT_STATE_ID			= "LOW_WAIT",	
	COME_IN_STATE_ID		= "LOW_COME_IN",
	BUY_IN_STATE_ID			= "LOW_BUY_IN",
	QUEST_IN_STATE_ID		= "LOW_QUEST_IN",
	MENU_IN_STATE_ID		= "LOW_MENU_IN",
	
	--POS							= {-340, -130, 0},
	--SCALE                       = {0.8, 0.8, 0.8},
	POS							= {370, -130, 0},
	SCALE                       = {-1.0, 1.0, 1.0},
	
	
}

LOW_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	POS							= {370, -130, 0},
	SCALE                       = {-1.0, 1.0, 1.0},
}

LOW_COME_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 1,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	--POS							= {-330, -130, 0},
	--SCALE						= { 1.0, 1.0, 1.0},
	POS							= {370, -130, 0},
	SCALE                       = {-1.0, 1.0, 1.0},
		
	END_TALK =
	{
		POS				= { 230, 130, },
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2488,
		REMAIN_TIME		= 3,
	},
}

LOW_BUY_IN = 
{

	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	--POS							= {-330, -130, 0},
	--SCALE						= { 1.0, 1.0, 1.0},
	POS							= {370, -130, 0},
	SCALE                       = {-1.0, 1.0, 1.0},
	
	START_TALK =
	{
		POS				= { 403,187, },
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2489,
		REMAIN_TIME		= 2,
	},
}

LOW_QUEST_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	--POS							= {-330, -130, 0},
	--SCALE						= { 1.0, 1.0, 1.0},
	POS							= {370, -130, 0},
	SCALE                       = {-1.0, 1.0, 1.0},
	
	START_TALK =
	{
		POS				= { 230, 130, },
		
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1012,
		REMAIN_TIME		= 2,
	},
}

LOW_MENU_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	--POS							= {-330, -130, 0},
	--SCALE						= { 1.0, 1.0, 1.0},
	POS							= {370, -130, 0},
	SCALE                       = {-1.0, 1.0, 1.0},
	
	START_TALK =
	{
		POS				= { 230, 130, },
		
		
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_741,
		REMAIN_TIME		= 2,
	},
}





-- 훈련 게임 안에서 보이는 LOW
LOW_TRAINING_IN = 
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	POS							= {-450, -95-270, 0},	
	SCALE						= { 0.6, 0.6, 1.0 },
	--POS							= {370, -130, 0},
	--SCALE                       = {-1.0, 1.0, 1.0},
}
