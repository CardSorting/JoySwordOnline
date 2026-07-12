-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	-- DUNGEON_MAP =
	-- {
		-- -- STAGE0 =
		-- -- {
			-- -- SUB_STAGE0 = { 67, 67 },
		-- -- },
	-- },

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_EVENT_VALENTINE_DAY_STAGE0"],
		START_MOTION = TRUE,
		
		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE"],
			NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE_KILLER"],
			NPC_UNIT_ID["NUI_VALENTINE_BOX_MAKER"],
			NPC_UNIT_ID["NUI_VALENTINE_LOVE_HEART_RED"],
			NPC_UNIT_ID["NUI_VALENTINE_LOVE_HEART_BLUE"],
			NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER1"],
			NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER2"],
			NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER3"],
			NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER4"],
			NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER5"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_TIME"],
				
				CLEAR_TIME = 120,
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE"],
					START_POS	= { 4, },	
					HAVE_BOSS_GAGE	= TRUE,
					BOSS_GAUGE_HP_LINES = 10,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE_KILLER"],
					START_POS	= { 7, },
					ALLY_NPC 	= TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VALENTINE_BOX_MAKER"],
					START_POS	= { 16, },	
					ALLY_NPC 	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DUNGEON_CHECKER1"],
					START_POS	= { 9, },	
					--ALLY_NPC 	= TRUE,
				},
			},

			TRIGGER_LIST =
			{
				TRIGGER0 = 
				{
					-- HOST				= FALSE,    --방장만 보이는냐?  다 보이느냐 false 면 다 보임
					-- ONE_TIME			= TRUE,    --반복 여부 false 면 반복함
					-- INTERVAL			= 10,       -- 반복 시간 
					-- CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER0", --조건 설정	
					-- REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER0", --얼람 함수 지정 		 	
				},
			},
		},
	},
}

-- function CF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )  -- 조건 지정하는 창 : 몬스터 존재 등등의 여러 가지 사용 가능함 사용하려면 프로그래머에게 문의 

	-- return true

-- end

-- function RF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	-- -- 알람 id, ShowTime, color, danger, string (알람id는 해당던전스크립트내에서 유일해야 함)
	-- pX2DungeonGame:ShowDangerAlarm_LUA( 1, 10, ALARM_COLOR_TYPE["ACT_MAGENTA"], false, STR_ID_23280 ) --던전에서 알람을 많이 사용하고 싶은 경우, 아이디를 여러게 사용해야함
	
-- end