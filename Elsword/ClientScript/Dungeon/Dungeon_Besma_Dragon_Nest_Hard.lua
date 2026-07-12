-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 66, 67 },
			SUB_STAGE1 = { 107, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 169, 67 },
			SUB_STAGE1 = { 210, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 272, 67 },
			SUB_STAGE1 = { 313, 67 },
			SUB_STAGE2 = { 355, 67 },
			
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 417, 67 , TRUE },
		},
	},

	
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_DRAGON_NEST_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION_FIRE"],
			NPC_UNIT_ID["NUI_SAURUS_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
			NPC_UNIT_ID["NUI_BAT_B_FIRE"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
			NPC_UNIT_ID["NUI_STEAM_GEYSER"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO"],
			
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
					LINE_INDEX	= 4,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE"],
					START_POS	= { 25, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 12, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					-- START_POS	= { 13, },
					-- ACTIVE		= FALSE,              NO_DROP = TRUE, 
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT	= TRUE,
				-- },
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 42, },
					
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 62, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 54,  },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
					START_POS	= { 63, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
					START_POS	= { 63, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
		WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION_FIRE"],
			NPC_UNIT_ID["NUI_SAURUS_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
			NPC_UNIT_ID["NUI_BAT_B_FIRE"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
			NPC_UNIT_ID["NUI_STEAM_GEYSER"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO"],
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
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE"],
					START_POS	= { 5, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE"],
					START_POS	= { 3, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 36, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					-- START_POS	= { 13, },
					-- ACTIVE		= FALSE,              NO_DROP = TRUE, 
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT	= TRUE,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 7,  },
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
		WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE2_1"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION_FIRE"],
			NPC_UNIT_ID["NUI_SAURUS_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
			NPC_UNIT_ID["NUI_BAT_B_FIRE"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
			NPC_UNIT_ID["NUI_STEAM_GEYSER"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
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
					LINE_INDEX	= 6,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B_FIRE"],
					START_POS	= { 35, },
					ADD_POS_Y	= -75,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					HOST			= FALSE,
					ONE_TIME		= TRUE,
					INTERVAL		= 0,
					CONDITION_FUNC	= "",
					REACT_FUNG		= "",
				},
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
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 63, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 64, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 70, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 72, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 76, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					-- START_POS	= { 69, },
					-- ACTIVE		= FALSE,              NO_DROP = TRUE, 
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT	= TRUE,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 53, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_NEST"],
					START_POS	= { 77, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_NEST"],
					START_POS	= { 77, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					HOST			= FALSE,
					ONE_TIME		= TRUE,
					INTERVAL		= 0,
					CONDITION_FUNC	= "",
					REACT_FUNG		= "",
				},
			},
		},

	},

	
	
	
	
	
	
	
	
	
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION_FIRE"],
			NPC_UNIT_ID["NUI_SAURUS_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE_KING"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_STEAM_GEYSER"],
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
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_KING"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 3, 17, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 13, 7, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_KING"],
					START_POS	= { 5, 10, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 1, 15, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					-- START_POS	= { 2, 8, },
					-- ACTIVE		= FALSE,              NO_DROP = TRUE, 
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT	= TRUE,
				-- },
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}

	