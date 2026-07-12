-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { -60, 67 },
			SUB_STAGE1 = { -19, 67 },
			SUB_STAGE2 = { 22, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 227, 67 },
			SUB_STAGE1 = { 268, 67 },
			SUB_STAGE2 = { 309, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 371, 67 },
			SUB_STAGE1 = { 412, 67 },
			SUB_STAGE2 = { 453, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 515, 67 , TRUE },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 83, 38 },
			SUB_STAGE1 = { 124, 38 },
			SUB_STAGE2 = { 165, 38 },
		},
		STAGE5 =
		{
			SUB_STAGE0 = { 83, 96 },
			SUB_STAGE1 = { 124, 96 },
			SUB_STAGE2 = { 165, 96 },
		},
	},
	
	

    STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE2_1B"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_ALTERA_MINE"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
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
					LINE_INDEX	= 10,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 14, 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 19, 23, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 27, 30, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 22,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 1,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 63, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 68, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 72, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 55, 54, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 44, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 48, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 2 },

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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 87, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 92, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 108, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 97, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 102, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 114, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 118, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 125, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 121, 124, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 104, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 107, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 84, },
     				ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 115, 112, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 110, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 126, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 126, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 110, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 2,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	---------------------------
	
	

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE2_1A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_ALTERA_MINE"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 15,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 13, 16, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 15, 19, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 24, 34, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 15,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 3,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 62, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 67, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 64, 60, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 46, 49, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 57, 54, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 3,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 97, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 97, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 84, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 75, 80, },
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 81, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 89, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 93, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 95, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 94, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	---------------------------------
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE1"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_ALTERA_MINE"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
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
					LINE_INDEX	= 6,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 16, 14, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 21, 25, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 6,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 29,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 33, 36, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 39, 43, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 38, 41, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
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
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 94, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 94, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 72, 66, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 67, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 88, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 92, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 95, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 82, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 71, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	---------------------------------------------------

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_ALTERA_MINE"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 5, 14, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
     				RATE		= 60,
     				GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
					START_POS	= { 7, },
     				SHOW_BOSS_NAME	= TRUE,
     				HAVE_BOSS_GAGE	= TRUE,
     				FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 4,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	
	---------------------------
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE2B"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_ALTERA_MINE"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 2, 13, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 13, 20, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 9,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 53, 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 59, 61, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 48, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 9,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 74, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 95, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 81, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 103, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 87, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 90, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 100, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 107, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 107, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	---------------------------

	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_ALTERA_MINE"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 5, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 9,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 7, 11, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 5, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 9,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 19,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 67, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 70, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 68, 69, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 43, 48, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 50, 42, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 79, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 89, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 85, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 95, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 75, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 77, 87, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE"],
					START_POS	= { 92, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 90,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 94, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 94, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
