-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 0, 67 },
			SUB_STAGE1 = { 41, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 103, 67 },
			SUB_STAGE1 = { 144, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 206, 67 },
			SUB_STAGE1 = { 247, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 309, 67 },
			SUB_STAGE1 = { 350, 67 },
			SUB_STAGE2 = { 391, 67 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 453, 67 , TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN"],
			NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_NASOD_GUARD"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_MAKER"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS1"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
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
					LINE_INDEX	= 8,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 23, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 17, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 7, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 13, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 29, },

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
					LINE_INDEX	= 8,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS"],
					START_POS	= { 37, },

					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS"],
					START_POS	= { 50, },

					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 40, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 46, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 57, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 60, },
					NO_DROP     = TRUE,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 60, },
					NO_DROP     = TRUE,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
					START_POS	= { 35, },

					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_STAGE2"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN"],
			NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_NASOD_GUARD"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_MAKER"],
			NPC_UNIT_ID["NUI_RAVEN_CLONE"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
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
					LINE_INDEX	= 11,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 0,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 8, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 11, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 37, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 29, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 17, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MAKER"],
					START_POS	= { 36, },

					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
					START_POS	= { 23, },

					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
					START_POS	= { 25, },

					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 34, },
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
					LINE_INDEX	= 11,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 56, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 76, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 48, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 63, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 82, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 86, },
					NO_DROP     = TRUE,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 86, },
					NO_DROP     = TRUE,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MAKER"],
					START_POS	= { 72, },
					GAGE_BAR    = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN"],
			NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_NASOD_GUARD"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_MAKER"],
			NPC_UNIT_ID["NUI_RAVEN"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS1"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
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
					LINE_INDEX	= 5,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 23, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 13, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 14, },

					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 4, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 40, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN"],
					START_POS	= { 32, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 19, },

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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 5,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MAKER"],
					START_POS	= { 64, },

					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 81, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 61, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 83, },
					NO_DROP     = TRUE,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 83, },
					NO_DROP     = TRUE,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
					START_POS	= { 74, },
                    ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 52, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 68, },

				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_STAGE5"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN"],
			NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_NASOD_GUARD"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_MAKER"],
			NPC_UNIT_ID["NUI_RAVEN_CLONE"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS1"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
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
					LINE_INDEX	= 28,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS"],
					START_POS	= { 9, },

					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 6, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 35, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 11, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 27, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 25, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 31, },

					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS1"],
					START_POS	= { 19, },

					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
					START_POS	= { 21, },

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
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 24,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MAKER"],
					START_POS	= { 46, },

					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 44, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 48, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 52, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 58, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 56, },

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
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 24,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 73, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
					START_POS	= { 87, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARD"],
					START_POS	= { 80, },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 70, },

				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN"],
			NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_NASOD_GUARD"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_MAKER"],
			NPC_UNIT_ID["NUI_RAVEN_CLONE"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_AIR_SHIP"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN_CLONE"],
					START_POS	= { 1, },
                    SHOW_BOSS_NAME  = TRUE,
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 5,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
