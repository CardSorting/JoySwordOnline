-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST =
{
	DUNGEON_MAP =
	{
		TEX_NAME = "",

		STAGE0 =
		{
			SUB_STAGE0 = { 15, 67 },
			SUB_STAGE1 = { 56, 67, FALSE, TRUE },
		},
		STAGE1 =
		{
		    SUB_STAGE0 = { 180, 10 },
			SUB_STAGE1 = { 221, 10 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 239, 120 },
			SUB_STAGE1 = { 280, 120 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 351, 67 , TRUE },
		},
		STAGE4 =
		{
		    SUB_STAGE0 = { 127, 120 },
			SUB_STAGE1 = { 168, 120 },
		},
	},

	-- NORTH 던전 스테이지 1 (HARD)

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
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 5, },
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
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
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
					START_POS	= { 14, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_EXTRAGATE"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
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
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 48, },
				},
			},

			TRIGGER_LIST =
			{

			},
		},
	},


	-- NORTH 던전 스테이지 2 (HARD)

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BOX"],
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
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 16, },
				},

				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 10,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 19, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 50,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 19, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 25, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 31, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS_EASY"],
					START_POS	= { 32, },
					MONSTER_GRADE	= 2,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 54, },
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 45, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 50, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
					START_POS	= { 44, },
					ADD_POS_Y	= -240,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
					START_POS	= { 57, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
					START_POS	= { 57, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 41, },
				},
			},

			TRIGGER_LIST =
			{

			},
        },
	},


	-- NORTH 던전 스테이지 2B (HARD)

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE2B"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BOX"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 0, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 9, },
					ADD_POS_Y	= -230,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS_EASY"],
					START_POS	= { 20, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
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

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 47, },
					RATE		= 30,
				},

				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 10,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 33, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 50,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 33, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
					START_POS	= { 50, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
					START_POS	= { 50, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 32, },
				},
			},

			TRIGGER_LIST =
			{

			},
        },
	},



	-- NORTH 던전 스테이지 3 (HARD)

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE3"],
        START_MOTION	= FALSE,

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
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_ANCIENT_PPORU"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
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
					START_POS	= { 4, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 3, },
     				ACTIVE		= FALSE,               
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 2, },
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



   	-- NORTH 던전 스테이지 Extra 1 (HARD)

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_HARD"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 1, 100 },
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
			END_LINE_SET        = 3,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_NATURE_CAVE_A"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_HARD"],
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
}






