-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 89, 67 },
			SUB_STAGE1 = { 130, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 191, 67 },
			SUB_STAGE1 = { 232, 67 },
		},
		STAGE2 =
		{
       		SUB_STAGE0 = { 294, 67 },
			SUB_STAGE1 = { 335, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 397, 67, TRUE },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 397, 67, TRUE },
		},
		STAGE5 =
		{
			SUB_STAGE0 = { 397, 67, TRUE },
		},
		STAGE6 =
		{
			SUB_STAGE0 = { 397, 67, TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_RUIN_OF_ELF_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_RAIL_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_EVENT"],
			NPC_UNIT_ID["NUI_ENT_EVENT"],
			NPC_UNIT_ID["NUI_ENT_SMALL_EVENT"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT_EVENT"],
			NPC_UNIT_ID["NUI_RUBEN_RUIN_GATE"],
			NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
			
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
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 25, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_EVENT"],
					START_POS	= { 4, },
					LEVEL  		= 1,	
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
					START_POS	= { 22, },
					LEVEL  		= 1,	
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 20, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE, 	
					ACTIVE		= FALSE,
				},  ----아군 NPC
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
					START_POS	= { 13, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_EVENT"],
					START_POS	= { 17, },
					LEVEL  		= 1,	
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_EVENT"],
					START_POS	= { 28, },
					LEVEL  		= 1,	
				},		
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					-- START_POS	= { 15, },
					-- LEVEL  		= 1,	
					-- ALLY_NPC 	= TRUE, 
				-- },  ----아군 NPC
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
					NPC_UNIT_ID["NUI_RUBEN_RUIN_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 50 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 64, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL_EVENT"],
					START_POS	= { 33, },
					IS_RIGHT	= TRUE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL_EVENT"],
					START_POS	= { 46, },
					LEVEL  		= 1,	
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
					START_POS	= { 40, },
					LEVEL  		= 1,	
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 44, },
					LEVEL  		= 1,	
					ALLY_NPC 	= TRUE, 
					ACTIVE		= FALSE,
				},  ----아군 NPC
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
					START_POS	= { 55, },
					LEVEL  		= 1,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
					START_POS	= { 64, },
					LEVEL  		= 1,	
				},					
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
					START_POS	= { 56, },
					LEVEL  		= 1,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
					START_POS	= { 59, },
					LEVEL  		= 1,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 60, },
					LEVEL  		= 1,	
					ALLY_NPC 	= TRUE, 
					ACTIVE		= FALSE,
				},  ----아군 NPC
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_RUIN_GATE"],
					START_POS	= { 71, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
					LEVEL  		= 1,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_NEW_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_RAIL_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_EVENT"],
			NPC_UNIT_ID["NUI_ENT_EVENT"],
			NPC_UNIT_ID["NUI_ENT_SMALL_EVENT"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT_EVENT"],
			NPC_UNIT_ID["NUI_RUBEN_RUIN_GATE"],
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
					LINE_INDEX	= 13,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
					START_POS	= { 6, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
					START_POS	= { 8, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 11, },
					LEVEL  		= 1,
					IS_RIGHT	= TRUE,
					ALLY_NPC 	= TRUE,
					ACTIVE		= FALSE,
				}, ----아군 NPC
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
					START_POS	= { 23, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
					START_POS	= { 16, },
					LEVEL  		= 1,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 29, },
					LEVEL  		= 1,
					IS_RIGHT	= TRUE,
					ALLY_NPC 	= TRUE,
					ACTIVE		= FALSE,
				}, ----아군 NPC
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
					START_POS	= { 32, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
					START_POS	= { 35, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
					START_POS	= { 29, },
					LEVEL  		= 1,
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
					NPC_UNIT_ID["NUI_RUBEN_RUIN_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 13,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL_EVENT"],
					START_POS	= { 41, },
					IS_RIGHT	= TRUE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_RAIL_EVENT"],
					START_POS	= { 75, },
					IS_RIGHT	= TRUE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
					START_POS	= { 54, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
					START_POS	= { 50, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
					START_POS	= { 39, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
					START_POS	= { 42, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
					START_POS	= { 43, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 58, },
					LEVEL  		= 1,		
					ALLY_NPC 	= TRUE,
					ACTIVE		= FALSE,
				},  -------아군 npc 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
					START_POS	= { 63, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
					START_POS	= { 66, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
					START_POS	= { 73, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_RUIN_GATE"],
					START_POS	= { 80, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
					LEVEL  		= 1,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},

	
	
	
	
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_NEW_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
			NPC_UNIT_ID["NUI_EVENT_FREST_KNIGHT"],
			NPC_UNIT_ID["NUI_EVENT_FREST_LORD_SMALL"],
			NPC_UNIT_ID["NUI_EVENT_FREST_LORD"],
			NPC_UNIT_ID["NUI_ENT_EVENT"],
			NPC_UNIT_ID["NUI_ENT_SMALL_EVENT"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT_EVENT"],
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
					LINE_INDEX	= 53,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_LORD_SMALL"],
					START_POS	= { 4, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_LORD"],
					START_POS	= { 5, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 15, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,	
					ACTIVE		= FALSE,
				},  -------아군 npc 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_LORD_SMALL"],
					START_POS	= { 10, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_KNIGHT"],
					START_POS	= { 12, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_LORD_SMALL"],
					START_POS	= { 17, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_KNIGHT"],
					START_POS	= { 18, },
					LEVEL  		= 1,
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
					NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 25 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 25 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 25 },
				NEXT_STAGE3 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 25 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 53,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_KNIGHT"],
					START_POS	= { 25, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_LORD_SMALL"],
					START_POS	= { 28, },
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 24, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,
					ACTIVE		= FALSE,
				},---------아군 npc 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_LORD"],
					START_POS	= { 36, },
					LEVEL  		= 1,
				},
				
				

				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 38, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,
					ACTIVE		= FALSE,
				},---------아군 npc
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE_POST"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
					LEVEL  		= 1,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},

	
	
	
	
	
	
----보스 스테이지 1번--------------------	
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_DRILLER_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
			NPC_UNIT_ID["NUI_BOX_EVENT"],
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
					NPC_UNIT_ID["NUI_NASOD_DRILLER_EVENT"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER_EVENT"],
					START_POS	= { 6, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					BOSS_GAUGE_HP_LINES = 4,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER_EVENT"],
					START_POS	= { 10, },
					HAVE_BOSS_GAGE = TRUE,
					--FOCUS_CAMERA	= TRUE,
					--SHOW_BOSS_NAME	= TRUE,
					BOSS_GAUGE_HP_LINES = 4,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 3, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,
					ACTIVE		= FALSE,
				},---------아군 npc
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 11, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,
					ACTIVE		= FALSE,
				},---------아군 npc
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	

	
------------보스스테이지 2번째---------------	
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_9TH_EVENT"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_EVENT"],
			NPC_UNIT_ID["NUI_BOX_EVENT"],
			NPC_UNIT_ID["NUI_ENT_EVENT"],
			NPC_UNIT_ID["NUI_ENT_SMALL_EVENT"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT_EVENT"],
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
					NPC_UNIT_ID["NUI_WALLY_9TH_EVENT"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_EVENT"],
					START_POS	= { 6, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					BOSS_GAUGE_HP_LINES = 4,
					LEVEL  		= 1,
				},
								{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_EVENT"],
					START_POS	= { 10, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					BOSS_GAUGE_HP_LINES = 4,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_EVENT"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_THIN_EVENT"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 3, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,
					IS_RIGHT	= TURE,
					ACTIVE		= FALSE,
				},---------아군 npc
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 11, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,
					ACTIVE		= FALSE,
				},---------아군 npc
			},

			TRIGGER_LIST =
			{
			},
		},
	},
			
------------보스스테이지 3번째---------------	
	
	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_B_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
			NPC_UNIT_ID["NUI_BOX_EVENT"],
			NPC_UNIT_ID["NUI_ENT_EVENT"],
			NPC_UNIT_ID["NUI_ENT_SMALL_EVENT"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT_EVENT"],
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
					NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_B_EVENT"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_B_EVENT"],
					START_POS	= { 10, },
					HAVE_BOSS_GAGE  = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					BOSS_GAUGE_HP_LINES = 3,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_B_EVENT"],
					START_POS	= { 5, },
					HAVE_BOSS_GAGE  = TRUE,
					BOSS_GAUGE_HP_LINES = 3,
					LEVEL  		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 3, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,
					IS_RIGHT	= TURE,
					ACTIVE		= FALSE,
				},---------아군 npc
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 11, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,
					ACTIVE		= FALSE,
				},---------아군 npc

			},

			TRIGGER_LIST =
			{
			},
		},
		
	},	
		
		
------------보스스테이지 4번째---------------	
	
	STAGE6 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_MK2_EVENT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_EVENT"],
			NPC_UNIT_ID["NUI_BOX_EVENT"],
			NPC_UNIT_ID["NUI_ENT_EVENT"],
			NPC_UNIT_ID["NUI_ENT_SMALL_EVENT"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT_EVENT"],
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
					NPC_UNIT_ID["NUI_WALLY_8TH_MK2_EVENT"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MK2_EVENT"],
					START_POS	= { 6, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					BOSS_GAUGE_HP_LINES = 4,
					LEVEL 		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MK2_EVENT"],
					START_POS	= { 10, },
					HAVE_BOSS_GAGE = TRUE,
					--FOCUS_CAMERA	= TRUE,
					--SHOW_BOSS_NAME	= TRUE,
					BOSS_GAUGE_HP_LINES = 4,
					LEVEL 		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					LEVEL 		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,
					LEVEL 		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 3, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,
					IS_RIGHT	= TURE,
					ACTIVE		= FALSE,
				},---------아군 npc
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EVENT_FREST_FAIRY"],
					START_POS	= { 11, },
					LEVEL  		= 1,
					ALLY_NPC 	= TRUE,
					ACTIVE		= FALSE,
				},---------아군 npc
			},

			TRIGGER_LIST =
			{
			},
		},	
	},
	
}
	
function  CF_STAGE0_SUB1_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	if pX2DungeonGame:GetEnableMonsterFly() == false then
	
		return false
	
	end

	if pX2DungeonGame:LiveUserUnitNum() > 0 then
		return true
	else
		return false
	end

end

function RF_STAGE0_SUB1_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pos	= pKTDXApp:GetVec3( 9909, 1660, 410 )
	vfDelayTimeNKeyCode	= pKTDXApp:GetVec3( 0, 120, 2100 )
	pX2DungeonGame:CreateNPCReq_LUA2( NPC_UNIT_ID[ "NUI_MINER_THIN" ], 1, true, pos, true, vfDelayTimeNKeyCode, true ) 
	
	pos	= pKTDXApp:GetVec3( 10209, 1600, 410 )
	vfDelayTimeNKeyCode	= pKTDXApp:GetVec3( 0, 120, 2100 )
	pX2DungeonGame:CreateNPCReq_LUA2( NPC_UNIT_ID[ "NUI_MINER_THIN" ], 1, true, pos, false, vfDelayTimeNKeyCode, true ) 

end
