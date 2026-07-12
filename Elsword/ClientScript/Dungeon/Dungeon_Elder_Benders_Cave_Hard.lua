-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	DUNGEON_MAP =
	{
		TEX_NAME = "",

		STAGE0 =
		{
			SUB_STAGE0 = { 80, 67 },
			SUB_STAGE1 = { 121, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 183, 67 },
			SUB_STAGE1 = { 224, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 286, 67 },
			SUB_STAGE1 = { 327, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 389, 67 , TRUE },
		},
	},
	
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_THIEF_FAT_BOSS"],
			NPC_UNIT_ID["NUI_THIEF_THIN"],
			NPC_UNIT_ID["NUI_THIEF_FAT"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_SMALLGATE_BENDERS_CAVE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BENDERS_CAVE_A"],
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
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
					LINE_INDEX	= 11,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 12, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 15, },
					ADD_POS_Y	= -75,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					-- START_POS	= { 19, },
					-- ADD_POS_Y	= -75,
				-- },
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 31, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					-- START_POS	= { 33, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
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

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BENDERS_CAVE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 53, },
					ADD_POS_Y	= -75,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					-- START_POS	= { 55, },
					-- ADD_POS_Y	= -75,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 54, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
					START_POS	= { 77,},
				    FOCUS_CAMERA = TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_SUB_BOSS_NAME = TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 66, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 71, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT_BOSS"],
					START_POS	= { 91, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 83, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 88, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 54, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 68, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1500,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 68,},
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BENDERS_CAVE_A"],
					START_POS	= { 93, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BENDERS_CAVE_A"],
					START_POS	= { 93, },
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
		WORLD_ID = WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_THIEF_FAT_BOSS"],
			NPC_UNIT_ID["NUI_THIEF_THIN"],
			NPC_UNIT_ID["NUI_THIEF_FAT"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BENDERS_CAVE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BENDERS_CAVE"],
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
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
					LINE_INDEX	= 11,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 7, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					-- START_POS	= { 8, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 11, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 24, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 36, },
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
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BENDERS_CAVE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 49,},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 61, },
					ADD_POS_Y	= -75,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					-- START_POS	= { 64, },
					-- ADD_POS_Y	= -75,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 70, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 73, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 76, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 66, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 66, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1700,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 75, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1700,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BENDERS_CAVE"],
					START_POS	= { 58, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BENDERS_CAVE"],
					START_POS	= { 58, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
		WORLD_ID = WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE1_1"],

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_THIEF_FAT_BOSS"],
			NPC_UNIT_ID["NUI_THIEF_THIN"],
			NPC_UNIT_ID["NUI_THIEF_FAT"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
			NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BENDERS_CAVE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BENDERS_CAVE"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
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
					LINE_INDEX	= 12,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT_BOSS"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1700,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1700,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 14, },
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
				 CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BENDERS_CAVE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING"],
					START_POS	= { 64, },
					--HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					ADD_POS_Y	= -75,
					SHOW_BOSS_NAME = TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 66, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 70, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 73, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 60, },
					ADD_POS_Y	= -75,
				},
				
				--------------------------박쥐 --------------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 75, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 49, },
				},
				
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					-- START_POS	= { 75, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					-- START_POS	= { 68, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					-- START_POS	= { 52, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					-- START_POS	= { 54, },
				-- },
				
				----------------------------------------------------------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BENDERS_CAVE"],
					START_POS	= { 58, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BENDERS_CAVE"],
					START_POS	= { 58, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
		WORLD_ID = WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE3"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_THIEF_THIN"],
			NPC_UNIT_ID["NUI_THIEF_FAT"],
			NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
             CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,              
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					-- START_POS	= { 11, },
					-- ACTIVE		= FALSE,              
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					-- START_POS	= { 9, },
					-- ACTIVE		= FALSE,              
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
					START_POS	= { 17, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA   = TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 1,
					SHOW_BOSS_NAME = TRUE,
					BOSS_GAUGE_HP_LINES = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1700,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1700,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1700,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 800,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 800,
					RATE		= 60,
				},
			},

			TRIGGER_LIST =
			{

			},
		},
	},
}


