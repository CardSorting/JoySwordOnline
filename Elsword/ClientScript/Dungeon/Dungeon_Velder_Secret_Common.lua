-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_SECRET_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE0"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 11, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 15, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 10, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
					START_POS	= { 17, },
				},
				
			},

			TRIGGER_LIST =
			{
			},
		},

		
		SUB_STAGE1 =
		{
			START_LINE_SET      = 2,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE0"],
					START_POS	= { 24, },
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
		WORLD_ID = WORLD_ID["WI_VELDER_SECRET_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_THIEF"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
			NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_POT_RED"],
			NPC_UNIT_ID["NUI_BLOODY_UNOHOUND"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE1"],
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
					LINE_INDEX	= 15,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,	
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 25, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_HAMMER"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 32, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 33, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 39, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 42, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_HAMMER"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER_TRAP"],
					START_POS	= { 111, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER_TRAP"],
					START_POS	= { 113, },	
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
					LINE_INDEX	= 15,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 47,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 47,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 53, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 54, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRICADE_DEMON"],
					START_POS	= { 55, },
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 49, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 59, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_HAMMER"],
					START_POS	= { 62, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 63, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 72, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 74, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER_TRAP"],
					START_POS	= { 116, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER_TRAP"],
					START_POS	= { 120, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER_TRAP"],
					START_POS	= { 123, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},
	
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE1"],
					START_POS	= { 79, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_POT_RED"],
					START_POS	= { 79, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_UNOHOUND"],
					START_POS	= { 95, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_UNOHOUND"],
					START_POS	= { 88, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_UNOHOUND"],
					START_POS	= { 102, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_UNOHOUND"],
					START_POS	= { 109, },
				},
			},
			TRIGGER_LIST =
			{
			},
		},

	},



	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_SECRET_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
			NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_POT_YELLOW"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE2"],
			NPC_UNIT_ID["NUI_CRAZY_PUPPET_DOLL"],
			NPC_UNIT_ID["NUI_CRAZY_PUPPET_NOT_MOVE_HELL"],
			NPC_UNIT_ID["NUI_CRAZY_PUPPET_NOT_MOVE"],
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
					LINE_INDEX	= 29,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,	
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 10, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 32, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_THIEF"],
					-- START_POS	= { 34, },
				-- },
				
				
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					-- START_POS	= { 43, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 26, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
					START_POS	= { 68, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_THIEF"],
					-- START_POS	= { 71, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 68, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 56, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET_DOLL"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET_DOLL"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET_DOLL"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET_DOLL"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET_DOLL"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET_DOLL"],
					START_POS	= { 62, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_PUPPET"],
					START_POS	= { 76, },
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
			END_LINE_SET        = 3,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 27,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_POT_YELLOW"],
					START_POS	= { 83, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET_NOT_MOVE_HELL"],
					START_POS	= { 98, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET_NOT_MOVE"],
					START_POS	= { 125, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 100, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 94, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 97, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 90, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 87, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 95, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 106, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 108, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 111, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 112, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 109, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 112, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 119, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 122, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 119, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 140, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 141, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 142, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 143, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 147, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 133, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 143, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 147, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE2"],
					START_POS	= { 123, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"],
					START_POS	= { 153, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},

	--스테이지 3번 --
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_SECRET_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
			NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
			NPC_UNIT_ID["NUI_BLOODY_RAVEN_GLITER"],
			NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_THIEF"],
			NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_POT_YELLOW"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE3"],
			NPC_UNIT_ID["NUI_CRAZY_PUPPET_DOLL"],
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
			NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
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
					LINE_INDEX	= 36,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 12, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
					START_POS	= { 10, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					-- START_POS	= { 13, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
					START_POS	= { 15, },
				},
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 27, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
					START_POS	= { 32, },
				},
				
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					-- START_POS	= { 35, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
					START_POS	= { 36, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
					START_POS	= { 25, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
					START_POS	= { 47, },
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
					LINE_INDEX	= 63,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 64,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 36,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
					DROP_TIMES	= 30,
				},
			},
			
			NPC_GROUP =
			{
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_TOMBSTONE"],
					START_POS	= { 73, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_TOMBSTONE"],
					START_POS	= { 100, },
					IS_RIGHT	= TRUE,
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RAVEN_GLITER"],
					START_POS	= { 63, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 55, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 83, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 90, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 87, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
					START_POS	= { 73, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RAVEN_GLITER"],
					START_POS	= { 75, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
					START_POS	= { 96, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_SPRIGAN"],
					START_POS	= { 108, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
			},
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 63,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 64,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
					DROP_TIMES	= 75,
				},
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_POT_BLUE"],
					START_POS	= { 119, },
				},
				
				
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
					-- START_POS	= { 118, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
					-- START_POS	= { 120, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
					-- START_POS	= { 121, },
				-- },
				
				
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RAVEN_GLITER"],
					-- START_POS	= { 133, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
					START_POS	= { 146, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
					START_POS	= { 134, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
					START_POS	= { 136, },
				},
				
				
				
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
					-- START_POS	= { 153, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
					START_POS	= { 140, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_TOMBSTONE"],
					START_POS	= { 153, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE3"],
					START_POS	= { 163, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
					START_POS	= { 145, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	
	
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_SECRET_STAGE5"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
			NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
			NPC_UNIT_ID["NUI_BLOODY_RAVEN_GLITER"],
			NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
			NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
			NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_BLOODY_GLITER_THIEF"],
			NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_POT_YELLOW"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE2"],
			NPC_UNIT_ID["NUI_CRAZY_PUPPET_DOLL"],
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
					LINE_INDEX	= 30,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_THIEF"],
					START_POS	= { 10, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					-- START_POS	= { 7, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					-- START_POS	= { 8, },
				-- },
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RAVEN_GLITER"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RAVEN_GLITER"],
					START_POS	= { 22, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_THIEF"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_THIEF"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 27, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
					START_POS	= { 49, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					-- START_POS	= { 46, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					-- START_POS	= { 45, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 43, },
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
					LINE_INDEX	= 29,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 67,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
					DROP_TIMES	= 30,
				},
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_TOMBSTONE"],
					START_POS	= { 77, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_TOMBSTONE"],
					START_POS	= { 99, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RAVEN_GLITER"],
					START_POS	= { 68, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
					START_POS	= { 73, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
					START_POS	= { 70, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 97, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 80, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 83, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
					START_POS	= { 94, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RAVEN_GLITER"],
					START_POS	= { 104, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
					START_POS	= { 99, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 114, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_WYVERN"],
					START_POS	= { 117, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_UNOHOUND"],
					START_POS	= { 69, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
			},
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 67,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER"],
					START_POS	= { 132, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_LANCE"],
					START_POS	= { 134, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_SHIELD"],
					START_POS	= { 124, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER"],
					START_POS	= { 127, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_GLITER_BOMB"],
					START_POS	= { 136, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER"],
					START_POS	= { 140, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
					START_POS	= { 148, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	
	
	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_SECRET_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_SECRET_BOSS"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID=
				{
					NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_SECRET_BOSS"]
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_SECRET_BOSS"],
					START_POS	= { 1, },
					HAVE_BOSS_GAGE  = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					FOCUS_CAMERA    = TRUE,
					STOP_AT_START_STATE = TRUE, 
					MONSTER_GRADE	= 1,
					IS_RIGHT		= TRUE,
					BOSS_GAUGE_HP_LINES = 31,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
}
