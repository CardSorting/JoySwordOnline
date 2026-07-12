-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

		
-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST =
{

    DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 100, 0 },
			SUB_STAGE1 = { 141, 0 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 201, 0 },
			SUB_STAGE1 = { 242, 0 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 303, 0 },
			SUB_STAGE1 = { 344, 0 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 404, 0, TRUE },
		},

	},
	
 	-- Novice 던전 스테이지 1 (NORMAL)

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_TOWER_HEART_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_BOSS"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
			NPC_UNIT_ID["NUI_TRAP_CHAIN"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],

			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 41,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 7, },
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 39,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 35,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 40, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 64, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 53, },
				},
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 71, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 68, },
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
    				CLEAR_CONDITION["CC_PORTAL_AFTER_KILL_ALL_ACTIVE_NPC"],
					DELAY_TIME_CLEAR_SUB_STAGE = 2.0,
    				PORTAL_LINE_INDEX = 
    				{
      				22,
      				},    
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
   			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 34,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				
			},

			TRIGGER_LIST =
			{
			},
		},
		
	},	
		

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_TOWER_HEART_STAGE2"],
		

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_BOSS"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
			NPC_UNIT_ID["NUI_TRAP_CHAIN"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],

			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 50,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             			{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CHAIN"],
					START_POS	= { 5, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CHAIN"],
					START_POS	= { 8, },
					ADD_POS_Y	= 670,
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 38, },
					SIEGE_MODE  = TRUE,
					ADD_POS_Y   = 1500,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 40, 29 },
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 49,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 44,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 59, },
					--SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 69, },
					--SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_PEITA"],
					START_POS	= { 51, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 63, },
					--SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 69, },
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
    				CLEAR_CONDITION["CC_PORTAL_AFTER_KILL_ALL_ACTIVE_NPC"],
					DELAY_TIME_CLEAR_SUB_STAGE = 2.0,
    				PORTAL_LINE_INDEX =
    				{
      				11,
      				},
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
   			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 43,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				
			},

			TRIGGER_LIST =
			{
			},
		},
		
	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_TOWER_HEART_STAGE3"],
		

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_BOSS"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
			NPC_UNIT_ID["NUI_TRAP_CHAIN"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],

			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 20,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 5, },
					--SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 9, },
					--SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 17, },
					--SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 25, },
					--SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CHAIN"],
					START_POS	= { 39, },
					ADD_POS_Y	= 637,
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 10,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CHAIN"],
					START_POS	= { 39, },
					ADD_POS_Y	= 637,
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 47, },
					ADD_POS_Y	= 1500,
					SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 55, },
					ADD_POS_Y	= 1500,
					SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_BOSS"],
					START_POS	= { 70, },
					SHOW_SUB_BOSS_NAME   = TRUE,
					FOCUS_CAMERA         = TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 2,
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
    				CLEAR_CONDITION["CC_PORTAL_AFTER_KILL_ALL_ACTIVE_NPC"],
					DELAY_TIME_CLEAR_SUB_STAGE = 2.0,
    				PORTAL_LINE_INDEX =
    				{
      				55,
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

			},

			TRIGGER_LIST =
			{
			},
		},
		
	},

				

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_TOWER_HEART_STAGE_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_BOSS"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
			NPC_UNIT_ID["NUI_TRAP_CHAIN"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_CUTTYSARK"],
			NPC_UNIT_ID["NUI_TRAP_CROSSBOW"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CUTTYSARK"],
					START_POS	= { 1, },
					HAVE_BOSS_GAGE		= TRUE,
					SHOW_BOSS_NAME		= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 8,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CROSSBOW"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CROSSBOW"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CROSSBOW"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CROSSBOW"],
					START_POS	= { 5, }, 
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
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
	pX2DungeonGame:ShowDangerAlarm_LUA( 1, 10, ALARM_COLOR_TYPE["ACT_MAGENTA"], false, STR_ID_15135 ) --던전에서 알람을 많이 사용하고 싶은 경우, 아이디를 여러게 사용해야함
	
end