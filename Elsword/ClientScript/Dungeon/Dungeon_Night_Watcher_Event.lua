-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],
	    START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_EVENT_BABY_JAIL"],
			NPC_UNIT_ID["NUI_NASOD_KING"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_TIME"],
				CLEAR_TIME = 180,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_FAILURE"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_BABY_JAIL"],
					START_POS	= { 1, },
					HAVE_BOSS_GAGE	= TRUE,
					KEY_CODE    = 1,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 9,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_KING_HENIR"],
					START_POS	= { 54, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					SHOW_BOSS_NAME	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},	
	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_NIGHT_WATCHER_STAGE1"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_EVENT_NIGHT_WATCHER_RESPAWNER"],
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_EVENT_BABY"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_FAILURE"], 0, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_TIME"],
				CLEAR_TIME = 80,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_NIGHT_WATCHER_RESPAWNER"],
					START_POS	= { 12, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_NIGHT_WATCHER_RESPAWNER"],
					START_POS	= { 13, },
					IS_RIGHT	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},

}
