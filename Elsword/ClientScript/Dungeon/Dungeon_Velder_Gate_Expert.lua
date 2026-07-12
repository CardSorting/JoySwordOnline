-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 0, 95 },
			SUB_STAGE1 = { 41, 67 },
		},
		
		STAGE1 =
		{
			SUB_STAGE0 = { 103, 67 },
			SUB_STAGE1 = { 144, 67 },
			SUB_STAGE2 = { 185, 67 },
			SUB_STAGE3 = { 226, 67 },
		},
		
		STAGE2 =
		{
			SUB_STAGE0 = { 288, 35 },
			SUB_STAGE1 = { 329, 35 },
		},
		
		STAGE3 =
		{
			SUB_STAGE0 = { 391, 35 },
			SUB_STAGE1 = { 432, 35 },
			SUB_STAGE2 = { 473, 35 },
		},
		
		STAGE4 =
		{
			SUB_STAGE0 = { 535, 67  },
			SUB_STAGE1 = { 576, 67, TRUE},
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_GATE_STAGE1"],
		
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT_BOSS"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],	
		},
		
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 27,
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
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 8, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 24, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 21, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 29, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 45, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 48, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 39, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 24, },		
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
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 27,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_VELDER_GATE_SMALL_GATE1"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			NPC_GROUP =
			{
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 67, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 79, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 80, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT_BOSS"],
					START_POS	= { 81, },
					FOCUS_CAMERA		= TRUE,
					STOP_AT_START_STATE = TRUE,	
					SHOW_SUB_BOSS_NAME	= TRUE,					
					MONSTER_GRADE		= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 73, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 84, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 88, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 98, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 93, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_GATE_SMALL_GATE1"],
					START_POS	= { 95, },
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
		WORLD_ID = WORLD_ID["WI_VELDER_GATE_STAGE2"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
			NPC_UNIT_ID["NUI_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_SIEGE_TOWER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
			NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
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
				{
					LINE_INDEX	= 14,
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
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 34, },		
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 32, },
					IS_RIGHT	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 19, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 19, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 28, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 27, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 35, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 61, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 52, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 52, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 23, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 58, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 54, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 68, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 63, },		
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
					LINE_INDEX	= 13,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 14,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 39,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 81, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 82, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 87, },	
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SIEGE_TOWER"],
					START_POS	= { 83, },	
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 88, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 84, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 77, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 78, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 100, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 111, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 113, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 114, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 122, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 123, },		
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
					LINE_INDEX	= 38,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 51,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},
			

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 134, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 136, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 137, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 169, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 170, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 168, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 147, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 149, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT_BOSS"],
					START_POS	= { 151, },
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 145, },		
					IS_RIGHT	= TRUE,
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 156, },		
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
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_VELDER_GATE_SMALL_GATE2"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 50,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 185, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 184, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 188, },	
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 214, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 211, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 208, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 204, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
					START_POS	= { 215, },	
					IS_RIGHT	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 194, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 185, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 201, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 202, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 219, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 219, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_GATE_SMALL_GATE2"],
					START_POS	= { 229, },
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
		WORLD_ID = WORLD_ID["WI_VELDER_GATE_STAGE2_1"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
			NPC_UNIT_ID["NUI_VELDER_BRIDGE_GATE"],
		},
		
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 9,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 29,
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
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 27, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 16, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 63, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 58, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 42, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 45, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 50, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 70, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 67, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 79, },		
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
					LINE_INDEX	= 9,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 42,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_VELDER_GATE_SMALL_GATE2"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 86, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 117, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 119, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 123, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 112, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 99, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 97, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 129, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 102, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 97, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 105, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 124, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 133, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 144, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 142, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_GATE_SMALL_GATE2"],
					START_POS	= { 158, },
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
		WORLD_ID = WORLD_ID["WI_VELDER_GATE_STAGE3"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
			NPC_UNIT_ID["NUI_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_BOSS"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS"],
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
					LINE_INDEX	= 1,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
					START_POS	= { 25, },	
					IS_RIGHT	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
					START_POS	= { 27, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
					START_POS	= { 31, },	
					IS_RIGHT	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 9, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 35, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_BOSS"],
					START_POS	= { 32, },
					--HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_SUB_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE_BOSS"],
					START_POS	= { 33, },	
					MONSTER_GRADE	= 2,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 29, },		
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
			END_LINE_SET        = 3,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 1,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 5,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 53, },	
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 54, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 57, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_GREAT"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 80, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				--	NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 77, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 68, },
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 71, },
				},
				]]--
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
					NPC_UNIT_ID["NUI_VELDER_GATE_SMALL_GATE2"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 76, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 83, },	
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 87, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 107, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 90, },	
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 100, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 101, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 95, },		
				},
				{
					NPC_ID			= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS"],
					START_POS		= { 113, },	
					SHOW_BOSS_NAME	= TRUE,
					-- HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,		
					BOSS_GAUGE_HP_LINES = 27,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 111, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 116, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_GATE_SMALL_GATE2"],
					START_POS	= { 129, },
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
		WORLD_ID = WORLD_ID["WI_VELDER_GATE_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_DARKELF_BOSS_FAKE"],
			NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"],
			NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"],
			NPC_UNIT_ID["NUI_DARK_NEPHILIM"],
			NPC_UNIT_ID["NUI_BLOOD_EATER"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
		},
		
		
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 0,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
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
			
			GO_TYPE             = GO_TYPE["GT_LEFT"],

			USE_POS_OF_MONSTER_FOR_REBIRTH = TRUE,
			KEY_CODE_OF_MONSTER_FOR_REBIRTH = 20,
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_DARK_NEPHILIM"],
				},
			
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID			= NPC_UNIT_ID["NUI_DARK_NEPHILIM"],
					START_POS		= { 43, }, --30, --52
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					--FOCUS_CAMERA	= TRUE,						
					KEY_CODE		= 20,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 14,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_BOSS_FAKE"],
					START_POS	= { 31, },
					--FOCUS_CAMERA	= TRUE,	
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARK_NEPHILIM_FAKE"],
					START_POS	= { 31, },
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"],
					START_POS	= { 66, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"],
					START_POS	= { 68, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"],
					START_POS	= { 80, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"],
					START_POS	= { 82, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"],
					START_POS	= { 96, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"],
					START_POS	= { 98, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"],
					START_POS	= { 109, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"],
					START_POS	= { 111, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 73, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 72, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 88, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 87, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 92, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 93, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 119, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 118, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
		
			},

			TRIGGER_LIST =
			{
			},
		},
	},

}