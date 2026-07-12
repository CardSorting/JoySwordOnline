-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 1, 100 },
			SUB_STAGE1 = { 42, 100 , FALSE , },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 336, 60 , TRUE },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 112, 100 },
			SUB_STAGE1 = { 153, 100 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 224, 100 },
			SUB_STAGE1 = { 265, 100 , FALSE , TRUE  },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 336, 140 },
			SUB_STAGE1 = { 377, 140},
		},
		STAGE5 =
		{
			SUB_STAGE0 = { 438, 140 , TRUE },
		},
	},


	STAGE0 =
	{
	    WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_BOSS_EASY"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
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
					LINE_INDEX	= 20,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 7, },
					ADD_POS_Y	= -240,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 33, },
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 20,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 50, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 45, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST"],
					START_POS	= { 63, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					START_POS	= { 63, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS_EASY"],
					START_POS	= { 58, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 52, },
					ADD_POS_Y	= -240,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 62, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_ANCIENT_PPORU"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_ANCIENT_PPORU"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_PPORU"],
					START_POS	= { 9, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME = TRUE,
					MONSTER_GRADE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 50,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_EXPERT"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_NATURE_CAVE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_NATURE_CAVE_A"],
			NPC_UNIT_ID["NUI_BAT_A"],
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
					LINE_INDEX	= 4,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 1, 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 3, 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 8, 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 14, 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 12, 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 2, 4, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 6, 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_NATURE_CAVE_A"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 4,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 25, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 24, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 17, 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 18, 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 25, 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 27, 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 33, 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 19, 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 23, 26, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 29, 31, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_EXPERT"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_NATURE_CAVE_A"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_NATURE_CAVE_A"],
					START_POS	= { 38, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE2_1B"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_MONKEY_BOSS_EASY"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
			NPC_UNIT_ID["NUI_EXTRAGATE"],
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
					LINE_INDEX	= 8,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 9, },
					ADD_POS_Y	= -260,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS_EASY"],
					START_POS	= { 26, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 17, },
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_EXTRAGATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 37, },
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
					START_POS	= { 55, },
					ADD_POS_Y	= -260,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
					START_POS	= { 66, },
					ADD_POS_Y	= -240,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EXTRAGATE"],
					START_POS	= { 51, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
					START_POS	= { 71, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
					START_POS	= { 71, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 68, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 55, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 59, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 63, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 47, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_NATURE_CAVE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_NATURE_CAVE"],
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_BAT_B"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 12,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 7, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 5, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 9, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 9, 1, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, 4, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 29, },
					RATE		= 60,
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 10, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 10, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_NATURE_CAVE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 12,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 46, 65, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 47, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 64, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_EXPERT"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 56, 63, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 47, 64, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_NATURE_CAVE"],
					START_POS	= { 71, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_NATURE_CAVE"],
					START_POS	= { 71, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE5"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_WHITE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_PPORU_GIANT_WHITE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, 1 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 7, 8, },
					ACTIVE		= FALSE,
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 9, 6, },
					ACTIVE		= FALSE,
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_WHITE"],
					START_POS	= { 11, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME = TRUE,
					MONSTER_GRADE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 12, 10, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 7, 8, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 9, 6, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 5, 2, },
					ACTIVE		= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
