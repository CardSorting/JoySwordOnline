-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { -26, 67 },
			SUB_STAGE1 = { 15, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 77, 67 },
			SUB_STAGE1 = { 118, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 180, 67 },
			SUB_STAGE1 = { 221, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 283, 67 },
			SUB_STAGE1 = { 324, 67 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 386, 67 , TRUE },
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
		WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE3"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT1"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
			NPC_UNIT_ID["NUI_HALLOWEEN_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_HALLOWEEN_CACTUS"],
			NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
			NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
			NPC_UNIT_ID["NUI_HALLOWEEN_WILLIAMPPORU_THIEF_FIRE"],
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
					LINE_INDEX	= 0,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 4, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_GLITER_HAMMER"],
					START_POS	= { 7, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 20, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_GLITER_HAMMER"],
					START_POS	= { 11, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 14, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 12, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT3"],
					START_POS	= { 19, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_GLITER_HAMMER"],
					START_POS	= { 24, },	
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 0,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_GLITER_HAMMER"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT3"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 31, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
					{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 33, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 34, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_GLITER_HAMMER"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
					START_POS	= { 69, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
					START_POS	= { 69, },
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
		WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE5"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT1"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
			NPC_UNIT_ID["NUI_HALLOWEEN_MUSHROOM"],
			NPC_UNIT_ID["NUI_FLY_LANTERN"],
			NPC_UNIT_ID["NUI_HALLOWEEN_CACTUS"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 12,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 8, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 20, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 13, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 22, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
					START_POS	= { 17, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 7, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 26, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 15, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 33 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 33 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 34 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 56, },	
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
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"],
					START_POS	= { 40, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLAME_RED_EVENT"],
					START_POS	= { 62, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TURE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT_BOSS"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT_BOSS"],
					START_POS	= { 65, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"],
					START_POS	= { 67, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
					START_POS	= { 70, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
					START_POS	= { 70, },
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
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HALLOWEEN_VICTOR"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_SUMMON_PUMPKIN"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_VICTOR"],
					START_POS	= { 12, },
					HAVE_BOSS_GAGE = TRUE,
                    --SHOW_BOSS_NAME  = TRUE,
					FOCUS_CAMERA	= TRUE,
					MONSTER_GRADE	= 1,
					--IS_RIGHT		= TURE,
					KEY_CODE		= 10,
					BOSS_GAUGE_HP_LINES = 8,
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
			NPC_UNIT_ID["NUI_HALLOWEEN_UNOHOUND"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_SUMMON_PUMPKIN_EXPERT"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_UNOHOUND"],
					START_POS	= { 12, },
					HAVE_BOSS_GAGE = TRUE,
                    --SHOW_BOSS_NAME  = TRUE,
					FOCUS_CAMERA	= TRUE,
					MONSTER_GRADE	= 1,
					--IS_RIGHT		= TURE,
					KEY_CODE		= 10,
					BOSS_GAUGE_HP_LINES = 6,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	STAGE6 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HALLOWEEN_CLOE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_SUMMON_PUMPKIN_EXPERT"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_HALLOWEEN_CLOE"],
					START_POS	= { 12, },
					HAVE_BOSS_GAGE = TRUE,
                    --SHOW_BOSS_NAME  = TRUE,
					FOCUS_CAMERA	= TRUE,
					MONSTER_GRADE	= 1,
					--IS_RIGHT		= TURE,
					KEY_CODE		= 10,
					BOSS_GAUGE_HP_LINES = 6,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
