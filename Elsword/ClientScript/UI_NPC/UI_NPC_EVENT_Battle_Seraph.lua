-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




INIT = 
{
	MODEL_NAME				= "HQ_UI_NPC_EVENT_Battle_Seraph.X",
	MODEL_MOVE_BONE_NAME	= "Bip01",
			
	WAIT_STATE_ID			= "EVENT_Battle_Seraph_WAIT",	
	COME_IN_STATE_ID		= "EVENT_Battle_Seraph_IN",

	POS						= {330, -150, 0},
	SCALE					= { 0.85, 0.85, 0.85, },	
}

EVENT_Battle_Seraph_WAIT = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	POS						= {330, -150, 0},
	SCALE					= { 0.85, 0.85, 0.85, },	
}

EVENT_Battle_Seraph_IN = 
{
	ANIM_NAME					= "wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	POS						= {330, -150, 0},
	SCALE					= { 0.85, 0.85, 0.85, },
}

