


-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_BUNKER"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 17, },
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
					NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 8,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 26, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 26, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 34, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 34, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 32, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 32, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 29, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 29, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 27, },
					ACTIVE		= FALSE,	
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
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
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE3"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA_NPC"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_BUNKER"],
			NPC_UNIT_ID["NUI_CHEST"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],
			
			EXTRA_NPC_START_POS = 45,
			EXTRA_NPC_IS_LEFT = TRUE, 

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
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 56,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 51, },
					ACTIVE		= FALSE,	
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 55, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 42, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 42, },
					SIEGE_MODE	= TRUE,
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

			GO_TYPE             = GO_TYPE["GT_LEFT"],
			
			EXTRA_NPC_START_POS = 17,
			EXTRA_NPC_IS_LEFT = TRUE, 

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 60,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 44,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 24, },
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
			
			EXTRA_NPC_START_POS = 2,

			GO_TYPE             = GO_TYPE["GT_LEFT"],
			EXTRA_NPC_IS_LEFT = TRUE, 

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 46,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 9, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 9, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 5, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 5, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 71, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 65, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 73, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					LOOK_LEFT	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 73, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	
	
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE4"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA_NPC"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
			NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
			NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
			NPC_UNIT_ID["NUI_WALLY_7TH_HELL"],
			NPC_UNIT_ID["NUI_BOX"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 7,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 3, 16, 18,},
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
			
			EXTRA_NPC_START_POS = 28,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 2, 100 },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 26,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 24,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP"],
					START_POS	= { 38, },
					ACTIVE		= FALSE, 		NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 48, },
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
			
			EXTRA_NPC_START_POS = 62,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 24,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP"],
					START_POS	= { 55, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,	
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 51, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 53, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 58, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 560, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
					START_POS	= { 63, },
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
		WORLD_ID = WORLD_ID["WI_ELDER_SECRET_STAGE4"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA_NPC"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
			NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
			NPC_UNIT_ID["NUI_WALLY_7TH_HELL"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_LATTICE_GATE_ELDER_SECRET"],
		},
		
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			EXTRA_NPC_START_POS = 13,

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
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_7TH_HELL"],
					START_POS	= { 14, },
					FOCUS_CAMERA    = TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 6, },
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
			
			EXTRA_NPC_START_POS = 23,

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_LATTICE_GATE_ELDER_SECRET"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
			},
			
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{		
					NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
			},
			
			CURTAIN_GROUP =
			{
				{	
					LINE_INDEX	= 1,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},	
			},
			
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
					START_POS	= { 20, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI_UP"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI_UP"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MK2_HELL"],
					START_POS	= { 23, },
					FOCUS_CAMERA    = TRUE,
					STOP_AT_START_STATE = TRUE,	
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LATTICE_GATE_ELDER_SECRET"],
					START_POS	= { 31, },
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
		WORLD_ID = WORLD_ID["WI_ELDER_SECRET_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_INSPECTOR_HELL"],
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
					NPC_UNIT_ID["NUI_NASOD_INSPECTOR_HELL"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_INSPECTOR_HELL"],
					START_POS	= { 13, },
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
	
	
	
	
	
	
	
	
	
	
	
	
	----------여기서 부터 엑스트라 모드 입니다----------
	
	
	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE1"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_BUNKER"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 5, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 13, },	NO_DROP = TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 13, },
					SIEGE_MODE	= TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 8, },	NO_DROP = TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 8, },
					SIEGE_MODE	= TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 4, },	NO_DROP = TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 4, },
					SIEGE_MODE	= TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 7, },	NO_DROP = TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 7, },
					SIEGE_MODE	= TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 2, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 11, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 18, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 20, },
					--LEVEL		= 50,
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
					NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 8,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 22, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 29, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 36, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 30, },
					NO_DROP = TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 30, },
					SIEGE_MODE	= TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 34, },
					NO_DROP = TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 34, },
					SIEGE_MODE	= TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 25, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 36, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 39, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 21, 24, },
					ACTIVE		= FALSE,	
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 26, 27, },
					ACTIVE		= FALSE,	
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 36, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
				
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,					
					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	
	STAGE6 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE2"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_BUNKER"],
			NPC_UNIT_ID["NUI_CHEST"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 6, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 56,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 59, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 55, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 56, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 53, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 51, 49, },
					ACTIVE		= FALSE,	
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 46, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 45, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 37, 42, },
					ACTIVE		= FALSE,	
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 41, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 39, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 40, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 34, },
					--LEVEL		= 50,
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

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 6, 2, 100 },
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 60,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 44,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 23, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 21, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 28, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 26, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 24, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 18, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 20, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 24, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 24, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 18, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 18, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 28, 21, },
					ACTIVE		= FALSE,	
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
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

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 7, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 46,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 10, },
					NO_DROP = TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 10, },
					SIEGE_MODE	= TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 6, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 6, },
					SIEGE_MODE	= TRUE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 5, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 9, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
					START_POS	= { 5, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF_HELL"],
					START_POS	= { 1, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 73, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					LOOK_LEFT	= TRUE,
					--LEVEL		= 50,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 66, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 71, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 73, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					LOOK_LEFT	= TRUE,
					--LEVEL		= 50,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	
	
	STAGE7 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE3"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
			NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL_HELL"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
			NPC_UNIT_ID["NUI_CHEST"],
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
					LINE_INDEX	= 7,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 7, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 10, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 4, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 8, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 13, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 14, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 22, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 19, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON_HELL"],
					START_POS	= { 26, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE_HELL"],
					START_POS	= { 25, },
					--LEVEL		= 50,
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 7, 2, 100 },
			},
			


			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 26,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 24,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 30, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 33, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 38, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 45, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 47, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 42, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK_HELL"],
					START_POS	= { 36, },
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP"],
					START_POS	= { 38, },
					ACTIVE		= FALSE, 		NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 39, 35, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
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
					NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 8, 0, 100, },
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 24,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP"],
					START_POS	= { 55, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,	
					GAGE_BAR	= FALSE,
					--LEVEL		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 50, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 58, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 56, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
					START_POS	= { 63, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	STAGE8 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE4"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
			NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
			NPC_UNIT_ID["NUI_WALLY_7TH_HELL"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_LATTICE_GATE_ELDER_SECRET"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 8, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_7TH_HELL"],
					START_POS	= { 14, },
					FOCUS_CAMERA    = TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
					START_POS	= { 15, },
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
					NPC_UNIT_ID["NUI_LATTICE_GATE_ELDER_SECRET"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 9, 0, 100, },
			},
			
			CURTAIN_GROUP =
			{
				{	
					LINE_INDEX	= 1,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},	
			},
			
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER_HELL"],
					START_POS	= { 20, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST_HELL"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_HELL"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI_UP"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI_UP"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_7TH_HELL"],
					START_POS	= { 22, },
					--FOCUS_CAMERA    = TRUE,
					--SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MK2_HELL"],
					START_POS	= { 24, },
					FOCUS_CAMERA    = TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LATTICE_GATE_ELDER_SECRET"],
					START_POS	= { 31, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
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
		WORLD_ID = WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE5"],
		STAGE_TYPE = STAGE_TYPE["ST_EXTRA"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_INSPECTOR_EXTRA"],
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
					NPC_UNIT_ID["NUI_NASOD_INSPECTOR_EXTRA"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_INSPECTOR_EXTRA"],
					START_POS	= { 14, },
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
