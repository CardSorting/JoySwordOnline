-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




INIT = 
{
	MODEL_NAME				= "UI_NPC_SANTA_DARKELF.X",
	MODEL_MOVE_BONE_NAME	= "Bip01",
			
	WAIT_STATE_ID			= "SANTA_DARKELF_WAIT",	
	COME_IN_STATE_ID		= "SANTA_DARKELF_COME_IN",

	POS						= {330, -450, 0},
	POS						= {350, -150, 0},
	SCALE					= { 0.75, 0.75, 1.0, },	
}

SANTA_DARKELF_WAIT = 
{
	ANIM_NAME					= "Wait01",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	POS						= {300, -320, 0},
	SCALE					= { 0.9, 0.9, 0.9, },
}

SANTA_DARKELF_COME_IN = 
{
	ANIM_NAME					= "Talk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= TRUE,
	PLAY_COUNT					= 1,
	
	POS							= {300, -320, 0},
	SCALE					= { 0.9, 0.9, 0.9, },
}

