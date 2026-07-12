-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 45, 35 },
			SUB_STAGE1 = { 86, 35 },
			SUB_STAGE2 = { 127, 35 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 189, 35 },
			SUB_STAGE1 = { 230, 75 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 292, 75 },
			SUB_STAGE1 = { 333, 35 },
		},
		
		STAGE3 =
		{
			SUB_STAGE0 = { 365, 67, TRUE},
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_MARKET_STAGE1"],
		
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_BLOOD_EATER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_SIEGE_TOWER"],
			NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
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
					LINE_INDEX	= 1,
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
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 11, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 15, },		
				},
				{
					--NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 17, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
					START_POS	= { 32, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 26, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 35, },	
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 35, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 44, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 41, },	
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,	
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 47, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 49, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_MARKET_WALL_BREAK1"],
					START_POS	= { 34, },
					ADD_POS_Y	= -30,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
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
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 1,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 57, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 61, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 63, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 83, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 77, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 86, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 93, },
					ACTIVE		= FALSE,
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 96, },	
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 99, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 97, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_MARKET_WALL_BREAK2"],
					START_POS	= { 65, },
					IS_RIGHT	= TRUE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_MARKET_WALL_BREAK3"],
					START_POS	= { 81, },
					IS_RIGHT	= TRUE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
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
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 7,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 121, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 113, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 124, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 126, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 131, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 133, },	
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 133, },	
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 144, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 140, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 152, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 153, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
					START_POS	= { 159, },
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
		WORLD_ID = WORLD_ID["WI_VELDER_MARKET_STAGE2"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_BLOOD_EATER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
			NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
			NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
		
		
		
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
					LINE_INDEX	= 20,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 34, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 36, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 37, },
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 40, },
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
					START_POS	= { 33, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 43, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 46, },		
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
					NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 20,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_COMMANDER"],
					START_POS	= { 64, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 63, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 61, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 61, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WYVERN"],
					START_POS	= { 75, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 77, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 79, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 82, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
					START_POS	= { 85, },
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
	
	
	
	
	-- STAGE2 =
	-- {
		-- WORLD_ID = WORLD_ID["WI_VELDER_MARKET_STAGE2_1"],
		
		-- READY_NPC =
		-- {
			-- NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			-- NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS"],
			-- NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
			-- NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
			-- NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
		-- },

		-- SUB_STAGE0 =
		-- {
			-- START_LINE_SET      = -1,
			-- MAIN_LINE_SET       = 0,
			-- END_LINE_SET        = -1,

			-- GO_TYPE             = GO_TYPE["GT_RIGHT"],

			-- CLEAR_COND0 =
			-- {
				-- CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				
				-- NPC_ID	 =
				-- { 
					-- NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
				-- },

				-- NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			-- },


			-- NPC_GROUP =
			-- {
				-- {
					-- NPC_ID			= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS"],
					-- START_POS		= { 21, },	
					-- SHOW_BOSS_NAME	= TRUE,
					-- -- HAVE_BOSS_GAGE	= TRUE,
					-- FOCUS_CAMERA	= TRUE,						
					-- MONSTER_GRADE	= 2,		
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					-- START_POS	= { 16, },		
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					-- START_POS	= { 20, },		
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					-- START_POS	= { 8, },	
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					-- START_POS	= { 5, },	
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					-- START_POS	= { 25, },	
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					-- START_POS	= { 27, },	
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
					-- START_POS	= { 29, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- NO_DROP     = TRUE,
				-- },
				
			-- },

			-- TRIGGER_LIST =
			-- {
			-- },
		-- },
	-- },
	
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_MARKET_STAGE3"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS"],
			NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
			NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 7, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_GREAT"],
					START_POS	= { 9, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 32, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 27, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 43, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 45, },	
				},
				]]--
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
					NPC_UNIT_ID["NUI_VELDER_MARKET_BOSS_GATE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 50, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 58, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 63, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 62, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 67, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_MARKET_BOSS_GATE"],
					START_POS	= { 81, },
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
		WORLD_ID = WORLD_ID["WI_VELDER_MARKET_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SPRIGGAN_SMALL"],
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
					NPC_UNIT_ID["NUI_SPRIGGAN_SMALL"],
					IS_RIGHT	= TRUE,
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPRIGGAN_SMALL"],
					START_POS	= { 8, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,	
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 1,
					IS_RIGHT		= TRUE,
					BOSS_GAUGE_HP_LINES = 12,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},

}