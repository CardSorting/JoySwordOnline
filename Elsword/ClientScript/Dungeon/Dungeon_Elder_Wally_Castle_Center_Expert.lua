-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{
	
	DUNGEON_MAP =
	{
		TEXT_NAME = "",

		STAGE0 =
		{
			SUB_STAGE0 = { -47, 67 },
			SUB_STAGE1 = { -6, 67, FALSE, TRUE },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 76, 38 },
			SUB_STAGE1 = { 117, 38 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 56, 96 },
			SUB_STAGE1 = { 97, 96 },
			SUB_STAGE2 = { 138, 96 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 200, 67 },
			SUB_STAGE1 = { 241, 67 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 303, 67 },
			SUB_STAGE1 = { 344, 67 },
			SUB_STAGE2 = { 385, 67 },
		},
		STAGE5 =
		{
			SUB_STAGE0 = { 447, 67 , TRUE },
		},
	},
	
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_BUNKER"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 13, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 9, 12, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
  			 CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 50, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 50, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 25, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
		WORLD_ID = WORLD_ID["WI_NEW_ELDER_WALLY_CASTLE_CENTER_STAGE1_1"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_BUNKER"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 36,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 28, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, 3, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 28, },
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
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 36,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 59, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 72, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 75, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 80, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 80, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 85, },
				},				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 95, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 50,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 74, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 50,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 74, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 97, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 97, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 79, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 71, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 80, },
				},
			},

			TRIGGER_LIST =
			{

			},
		},

	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
			NPC_UNIT_ID["NUI_BUNKER"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 28,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 6, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 6, },
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
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 28,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 63,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 30,  },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 45, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 45, },
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
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 63,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 70, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 55, 68, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 59, 52, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},

				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 30,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 72, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 50,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 72, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 77, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 77, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 63, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 76, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 70, },
				},
			},

			TRIGGER_LIST =
			{


			},
		},

	},



   	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_NEW_ELDER_WALLY_CASTLE_CENTER_STAGE2_1"],
		

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100, },
 			},


			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 26,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 17, },
				},
					{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 17, 32, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 9, 27, },
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
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 26,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 71, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 90, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 80, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 101, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 63, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 66, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 107, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 107, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},

				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 50,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 64, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 50,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 64, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},

			TRIGGER_LIST =
			{

			},
		},

	},

                                                

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 1, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 7, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 4, },
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
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 2, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 1,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 15,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 25, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 27, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 20, },
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
			END_LINE_SET        = 100,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 68, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 44, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 75, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 75, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_STRONG"],
					START_POS	= { 69, },
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 2,
					IS_RIGHT		= TRUE,
				},
			},

			TRIGGER_LIST =
			{


			},
		},

	},

	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
			NPC_UNIT_ID["NUI_WALLY_8TH"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_BOX"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = 0,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 0,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_WALLY_8TH"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,             
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					-- START_POS	= { 4, },
					-- ACTIVE		= FALSE,             
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH"],
					START_POS	= { 10, 9, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 2,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					-- START_POS	= { 0, 3, },
					-- ACTIVE		= FALSE,              NO_DROP = TRUE, 
					-- GAGE_BAR	= FALSE,
					-- RATE		= 50,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					-- START_POS	= { 11, 1, },
					-- ACTIVE		= FALSE,              NO_DROP = TRUE, 
					-- GAGE_BAR	= FALSE,
					-- RATE		= 50,
				-- },
			},

			TRIGGER_LIST =
			{

			},
		},

	},

}
