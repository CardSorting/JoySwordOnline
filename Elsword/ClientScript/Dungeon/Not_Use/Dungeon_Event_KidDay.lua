-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 100, 50 },
        },
		STAGE1 =
		{
			SUB_STAGE0 = { 141, 50 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 182, 50 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 223, 50 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 264, 50 ,TRUE },
		},
		STAGE5 =
		{
			SUB_STAGE0 = { 305, 50 ,FALSE , TRUE },
		},
		--
		STAGE6 =
		{
			SUB_STAGE0 = { 305, 110 },
        },
		STAGE7 =
		{
			SUB_STAGE0 = { 264, 110 },
		},
		STAGE8 =
		{
			SUB_STAGE0 = { 223, 110 },
		},
		STAGE9 =
		{
			SUB_STAGE0 = { 182, 110 },
		},
		STAGE10 =
		{
			SUB_STAGE0 = { 141, 110 },
		},
		STAGE11 =
		{
			SUB_STAGE0 = { 100, 110 ,TRUE },
		},
        STAGE12 =
		{
			SUB_STAGE0 = { 100, 170 ,FALSE , TRUE },
        },
        --
		STAGE13 =
		{
			SUB_STAGE0 = { 141, 170 },
		},
		STAGE14 =
		{
			SUB_STAGE0 = { 182, 170 },
		},
		STAGE15 =
		{
			SUB_STAGE0 = { 223, 170 },
		},
		STAGE16 =
		{
			SUB_STAGE0 = { 264, 170 },
		},
		STAGE17 =
		{
			SUB_STAGE0 = { 305, 170 ,TRUE },
		},
		--
  		STAGE18 =
		{
			SUB_STAGE0 = { 305, 230 ,FALSE , TRUE},
        },
		STAGE19 =
		{
			SUB_STAGE0 = { 264, 230 },
		},
		STAGE20 =
		{
			SUB_STAGE0 = { 223, 230 },
		},
		STAGE21 =
		{
			SUB_STAGE0 = { 182, 230 },
		},
		STAGE22 =
		{
			SUB_STAGE0 = { 141, 230 },
		},
		STAGE23 =
		{
			SUB_STAGE0 = { 100, 230 ,TRUE },
		},
		--
		STAGE24 =
		{
			SUB_STAGE0 = { 100, 290 ,FALSE , TRUE },
        },
		STAGE25 =
		{
			SUB_STAGE0 = { 141, 290 },
		},
		STAGE26 =
		{
			SUB_STAGE0 = { 182, 290 },
		},
		STAGE27 =
		{
			SUB_STAGE0 = { 223, 290 },
		},
		STAGE28 =
		{
			SUB_STAGE0 = { 264, 290 },
		},
		STAGE29 =
		{
			SUB_STAGE0 = { 305, 290 },
		},
		STAGE30 =
		{
			SUB_STAGE0 = { 360, 290 , TRUE },
		},

	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_EXPERT"],
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
					NPC_UNIT_ID["NUI_PPORU_WILLIAM_EXPERT"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_EXPERT"],
					START_POS	= { 22, },
					HAVE_BOSS_GAGE = TRUE,

				},

			},
			TRIGGER_LIST =
			{
			},
		},
	 },
	 
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BENDERS_NORMAL"],			
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
					NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
					START_POS	= { 23, },
					HAVE_BOSS_GAGE = TRUE, 
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_NOVICE_FOREST_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_MONKEY_KING"],
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
					NPC_UNIT_ID["NUI_MONKEY_KING"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_KING"],
					START_POS	= { 16, },
					HAVE_BOSS_GAGE = TRUE,  
				},    
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_STAGE4"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER"],
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
					NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
			},

			NPC_GROUP =
			{
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER"],
					START_POS		= { 2,5, },
					HAVE_BOSS_GAGE = TRUE,

				},
			},

			TRIGGER_LIST =
			{
				 
			},
		},
	},
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_ANCIENT_PPORU_EXPERT"],
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
					NPC_UNIT_ID["NUI_ANCIENT_PPORU_EXPERT"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_PPORU_EXPERT"],
					START_POS	= { 9, },
					HAVE_BOSS_GAGE = TRUE,    
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
			NPC_UNIT_ID["NUI_SMALLGATE_RED"],
			NPC_UNIT_ID["NUI_CHEST"],
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
					NPC_UNIT_ID["NUI_SMALLGATE_RED"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					START_POS	= { 9, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
					START_POS	= { 8, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_RED"],
					START_POS	= { 8, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
					START_POS	= { 9, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 2, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE6 =
    {
		WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE3"],
 		

		READY_NPC =
		{
  			NPC_UNIT_ID["NUI_ENT"],
  		},

		SUB_STAGE0 =
		{
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 7, 0, 100, },
			},

   			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT"],
					START_POS	= { 7, },
     				HAVE_BOSS_GAGE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT"],
					START_POS	= { 12, },
     				HAVE_BOSS_GAGE = TRUE,
				},
       		},

			TRIGGER_LIST =
			{
				 
			},
		},
	},
	
	
	
	STAGE7 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE3"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_BAT_A_NODROP"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_PPORU_SMALL"],
			NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
			NPC_UNIT_ID["NUI_BAT_KING"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
    			CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 8, 0, 100, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING"],
					START_POS	= { 6, },
					HAVE_BOSS_GAGE = TRUE,
					ADD_POS_Y	= 1000,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING"],
					START_POS	= { 2, },
					HAVE_BOSS_GAGE = TRUE,
					ADD_POS_Y	= 1000,
				},

			},

			TRIGGER_LIST =
			{

			},
		},

	},
	
	STAGE8 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_THIEF_THIN"],
			NPC_UNIT_ID["NUI_THIEF_FAT"],
			NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
            CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 9, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
					START_POS	= { 13, },
					HAVE_BOSS_GAGE = TRUE,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
					START_POS	= { 17, },
					HAVE_BOSS_GAGE = TRUE,
				},
			},

			TRIGGER_LIST =
			{

			},
		},

	},

	STAGE9 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE4"],


		READY_NPC =
		{
            NPC_UNIT_ID["NUI_CHEST"],
  			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_MONKEY_BOSS"],
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
			NPC_UNIT_ID["NUI_BENDERS_NASOD"],
			NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
        	NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
        	NPC_UNIT_ID["NUI_MOUSE"],
			NPC_UNIT_ID["NUI_MOUSEHOUSE"],
			NPC_UNIT_ID["NUI_MOUSE_NODROP"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],

		},

		SUB_STAGE0 =
		{
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,

			GO_TYPE				= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 10, 0, 100, },
			},
			

   			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NASOD"],
					START_POS	= { 13, },
     				HAVE_BOSS_GAGE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NASOD"],
					START_POS	= { 6, },
     				HAVE_BOSS_GAGE = TRUE,
				},
    		},

			TRIGGER_LIST =
			{

			},
		},
	},
	
	STAGE10 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"],


		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_MONKEY_BOMB"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_C"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 11, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_C"],
					START_POS	= { 5, },
					HAVE_BOSS_GAGE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_C"],
					START_POS	= { 8, },
					HAVE_BOSS_GAGE = TRUE, 
				},
			},

			TRIGGER_LIST =
			{

			},
		},

	},
	
	STAGE11 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
			NPC_UNIT_ID["NUI_WALLY_8TH_EXPERT"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_CHEST"],
		},

		SUB_STAGE0 =
		{
		
			MAIN_LINE_SET       = 0,
	

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 12, 0, 100, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_EXPERT"],
					START_POS	= { 10, },
					HAVE_BOSS_GAGE = TRUE,   
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_EXPERT"],
					START_POS	= { 2, },
					HAVE_BOSS_GAGE = TRUE,
				},

			},

			TRIGGER_LIST =
			{

			},
		},

	},
	
	
 	STAGE12 =
	{
		WORLD_ID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
			NPC_UNIT_ID["NUI_SMALLGATE_RED"],
			NPC_UNIT_ID["NUI_CHEST"],
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
					NPC_UNIT_ID["NUI_SMALLGATE_RED"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 13, 0, 100 },
			},

			NPC_GROUP =
			{
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					START_POS	= { 9, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
					START_POS	= { 8, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_RED"],
					START_POS	= { 8, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
					START_POS	= { 9, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 2, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE13 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_ARMADILLO"],
			NPC_UNIT_ID["NUI_CHEST"],
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
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 14, 0, 100, },
			},


			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
					START_POS	= { 2, },   
					HAVE_BOSS_GAGE = TRUE,             
				},                          
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
					START_POS	= { 11, },
					HAVE_BOSS_GAGE = TRUE,    
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
					START_POS	= { 3, },
					HAVE_BOSS_GAGE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
					START_POS	= { 10, },
					HAVE_BOSS_GAGE = TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
					START_POS	= { 5, },
					HAVE_BOSS_GAGE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
					START_POS	= { 8, },
					HAVE_BOSS_GAGE = TRUE,
				},
			},

			TRIGGER_LIST =
			{

			},
		},

	},
	
	STAGE14 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_LAKE_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_ARMADILLO"],
			NPC_UNIT_ID["NUI_BEE_ASSAULT"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
			NPC_UNIT_ID["NUI_CHEST"],
		},
				SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

            CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 15, 0, 100, },
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
					START_POS	= { 10, }, 
					HAVE_BOSS_GAGE = TRUE,          
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
					START_POS	= { 7, },
					HAVE_BOSS_GAGE = TRUE,            
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
					START_POS	= { 8, },
					HAVE_BOSS_GAGE = TRUE,    
				},
			},                                              

			TRIGGER_LIST =
			{

			},
		},

	},
	
	STAGE15 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_ARMADILLO"],
			NPC_UNIT_ID["NUI_BEE_ASSAULT"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_DARK"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 16, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
					START_POS	= { 8, },
					HAVE_BOSS_GAGE = TRUE,    
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
					START_POS	= { 2, },
					HAVE_BOSS_GAGE = TRUE, 
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
					START_POS	= { 7, },
					HAVE_BOSS_GAGE = TRUE, 
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
					START_POS	= { 3, },
					HAVE_BOSS_GAGE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
					START_POS	= { 6, },
					HAVE_BOSS_GAGE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
					START_POS	= { 5, },
					HAVE_BOSS_GAGE = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE16 =
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

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 17, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK"],
					START_POS	= { 2, },
					HAVE_BOSS_GAGE = TRUE,    
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK"],
					START_POS	= { 11, },
					HAVE_BOSS_GAGE = TRUE,          
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK"],
					START_POS	= { 6, },  
					HAVE_BOSS_GAGE = TRUE, 
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE17 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION_FIRE"],
			NPC_UNIT_ID["NUI_ARMADILLO_FIRE"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR_RED"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_FIRE_KING"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB"],
			NPC_UNIT_ID["NUI_STEAM_GEYSER"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 18, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_KING_EXPERT"],
					START_POS	= { 10, },
					HAVE_BOSS_GAGE = TRUE,     
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_KING_EXPERT"],
					START_POS	= { 28, },
					HAVE_BOSS_GAGE = TRUE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_KING_EXPERT"],
					START_POS	= { 16, },
					HAVE_BOSS_GAGE = TRUE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE18 =
	{
		WORLD_ID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
			NPC_UNIT_ID["NUI_SMALLGATE_RED"],
			NPC_UNIT_ID["NUI_CHEST"],
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
					NPC_UNIT_ID["NUI_SMALLGATE_RED"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 19, 0, 100 },
			},

			NPC_GROUP =
			{
    {
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					START_POS	= { 9, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
					START_POS	= { 8, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_RED"],
					START_POS	= { 8, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
					START_POS	= { 9, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 2, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	
	
	STAGE19 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_MINE_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_CHEST"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 20, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER"],
					START_POS	= { 9, },    
					HAVE_BOSS_GAGE = TRUE,         
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER"],
					START_POS	= { 12, },
					HAVE_BOSS_GAGE = TRUE,         
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER"],
					START_POS	= { 15, },
					HAVE_BOSS_GAGE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER"],
					START_POS	= { 4, },
					HAVE_BOSS_GAGE = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE20 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_MINE2_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_B"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MK2"],
			NPC_UNIT_ID["NUI_CHEST"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 21, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MK2"],
					START_POS	= { 9, },   
					HAVE_BOSS_GAGE = TRUE,           
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MK2"],
					START_POS	= { 15, },   
					HAVE_BOSS_GAGE = TRUE, 

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MK2"],
					START_POS	= { 4, }, 
					HAVE_BOSS_GAGE = TRUE, 
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE21 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE5"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER"],
			NPC_UNIT_ID["NUI_WALLY_9TH_ARMOR"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_WALLY_9TH_EXPERT"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 22, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_EXPERT"],
					START_POS	= { 4, },
					HAVE_BOSS_GAGE = TRUE, 
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_EXPERT"],
					START_POS	= { 1, },
					HAVE_BOSS_GAGE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_EXPERT"],
					START_POS	= { 6, },
					HAVE_BOSS_GAGE = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE22 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE"],
			NPC_UNIT_ID["NUI_FLY_LANTERN"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_DULLAHAN"],

		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 23, 0, 100, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_DULLAHAN"],
					START_POS	= { 14, },					
					HAVE_BOSS_GAGE		= TRUE, 
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DULLAHAN"],
					START_POS	= { 16, },					
					HAVE_BOSS_GAGE		= TRUE,
					IS_RIGHT	= TRUE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE23 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE"],
			NPC_UNIT_ID["NUI_FLY_LANTERN"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_GOLEM_BOSS_EXPERT"],

		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 24, 0, 100, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_BOSS_EXPERT"],
					START_POS	= { 11, },					
					HAVE_BOSS_GAGE		= TRUE, 
					IS_RIGHT            = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_BOSS_EXPERT"],
					START_POS	= { 10, },					
					HAVE_BOSS_GAGE		= TRUE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
 	STAGE24 =
	{
		WORLD_ID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
			NPC_UNIT_ID["NUI_SMALLGATE_RED"],
			NPC_UNIT_ID["NUI_CHEST"],
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
					NPC_UNIT_ID["NUI_SMALLGATE_RED"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 25, 0, 100 },
			},

			NPC_GROUP =
			{
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					START_POS	= { 9, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
					START_POS	= { 8, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_RED"],
					START_POS	= { 8, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
					START_POS	= { 9, },
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 2, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	
	STAGE25 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE6"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
			NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
			NPC_UNIT_ID["NUI_CANNON_MINI"],
			NPC_UNIT_ID["NUI_CANNON_BIG"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_RAVEN"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 26, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN"],
					START_POS	= { 10, },
					HAVE_BOSS_GAGE = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN"],
					START_POS	= { 7, },
					HAVE_BOSS_GAGE = TRUE, 
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN"],
					START_POS	= { 13, },
					HAVE_BOSS_GAGE = TRUE, 
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	
	STAGE26 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_ALTERA_MINE"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 27, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
					START_POS	= { 16, },
     				HAVE_BOSS_GAGE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
					START_POS	= { 9, },
     				HAVE_BOSS_GAGE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
					START_POS	= { 6, },
     				HAVE_BOSS_GAGE	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	
	STAGE27 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
			NPC_UNIT_ID["NUI_ALTERA_MINE_NONE"],
			NPC_UNIT_ID["NUI_PARASITE"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_BAT_SONIC"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_CANNON_MINI"],
			NPC_UNIT_ID["NUI_CANNON_MINI_UP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE_A"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
    			CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 6 },
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 28, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_SHELL"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"],
					START_POS	= { 1, },
					GAGE_BAR	= TRUE,					
					HAVE_BOSS_GAGE	= TRUE,
					KEY_CODE	= 6,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,					
					KEY_CODE	= 5,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"],
					START_POS	= { 1, },
					ACTIVE		= TRUE,
					GAGE_BAR	= FALSE,									
					KEY_CODE	= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,					
					KEY_CODE	= 2,					

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,					
					KEY_CODE	= 3,					

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,					
					KEY_CODE	= 4,					

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 12, },					
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 17, },					
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
					START_POS	= { 4, 6, },					
					ACTIVE		= FALSE,        NO_DROP = TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
					START_POS	= { 14, 15, },					
					ACTIVE		= FALSE,        NO_DROP = TRUE,					
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE28 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_STAGE3"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MOUSE"],
			NPC_UNIT_ID["NUI_NASOD_MOUSE_HOUSE"],
			NPC_UNIT_ID["NUI_SHOCK_STICK"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_SOLO"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_SOLO"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE"],
			NPC_UNIT_ID["NUI_BARRIERMACHINE_FIRE"],
			NPC_UNIT_ID["NUI_BARRIERMACHINE_ICE"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 29, 0, 100 },
			},

			NPC_GROUP =
			{
			     {
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"],
					START_POS	= { 5, },
					HAVE_BOSS_GAGE	= TRUE,					

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE"],
					START_POS	= { 3, },
					HAVE_BOSS_GAGE	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRIERMACHINE_FIRE"],
					START_POS	= { 4, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRIERMACHINE_ICE"],
					START_POS	= { 2, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,					
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE29 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN"],
			NPC_UNIT_ID["NUI_NASOD_SHERIFF"],
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_NASOD_GUARD"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_MAKER"],
			NPC_UNIT_ID["NUI_RAVEN_CLONE"],
			NPC_UNIT_ID["NUI_CHEST"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 30, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN_CLONE"],
					START_POS	= { 16, },
					HAVE_BOSS_GAGE = TRUE,  
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN_CLONE"],
					START_POS	= { 18, },
					HAVE_BOSS_GAGE = TRUE,   
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN_CLONE"],
					START_POS	= { 9, },
					HAVE_BOSS_GAGE = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE30 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_EL_POWER_PLANT"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_FIRE"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_ICE"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_EARTH"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_NOVA"],
			NPC_UNIT_ID["NUI_NASOD_KING"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_EARTH"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_FIRE"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NOVA"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_ICE"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_POWER_PLANT"],
					START_POS	= { 1, },
					HAVE_BOSS_GAGE	= TRUE,
					KEY_CODE    = 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_KING"],
					START_POS	= { 54, },
					GAGE_BAR	= FALSE,					

				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},	

}
