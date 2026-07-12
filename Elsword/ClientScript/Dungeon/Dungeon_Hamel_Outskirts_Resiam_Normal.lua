
STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 0, 67 },
			SUB_STAGE1 = { 41, 37 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 101, 47 },
			SUB_STAGE1 = { 142, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 204, 117 },
			SUB_STAGE1 = { 245, 127 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 307, 127 , TRUE },
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_STAGE1"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
			NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
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
					LINE_INDEX	= 3,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 13, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					-- START_POS	= { 14, },
				-- },  --매우 어려움, 어려움만 차져 두마리 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 36, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					-- START_POS	= { 36, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 34, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				--	NO_DROP     = TRUE,
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
					NPC_UNIT_ID["NUI_RESIAM_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 62, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 80, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 82, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RESIAM_GATE"],
					START_POS	= { 94, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_STAGE2"],

		READY_NPC =
		{
				NPC_UNIT_ID["NUI_SHADOW_WALKER"],
				NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
				NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
				NPC_UNIT_ID["NUI_LAGUZ"],
				NPC_UNIT_ID["NUI_BROKEN_TOWER"],		
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
					LINE_INDEX	= 18,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 50,
						NPC_ID			= NPC_UNIT_ID["NUI_BOX_HAMEL"],
						START_POS		= { 11, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 50,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 11, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 10, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BROKEN_TOWER"],
					START_POS	= { 70, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					NO_DROP     = TRUE,
					
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					-- START_POS	= { 14, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_RESIAM_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 18,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BROKEN_TOWER"],
					START_POS	= { 71, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 41, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				--	NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 50, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				},		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 61, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					-- START_POS	= { 63, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 64, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RESIAM_GATE"],
					START_POS	= { 69, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_STAGE3_1"],

		READY_NPC =
		{
				NPC_UNIT_ID["NUI_SHADOW_WALKER"],
				NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
				NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
				NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
				NPC_UNIT_ID["NUI_LAGUZ"],
				NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
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
					LINE_INDEX	= 19,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 11, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					-- START_POS	= { 19, },
				-- },
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 31, },
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
					NPC_UNIT_ID["NUI_RESIAM_BOSS_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 48, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RESIAM_BOSS_GATE"],
					START_POS	= { 58, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_BOSS_STAGE"],

		READY_NPC =
		{
				NPC_UNIT_ID["NUI_SHADOW_MASTER"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_MASTER"],
					START_POS	= { 11, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 13,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
}