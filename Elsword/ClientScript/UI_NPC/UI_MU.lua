-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT =
{
	MODEL_NAME				= "UI_NPC_Mew.X",
	MODEL_MOVE_BONE_NAME	= "Bip01",

	WAIT_STATE_ID			= "MU_WAIT",
	COME_IN_STATE_ID		= "MU_COME_IN",
	BUY_IN_STATE_ID			= "MU_BUY_IN",
	QUEST_IN_STATE_ID		= "MU_QUEST_IN",
	MENU_IN_STATE_ID		= "MU_MENU_IN",

	--POS							= {-263, -135, 0},
	POS							= {370, -165, 0},
	SCALE                       = {0.7, 0.7, 0.7},

	--SCALE					= { 1.1, 1.1, 1.1, },
}

MU_WAIT =
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	POS							= {370, -165, 0},
	SCALE                       = {0.7, 0.7, 0.7},
}

MU_COME_IN =
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,

	POS							= {-263, -135, 0},
	SCALE                       = {0.7, 0.7, 0.7},


	END_TALK =
	{
		POS				= { 230, 130, },

		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1014,
		REMAIN_TIME		= 2,
	},
}

MU_BUY_IN =
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
		STRING			= STR_ID_1016,
		REMAIN_TIME		= 3,
	},
}

MU_QUEST_IN =
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,

	POS							= {-263, -135, 0},

	SCALE					= { 1.1, 1.1, 1.1, },



	START_TALK =
	{
		POS				= { 230, 130, },


		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_2475,
		REMAIN_TIME		= 2,
	},
}

MU_MENU_IN =
{
	ANIM_NAME					= "Wait",
	PLAY_SPEED					= 0.3,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	PLAY_COUNT					= 1,

	POS							= {-263, -135, 0},
	SCALE					= { 1.1, 1.1, 1.1, },



	START_TALK =
	{
		POS				= { 230, 130, },

		TYPE			= TALK_BOX_TYPE["TBT_FROM_DOWN_LEFT"],
		STRING			= STR_ID_1018,
		REMAIN_TIME		= 2,
	},
}



