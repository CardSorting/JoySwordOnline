-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 45, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 107, 67 },
			SUB_STAGE1 = { 148, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 210, 67 },
			SUB_STAGE1 = { 251, 67 },
		},
		
		STAGE3 =
		{
			SUB_STAGE0 = { 313, 67 },
			SUB_STAGE1 = { 354, 67 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 416, 67 , TRUE },
		},

	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_STAGE1"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
			NPC_UNIT_ID["NUI_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 9, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 11, },
				},
				{
					--NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 31, },
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 28, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 25, },	
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,					
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 17, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 19, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 19, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 46, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 48, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 50, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 52, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
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
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_STAGE2"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
			NPC_UNIT_ID["NUI_SIEGE_TOWER"],
			NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
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
					LINE_INDEX	= 5,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 15, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					--START_POS	= { 21, },
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					--START_POS	= { 22, },
					START_POS	= { 44, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SIEGE_TOWER"],
					START_POS	= { 25, },	
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 58, },	
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 63, },	
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 44, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SIEGE_TOWER"],
					START_POS	= { 46, },
					GAGE_BAR	= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 59, },		
					ACTIVE		= FALSE,
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 5,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 123, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 125, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 127, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 142, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 139, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 87, },	
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 91, },	
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 99, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 101, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 100, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 103, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 103, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 104, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 110, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
					START_POS	= { 118, },
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
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_STAGE2_1"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
			NPC_UNIT_ID["NUI_SIEGE_TOWER"],
			NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 5,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 102, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 105, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 20, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 27, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 26, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 105, },	
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 106, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 114, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 116, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 117, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 54, },	
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 59, },	
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 64, },	
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 62, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 67, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 47, },	
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 74, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 78, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 90, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 88, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 35, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
					START_POS	= { 100, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 135, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 133, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 131, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 145, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 142, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 144, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
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
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_STAGE3"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
			NPC_UNIT_ID["NUI_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
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
					LINE_INDEX	= 31,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 5, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,	
					ACTIVE		= FALSE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 20, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 26, },
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 32, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 34, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 36, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,	
					ACTIVE		= FALSE,		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SIEGE_TOWER"],
					START_POS	= { 38, },
					GAGE_BAR	= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT_BOSS"],
					START_POS	= { 46, },
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,	
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 44, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					--START_POS	= { 48, },
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 28, },		
					ACTIVE		= FALSE,
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
				{
					LINE_INDEX	= 31,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 68, },	
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 62, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 80, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 70, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
					START_POS	= { 88, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 91, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 93, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 95, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 97, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 80, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 84, },	
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				]]--
			},

			TRIGGER_LIST =
			{
			},
		},


	},
	
	
	
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CRAZY_PUPPET"],
			NPC_UNIT_ID["NUI_CRAZY_PUPPET_SMALL_TRUE"],
			NPC_UNIT_ID["NUI_CRAZY_PUPPET_SMALL_FALSE"],
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
					NPC_UNIT_ID["NUI_CRAZY_PUPPET"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET_SMALL_TRUE"],
					DROP_TIMES	= 5,
				},
			},

			NPC_GROUP =
			{
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET"],
					START_POS	= { 12, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 14,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,			
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},

}