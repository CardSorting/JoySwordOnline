-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT = 
{
	MODEL_NAME				= "UI_NPC_Linker.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
	ANIM_XET_NAME			= "UI_NPC_Linker.XET",
	
	WAIT_STATE_ID			= "LINKER_WAIT",	
	COME_IN_STATE_ID		= "LINKER_COME_IN",
	
	POS						= {330, -150, 0},
	SCALE					= { 1.0, 1.0, 1.0, },
}

LINKER_WAIT = 
{
	ANIM_NAME	= "Angry1",
	PLAY_SPEED	= 0.3,
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	POS			= {330, -150, 0},
	SCALE		= { 1.0, 1.0, 1.0, },
}

LINKER_COME_IN = 
{
	ANIM_NAME	= "Angry1",
	PLAY_SPEED	= 1,
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION	= FALSE,
	PLAY_COUNT	= 1,
	
	POS			= {330, -150, 0},
	SCALE		= { 1.0, 1.0, 1.0, },
}
