-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{
	DUNGEON_WORLD_COLOR = { 240, 140, 140, },
	DUNGEON_UNIT_COLOR = { 255, 220, 220, },

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE1_1"],
		START_MOTION	= TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
			NPC_UNIT_ID["NUI_MUSHROOM_POISON"],                          
			NPC_UNIT_ID["NUI_SMALLGATE_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_MUSHROOM_KING"],
			NPC_UNIT_ID["NUI_MUSHROOM_KING_BLACK"],
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
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 0, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 12, 6, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
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
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 8,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 20, 22, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_KING_BLACK"],
					START_POS	= { 34, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_KING_BLACK"],
					START_POS	= { 40, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST"],
					START_POS	= { 41, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					START_POS	= { 41, },
					LEVEL		=1,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 35, 37, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 31, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
			},

			TRIGGER_LIST =
			{
			 
			},
		},

	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE2_1"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BEEPOISON"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_BEE_QUEEN"],
			NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
			NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
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
					LINE_INDEX	= 0,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 8, 9, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 0, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
					START_POS	= { 44, },
					ADD_POS_Y	= -240,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
					START_POS	= { 11, },
					ADD_POS_Y	= -240,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 37, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 5, },
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 0,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 13,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, 21, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
					START_POS	= { 24, },
					ADD_POS_Y	= -265,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
					START_POS	= { 21, },
					ADD_POS_Y	= -250,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					START_POS	= { 35, },
					LEVEL		=1,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_QUEEN"],
					START_POS	= { 34, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
					START_POS	= { 32, },
					ADD_POS_Y	= -230,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 41, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
					START_POS	= { 27, },
					ADD_POS_Y	= -260,
				},
			},

			TRIGGER_LIST =
			{
		 
			},
		},

	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE1_1B"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_MONKEY_BOSS_EASY"],
			NPC_UNIT_ID["NUI_MONKEY_C"],
			NPC_UNIT_ID["NUI_MONKEY_C_BOSS"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST"],
			NPC_UNIT_ID["NUI_MONKEY_BOMB_KING"],
			NPC_UNIT_ID["NUI_MONKEY_BOMB"],
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
					LINE_INDEX	= 8,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 0, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 1, 13, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS_EASY"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 8, },
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
					LINE_INDEX	= 8,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 15, 23, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C_BOSS"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB"],
					START_POS	= { 28, },
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
					NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					START_POS	= { 36, },
					LEVEL		=1,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST"],
					START_POS	= { 36, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_KING"],
					START_POS	= { 40, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 37, 39, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
			},

			TRIGGER_LIST =
			{
				 
			},
		},

	},

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_PPORU_SMALL"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_NATURE_CAVE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_NATURE_CAVE"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
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
					LINE_INDEX	= 4,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 1, 8, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1600,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1700,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_NATURE_CAVE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_NATURE_CAVE"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_NATURE_CAVE"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1500,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1200,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1500,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 27, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1600,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 80,
				},
			},

			TRIGGER_LIST =
			{
				 
			},
		},

	},

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE5"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_BLACK"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_WHITE"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_PPORU_GIANT_BLACK"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
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
					START_POS	= { 4, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_BLACK"],
					START_POS	= { 11, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					MONSTER_GRADE	= 1,
					SHOW_BOSS_NAME = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 8,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1800,
					RATE		= 80,
				},
			},

			TRIGGER_LIST =
			{
				 
			},
		},

	},

}
 
