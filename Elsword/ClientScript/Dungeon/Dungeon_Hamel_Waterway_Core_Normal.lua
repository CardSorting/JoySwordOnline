-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{	
		STAGE0 =
		{
			SUB_STAGE0 = { 45, 88 },
			SUB_STAGE1 = { 86, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 148, 108 },
			SUB_STAGE1 = { 189, 108 },
		},
		
		STAGE2 =
		{
			SUB_STAGE0 = { 254, 129 },
			SUB_STAGE1 = { 295, 118 },
			SUB_STAGE2 = { 336, 98 },
			SUB_STAGE3 = { 357, 57 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 295, 57 , TRUE },
		},

	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_CORE_STAGE1"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_LAGUZ"],
			NPC_UNIT_ID["NUI_IS"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
			NPC_UNIT_ID["NUI_MERMAN"],
			NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
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
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 18, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 24, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 26, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 43, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					START_POS	= { 35, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					START_POS	= { 17, },
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
    				CLEAR_CONDITION["CC_PORTAL_AFTER_KILL_ALL_ACTIVE_NPC"],
					DELAY_TIME_CLEAR_SUB_STAGE = 2.0,
    				PORTAL_LINE_INDEX =
    				{
      				28,
      				},
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 61, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 67, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN"],
					START_POS	= { 85, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
					START_POS	= { 60, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 87, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 84, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 71, },
				},	

			},

			TRIGGER_LIST =
			{
			},
		},

	},

		
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_CORE_STAGE2"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_LAGUZ"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
			NPC_UNIT_ID["NUI_SHADOW_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
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
					LINE_INDEX	= 6,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
					START_POS	= { 39, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 8, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 22, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 27, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
					START_POS	= { 23, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY_MINI"],
					START_POS	= { 24, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 46, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 47, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 50, },
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
					LINE_INDEX	= 6,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 64, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 69, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 61, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 68, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WATERWAY_GATE"],
					START_POS	= { 74, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_CORE_STAGE4"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
			NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
			NPC_UNIT_ID["NUI_ANCIENT_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_SHADOW_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
			NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
			NPC_UNIT_ID["NUI_CLOE_THE_CORRUPTION"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 8 },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 24, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_SENTRY"],
					START_POS	= { 15 },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD"],
					START_POS	= { 16, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_COACKATRIGLE"],
					START_POS	= { 20, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_COACKATRIGLE"],
					START_POS	= { 35, },
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 6,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 9,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_COACKATRIGLE"],
					START_POS	= { 50, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_WALKER"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 49, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 65, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 70, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_DEFENDER"],
					START_POS	= { 54, },
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
			END_LINE_SET        = 5,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 3, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 9,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 12,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 87, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 92, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_CHARGER"],
					START_POS	= { 97, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 98, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					START_POS	= { 99, },
				},	
				
			},

			TRIGGER_LIST =
			{
			},
		},
		
		
		SUB_STAGE3 =
		{
			START_LINE_SET      = 5,
			MAIN_LINE_SET       = 6,
			END_LINE_SET        = 7,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

   			CLEAR_COND0 =
   			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
    			NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 4, 100 },
   			},


			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 12,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 26,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
			},

			TRIGGER_LIST =
			{
			},
		},
		SUB_STAGE4 =
		{
			START_LINE_SET      = 7,
			MAIN_LINE_SET       = 8,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

   			CLEAR_COND0 =
   			{
				CLEAR_CONDITION["CC_TIME"],
				CLEAR_TIME = 13,
    			NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
   			},


			NPC_GROUP =
			{
			},

			TRIGGER_LIST =
			{
			},
		},



	},
	
	
	

	
	
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_CORE_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_VICTOR"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},


			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_VICTOR"],
					START_POS	= { 1, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					STOP_AT_START_STATE = TRUE, 
					--FOCUS_CAMERA	= TRUE,
					IS_RIGHT		= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 17,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},
}
