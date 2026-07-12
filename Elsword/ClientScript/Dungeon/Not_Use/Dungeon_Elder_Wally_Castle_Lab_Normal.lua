-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_FIST"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE"],
			NPC_UNIT_ID["NUI_WALLY_8TH_LASER"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
			NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
			NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 13, },	NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
					START_POS	= { 3, 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL"],
					START_POS	= { 16, 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
					START_POS	= { 13, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
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
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 36, 29, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
					START_POS	= { 30, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 30, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 34, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
					START_POS	= { 34, },
					SIEGE_MODE	= TRUE,
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
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 39, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_FIST"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE"],
			NPC_UNIT_ID["NUI_WALLY_8TH_LASER"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
			NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
			NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST"],
					START_POS	= { 10, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE"],
					START_POS	= { 15, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER"],
					START_POS	= { 18, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 21, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
					START_POS	= { 21, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 19, },
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
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_FIST"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE"],
			NPC_UNIT_ID["NUI_WALLY_8TH_LASER"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
			NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
			NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL"],
					START_POS	= { 59, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 51, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 41, },
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
					START_POS	= { 41, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 40, 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 44, 35, },
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

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 16, },
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_FIST"],
					START_POS	= { 71, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 73, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,	
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 73, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,	
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 67, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 9, 3, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE        = 40,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_FIST"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE"],
			NPC_UNIT_ID["NUI_WALLY_8TH_LASER"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ROYAL"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_POISON"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_FIRE"],
			NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
			NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 26,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 10, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 8, 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
					START_POS	= { 22, 24, },
					ACTIVE		= FALSE,	NO_DROP = TRUE,	
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 25, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP"],
					START_POS	= { 38, },
					ACTIVE		= FALSE, 		NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE"],
					START_POS	= { 38, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 37, },
					ACTIVE		= FALSE,	
					GAGE_BAR	= FALSE,
					RATE		= 60,
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_LASER"],
					START_POS	= { 55, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER"],
					START_POS	= { 59, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
					START_POS	= { 61, },
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

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE5"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_FIST"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE"],
			NPC_UNIT_ID["NUI_WALLY_8TH_LASER"],
			NPC_UNIT_ID["NUI_WALLY_7TH"],
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
					NPC_UNIT_ID["NUI_WALLY_7TH"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_7TH"],
					START_POS	= { 1, },
					HAVE_BOSS_GAGE  = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					FOCUS_CAMERA    = TRUE,
					MONSTER_GRADE	= 1,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
