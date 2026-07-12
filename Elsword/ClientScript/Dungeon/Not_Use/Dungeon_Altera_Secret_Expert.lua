-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_MAKER"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS1"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
			NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 23, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 17, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 7, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 13, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
					START_POS	= { 11, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
					START_POS	= { 30, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 14, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 25, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 34, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
					START_POS	= { 33, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS"],
					START_POS	= { 22, },
					LEVEL		= 0,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
					START_POS	= { 8, },
					LEVEL		= 0,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

		SUB_STAGE1 =
		{
			START_LINE_SET      = 1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = 3,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 60, },
					LEVEL		= 50,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 60, },
					LEVEL		= 50,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
					START_POS	= { 44, },
					LEVEL		= 0,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
					START_POS	= { 48, },
					LEVEL		= 0,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 46, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE"],
					START_POS	= { 39, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
					START_POS	= { 56, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 41, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 50, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 59, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 43, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
					START_POS	= { 58, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 53, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
					START_POS	= { 48, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
					START_POS	= { 44, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE"],
					START_POS	= { 41, },
					LEVEL		= 50,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS1"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
			NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS1"],
					START_POS	= { 5, },
					LEVEL		= 0,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
					START_POS	= { 8, },
					LEVEL		= 0,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
					START_POS	= { 7, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
					START_POS	= { 16, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 13, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 3, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 10, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 4, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 15, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 19, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 11, },
					LEVEL		= 50,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

		SUB_STAGE1 =
		{
			START_LINE_SET      = 1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = 3,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 7,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 53, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 37, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 55, },
					LEVEL		= 50,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 55, },
					LEVEL		= 50,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
					START_POS	= { 51, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 36, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 29, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 44, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
					START_POS	= { 27, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
					START_POS	= { 48, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE"],
					START_POS	= { 40, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
					START_POS	= { 32, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
					START_POS	= { 39, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 43, },
					LEVEL		= 50,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
			NPC_UNIT_ID["NUI_SHOCK_STICK_NONE"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
			NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 25, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 31, },
					LEVEL		= 50,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
					START_POS	= { 17, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 13, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 28, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 8, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
					START_POS	= { 3, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE"],
					START_POS	= { 15, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
					START_POS	= { 20, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
					START_POS	= { 32, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK_NONE"],
					START_POS	= { 23, },
					LEVEL		= 50,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 12, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE"],
					START_POS	= { 26, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
					START_POS	= { 23, },
					LEVEL		= 50,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

		SUB_STAGE1 =
		{
			START_LINE_SET      = 1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = 3,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 18,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 41, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 56, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 47, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 59, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 38, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 45, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 60, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
					START_POS	= { 50, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
					START_POS	= { 63, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE"],
					START_POS	= { 42, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK_NONE"],
					START_POS	= { 61, },
					LEVEL		= 50,
					ACTIVE		= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

		SUB_STAGE2 =
		{
			START_LINE_SET      = 3,
			MAIN_LINE_SET       = 4,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 18,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK_NONE"],
					START_POS	= { 75, },
					LEVEL		= 50,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
					START_POS	= { 68, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 78, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
					START_POS	= { 70, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE"],
					START_POS	= { 92, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 84, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
					START_POS	= { 87, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 90, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 81, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 73, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 95, },
					LEVEL		= 50,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 95, },
					LEVEL		= 50,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 92, },
					LEVEL		= 50,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
			NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE_A"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 6,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
					START_POS	= { 7, },
					LEVEL		= 32,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
					START_POS	= { 19, },
					LEVEL		= 32,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
					START_POS	= { 2, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
					START_POS	= { 26, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 5, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 24, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 14, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 11, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P"],
					START_POS	= { 23, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 16, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
					START_POS	= { 28, },
					LEVEL		= 50,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

		SUB_STAGE1 =
		{
			START_LINE_SET      = 1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = 3,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 6,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 39, },
					LEVEL		= 32,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 60, },
					LEVEL		= 32,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE_A"],
					START_POS	= { 74, },
					LEVEL		= 32,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE_A"],
					START_POS	= { 74, },
					LEVEL		= 32,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION"],
					START_POS	= { 53, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
					START_POS	= { 57, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
					START_POS	= { 43, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P"],
					START_POS	= { 70, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 46, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P"],
					START_POS	= { 65, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 58, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"],
					START_POS	= { 72, },
					LEVEL		= 50,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
					START_POS	= { 61, },
					LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P"],
					START_POS	= { 36, },
					LEVEL		= 50,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_ELSWORD_SWORDMAN"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELSWORD_PARASITE"],
					START_POS	= { 7, },
					LEVEL		= 50,
					HAVE_BOSS_GAGE	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,
					MONSTER_GRADE	= 1,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
