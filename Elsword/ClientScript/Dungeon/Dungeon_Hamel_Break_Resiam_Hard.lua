-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = {  0, 174 },
			SUB_STAGE1 = { 41, 160 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 103, 110 },
			SUB_STAGE1 = { 144, 80 },
			SUB_STAGE2 = { 185, 65 },
		},
		
		STAGE2 =
		{
			SUB_STAGE0 = { 247, 75 },
			SUB_STAGE1 = { 288, 85 },	
		},
		
		STAGE3 =
		{
			SUB_STAGE0 = { 350, 108 },
			SUB_STAGE1 = { 391, 120 },	
		},
		
		STAGE4 =
		{
			SUB_STAGE0 = { 453, 120, TRUE},
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_STAGE1"],
		
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_PIRANHA"],
			NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
			NPC_UNIT_ID["NUI_MERMAN"],
			NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
			NPC_UNIT_ID["NUI_PIRANHA_HOUSE"],
			NPC_UNIT_ID["NUI_LAGUZ"],
			NPC_UNIT_ID["NUI_IS"],
		},
		
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 10,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PIRANHA_HOUSE"],
					START_POS	= { 12, },
					IS_RIGHT  	= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PIRANHA"],
					START_POS	= { 18, },		
					ADD_POS_Y   = 500,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PIRANHA"],
					START_POS	= { 15, },		
					ADD_POS_Y   = 300,
					IS_RIGHT	= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 31, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 40, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					START_POS	= { 42, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 50, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 46, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 49, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					-- START_POS	= { 46, },
					-- ADD_POS_Y   = -22,
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- NO_DROP     = TRUE,
				-- },	매어만
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 31, },
					ADD_POS_Y   = -22,
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
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 10,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_UNDERWATER_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 66, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 73, },	
					ADD_POS_Y   = -22,
					SIEGE_MODE	= TRUE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 71, },	
					ADD_POS_Y   = -22,
					SIEGE_MODE	= TRUE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PIRANHA"],
					START_POS	= { 68, },		
					ADD_POS_Y   = 300,
					IS_RIGHT	= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 84, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 85, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 80, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_UNDERWATER_GATE"],
					START_POS	= { 87, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_STAGE2"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_PIRANHA"],
			NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
			NPC_UNIT_ID["NUI_MERMAN"],
			NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
			NPC_UNIT_ID["NUI_PIRANHA_HOUSE"],
			NPC_UNIT_ID["NUI_LAGUZ"],
			NPC_UNIT_ID["NUI_IS"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 5, },	
					ADD_POS_Y   = -22,
					SIEGE_MODE	= TRUE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 8, },	
					ADD_POS_Y   = -22,
					SIEGE_MODE	= TRUE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PIRANHA_HOUSE"],
					START_POS	= { 12, },
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PIRANHA"],
					START_POS	= { 4, },		
					ADD_POS_Y   = 200,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PIRANHA"],
					START_POS	= { 10, },		
					ADD_POS_Y   = 100,
					IS_RIGHT	= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PIRANHA"],
					START_POS	= { 6, },		
					ADD_POS_Y   = 100,
					IS_RIGHT	= TRUE,
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

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 2,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
				
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					START_POS	= { 22, },		
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					-- START_POS	= { 24, },		
				-- }, 매어 만 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 26, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 38, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 43, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 34, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					START_POS	= { 45, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 46, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ADD_POS_Y   = -22,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					-- START_POS	= { 38, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- NO_DROP     = TRUE,
					-- ADD_POS_Y   = -22,
				-- }, 매어만
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ADD_POS_Y   = -22,
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
					NPC_UNIT_ID["NUI_UNDERWATER_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 13,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 64, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ADD_POS_Y   = -22,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 68, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ADD_POS_Y   = -22,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 52, },	
					ADD_POS_Y   = 200,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 54, },	
					SIEGE_MODE	= TRUE,	
					ADD_POS_Y   = 300,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 57, },	
					SIEGE_MODE	= TRUE,	
					ADD_POS_Y   = 100,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 67, },				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 72, },	
					ADD_POS_Y   = -22,
					SIEGE_MODE	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_UNDERWATER_GATE"],
					START_POS	= { 77, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_STAGE3"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_PIRANHA"],
			NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
			NPC_UNIT_ID["NUI_MERMAN"],
			NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
			NPC_UNIT_ID["NUI_PIRANHA_HOUSE"],
			NPC_UNIT_ID["NUI_SHADOW_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
			NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
			NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],	
		},
		
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 20,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 26,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ADD_POS_Y   = -22,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ADD_POS_Y   = -22,
				},

				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					-- START_POS	= { 5, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 13, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 19, },	
					SIEGE_MODE	= TRUE,	
					ADD_POS_Y   = -22,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					ADD_POS_Y   = -22,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ADD_POS_Y   = -22,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 40, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 49, },	
					SIEGE_MODE	= TRUE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 53, },	
					SIEGE_MODE	= TRUE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 56, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ADD_POS_Y   = -22,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 45, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 49, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 51, },		
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
			
			CURTAIN_GROUP =
			{
					{
					LINE_INDEX	= 20,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 26,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 80, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 71, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 84, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 75, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_UNDERWATER_GATE"],
					START_POS	= { 90, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_STAGE4"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_PIRANHA"],
			NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
			NPC_UNIT_ID["NUI_MERMAN"],
			NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
			NPC_UNIT_ID["NUI_PIRANHA_HOUSE"],
			NPC_UNIT_ID["NUI_SHADOW_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
			NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
			NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
			NPC_UNIT_ID["NUI_LAGUZ"],
			NPC_UNIT_ID["NUI_IS"],
			
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
					LINE_INDEX	= 14,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 4, },	
					SIEGE_MODE	= TRUE,		
					ADD_POS_Y   = -22,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DEEPSEA_FISH"],
					START_POS	= { 7, },				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ADD_POS_Y   = -22,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					START_POS	= { 25, },		
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
					NPC_UNIT_ID["NUI_UNDERWATER_BOSS_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 14,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 38, },		
				},				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 41, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 43, },		
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					-- START_POS	= { 46, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 53, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 58, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_UNDERWATER_BOSS_GATE"],
					START_POS	= { 63, },
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
	
	
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CORAL_SERPENT"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_CORAL_SERPENT"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CORAL_SERPENT"],
					START_POS	= { 10, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 1,
					KEY_CODE		= 1,
					IS_RIGHT		= TRUE,
					BOSS_GAUGE_HP_LINES = 11,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CORAL_SERPENT"],
					START_POS	= { 20, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					--FOCUS_CAMERA	= TRUE,						
					MONSTER_GRADE	= 1,
					KEY_CODE		= 2,
					IS_RIGHT		= TRUE,
					BOSS_GAUGE_HP_LINES = 11,
				},

			},

			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					--시작 카메라
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE4_SUB0_TRIGGER0",
					REACT_FUNG			= "RF_STAGE4_SUB0_TRIGGER0",
				},			
			},
		},
	},

}


function CF_STAGE4_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	return true
	
end

function RF_STAGE4_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	--pX2DungeonGame:PlayWorldCamera(0)

	
end