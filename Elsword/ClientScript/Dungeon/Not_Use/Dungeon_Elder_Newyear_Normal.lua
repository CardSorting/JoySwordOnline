-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 56, 67 },
			SUB_STAGE1 = { 97, 67 },
			SUB_STAGE2 = { 138, 67 },
			SUB_STAGE3 = { 189, 67 },
		},
		STAGE1 =
		{
			SSUB_STAGE0 = { 241, 67 , TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_2009_NEW_YEAR_EVENT_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MUSHROOM"],
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
			NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL_EVENT"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_NORMAL_EVENT"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
			NPC_UNIT_ID["NUI_WALLY_8TH_EVENT"],
			NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
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
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 2, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 7, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 13, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 9, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 3, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 6,  },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_NORMAL_EVENT"],
					START_POS	= { 11, },
					LEVEL		= 1,
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

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 1,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 15,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 19, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 24, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 32, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 22, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 35, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 27, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL_EVENT"],
					START_POS	= { 34, },					
					LEVEL		= 1,
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

			CLEAR_COND0	=
			{
    			CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 3, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 9,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 22,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 53, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 44, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 47, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 56, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 41, },
					LEVEL		= 1,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 59, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_EVENT"],
					START_POS	= { 49, },
					LEVEL		= 1,
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

			CLEAR_COND0	=
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
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_WALLY_CASTLE_A"],
					START_POS	= { 75, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_WALLY_CASTLE_A"],
					START_POS	= { 75, },
					LEVEL		= 1,
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
		WORLD_ID = WORLD_ID["WI_2009_NEW_YEAR_EVENT_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
			NPC_UNIT_ID["NUI_RAVEN_EVENT2"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_RAVEN_EVENT"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 10, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 16, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"],
					START_POS	= { 6, },
					LEVEL		= 1,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN_EVENT"],
					START_POS	= { 15, },
					LEVEL		= 1,
					FOCUS_CAMERA    = TRUE,
					SHOW_BOSS_NAME  = TRUE,
					HAVE_BOSS_GAGE  = TRUE,
				},
			},
			TRIGGER_LIST =
			{
			},
		},

	},

}
