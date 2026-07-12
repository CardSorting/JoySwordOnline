-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 0, 67 },
			SUB_STAGE1 = { 41, 67 },
			SUB_STAGE2 = { 81, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 141, 67 },
			SUB_STAGE1 = { 181, 67 },
			SUB_STAGE2 = { 221, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 281, 67 },
			SUB_STAGE1 = { 321, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 381, 67 , TRUE},
		},

	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE1"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
			NPC_UNIT_ID["NUI_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],

			NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
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
					LINE_INDEX	= 2,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 49, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 34, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 47, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 24, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 2,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 11,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 81, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 105, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 96, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 73, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 103, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 79, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 85, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 70, },		
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
					NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 11,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 131, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 135, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 139, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 118, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 141, },		
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
					START_POS	= { 150, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},


	},

	
	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE2"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CANNON_DEMON"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
			NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
			NPC_UNIT_ID["NUI_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_BLOOD_EATER"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
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
					LINE_INDEX	= 41,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 28, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_EATER"],
					START_POS	= { 14, },		
				},				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 40, },		
					RIDE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 46, },	
					RIDE_MODE	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 55, },
					RIDE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 41, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 55, },		
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
					LINE_INDEX	= 33,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 63,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 77, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 101, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 78, },		
					RIDE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 100, },		
					RIDE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 92, },	
					RIDE_MODE	= TRUE,	
				},--]]
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 91, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 75, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 81, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 103, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 68, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 84, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 100, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 95, },		
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
					START_POS	= { 72, },
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
					NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 63,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 129, },	
					RIDE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 158, },	
					RIDE_MODE	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 166, },	
					RIDE_MODE	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 169, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 143, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
					START_POS	= { 153, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 127, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 161, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
					START_POS	= { 150, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
					START_POS	= { 149, },
					IS_RIGHT	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
					START_POS	= { 173, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},


	},
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE3"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_BOSS"],
			NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
			NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
			NPC_UNIT_ID["NUI_COACKATRIGLE"],
			NPC_UNIT_ID["NUI_COACKATRIGLE_BOSS"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
			NPC_UNIT_ID["NUI_BOX_VELDER"],
			NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],

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
					LINE_INDEX	= 14,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 12 },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 50, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_MOUNT"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 47, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 28, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_SENTINEL"],
					START_POS	= { 24, },		
				},
				--[[
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 8, },		
				},
				]]--
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ"],
					START_POS	= { 39, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"],
					START_POS	= { 41, },		
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
					NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 10,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_BOSS"],
					START_POS	= { 81, },
					--HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_SUB_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE_BOSS"],
					START_POS	= { 83, },	
					MONSTER_GRADE	= 2,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_VELDER"],
					START_POS	= { 91, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"],
					START_POS	= { 89, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},


	},
	
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_VANGUARD"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 10, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 11, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},
{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 12, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,			
				},
{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
					START_POS	= { 13, },	
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,				
				},				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_VANGUARD"],
					START_POS	= { 1, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,	
					STOP_AT_START_STATE = TRUE,					
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 3,
				},

			},

			TRIGGER_LIST =
			{
				TRIGGER0 = 
				{
					HOST				= FALSE,    --방장만 보이는냐?  다 보이느냐 false 면 다 보임
					ONE_TIME			= TRUE,    --반복 여부 false 면 반복함
					INTERVAL			= 10,       -- 반복 시간 
					CONDITION_FUNC		= "CF_STAGE3_SUB0_TRIGGER0", --조건 설정	
					REACT_FUNG			= "RF_STAGE3_SUB0_TRIGGER0", --얼람 함수 지정 		 	
				},
			},
		},
	},

}

function CF_STAGE3_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )  -- 조건 지정하는 창 : 몬스터 존재 등등의 여러 가지 사용 가능함 사용하려면 프로그래머에게 문의 

	return true

end

function RF_STAGE3_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	-- 알람 id, ShowTime, color, danger, string (알람id는 해당던전스크립트내에서 유일해야 함)
	pX2DungeonGame:ShowDangerAlarm_LUA( 1, 10, ALARM_COLOR_TYPE["ACT_MAGENTA"], false, STR_ID_15232 ) --던전에서 알람을 많이 사용하고 싶은 경우, 아이디를 여러게 사용해야함
	
end