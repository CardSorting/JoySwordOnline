-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 96, 38 },
			SUB_STAGE1 = { 137, 38 },
			SUB_STAGE2 = { 178, 38 },
		    SUB_STAGE3 = { 219, 38 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 281, 38 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 281, 96 },
			SUB_STAGE1 = { 240, 96 },
			SUB_STAGE2 = { 199, 96 },
			SUB_STAGE3 = { 158, 96 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 96, 96 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 96, 154 },
			SUB_STAGE1 = { 137, 154 },
			SUB_STAGE2 = { 178, 154 },
		    SUB_STAGE3 = { 219, 154 },
			SUB_STAGE4 = { 260, 154 },
		},
		STAGE5 =
		{
			SUB_STAGE0 = { 260, 212 },
		},
		STAGE6 =
		{
			SUB_STAGE0 = { 219, 212 , TRUE },
		},
	},
	
	
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_CORE_STAGE2"],	
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_B_MOVE"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_B"],
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
					LINE_INDEX	= 19,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 38, },
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
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 25,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
					START_POS	= { 53, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 56, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
					START_POS	= { 57, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
					START_POS	= { 60, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
					START_POS	= { 65, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 71, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				
				
		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 84, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_B_MOVE"],
					START_POS	= { 85, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 90, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_B_MOVE"],
					-- START_POS	= { 91, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
					START_POS	= { 96, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					-- START_POS	= { 67, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					-- START_POS	= { 75, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					-- START_POS	= { 74, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					-- START_POS	= { 93, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					-- START_POS	= { 96, },
				-- },
			},

			TRIGGER_LIST =
			{
			},
		},

		SUB_STAGE2 =
		{
			START_LINE_SET      = 3,
			MAIN_LINE_SET       = 4,
			END_LINE_SET        = 5,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 3, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 25,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 30,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
	   			{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
					START_POS	= { 111, },
				},
       			{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
					START_POS	= { 134, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 106, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 122, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 107, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 127, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 113, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					-- START_POS	= { 112, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 120, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 136, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 128, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

		SUB_STAGE3 =
		{
			START_LINE_SET      = 5,
			MAIN_LINE_SET       = 6,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 30,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 148, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 161, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 183, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 157, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					-- START_POS	= { 166, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- KEY_CODE    = 3,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 163, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 170, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_B"],
					START_POS	= { 185, },
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 186, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_CORE_STAGE2_MIDDLE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 5, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_CORE_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_B"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_B"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_C"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_B_MOVE"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
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
					LINE_INDEX	= 27,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
					START_POS	= { 14, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
					START_POS	= { 26, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 11, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 22, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 29, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 7, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 19, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 6, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 32, },
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 27,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 21,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
					START_POS	= { 64, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_B_MOVE"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
					KEY_CODE    = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 47, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 53, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 61, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 63, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 72, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 44, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 68, },
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
			END_LINE_SET        = 5,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 3, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 21,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 15,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C"],
					START_POS	= { 91, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_B"],
					START_POS	= { 93, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
					KEY_CODE    = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
					START_POS	= { 96, },
					IS_RIGHT	= TRUE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C"],
					-- START_POS	= { 95, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT	= TRUE,
					-- KEY_CODE    = 3,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					-- START_POS	= { 97, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT	= TRUE,
					-- KEY_CODE    = 3,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 102, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_B_MOVE"],
					START_POS	= { 103, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
					START_POS	= { 105, },
					IS_RIGHT	= TRUE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					-- START_POS	= { 104, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT	= TRUE,
					-- KEY_CODE    = 3,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
					START_POS	= { 107, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
					KEY_CODE    = 1,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					-- START_POS	= { 108, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT	= TRUE,
					-- KEY_CODE    = 3,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_B_MOVE"],
					START_POS	= { 110, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
					KEY_CODE    = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C"],
					START_POS	= { 113, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C"],
					START_POS	= { 115, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT	= TRUE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
					START_POS	= { 119, },
					IS_RIGHT	= TRUE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C"],
					-- START_POS	= { 118, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- IS_RIGHT	= TRUE,
					-- KEY_CODE    = 3,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					-- START_POS	= { 118, },
					-- IS_RIGHT	= TRUE,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					-- START_POS	= { 105, },
					-- IS_RIGHT	= TRUE,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					-- START_POS	= { 104, },
					-- IS_RIGHT	= TRUE,
				-- },
			},

			TRIGGER_LIST =
			{
			},
		},

		SUB_STAGE3 =
		{
			START_LINE_SET      = 5,
			MAIN_LINE_SET       = 6,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 15,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_B"],
					START_POS	= { 139, },
					IS_RIGHT	= TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 140, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 160, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 133, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 166, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 124, },
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
		WORLD_ID = WORLD_ID["WI_ALTERA_CORE_STAGE3_MIDDLE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN_CLONE_B"],
					START_POS	= { 9, },
					IS_RIGHT	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_CORE_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
			NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_B"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_C"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_B_MOVE"],
			NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
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
					LINE_INDEX	= 15,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 26, },
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 15,
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
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
					START_POS	= { 46, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
					START_POS	= { 54, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 50, },
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
			END_LINE_SET        = 5,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 3, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 18,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 23,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
					START_POS	= { 93, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_B"],
					START_POS	= { 78, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 62, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 90, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 70, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 75, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 81, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 96, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

		SUB_STAGE3 =
		{
			START_LINE_SET      = 5,
			MAIN_LINE_SET       = 6,
			END_LINE_SET        = 7,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 4, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 23,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 28,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
					START_POS	= { 108, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_B"],
					START_POS	= { 112, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 2,
				},
								{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C"],
					START_POS	= { 110, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					-- START_POS	= { 116, },
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- KEY_CODE    = 3,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_B_MOVE"],
					START_POS	= { 121, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_A"],
					START_POS	= { 128, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_B_MOVE"],
					START_POS	= { 136, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 132, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					-- START_POS	= { 126, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 125, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
					START_POS	= { 110, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"],
					-- START_POS	= { 138, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
					START_POS	= { 140, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

		SUB_STAGE4 =
		{
			START_LINE_SET      = 7,
			MAIN_LINE_SET       = 8,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NORMAL_A"],
					START_POS	= { 195, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 152, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 183, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ALARM_SYSTEM_C_MOVE"],
					START_POS	= { 158, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					KEY_CODE    = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 176, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 181, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 151, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 159, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
					START_POS	= { 192, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE"],
					START_POS	= { 165, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"],
					START_POS	= { 167, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_CORE_STAGE4_MIDDLE"],

		READY_NPC = 
		{
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100 },
			},

			NPC_GROUP =
			{
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_PD_MONSTER"],
				    START_POS	= { 4, },
					KEY_CODE	= 1,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	STAGE6 =
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
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 9,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_KING"],
					START_POS	= { 54, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
