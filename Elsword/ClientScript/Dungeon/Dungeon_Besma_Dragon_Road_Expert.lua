-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{
	DUNGEON_MAP =
	{
		TEX_NAME = "",

			STAGE0 =
		{
			SUB_STAGE0 = { -26, 67 },
			SUB_STAGE1 = { 15, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 77, 67 },
			SUB_STAGE1 = { 118, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 180, 67 },
			SUB_STAGE1 = { 221, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 283, 67 },
			SUB_STAGE1 = { 324, 67 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 386, 67 , TRUE },
		},
	},
	
		STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
			NPC_UNIT_ID["NUI_KOMODO"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_CACTUS"],	
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,              
					NO_DROP 	= TRUE, 
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

  			 CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 29,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 36, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 58, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 58, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 36, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 40, },
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
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE2A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_KOMODO"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_CACTUS"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 27, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 31, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 35, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 31, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
			
   			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_CACTUS"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CACTUS"],
					START_POS	= { 50, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 64, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 65, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 68, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 46, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 70, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 70, },
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
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE2B"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
			NPC_UNIT_ID["NUI_KOMODO"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_CACTUS"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 3,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 35, },
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
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 45, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 59, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 59, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE2_1A"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_CACTUS"],
			NPC_UNIT_ID["NUI_SCORPION_KING"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CACTUS"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CACTUS"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					RATE		= 50,
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
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 51, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 41, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 57, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION_KING"],
					START_POS	= { 65, },
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_SUB_BOSS_NAME = TRUE,
					MONSTER_GRADE	= 2,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 54, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_DRAGON_ROAD"],
					START_POS	= { 66, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_DRAGON_ROAD"],
					START_POS	= { 66, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_CACTUS"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,  
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
					START_POS	= { 1, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 2,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
					START_POS	= { 5, },
					HAVE_BOSS_GAGE = TRUE,
					IS_RIGHT = TRUE,
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
