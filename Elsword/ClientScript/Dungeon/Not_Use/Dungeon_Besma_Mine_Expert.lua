-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { -78, 67 },
			SUB_STAGE1 = { -37, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 25, 67 },
			SUB_STAGE1 = { 66, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 128, 67 },
			SUB_STAGE1 = { 169, 67 },
			SUB_STAGE2 = { 210, 67 , FALSE , TRUE },
		},
        STAGE3 =
		{
			SUB_STAGE0 = { 272, 38 },
			SUB_STAGE1 = { 313, 38 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 375, 38 , TRUE },
		},
		STAGE5 =
		{
			SUB_STAGE0 = { 272, 96 },
			SUB_STAGE1 = { 313, 96 },
		},
		STAGE6 =
		{
			SUB_STAGE0 = { 375, 96 , TRUE },
		},
	},


	STAGE0 =
	{
  		WORLD_ID = WORLD_ID["WI_BESMA_MINE_STAGE1"],
  		
  		START_MOTION = TRUE,

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
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
					LINE_INDEX	= 2,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 800,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 2, 7, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
					START_POS	= { 8, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
					START_POS	= { 9, 10, },
					ADD_POS_Y	= -75,
					IS_RIGHT	= TRUE,
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
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 2,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE"],
					START_POS	= { 33, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE"],
					START_POS	= { 33, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 19, 21, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1100,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 25, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 27, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 31, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 32, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE1 =
	{
  WORLD_ID = WORLD_ID["WI_BESMA_MINE_STAGE2_1A"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_BOX"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 16, },
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
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE"],
				},

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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 33, 24, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 27, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 36, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1400,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 34, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_MINE_STAGE2A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_NASOD_RAIL_HOUSE"],
			NPC_UNIT_ID["NUI_NASOD_RAIL"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE"],
			NPC_UNIT_ID["NUI_EXTRAGATE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE"],
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
					LINE_INDEX	= 20,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 80,
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
					LINE_INDEX	= 20,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 21,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL_HOUSE"],
					START_POS	= { 20, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL_HOUSE"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1100,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 800,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 800,
					RATE		= 80,
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

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 2 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100 },
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 21,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 34, 48, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE"],
					START_POS	= { 46, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE"],
					START_POS	= { 46, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					KEY_CODE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 36, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 45, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 44, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 47, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE3 =
	{
 		 WORLD_ID = WORLD_ID["WI_BESMA_MINE_STAGE3A"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE"],
			NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
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
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, 7, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1400,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1100,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
					START_POS	= { 2, 1, },
					ADD_POS_Y	= -30,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
					START_POS	= { 5, 6, },
					ADD_POS_Y	= -30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 27, 32, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 33, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 800,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 36, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1500,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
					START_POS	= { 24, 26, },
					ADD_POS_Y	= -30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
					START_POS	= { 35, 33, },
					ADD_POS_Y	= -30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 29, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_MINE_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_BOX"],
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
					NPC_UNIT_ID["NUI_NASOD_DRILLER"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 7, 12, },
					ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 4, 8, },
					ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER"],
					START_POS	= { 14, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 15, 9, },
					ACTIVE		= FALSE,              
					RATE		= 40,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

  



  STAGE5 =
	{
  		WORLD_ID = WORLD_ID["WI_NEW_BESMA_MINE_STAGE2_2A"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_BIG"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_NASOD_RAIL_HOUSE"],
			NPC_UNIT_ID["NUI_NASOD_RAIL"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE"],
			NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 5, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 11,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
					START_POS	= { 6, },
					ADD_POS_Y	= -30,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
					START_POS	= { 8, },
					ADD_POS_Y	= -30,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING_SMALL"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, 2, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1500,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1100,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 900,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 9, },
					IS_RIGHT	= TRUE,
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1500,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL_HOUSE"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL_HOUSE"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 27, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_BIG"],
					START_POS	= { 40, },
					FOCUS_CAMERA	= TRUE,
					SHOW_SUB_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},	
	},

	
	
	
	
	STAGE6 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_MINE_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER"],
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
					NPC_UNIT_ID["NUI_NASOD_DRILLER"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 7, 12, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
					START_POS	= { 4, 8, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER"],
					START_POS	= { 14, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 15, 9, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
