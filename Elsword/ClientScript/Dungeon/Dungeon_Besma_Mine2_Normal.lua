-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 332, 67 },
			SUB_STAGE1 = { 291, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 229, 67 },
			SUB_STAGE1 = { 187, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 127, 67 },
			SUB_STAGE1 = { 86, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 25, 67 , TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_MINE2_STAGE1"],
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
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 27, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 15, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 17, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 23, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 20, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 25, },
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
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

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
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
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
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 3, 7, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 10, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 6, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 32, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 2, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 29, },
					IS_RIGHT	= TRUE,
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

	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_MINE2_STAGE2_1A"],

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
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
			NPC_UNIT_ID["NUI_NASOD_RAIL_CART"],
			NPC_UNIT_ID["NUI_NASOD_RAIL"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 19, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 33, 23, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL"],
					START_POS	= { 28, },
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
			MAIN_LINE_SET       = 0,
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
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 4, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 8, 12, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL"],
					START_POS	= { 1, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 9, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_MINE2_STAGE3A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE"],
			NPC_UNIT_ID["NUI_NASOD_RAIL"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL"],
					START_POS	= { 26, },
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
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
    			CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
    			NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 13, 8, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL"],
					START_POS	= { 2, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 38, },
					IS_RIGHT	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_MINE2_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MK2"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MK2"],
					START_POS	= { 14, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 15, 9, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,             
					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 10, },
					IS_RIGHT	= TRUE,
					ACTIVE		= FALSE,             
					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
					START_POS	= { 8, },
					IS_RIGHT	= TRUE,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
					START_POS	= { 5, },
					IS_RIGHT	= TRUE,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
