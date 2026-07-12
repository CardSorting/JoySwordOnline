-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 159, 67 },
			SUB_STAGE1 = { 200, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 262, 67 },
		},
		STAGE2 =
		{
       		SUB_STAGE0 = { 324, 67 , TRUE},
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_RUIN_OF_ELF_STAGE1"],
		START_MOTION = TRUE,
		
		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
			NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE"],
					START_POS	= { 10, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
					START_POS	= { 7, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE"],
					START_POS	= { 24, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 16, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
					START_POS	= { 16, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
					START_POS	= { 28, },	
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE"],
					START_POS	= { 40, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
					START_POS	= { 37, },	
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE"],
					START_POS	= { 48, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
					START_POS	= { 46, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 53, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 67, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 64, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 59, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 61, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_RUIN_GATE"],
					START_POS	= { 71, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},


	

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_RUIN_OF_ELF_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
			NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
			NPC_UNIT_ID["NUI_RUBEN_RUIN_GATE"],	
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
					NPC_UNIT_ID["NUI_RUBEN_RUIN_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			NPC_GROUP =
			{
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 8, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE"],
					START_POS	= { 18, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
					START_POS	= { 21, },				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 14, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 27, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 36, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
					START_POS	= { 45, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE"],
					START_POS	= { 67, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 55, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 64, },	
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_RUIN_GATE"],
					START_POS	= { 73, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},

	
	
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_RUIN_OF_ELF_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_NORMAL"],

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
					NPC_UNIT_ID["NUI_PPORU_WILLIAM_NORMAL"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_NORMAL"],
					START_POS	= { 5, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
					START_POS	= { 3, },	
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_CUTE_THIEF"],
					START_POS	= { 9, },	
					ACTIVE		= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
}