-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 169, 67 , FALSE , TRUE },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 231, 38 },
			SUB_STAGE1 = { 272, 38 },
		},
		STAGE2 =
		{
       		SUB_STAGE0 = { 231, 96 },
			SUB_STAGE1 = { 271, 96 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 334, 67 },
			SUB_STAGE1 = { 375, 67 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 437, 67 , TRUE },
		},
    },

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
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
					NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 50, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 50, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					START_POS	= { 18, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_CHAINGATE_POST"],
			NPC_UNIT_ID["NUI_CHAINGATE_GREEN"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BOX"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 33, },
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

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 62, },
				},

				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 30,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 45, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 45, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 54, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 59, 51, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_POST"],
					START_POS	= { 68, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_GREEN"],
					START_POS	= { 68, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 57, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE2 =
	{
	WORLD_ID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE3_1"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
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
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
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
					NPC_UNIT_ID["NUI_CHAINGATE_GREEN"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 41, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_POST"],
					START_POS	= { 55, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_GREEN"],
					START_POS	= { 55, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
					NO_DROP     = TRUE,
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
		WORLD_ID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BOX"],
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
					LINE_INDEX	= 13,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 7, 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 11, 15, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
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

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 64, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
					START_POS	= { 62, },
					ADD_POS_Y	= -225,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 42, 51, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 60, 47, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},

				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 30,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 54, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 70,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 54, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
					START_POS	= { 68, },
					ACTIVE		= FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
					START_POS	= { 68, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
					NO_DROP     = TRUE,
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
		WORLD_ID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_MONKEY_A"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_MONKEY_A_NODROP"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
			NPC_UNIT_ID["NUI_BOX"],
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
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
					START_POS	= { 23, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 10, 12, 16, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 7, 9, 3, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
