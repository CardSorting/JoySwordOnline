-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "HQ_UI_NPC_DAO.X",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_DAO.XET",
	
	WAIT_STATE_ID			= "UI_NPC_DAO_WAIT",	
	COME_IN_STATE_ID		= "UI_NPC_DAO_COME_IN",
	
	POS						= { 300, -230, 0 },
	SCALE					= { 0.9, 0.9, 0.9, },
}

UI_NPC_DAO_WAIT = 
{
	ANIM_NAME	= "Normal",
	PLAY_SPEED	= 1,
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	POS			= { 300, -230, 0 },
	SCALE		= { 0.9, 0.9, 0.9, },
}

UI_NPC_DAO_COME_IN = 
{
	ANIM_NAME	= "Normal",
	PLAY_SPEED	= 1,
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION	= FALSE,
	PLAY_COUNT	= 1,
	
	POS			= { 300, -230, 0 },
	SCALE		= { 0.9, 0.9, 0.9, },
}
