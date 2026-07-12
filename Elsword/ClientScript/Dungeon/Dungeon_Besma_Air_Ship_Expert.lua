-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { -99, 67 },
			SUB_STAGE1 = { -58, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 4, 38 },
			SUB_STAGE1 = { 45, 38 },
			SUB_STAGE2 = { 86, 38 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 24, 96 },
			SUB_STAGE1 = { 65, 96 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 148, 38 },
			SUB_STAGE1 = { 189, 38 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 148, 96 },
			SUB_STAGE1 = { 189, 96 },
		},
		STAGE5 =
		{
			SUB_STAGE0 = { 251, 67 },
			SUB_STAGE1 = { 292, 67 },
		},
		STAGE6 =
		{
			SUB_STAGE0 = { 354, 67 },
			SUB_STAGE1 = { 395, 67 },
		},
		STAGE7 =
		{
			SUB_STAGE0 = { 456, 67 , TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_AIRSHIP_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE_NASOD"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
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
					LINE_INDEX	= 6,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 5, 10, },
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
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 2 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 24, 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 21, 31, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 27, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					KEY_CODE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 27, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 34, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE2A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE_NASOD"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
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
					LINE_INDEX	= 24,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 17, 9, },
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
			END_LINE_SET        = 3,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 24,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 20,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 25, 31, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 14,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 40, 46, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 56, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 56, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 54, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE2B"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE_NASOD"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
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
					LINE_INDEX	= 0,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 11, },
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
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 0,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 21, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 26, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE2_1A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE_NASOD"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER"],
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
					LINE_INDEX	= 23,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 10, 6, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 11, },
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

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 23,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 17, 25, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
					START_POS	= { 31, },
				},
			},

			TRIGGER_LIST =
			{
				
			},
		},

	},

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE2_1B"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE_NASOD"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER"],
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
					LINE_INDEX	= 8,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 5, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 1, 11, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 2, },
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

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 16, 24, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
					START_POS	= { 29, },
				},
			},

			TRIGGER_LIST =
			{
				
			},
		},

	},

	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE3A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE_NASOD"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER"],
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
					LINE_INDEX	= 19,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA2"],
					START_POS	= { 5, 13, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 2, },
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
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 29, },
				},
			},

			TRIGGER_LIST =
			{
			
			},
		},

	},

	STAGE6 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE_NASOD"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 6, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 18,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_NASOD"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 13, },
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

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_AIR_SHIP"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 7, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B_AIR"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_AIR_SHIP"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_AIR_SHIP"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER"],
					START_POS	= { 20, 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_AIR"],
					START_POS	= { 34, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE7 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE5"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_WALLY_9TH_ARMOR"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
			NPC_UNIT_ID["NUI_BOX_BESMA2"],
			NPC_UNIT_ID["NUI_WALLY_9TH"],
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
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_WALLY_9TH"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_ARMOR"],
					START_POS	= { 6, 7, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH"],
					START_POS	= { 1, },
					HAVE_BOSS_GAGE = TRUE,
					KEY_CODE	= 1,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 2,
				},
			},

			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					HOST			= FALSE,
					ONE_TIME		= TRUE,
					INTERVAL		= 0,
					CONDITION_FUNC	= "CF_STAGE4_SUB0_TRIGGER0",
					REACT_FUNG		= "RF_STAGE4_SUB0_TRIGGER0",
				},
				TRIGGER1 =
				{
					HOST			= FALSE,
					ONE_TIME		= TRUE,
					INTERVAL		= 0,
					CONDITION_FUNC	= "CF_STAGE4_SUB0_TRIGGER1",
					REACT_FUNG		= "RF_STAGE4_SUB0_TRIGGER1",
				},
			},
		},

	},

}

---------------------------------------------------------------------------------
function CF_STAGE4_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pNPC = pX2DungeonGame:GetNPCUnitByKeyCode( 1 )
	if pNPC ~= nil then
		return true
	else
		return false
	end
		
end

function RF_STAGE4_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pNPC = pX2DungeonGame:GetNPCUnitByKeyCode( 1 )
	if pNPC ~= nil then
		
		pNPC:StateChangeForce( pNPC:GetDisabledStateID() )
	
	end
	
end




---------------------------------------------------------------------------------
function CF_STAGE4_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	npcNum = pX2DungeonGame:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_WALLY_9TH_ARMOR"] )
	if npcNum == 0 then
		return true
	else
		return false
	end
		
end

function RF_STAGE4_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pNPC = pX2DungeonGame:GetNPCUnitByKeyCode( 1 )
	if pNPC ~= nil then

		if pNPC:GetNowStateID() == pNPC:GetDisabledStateID() then		
			pNPC:StateChangeForce( pNPC:GetStartState() )
		end
	
	end
	
end
