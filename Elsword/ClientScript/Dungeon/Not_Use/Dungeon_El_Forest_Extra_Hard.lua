-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST =
{
    DUNGEON_MAP =
	{
		TEX_NAME = "",
		
		STAGE0 = 
		{
			SUB_STAGE0 = { 97, 67 },
			SUB_STAGE1 = { 138, 67 },
		},
		STAGE1 = 
		{
			SUB_STAGE0 = { 200, 67 },
			SUB_STAGE1 = { 241, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 303, 67, TRUE },
		},
	},
	
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MONKEY_A"],
			NPC_UNIT_ID["NUI_MONKEY_C"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_CHAINGATE_POST"],
			NPC_UNIT_ID["NUI_CHAINGATE_GREEN"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 1, 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 12, 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 5, 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 14, 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 3, 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 18, 11, 2, },
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_CHAINGATE_GREEN"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 23, 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN"],
					START_POS	= { 30, 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_POST"],
					START_POS	= { 37, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_GREEN"],
					START_POS	= { 37, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 24, 33, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 28, 34, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 36, },
				},
			},

			TRIGGER_LIST =
			{
				 
			},
		},
	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MONKEY_A"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_CHAINGATE_BOSS_POST"],
			NPC_UNIT_ID["NUI_CHAINGATE_BOSS_RED"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_MONKEY_C_BOSS"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN"],
					START_POS	= { 15, 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 2, 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 7, },
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
					NPC_UNIT_ID["NUI_CHAINGATE_BOSS_RED"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN"],
					START_POS	= { 52, 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN"],
					START_POS	= { 41, 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_BOSS_POST"],
					START_POS	= { 55, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_BOSS_RED"],
					START_POS	= { 55, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 27, 46, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 31, 39, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C_BOSS"],
					START_POS	= { 54, },
     				FOCUS_CAMERA	= TRUE,     				
     				SHOW_SUB_BOSS_NAME	= TRUE, 
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 23, },
				},
			},

	        TRIGGER_LIST =
			{
			 
			},
		},
 	},



	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_STAGE4"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER"],
		},


		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,             
      			},
   				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,              
         		},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,               
    			},
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER"],
					START_POS		= { 2,5, },
					FOCUS_CAMERA	= TRUE,
					HAVE_BOSS_GAGE = TRUE,
					SHOW_BOSS_NAME = TRUE,
					MONSTER_GRADE	= 1,
				},
   				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 4, },
     				ACTIVE		= FALSE,             
				},
			},
			
			TRIGGER_LIST =
			{
				 
			},
		},
	},
}


 
