-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { -5, 67 },
			SUB_STAGE1 = { 36, 67 },
			SUB_STAGE2 = { 77, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 139, 67 },
			SUB_STAGE1 = { 180, 67 },
			SUB_STAGE2 = { 221, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 283, 67 },
			SUB_STAGE1 = { 324, 67 },
			SUB_STAGE2 = { 365, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 427, 67 , TRUE },
		},
	},


    ------------------------------------------------------------------------------
	------------------------------------------------------------------------------


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_STAGE2"],
		START_MOTION	= TRUE,

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MOUSE"],
			NPC_UNIT_ID["NUI_NASOD_MOUSE_HOUSE"],
			NPC_UNIT_ID["NUI_SHOCK_STICK"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_SOLO"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_SOLO"],
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
					LINE_INDEX	= 9,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_SOLO"],
					START_POS	= { 36, },
 					NO_DROP = TRUE,
					KEY_CODE	= 1,
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
					LINE_INDEX	= 7,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
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
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 68, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 75, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 84, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK"],
					START_POS	= { 65, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK"],
					START_POS	= { 50, },
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

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 5 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK"],
					START_POS	= { 100, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK"],
					START_POS	= { 114, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE_HOUSE"],
					START_POS	= { 103, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 92, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 107, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 101, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 96, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 118, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 118, },
					KEY_CODE    = 5,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_SOLO"],
					START_POS	= { 116, },
					KEY_CODE	= 1,
					NO_DROP = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	------------------------------------------------------------------------------
	------------------------------------------------------------------------------

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_STAGE1"],
	

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MOUSE"],
			NPC_UNIT_ID["NUI_NASOD_MOUSE_HOUSE"],
			NPC_UNIT_ID["NUI_SHOCK_STICK"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_SOLO"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_SOLO"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE_HOUSE"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 33, },
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 5,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 68, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 71, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK"],
					START_POS	= { 42, 53, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_SOLO"],
					START_POS	= { 53, },
					KEY_CODE	= 2,
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

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 5 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 90, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 82, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 85, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 102, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 98, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE_HOUSE"],
					START_POS	= { 100, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 93, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK"],
					START_POS	= { 78, 86, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 106, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 106, },
					KEY_CODE	= 5,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},


    ------------------------------------------------------------------------------
	------------------------------------------------------------------------------


	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_STAGE2_1A"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MOUSE"],
			NPC_UNIT_ID["NUI_NASOD_MOUSE_HOUSE"],
			NPC_UNIT_ID["NUI_SHOCK_STICK"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_SOLO"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_SOLO"],
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
					LINE_INDEX	= 8,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 10, 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 8, 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 12, 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE_HOUSE"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK"],
					START_POS	= { 27, 26, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_SOLO"],
					START_POS	= { 39, },
					KEY_CODE	= 2,
					NO_DROP = TRUE,
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
					LINE_INDEX	= 8,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 17,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 62, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK"],
					START_POS	= { 53, 48, },
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

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 5 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 17,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 70, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
					START_POS	= { 75, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_WATCH"],
					START_POS	= { 80, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_SPRAY"],
					START_POS	= { 71, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_ALTERA"],
					START_POS	= { 89, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					RATE		= 60,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 77, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 85, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 97, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MOUSE"],
					START_POS	= { 72, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK"],
					START_POS	= { 93, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHOCK_STICK"],
					START_POS	= { 73, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
					START_POS	= { 101, },
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
					START_POS	= { 101, },
					KEY_CODE	= 5,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},



	------------------------------------------------------------------------------
	------------------------------------------------------------------------------


	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_STAGE3"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL"],
			NPC_UNIT_ID["NUI_NASOD_SPRAY"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_NASOD_MOUSE"],
			NPC_UNIT_ID["NUI_NASOD_MOUSE_HOUSE"],
			NPC_UNIT_ID["NUI_SHOCK_STICK"],
			NPC_UNIT_ID["NUI_BOX_ALTERA"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_SOLO"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_SOLO"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE"],
			NPC_UNIT_ID["NUI_BARRIERMACHINE_FIRE"],
			NPC_UNIT_ID["NUI_BARRIERMACHINE_ICE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"],
					START_POS	= { 9, },
					HAVE_BOSS_GAGE	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE"],
					START_POS	= { 18, },
					HAVE_BOSS_GAGE	= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 3,
				},
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRIERMACHINE_FIRE"],
					START_POS	= { 4, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRIERMACHINE_ICE"],
					START_POS	= { 2, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},


}
