-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_COMMON"],
			NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
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
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 13, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE_COMMON"],
					START_POS	= { 17, },
				},
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_COMMON"],
					START_POS	= { 34, },
				},		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_COMMON"],
					START_POS	= { 27, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
				},
			},

			TRIGGER_LIST =
			{
				TRIGGER0 = 
				{
					HOST				= FALSE,    --방장만 보이는냐?  다 보이느냐 false 면 다 보임
					ONE_TIME			= TRUE,    --반복 여부 false 면 반복함
					INTERVAL			= 7,       -- 반복 시간 
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER0", --조건 설정	
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER0", --얼람 함수 지정 		 	
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
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 60, },
					--LEVEL		= 45,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 60, },
					--LEVEL		= 45,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
					START_POS	= { 55, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
					START_POS	= { 48, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 45, },
					ACTIVE		= FALSE,       
					NO_DROP = TRUE,
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,       
					NO_DROP = TRUE,
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE_COMMON"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_COMMON"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 53, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 59, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,        
					NO_DROP = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	
	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_COMMON"],
			NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE_COMMON"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS2"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 12, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,        
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,        
					NO_DROP = TRUE,
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 19, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,        
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FACTORY_PRESS3"],
					START_POS	= { 48, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 45, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 45, },
				},
						{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 55, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 55, },
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
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_COMMON"],
			NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE_COMMON"],
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
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,        
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,        
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 17, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,        
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,        
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 31, },
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
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 18,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 45, },
				},
				

				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 50, },
				},
				
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 48, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE_COMMON"],
					START_POS	= { 59, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 59, },
					ACTIVE		= FALSE,        
					NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 61, },
					ACTIVE		= FALSE,        
					NO_DROP = TRUE,
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

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 67, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 71, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 74, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 76, },
				},	
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 72, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 74, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 76, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 90, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 93, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
					START_POS	= { 92, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK_NONE"],
					START_POS	= { 74, },
					--LEVEL		= 45,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK_NONE"],
					START_POS	= { 78, },
					--LEVEL		= 45,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK_NONE"],
					START_POS	= { 85, },
					--LEVEL		= 45,
					ACTIVE		= FALSE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 95, },
					--LEVEL		= 45,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 95, },
					--LEVEL		= 45,
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
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_FACTORY_PRESS"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_COMMON"],
			NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE_COMMON"],
			NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE_COMMON"],	
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
					LINE_INDEX	= 6,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,        
					NO_DROP 	= TRUE,
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,        
					NO_DROP 	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_DIE_COMMON"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE_COMMON"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= {23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,        
					NO_DROP 	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_COMMON"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 29, },
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_P_COMMON"],
					START_POS	= { 39, },
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_COMMON"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 60, },
				},
			
			

				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 64, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_COMMON"],
					START_POS	= { 53, },
				},
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_COMMON"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH_P_DIE_COMMON"],
					START_POS	= { 44, },
				},
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_P_COMMON"],
					START_POS	= { 70, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF_P_COMMON"],
					START_POS	= { 72, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_MINE_A"],
					START_POS	= { 74, },
					--LEVEL		= 32,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_MINE_A"],
					START_POS	= { 74, },
					ACTIVE		= FALSE,
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
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_ELSWORD_PARASITE_COMMON"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELSWORD_PARASITE_COMMON"],
					START_POS	= { 9, },
					--LEVEL		= 45,
					HAVE_BOSS_GAGE	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 15,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_REVERS_COMMON"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,       
					NO_DROP	    = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}

function CF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )  -- 조건 지정하는 창 : 몬스터 존재 등등의 여러 가지 사용 가능함 사용하려면 프로그래머에게 문의 

	return true

end

function RF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	-- 알람 id, ShowTime, color, danger, string (알람id는 해당던전스크립트내에서 유일해야 함)
	pX2DungeonGame:ShowDangerAlarm_LUA( 1, 5, ALARM_COLOR_TYPE["ACT_MAGENTA"], false, STR_ID_15272 ) --던전에서 알람을 많이 사용하고 싶은 경우, 아이디를 여러게 사용해야함
	
end
