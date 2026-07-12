-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 373, 67 },
			SUB_STAGE1 = { 332, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 270, 67 },
			SUB_STAGE1 = { 229, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 167, 67 },
			SUB_STAGE1 = { 126, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 64, 67 , TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_LAKE_NIGHT_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_ARMADILLO"],
			NPC_UNIT_ID["NUI_SAURUS_HIGH"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 28,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,       
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,       
					GAGE_BAR	= FALSE,
					IS_RIGHT	=TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 18, },
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

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID = 
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 28,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 48, },
					ACTIVE		= FALSE,       
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,       
					GAGE_BAR	= FALSE,
					IS_RIGHT	=TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_LAKE"],
					START_POS	= { 58, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
					START_POS	= { 58, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_LAKE_NIGHT_STAGE2A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_ARMADILLO"],
			NPC_UNIT_ID["NUI_SAURUS_HIGH"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 11,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO"],
					START_POS	= { 24, },
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

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID = 
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 11,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 41, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					IS_LEFT		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_LAKE"],
					START_POS	= { 50, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
					START_POS	= { 50, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE3A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_ARMADILLO"],
			NPC_UNIT_ID["NUI_SAURUS_HIGH"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_LAKE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 21,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 33, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 15, },
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
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID = 
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_LAKE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 21,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FIRE_KOMODO"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_LAKE"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_LAKE"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	
	
	
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_ARMADILLO"],
			NPC_UNIT_ID["NUI_SAURUS_HIGH"],
			NPC_UNIT_ID["NUI_FIRE_KOMODO"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
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
				NPC_ID = 
				{ 
					NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAURUS_HIGH"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW"],
					START_POS	= { 3, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 2,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
