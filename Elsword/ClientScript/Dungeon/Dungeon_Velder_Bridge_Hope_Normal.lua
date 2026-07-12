-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



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
			SUB_STAGE3 = { 224, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 224, 127 },
			SUB_STAGE1 = { 265, 127 },
			SUB_STAGE2 = { 306, 127 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 306, 67 },
		},

		STAGE4 =
		{
			SUB_STAGE0 = { 366, 67 , TRUE },
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE1"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
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
					LINE_INDEX	= 8,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,		
					IS_RIGHT	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 16, },		
					--SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 19, },
					--SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 30, },
					--SIEGE_MODE	= TRUE,
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
					NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
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
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					-- START_POS	= { 47, },		
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 74, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					--START_POS	= { 52, },		
					START_POS	= { 50, },
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 54, },
					--SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 55, },
					--SIEGE_MODE	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 56, },		
					--SIEGE_MODE	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
					START_POS	= { 79, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},


	},


	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE2"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_BLOOD_EATER"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
			NPC_UNIT_ID["NUI_SMALLGATE_RED"],
			NPC_UNIT_ID["NUI_WYVERN"],			
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
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
					START_POS	= { 16, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 13, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 19, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 21, },		
					--SIEGE_MODE	= TRUE,
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
					LOOK_LEFT	= FALSE,
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
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,
				},				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 50, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 41, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 58, 61, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 3, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 3,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				
				{
					LINE_INDEX	= 30,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 76, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 79, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 78, },
					--SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 80, },
					--SIEGE_MODE	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 83, },		
					--SIEGE_MODE	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
					START_POS	= { 96, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 93, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},
			CLEAR_COND0 =
   			{
    				CLEAR_CONDITION["CC_PORTAL_AFTER_KILL_ALL_ACTIVE_NPC"],
					DELAY_TIME_CLEAR_SUB_STAGE = 2.0,
    				PORTAL_LINE_INDEX = 
    				{
      				17, 
      				},    
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
   			}, 

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 5,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
					START_POS	= { 103, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,	
					KEY_CODE	= 1,				
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE2_1"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],			
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
			NPC_UNIT_ID["NUI_SMALLGATE_RED"],
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
					LINE_INDEX	= 1,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 27, },
					--SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,
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
					LINE_INDEX	= 12,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 1,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
					START_POS	= { 38, },
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
    				{
      				18, 
      				},    
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
   			}, 

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 12,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 82, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 76, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 94, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 93, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 95, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 83, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 68, },
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 91, },
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE4"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
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
					NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 9, },
					--SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 18, },
					IS_RIGHT	= TRUE,
					--SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_DARKELF_BOSS"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_BOSS"],
					START_POS	= { 19, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,	
					STOP_AT_START_STATE = TRUE,					
					IS_RIGHT		= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 6,
				},
				{
					--NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 27, },
					ACTIVE		= FALSE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					-- START_POS	= { 7, },
					-- ACTIVE		= FALSE,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},

}