-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT = 
{
	MODEL_NAME				= "HQ_UI_NPC_Luto_wait_01.X",
	MODEL_MOVE_BONE_NAME	= "Bip01",

	WAIT_STATE_ID			= "LUTO_WAIT",	
	COME_IN_STATE_ID		= "LUTO_COME_IN",
	
	POS			= {355, 22, 0},
	SCALE		= { 0.93, 0.93, 0.93, },
}

LUTO_WAIT = 
{
	ANIM_NAME	= "wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	POS			= {355, 22, 0},
	SCALE		= { 0.93, 0.93, 0.93, },
}

LUTO_COME_IN = 
{
	ANIM_NAME	= "wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION	= FALSE,
	
	POS			= {355, 22, 0},
	SCALE		= { 0.93, 0.93, 0.93, },
}


