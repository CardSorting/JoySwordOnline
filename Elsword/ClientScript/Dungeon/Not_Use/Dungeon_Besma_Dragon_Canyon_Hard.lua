-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 25, 67 },
			SUB_STAGE1 = { 66, 67 },
			SUB_STAGE2 = { 107, 67 , FALSE , TRUE },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 169, 38 },
			SUB_STAGE1 = { 210, 38 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 272, 67 },
			SUB_STAGE1 = { 313, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 375, 67 , TRUE },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 169, 96 },
			SUB_STAGE1 = { 210, 96 },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE2_1B"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION_FIRE"],
			NPC_UNIT_ID["NUI_BEE_ASSAULT"],
			NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_CACTUS"],
			NPC_UNIT_ID["NUI_STEAM_GEYSER"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ASSAULT"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CACTUS"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CACTUS"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 9, 4, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ASSAULT"],
					START_POS	= { 13, },
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 8,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
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
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CACTUS"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CACTUS"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 29, 20, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
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
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 50 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 50 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 14,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ASSAULT"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ASSAULT"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ASSAULT"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE2_1A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION_FIRE"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_CACTUS"],
			NPC_UNIT_ID["NUI_BEE_ASSAULT"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
			NPC_UNIT_ID["NUI_STEAM_GEYSER"],
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
					LINE_INDEX	= 23,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CACTUS"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 3, 13, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 17, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 9, },
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
        		CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ASSAULT"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CACTUS"],
					START_POS	= { 27, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 26, 35, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ASSAULT"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE2B"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION_FIRE"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
			NPC_UNIT_ID["NUI_STEAM_GEYSER"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
					START_POS	= { 10, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 41, },
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
        		CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
				},
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
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_GEYSER"],
					START_POS	= { 33, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
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
		WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION_FIRE"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
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
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 1, 11, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 3, 10, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK"],
					START_POS	= { 6, 7, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_LAKE_CANYON_STAGE3A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION_FIRE"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
			NPC_UNIT_ID["NUI_CACTUS"],
			NPC_UNIT_ID["NUI_BEE_ASSAULT"],
			NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
			NPC_UNIT_ID["NUI_ARMADILLO_KING"],
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
					LINE_INDEX	= 21,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ASSAULT"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 1, },
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
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_LAKE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ASSAULT"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
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
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_FIRE"],
					START_POS	= { 20, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARMADILLO_KING"],
					START_POS	= { 22, },
					FOCUS_CAMERA	= TRUE,
					SHOW_SUB_BOSS_NAME = TRUE,
					MONSTER_GRADE	= 2,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
