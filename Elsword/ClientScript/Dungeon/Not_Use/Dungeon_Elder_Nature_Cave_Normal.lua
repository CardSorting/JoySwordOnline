-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다

-- 스테이지 흐름 (0)-(1)-(2) 


STAGE_LIST = 
{
	DUNGEON_MAP =
	{
		TEX_NAME = "",

		STAGE0 =
		{
			SUB_STAGE0 = { 76, 67 },
			SUB_STAGE1 = { 117, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 200, 67 },
			SUB_STAGE1 = { 241, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 323, 67 , TRUE },
		},
	},
	
	STAGE0 = 
	{
		WORLD_ID = WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE1"],
		
        START_MOTION	= TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_PPORU_SMALL"],
			NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_NATURE_CAVE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_NATURE_CAVE_A"],
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
					LINE_INDEX	= 3,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 9, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 12, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 10, 14, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
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
					NPC_UNIT_ID["NUI_SMALLGATE_NATURE_CAVE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 34, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 50, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 67, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 71, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 58, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 64, },
					ADD_POS_Y	= -75,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 75, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 30,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 39, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 70,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 39, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 46, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 51, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 65, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 50, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1100,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_NATURE_CAVE_A"],
					START_POS	= { 76, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_NATURE_CAVE_A"],
					START_POS	= { 76, },
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
		WORLD_ID = WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_PPORU_SMALL"],
			NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_NATURE_CAVE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_NATURE_CAVE"],
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
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 2, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 6, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 7, 4, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
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
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_NATURE_CAVE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 21, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 23, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 24, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_NATURE_CAVE"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_NATURE_CAVE"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 19, 23, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 800,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 800,
					RATE		= 40,
				},
			},

			TRIGGER_LIST =
			{
				 
			},
		},

	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_BAT_A_NODROP"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_PPORU_SMALL"],
			NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
			NPC_UNIT_ID["NUI_BAT_KING"],
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
					NPC_UNIT_ID["NUI_BAT_KING"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,              
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,              
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,              
					ADD_POS_Y	= -75,
				},			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING"],
					START_POS	= { 6, },
					HAVE_BOSS_GAGE = TRUE,
					ADD_POS_Y	= 1000,
					FOCUS_CAMERA	= TRUE,
					MONSTER_GRADE	= 1,
					SHOW_BOSS_NAME = TRUE,
				},			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 3, 5, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 18, 15, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 12, 9, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 800,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 800,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1300,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
					RATE		= 40,
				},
				
			},

			TRIGGER_LIST =
			{
				 
			},
		},

	},

}
