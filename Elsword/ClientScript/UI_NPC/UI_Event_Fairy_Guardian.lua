-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




INIT = 
{
	MODEL_NAME				= "UI_NPC_GUARDIAN.x",
	MODEL_MOVE_BONE_NAME	= "Bip01",
			
	WAIT_STATE_ID			= "GUARDIAN_WAIT",	
	COME_IN_STATE_ID		= "GUARDIAN_COME_IN",

	POS						= {330, -405, 0},
	ROTATE					= { 0 , 0 , 0 },
	SCALE					= { 0.8, 0.8, 0.8, },
}

GUARDIAN_WAIT = 
{
	ANIM_NAME					= "WAIT",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	POS						= {330, -405, 0},
	SCALE					= { 0.8, 0.8, 0.8, },
}

GUARDIAN_COME_IN = 
{
	ANIM_NAME					= "SMILE",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= TRUE,
	PLAY_COUNT					= 1,
	
	POS							= {330, -405, 0},
	SCALE					= { 0.8, 0.8, 0.8, },
}

