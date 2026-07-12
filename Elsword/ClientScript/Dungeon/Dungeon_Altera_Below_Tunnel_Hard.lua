-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { -5, 67 },
			SUB_STAGE1 = { 36, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 98, 67 },
			SUB_STAGE1 = { 140, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 202, 67 },
			SUB_STAGE1 = { 244, 67 },			
			SUB_STAGE2 = { 286, 67 },
		},
		STAGE3 =
		{		    
			SUB_STAGE0 = { 347, 67 },
			SUB_STAGE1 = { 389, 67 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 450, 67 , TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE3A"],
		START_MOTION = TRUE,

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
			NPC_UNIT_ID["NUI_ALTERA_MINE_NONE"],
			NPC_UNIT_ID["NUI_PARASITE"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_BAT_SONIC"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE_A"],
			NPC_UNIT_ID["NUI_STEAM_TRAP_UP"],
			NPC_UNIT_ID["NUI_STEAM_TRAP_DOWN"],
			NPC_UNIT_ID["NUI_STEAM_TRAP_SIDE"],
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
					LINE_INDEX	= 13,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 2, 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_SONIC"],
					START_POS	= { 18, 16, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 26, 28, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1600,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 27, 30, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 70,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE"],
					START_POS	= { 31, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 8, },
				},
			},

			TRIGGER_LIST =
			{
				TRIGGER0 = 
				{
					HOST				= FALSE,
					ONE_TIME			= TRUE,
					INTERVAL			= 1,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER0",	
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER0",			
				},
				
				TRIGGER1 = 
				{
					HOST				= FALSE,
					ONE_TIME			= TRUE,
					INTERVAL			= 1,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER1",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER1",
				},
				
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
					LINE_INDEX	= 13,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 34, 35, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP"],
					START_POS	= { 45, 61, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 53, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_SONIC"],
					START_POS	= { 57, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
					START_POS	= { 71, },
				},
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP_UP"],
					START_POS	= { 67, },
					ADD_POS_Y   = 1180,
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP_SIDE"],
					START_POS	= { 68, },
					ADD_POS_Y   = 100,
					ACTIVE      = FALSE,
					ADD_POS_X	= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP_DOWN"],
					START_POS	= { 67, },
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_CONTROLER"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,        
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE_A"],
					START_POS	= { 73, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE_A"],
					START_POS	= { 73, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
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
		WORLD_ID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE2_1A"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
			NPC_UNIT_ID["NUI_ALTERA_MINE_NONE"],
			NPC_UNIT_ID["NUI_PARASITE"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_BAT_SONIC"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE_A"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
					START_POS	= { 16, 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
					START_POS	= { 18, 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_SONIC"],
					START_POS	= { 63, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_SONIC"],
					START_POS	= { 58, 59, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE_A"],
					START_POS	= { 57, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE_A"],
					START_POS	= { 57, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE2_2A"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
			NPC_UNIT_ID["NUI_ALTERA_MINE_NONE"],
			NPC_UNIT_ID["NUI_PARASITE"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_BAT_SONIC"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE_A"],
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
					LINE_INDEX	= 9,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALTERA_MINE_NONE"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_SONIC"],
					START_POS	= { 10, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_SONIC"],
					START_POS	= { 30, 32, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 13, 17, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 30, 32, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
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
					LINE_INDEX	= 9,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
					START_POS	= { 40, 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
					START_POS	= { 45, 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
					START_POS	= { 46, 49, },
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
					LINE_INDEX	= 15,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
					START_POS	= { 77, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
					START_POS	= { 64, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
					START_POS	= { 71, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
					START_POS	= { 82, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_SONIC"],
					START_POS	= { 89, 91, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_SONIC"],
					START_POS	= { 84, 80, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 90, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 86, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE"],
					START_POS	= { 70, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE_A"],
					START_POS	= { 79, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE_A"],
					START_POS	= { 79, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
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
		WORLD_ID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE1"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
			NPC_UNIT_ID["NUI_ALTERA_MINE_NONE"],
			NPC_UNIT_ID["NUI_PARASITE"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_BAT_SONIC"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE_A"],
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
					LINE_INDEX	= 5,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 18, 22, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 14, 13, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 16, 19, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 60,
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
					LINE_INDEX	= 5,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 34, 35, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 28, 29, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_MINE_A"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_MINE_A"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},



	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE4"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
			NPC_UNIT_ID["NUI_ALTERA_MINE_NONE"],
			NPC_UNIT_ID["NUI_PARASITE"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_BAT_SONIC"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_CANNON_MINI"],
			NPC_UNIT_ID["NUI_CANNON_MINI_UP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE_A"],
		},

  		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
    			CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 6 },
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_SHELL"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					LEVEL		= 32,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"],
					START_POS	= { 1, },
					ACTIVE		= TRUE,
					GAGE_BAR	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 1,
					SHOW_BOSS_NAME	= TRUE,
					KEY_CODE	= 6,
					BOSS_GAUGE_HP_LINES = 4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 5,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"],
					START_POS	= { 1, },
					ACTIVE		= TRUE,
					GAGE_BAR	= FALSE,				
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 2,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 4,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}



function CF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pMyUnit = pX2DungeonGame:GetMyUnit()
	if pMyUnit ~= nil then 
	
		vPos = pMyUnit:GetPos()
		if vPos.y > 19000 then 
			return true
		end
		
	end
	
	return false

end

function RF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pDungeon = pX2DungeonGame:GetDungeon()
	pDungeonStage = pDungeon:GetNowStage()	

	if nil ~= pDungeonStage then
		if pDungeonStage:IsGoEffectOn() == false then 
		
			pDungeonStage:StartGoEffect( GO_TYPE["GT_RIGHT"] )
			
		end
	end
	
end







function CF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pMyUnit = pX2DungeonGame:GetMyUnit()
	if pMyUnit ~= nil then 
	
		vPos = pMyUnit:GetPos()
		if vPos.y < 18000 then 
			return true
		end
		
	end
	
	return false

end

function RF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pDungeon = pX2DungeonGame:GetDungeon()
	pDungeonStage = pDungeon:GetNowStage()	

	if nil ~= pDungeonStage then
		if pDungeonStage:IsGoEffectOn() == true then 
		
			pDungeonStage:StopGoEffect()
			
		end
	end
	
end
