-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 45, 67 },
			SUB_STAGE1 = { 86, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 148, 67 },
			SUB_STAGE1 = { 148, 25 },
		},
		
		STAGE2 =
		{
			SUB_STAGE0 = { 210, 25 },
			SUB_STAGE1 = { 251, 25 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 313, 25 , TRUE },
		},
	},

	STAGE0 =
	{
 		WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_STAGE1"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],			
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
					LINE_INDEX	= 18,
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
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 6, },		
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					-- START_POS	= { 7, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 16, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 19, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRYSTAL_TRAP"],
					START_POS	= { 22, },		
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 31, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 40, },		
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
					LINE_INDEX	= 18,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_WATERWAY_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 53, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 70, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 62, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
					-- START_POS	= { 65, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 57, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					-- START_POS	= { 59, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WATERWAY_GATE"],
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

	
	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_STAGE2"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
			NPC_UNIT_ID["NUI_CRYSTAL_TRAP"],
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
					LINE_INDEX	= 13,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 5, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
					START_POS	= { 21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRYSTAL_TRAP"],
					START_POS	= { 23, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 15, },		
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					-- START_POS	= { 16, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 17, },		
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					-- START_POS	= { 25, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
					START_POS	= { 26, },		
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
					NPC_UNIT_ID["NUI_WATERWAY_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 12,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
			},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRYSTAL_TRAP"],
					START_POS	= { 41, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
					START_POS	= { 33, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 39, },		
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					-- START_POS	= { 36, },		
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					-- START_POS	= { 64, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 67, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 66, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 71, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					-- START_POS	= { 49, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 55, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 61, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WATERWAY_GATE"],
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
		WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_STAGE4"],
		
		READY_NPC =
		{

			NPC_UNIT_ID["NUI_LAGUZ"],
			NPC_UNIT_ID["NUI_IS"],
			NPC_UNIT_ID["NUI_PIRANHA"],
			NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
			NPC_UNIT_ID["NUI_MERMAN"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
			NPC_UNIT_ID["NUI_SHADOW_WALKER"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
			NPC_UNIT_ID["NUI_CONRAD_THE_ODD"],
			NPC_UNIT_ID["NUI_CRYSTAL_TRAP"],
		
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
					LINE_INDEX	= 14,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRYSTAL_TRAP"],
					START_POS	= { 14, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 4, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_COACKATRIGLE"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 16, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 20, },		
				},
				
				
				
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					-- START_POS	= { 26, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
					START_POS	= { 28, },		
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_CONRAD_THE_ODD"],
					-- START_POS	= { 27, },
					-- SHOW_BOSS_NAME	= TRUE,
					-- HAVE_BOSS_GAGE	= TRUE,
					-- FOCUS_CAMERA	= TRUE,						
					-- MONSTER_GRADE	= 2,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					-- START_POS	= { 36, },		
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					-- START_POS	= { 36, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= {	21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 32, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
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

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_WATERWAY_BOSS_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 23,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 45, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 43, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 47, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 50, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 73, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 67, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WATERWAY_BOSS_GATE"],
					START_POS	= { 79, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE"],
			NPC_UNIT_ID["NUI_CRYSTAL_TRAP_RIGHT"],
			NPC_UNIT_ID["NUI_CRYSTAL_TRAP_LEFT"],
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
					NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRYSTAL_TRAP_LEFT"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRYSTAL_TRAP_RIGHT"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE"],
					START_POS	= { 8, },
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