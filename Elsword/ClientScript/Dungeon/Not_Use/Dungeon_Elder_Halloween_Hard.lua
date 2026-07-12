-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 77, 67 },
			SUB_STAGE1 = { 118, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 180, 67 },
			SUB_STAGE1 = { 221, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 283, 67 },
			SUB_STAGE1 = { 324, 67 },
			SUB_STAGE2 = { 361, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 422, 67 , TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT1"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
			NPC_UNIT_ID["NUI_HALLOWEEN_MUSHROOM"],
			NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
			NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
			NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MUSHROOM"],
					START_POS	= { 4, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MUSHROOM"],
					START_POS	= { 10, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MUSHROOM"],
					START_POS	= { 21, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 24, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 26, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 18, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT1"],
					START_POS	= { 15, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
				},

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
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 41, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 47, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE2"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT1"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
			NPC_UNIT_ID["NUI_HALLOWEEN_MUSHROOM"],
			NPC_UNIT_ID["NUI_HALLOWEEN_CACTUS"],
			NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
			NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
			NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
			NPC_UNIT_ID["NUI_WISP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
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
					LINE_INDEX	= 5,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MUSHROOM"],
					START_POS	= { 4, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_CACTUS"],
					START_POS	= { 6, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 8, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 22, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_CACTUS"],
					START_POS	= { 24, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,						
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MUSHROOM"],
					START_POS	= { 16, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MUSHROOM"],
					START_POS	= { 19, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_CACTUS"],
					START_POS	= { 30, },	
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
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 5,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 36, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
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
		WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE4"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT1"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
			NPC_UNIT_ID["NUI_HALLOWEEN_MUSHROOM"],
			NPC_UNIT_ID["NUI_HALLOWEEN_CACTUS"],
			NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
			NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
			NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
			NPC_UNIT_ID["NUI_WISP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
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
					LINE_INDEX	= 6,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 4, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 9, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 11, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 17, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 13, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,						
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 23, },	
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
					LINE_INDEX	= 6,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_GLITER_HAMMER"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_GLITER_HAMMER"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 37, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
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
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 33 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 34 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 33 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_GLITER_HAMMER"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_GLITER_HAMMER"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
					START_POS	= { 64, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT_BOSS"],
					START_POS	= { 73, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT3"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
					START_POS	= { 77, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
					START_POS	= { 77, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
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
		WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HALLOWEEN_DULLAHAN_KNIGHT"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_1"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_2"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_3"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_4"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_1"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_2"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_3"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_4"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SUMMON_PUMPKIN_HARD"],
					START_POS	= { 1, },
					ACTIVE		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_DULLAHAN_KNIGHT"],
					START_POS	= { 12, },
					LEVEL       = 3,
					HAVE_BOSS_GAGE = TRUE,
                    --SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE = 1,
					FOCUS_CAMERA	= TRUE,
					KEY_CODE		= 10,
					BOSS_GAUGE_HP_LINES = 3,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	
    STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HALLOWEEN_GOLEM_BOSS"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_1"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_2"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_3"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_4"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_1"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_2"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_3"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_4"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SUMMON_PUMPKIN_HARD"],
					START_POS	= { 1, },
					ACTIVE		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_GOLEM_BOSS"],
					START_POS	= { 12, },
					HAVE_BOSS_GAGE = TRUE,
                    --SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE = 1,
					FOCUS_CAMERA	= TRUE,
					--IS_RIGHT		= TURE,
					KEY_CODE		= 10,
					BOSS_GAUGE_HP_LINES = 3,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HALLOWEEN_LIZARDMAN_SHAMANKING"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_1"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_2"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_3"],
			NPC_UNIT_ID["NUI_PUMPKIN_BOX_4"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_1"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_2"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_3"],
			NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_4"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SUMMON_PUMPKIN_HARD"],
					START_POS	= { 1, },
					ACTIVE		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_LIZARDMAN_SHAMANKING"],
					START_POS	= { 12, },
					HAVE_BOSS_GAGE = TRUE,
                    --SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE = 1,
					FOCUS_CAMERA	= TRUE,
					KEY_CODE		= 10,
					BOSS_GAUGE_HP_LINES = 3,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
}
