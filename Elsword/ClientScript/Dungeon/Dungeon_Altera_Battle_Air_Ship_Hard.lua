-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 45, 67 },
			SUB_STAGE1 = { 86, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 148, 38 },
			SUB_STAGE1 = { 189, 38 },
			SUB_STAGE2 = { 230, 38 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 168, 96 },
			SUB_STAGE1 = { 209, 96 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 292, 67 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 354, 67 , TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
			NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
			NPC_UNIT_ID["NUI_CANNON_MINI"],
			NPC_UNIT_ID["NUI_CANNON_BIG"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
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
					LINE_INDEX	= 22,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 6, 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 4, },
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 2 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 22,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 32, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 24, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 2,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 25, },
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
		WORLD_ID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
			NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
			NPC_UNIT_ID["NUI_CANNON_MINI"],
			NPC_UNIT_ID["NUI_CANNON_BIG"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
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
					LINE_INDEX	= 21,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 64, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 66, 69, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 67, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
					START_POS	= { 70, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 82, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 91, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 88, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 93, },
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

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 21,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 66,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 102, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 99, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
					START_POS	= { 110, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 113, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
					START_POS	= { 107, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 104, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 106, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 100, },
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

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 66,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 119, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 118, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 127, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 121, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
					START_POS	= { 122, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 124, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 129, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 130, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 130, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
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
		WORLD_ID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
			NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
			NPC_UNIT_ID["NUI_CANNON_MINI"],
			NPC_UNIT_ID["NUI_CANNON_BIG"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
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
					LINE_INDEX	= 12,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
					START_POS	= { 21, },
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
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 33, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
					START_POS	= { 27, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE5"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
			NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
			NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
			NPC_UNIT_ID["NUI_CANNON_MINI"],
			NPC_UNIT_ID["NUI_CANNON_BIG_DOWN"],
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
					NPC_UNIT_ID["NUI_CANNON_BIG_DOWN"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"],
					START_POS	= { 8, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_HIGH"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
					START_POS	= { 8, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_CANNON_BIG"],
					-- START_POS	= { 30, },
					-- KEY_CODE	= 2,
					-- FOCUS_CAMERA	= TRUE,
					-- SHOW_SUB_BOSS_NAME  = TRUE,
					-- MONSTER_GRADE	= 2,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_BIG_DOWN"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 4, 15, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
			},
		},

	},

	STAGE4 =
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
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
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

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_RAVEN"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN"],
					START_POS	= { 13, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_MINI"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 5, 14, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_GUNNER"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
}