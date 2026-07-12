
STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 0, 67 },
			SUB_STAGE1 = { 41, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 101, 67 },
			SUB_STAGE1 = { 142, 67 },
			SUB_STAGE2 = { 183, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 243, 67 },
			SUB_STAGE1 = { 284, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 344, 67 , TRUE },
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE1"],
		
		START_MOTION	= TRUE,
				
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_BLOOD_EATER"],
			NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE"],
			NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE_POST"],
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
					LINE_INDEX	= 34,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 68, },
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
					NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 34,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{


				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 92, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
					START_POS	= { 84, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 90, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 95, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE_POST"],
					START_POS	= { 97, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE"],
					START_POS	= { 97, },
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
		WORLD_ID = WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE2"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
			NPC_UNIT_ID["NUI_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_BLOOD_EATER"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_WYVERN"],			
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE"],
			NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE_POST"],
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
					LINE_INDEX	= 1,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 80,
						NPC_ID			= NPC_UNIT_ID["NUI_BOX_VELDER"],
						START_POS		= { 35, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 20,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 35, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
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
					LINE_INDEX	= 1,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
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
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 63, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 108, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 63, },
					ADD_POS_Y	= 400,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					-- START_POS	= { 86, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 99, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 96, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 100, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 90, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 101, },
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
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 3,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 117, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 144, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 130, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 124, },
				},				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 133, },
				},				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 134, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 132, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE_POST"],
					START_POS	= { 145, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE"],
					START_POS	= { 145, },
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

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE3"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BLOOD_EATER"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE_POST"],
			NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE"],
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
					LINE_INDEX	= 3,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
					START_POS	= { 12, },
					RATE		= 40,
				},

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
					NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 3,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE_POST"],
					START_POS	= { 53, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_DWELLING_GATE"],
					START_POS	= { 53, },
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

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_UNOHOUND"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE"],
			NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE_POST"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_UNOHOUND"],
					START_POS	= { 8, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME = TRUE,					
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 9,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},

}