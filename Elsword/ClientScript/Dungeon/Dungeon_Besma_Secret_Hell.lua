-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_END"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
			},
			
			NPC_GROUP =
			{
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_START"],
					START_POS	= { 34, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					SIEGE_MODE	= TRUE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_COMMON"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_END"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				

				
				
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 10, },
				},
				
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 22, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 31, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,
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
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_STAGE2"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA_NPC"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_END"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			EXTRA_NPC_START_POS = 2,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
			},
			
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 0,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},


			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
					START_POS	= { 5, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
					START_POS	= { 6, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 13, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 4, },	
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 20, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 22, },	
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
					START_POS	= { 30, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
					START_POS	= { 34, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 33, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 31, },	
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LUTO"],
					START_POS	= { 11, },
					EXTRA_POS	 = 11, 
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
			END_LINE_SET        = 3,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			EXTRA_NPC_START_POS = 64,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100, },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE_FORCE"], 3, 0, 100 },
			},
			
			CLEAR_COND2 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 0,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 17,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LUTO"],
					START_POS	= { 64, },
					EXTRA_POS	 = 64, 
				},
				]]--
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_START"],
					START_POS	= { 93, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					SIEGE_MODE	= TRUE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_COMMON"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_END"],
					START_POS	= { 64, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 46, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 47, },	
				},
				
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 73, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 74, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 75, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 80, },	
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 59, },	
				},
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 60, },
					KEY_CODE	= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					NO_DROP     = TRUE,
					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 73, 74, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 62, },
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
			END_LINE_SET        = -1,
			

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			EXTRA_NPC_START_POS = 95,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID=
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"]
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE_FORCE"], 3, 0, 100 },
			},

			CLEAR_COND2 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 17,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
						NPC_GROUP =
			{
				
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LUTO"],
					START_POS	= { 95, },
					EXTRA_POS	 = 95, 
				},
				
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 98, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 98, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				
			},
			TRIGGER_LIST =
			{
			},
		},

	},
	
	

	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_STAGE3_1"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA_NPC"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_END"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
			NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
			
			
	    },

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			EXTRA_NPC_START_POS = 32,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
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
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LUTO"],
					START_POS	= { 32, },
					EXTRA_POS	 = 32, 
				},
				]]--
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 6, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 9, },
				},
				
				
				

				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 25, },
				},
				

				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 18, 27, },
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

			GO_TYPE             = GO_TYPE["GT_NONE"],
			EXTRA_NPC_START_POS = 70,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
			},
			
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 18,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LUTO"],
					START_POS	= { 70, },
					EXTRA_POS	 = 70, 
				},
				]]--
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
					START_POS	= { 52, },
					SHOW_BOSS_NAME  = TRUE,
					FOCUS_CAMERA    = TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 61, },
				},		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 53, },
					IS_RIGHT 	= TRUE,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 43, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 67, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 68, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 55, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
					START_POS	= { 72, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_LAKE"],
					START_POS	= { 72, },
					ACTIVE		= FALSE,
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
		WORLD_ID = WORLD_ID["WI_BESMA_SECRET_STAGE6"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA_NPC"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_END"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
			NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			EXTRA_NPC_START_POS = 6,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
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
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LUTO"],
					START_POS	= { 6, },
					EXTRA_POS	 = 6, 
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 8, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 8, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 2, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 2, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
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
			EXTRA_NPC_START_POS = 16,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 4,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LUTO"],
					START_POS	= { 16, },
					EXTRA_POS	 = 16, 
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
					START_POS	= { 15, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
					START_POS	= { 18, },
					ADD_POS_Y	= -75,
				},		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 21, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 22, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 25, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 26, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 28, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 29, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 25, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
					START_POS	= { 32, },
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
		WORLD_ID = WORLD_ID["WI_BESMA_SECRET_STAGE7"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA_NPC"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_END"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
			NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			EXTRA_NPC_START_POS = 6,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 1, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LUTO"],
					START_POS	= { 6, },
					EXTRA_POS	 = 6, 
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 15, },
				},
				
				
				
				
				
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 9, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 5, 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
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
			EXTRA_NPC_START_POS = 33,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 2, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 7,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 19,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				--[[
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LUTO"],
					START_POS	= { 33, },
					EXTRA_POS	 = 33, 
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 31, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 37, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 34, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
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
			EXTRA_NPC_START_POS = 50,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
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
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LUTO"],
					START_POS	= { 50, },
					EXTRA_POS	 = 50, 
				},
				]]--
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
					START_POS	= { 45, },
					SHOW_BOSS_NAME  = TRUE,
					FOCUS_CAMERA    = TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 60, },
				},

				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 61, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
					START_POS	= { 53, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
					START_POS	= { 53, },
					ACTIVE		= FALSE,
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
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMANKING_DARK_HELL"],
			NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON_HELL"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON_HELL"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMANKING_DARK_HELL"],
					START_POS	= { 4, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 9,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON_HELL"],
					START_POS	= { 8, },
					HAVE_BOSS_GAGE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 35,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					-- START_POS	= { 4, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT    = TRUE,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					-- START_POS	= { 3, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT    = TRUE,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					-- START_POS	= { 2, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT    = TRUE,
				-- },
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	

	
	
	
	STAGE6 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_EXTRA_STAGE1"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_END"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
			
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 7, 0, 100, },
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 10, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 20, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 29, },
				},
								{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
					START_POS	= { 32, },
				},
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	STAGE7 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_EXTRA_STAGE2"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_EXTRA"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_END"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 7, 1, 100 },
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 0,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},


			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 22, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 30, },
				},
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 7, 2, 100, },
			},
			
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 0,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 15,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_START"],
					START_POS	= { 87, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_EXTRA"],
					START_POS	= { 51, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_END"],
					START_POS	= { 61, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 49, },
				},		


				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 68, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
					START_POS	= { 71, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 72, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 83, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 68, 71, },
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID=
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"]
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 8, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 15,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
						NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 95, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 95, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},
			TRIGGER_LIST =
			{
			},
		},

	},
	
	

	
	
	STAGE8 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_EXTRA_STAGE3"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
	    },

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 8, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 17, },
				},
	
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
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

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 9, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 18,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 44, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 70, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 71, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 54, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
					START_POS	= { 72, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_LAKE"],
					START_POS	= { 72, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	
	STAGE9 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_EXTRA_STAGE4"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
			NPC_UNIT_ID["NUI_STEAM_GEYSER"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
			NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
			
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 9, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
			        IS_RIGHT    = TRUE,
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 12, },
				},

				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
			        IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 10, 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},

				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 8, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 8, },
						ACTIVE			= FALSE,
						GAGE_BAR		= FALSE,
					},
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
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 10, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 4,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
					START_POS	= { 16, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
					START_POS	= { 17, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
					START_POS	= { 18, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
					START_POS	= { 19, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
			        IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
			        IS_RIGHT    = TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 14, 19, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	
	STAGE10 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_EXTRA_STAGE5"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK_2_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
			NPC_UNIT_ID["NUI_STEAM_GEYSER"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
			NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],		
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 10, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
					START_POS	= { 10, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
					START_POS	= { 20, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE_HELL"],
					START_POS	= { 25, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 31, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= {24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= {28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= {31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= {25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= {14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= {16, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 5, 7, },
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
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 11, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 7,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 48, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= {59, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO_HELL"],
					START_POS	= {61, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"],
					START_POS	= { 84, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"],
					START_POS	= { 76, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_HELL"],
					START_POS	= { 73, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_HELL"],
					START_POS	= { 78, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_DARK_HELL"],
					START_POS	= { 80, },
				},


				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
					START_POS	= { 95, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
					START_POS	= { 95, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	STAGE11 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_EXTRA_BOSS"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMANKING_DARK_HELL"],
			NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON_EXTRA"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON_EXTRA"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMANKING_DARK_EXTRA"],
					START_POS	= { 4, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 14,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON_EXTRA"],
					START_POS	= { 8, },
					HAVE_BOSS_GAGE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 37,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					-- START_POS	= { 4, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT    = TRUE,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					-- START_POS	= { 3, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT    = TRUE,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					-- START_POS	= { 2, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT    = TRUE,
				-- },
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	

}
