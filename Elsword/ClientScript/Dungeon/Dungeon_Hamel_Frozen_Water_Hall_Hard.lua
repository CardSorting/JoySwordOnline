-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	  DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 45, 167 },
			SUB_STAGE1 = { 86, 167 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 126, 227 },
			SUB_STAGE1 = { 167, 247 },
			SUB_STAGE2 = { 208, 227 },
		},
		
		STAGE2 =
		{
			SUB_STAGE0 = { 208, 165 },
			SUB_STAGE1 = { 208, 124 },
			SUB_STAGE2 = { 208, 83 },
		},
		
		STAGE3 =
		{
			SUB_STAGE0 = { 270, 124 },
		},
		
		STAGE4 =
		{
			SUB_STAGE0 = { 332, 104 },
			SUB_STAGE1 = { 373, 84 },
			SUB_STAGE2 = { 373, 43 },
		},
		
		
		STAGE5 =
		{
			SUB_STAGE0 = { 373, -19 , TRUE },
		},
	},

	STAGE0 =
	{
 		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_STAGE1"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
			NPC_UNIT_ID["NUI_SHADOW_VOIDER"],		
			NPC_UNIT_ID["NUI_BOX_HAMEL"],
			NPC_UNIT_ID["NUI_SHADOW_STINGER"],
			NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],		
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
					LINE_INDEX	= 15,
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
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 14, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 26, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 23, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 34, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 37, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 14,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_FROZEN_WATER_HALL_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 45, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 50, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 46, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 52, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 48, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 57, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_STINGER"],
					START_POS	= { 61, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 67, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FROZEN_WATER_HALL_GATE"],
					START_POS	= { 82, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_STAGE2"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],	
			NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
			NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
			NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
			NPC_UNIT_ID["NUI_CONRAD_THE_ODD"],
			NPC_UNIT_ID["NUI_BOX_HAMEL"],
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
					LINE_INDEX	= 9,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 5, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 16, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 17, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 26, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 45, },		
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
					LINE_INDEX	= 9,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 19,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 48, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 44, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 58, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 57, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 66, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 68, },		
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
    				CLEAR_CONDITION["CC_PORTAL_AFTER_KILL_ALL_ACTIVE_NPC"],
					DELAY_TIME_CLEAR_SUB_STAGE = 2.0,
    				PORTAL_LINE_INDEX =
    				{  25, },
					
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
   			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 77, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CONRAD_THE_ODD"],
					START_POS	= { 80, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 85, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 83, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 87, },		
				},			
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_STAGE3"],		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],	
			NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
			NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
			NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_BLOOD_LINKER"],
			NPC_UNIT_ID["NUI_MANA_LINKER"],
			NPC_UNIT_ID["NUI_BOBOSSE_THE_REDHAMMER"],
			NPC_UNIT_ID["NUI_BOX_HAMEL"],	
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
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_LINKER"],
					START_POS	= { 6, },		
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_LINKER"],
					START_POS	= { 13, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_LINKER"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 16, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 13, },		
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 31, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 22, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 39, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 45, },		
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
					LINE_INDEX	= 3,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 6,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 53, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 49, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 58, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 64, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOBOSSE_THE_REDHAMMER"],
					START_POS	= { 60, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 65, },		
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

			-- CLEAR_COND0 =
   			-- {
    				-- CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
    				
					-- NEXT_STAGE0 		= { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },					
					
					-- DELAY_CLEAR_TIME 	= 10,					
   			-- },
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_TIME"],
				
				CLEAR_TIME = 10,
				
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
					
			},
			TRIGGER_LIST =
			{
			},
		},
	},
	
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_STAGE4"],		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],	
			NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
			NPC_UNIT_ID["NUI_BOBOSSE_THE_REDHAMMER"],
			NPC_UNIT_ID["NUI_BOX_HAMEL"],	
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},
			
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CLOE_THE_CORRUPTION"],
					START_POS	= { 4, },
					SHOW_BOSS_NAME	= TRUE,
					--HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					--IS_RIGHT		= TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LORD_KNIGHT_CORRUPTION"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUNE_SLAYER_CORRUPTION"],
					START_POS	= { 5, },		
				},	
			},
			TRIGGER_LIST =
			{
			},
		},
	},
	
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_STAGE5"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],	
			NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
			NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
			NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_BLOOD_LINKER"],
			NPC_UNIT_ID["NUI_MANA_LINKER"],
			NPC_UNIT_ID["NUI_VICTOR_LAST"],
			NPC_UNIT_ID["NUI_LORD_KNIGHT_CORRUPTION"],
			NPC_UNIT_ID["NUI_RUNE_SLAYER_CORRUPTION"],
			NPC_UNIT_ID["NUI_BOX_HAMEL"],		
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
					NPC_ID		= NPC_UNIT_ID["NUI_LORD_KNIGHT_CORRUPTION"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUNE_SLAYER_CORRUPTION"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 24, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_VOIDER"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LORD_KNIGHT_CORRUPTION"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUNE_SLAYER_CORRUPTION"],
					START_POS	= { 28, },		
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 4,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 10,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
					-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					-- START_POS	= { 38, },		
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER"],
					-- START_POS	= { 38, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LORD_KNIGHT_CORRUPTION"],
					START_POS	= { 48, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUNE_SLAYER_CORRUPTION"],
					START_POS	= { 52, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 45, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 38, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LORD_KNIGHT_CORRUPTION"],
					START_POS	= { 53, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VICTOR_LAST"],
					START_POS	= { 63, },
					SHOW_BOSS_NAME	= TRUE,
					--HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,	
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
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
				CLEAR_CONDITION["CC_TIME"],
				
				CLEAR_TIME = 10,
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 10,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
			
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_RAN"],
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
					NPC_UNIT_ID["NUI_RAN"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},
			
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAN"],
					START_POS	= { 1, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 35,
				},
			},
			TRIGGER_LIST =
			{
			},
		},
	},

}