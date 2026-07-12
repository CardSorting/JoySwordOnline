-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




INIT = 
{
	MODEL_NAME				= "HQ_UI_NPC_EVENT_Veteran_Commander.X",
	MODEL_MOVE_BONE_NAME	= "Bip01",
			
	WAIT_STATE_ID			= "EVENT_Veteran_Commander_WAIT",	
	COME_IN_STATE_ID		= "EVENT_Veteran_Commander_IN",

	POS						= {330, -150, 0},
	SCALE					= { 0.85, 0.85, 0.85, },	
}

EVENT_Veteran_Commander_WAIT = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	POS						= {330, -150, 0},
	SCALE					= { 0.85, 0.85, 0.85, },	
}

EVENT_Veteran_Commander_IN = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	POS						= {330, -150, 0},
	SCALE					= { 0.85, 0.85, 0.85, },
}

