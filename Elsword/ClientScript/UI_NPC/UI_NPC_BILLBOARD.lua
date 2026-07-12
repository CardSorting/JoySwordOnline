-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "Shop_Ui_Board.X",		-- fix!!
	MODEL_MOVE_BONE_NAME	= "Dummy01",
	--ANIM_XET_NAME			= "UI_BILLBOARD_MISS_ELIOS.XET", -- SERV_MISS_ELIOS
	
	WAIT_STATE_ID			= "BILLBOARD_WAIT",	
	COME_IN_STATE_ID		= "BILLBOARD_COME_IN",
	
	--POS						= {-240, -170, 0},
	--SCALE					= { 0.7, 0.7, 1.0, },
	POS						= {340, -150, 0},
	SCALE					= { 0.8, 0.8, 1.0, },
	
}

BILLBOARD_WAIT = 
{
	ANIM_NAME					= "Normal",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	POS						= {340, -150, 0},
	SCALE					= { 0.8, 0.8, 1.0, },
}

BILLBOARD_COME_IN = 
{
	ANIM_NAME					= "Normal",
	PLAY_SPEED					= 1,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,
	
	POS						= {340, -150, 0},
	SCALE					= { 0.8, 0.8, 1.0, },
	
--[[	
	END_TALK =
	{
		POS				= { 230, 230, },
		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2575,	
		REMAIN_TIME		= 2,
	},
--]]	
}
