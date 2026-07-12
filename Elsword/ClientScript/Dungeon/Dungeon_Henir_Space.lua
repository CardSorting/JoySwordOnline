-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		--------------------------------------------------------------------- 
		-- 헤니르의 시공 스테이지 구성 : 총 57개 스테이지, 실 플레이 (30개)
		-- 2011년 8월 18일 개편 (lenoas)
		--------------------------------------------------------------------- 
		
		-- ※ 스테이지 구성이 변경되면 꼭 서버에 보고해야합니다.
		-- (컷 보상 및 도전 보상 지급관련된 문제로 반드시 필요!!!!!!!)
		
		--------------------------------------------------------------------- 루벤/엘더
		-- 루벤/엘더 1번 스테이지
		STAGE0 =
		{
			SUB_STAGE0 = { 75, 40 },
        },
		
		-- 루벤/엘더 2번 스테이지(4개 랜덤 스테이지)
		STAGE1 =
		{
			SUB_STAGE0 = { 125, 40 },
        },
		STAGE2 =
		{
			SUB_STAGE0 = { 125, 40 },
        },
		STAGE3 =
		{
			SUB_STAGE0 = { 125, 40 },
        },
		STAGE4 =
		{
			SUB_STAGE0 = { 125, 40 },
		},
		
		-- 루벤/엘더 3번 스테이지(4개 랜덤 스테이지)
		STAGE5 =
		{
			SUB_STAGE0 = { 175, 40 },
		},
		STAGE6 =
		{
			SUB_STAGE0 = { 175, 40 },
		},
		STAGE7 =
		{
			SUB_STAGE0 = { 175, 40 },
		},
		STAGE8 =
		{
			SUB_STAGE0 = { 175, 40 },
		},
		
		-- 루벤/엘더 휴식방
		STAGE9 =
		{
			SUB_STAGE0 = { 225, 40, FALSE, FALSE, TRUE },
		},		
		
		--------------------------------------------------------------------- 베스마
		-- 베스마 1번 스테이지(2개 랜덤 스테이지)
		STAGE10 =
		{
			SUB_STAGE0 = { 275, 40 },
		},
		STAGE11 =
		{
			SUB_STAGE0 = { 275, 40 },
		},
		
		-- 베스마 2번 스테이지(3개 랜덤 스테이지)
		STAGE12 =
		{
			SUB_STAGE0 = { 325, 40 },
		},
		STAGE13 =
		{
			SUB_STAGE0 = { 325, 40 },
		},
		STAGE14 =
		{
			SUB_STAGE0 = { 325, 40 },
		},
		
		-- 베스마 3번 스테이지(2개 랜덤 스테이지)
		STAGE15 =
		{
			SUB_STAGE0 = { 375, 40 },
		},
		STAGE16 =
		{
			SUB_STAGE0 = { 375, 40 },
		},
				
		-- 베스마 4번 스테이지(분기점 있음)
		STAGE17 =
		{
			SUB_STAGE0 = { 425, 40, FALSE, TRUE },
        },
				
		-- 베스마 1번 비밀던전 : 월리의 지하 연구실
		STAGE18 =
		{
			SUB_STAGE0 = { 385, 90, TRUE },
        },
		
		-- 베스마 휴식방
		STAGE19 =
		{
			SUB_STAGE0 = { 425, 140, FALSE, FALSE, TRUE },
        },
		
		--------------------------------------------------------------------- 알테라
		-- 알테라 1번 스테이지(3개 랜덤 스테이지)
		STAGE20 =
		{
			SUB_STAGE0 = { 425, 190 },
        },
		STAGE21 =
		{
			SUB_STAGE0 = { 425, 190 },
        },
		STAGE22 =
		{
			SUB_STAGE0 = { 425, 190 },
        },
		
		-- 알테라 2번 스테이지(2개 랜덤 스테이지)
		STAGE23 =
		{
			SUB_STAGE0 = { 425, 240 },
        },
		STAGE24 =
		{
			SUB_STAGE0 = { 425, 240 },
        },
		
		-- 알테라 3번 스테이지
		STAGE25 =
		{
			SUB_STAGE0 = { 425, 290 },
        },
		
		-- 알테라 4번 스테이지(분기점 있음)
		STAGE26 =
		{
			SUB_STAGE0 = { 425, 340, FALSE, TRUE },
        },
				
		-- 알테라 2번 비밀던전 : 용의 둥지 : 나락
		STAGE27 =
		{
			SUB_STAGE0 = { 425, 390, TRUE },
        },
		
		-- 알테라 1번 정예던전 : 고대 나소드의 봉인
		STAGE28 =
		{
			SUB_STAGE0 = { 425, 390, TRUE },
        },
		
		-- 알테라 휴식방
		STAGE29 =
		{
			SUB_STAGE0 = { 375, 390, FALSE, FALSE, TRUE },
        },
		
		--------------------------------------------------------------------- 페이타
		-- 페이타 1번 스테이지(2개 랜덤 스테이지)
		STAGE30 =
		{
			SUB_STAGE0 = { 325, 390 },
        },
		STAGE31 =
		{
			SUB_STAGE0 = { 325, 390 },
        },
		
		-- 페이타 2번 스테이지(2개 랜덤 스테이지)
		STAGE32 =
		{
			SUB_STAGE0 = { 275, 390 },
        },
		STAGE33 =
		{
			SUB_STAGE0 = { 275, 390 },
        },
		
		-- 페이타 3번 스테이지
		STAGE34 =
		{
			SUB_STAGE0 = { 225, 390 },
        },
		
		-- 페이타 4번 스테이지(분기점 있음)
		STAGE35 =
		{
			SUB_STAGE0 = { 175, 390, FALSE, TRUE },
        },
				
		-- 페이타 3번 비밀던전 : 운송터널 : 오염구역
		STAGE36 =
		{
			SUB_STAGE0 = { 125, 390, TRUE },
        },
		
		-- 페이타 2번 정예던전 : 글리터 정예부대
		STAGE37 =
		{
			SUB_STAGE0 = { 125, 390, TRUE },
        },
		
		-- 페이타 휴식방
		STAGE38 =
		{
			SUB_STAGE0 = { 125, 340, FALSE, FALSE, TRUE },
        },
		
		--------------------------------------------------------------------- 벨더
		-- 벨더 1번 스테이지(2개 랜덤 스테이지)
		STAGE39 =
		{
			SUB_STAGE0 = { 125, 290 },
        },
		
		-- 벨더 2번 스테이지
		STAGE40 =
		{
			SUB_STAGE0 = { 125, 240 },
        },
		
		-- 뱅가드 스테이지(버그로 인해 임시 폐기)
		STAGE41 =
		{
			SUB_STAGE0 = { 125, 240 },
        },
		
		-- 벨더 3번 스테이지
		STAGE42 =
		{
			SUB_STAGE0 = { 125, 190 },
        },
		
		-- 벨더 4번 스테이지
		STAGE43 =
		{
			SUB_STAGE0 = { 125, 140 },
        },
				
		-- 벨더 5번 스테이지(분기점 있음)
		STAGE44 =
		{
			SUB_STAGE0 = { 175, 140, FALSE, TRUE },
			SUB_STAGE1 = { 175, 140, FALSE, TRUE },
        },
				
		-- 벨더 4번 비밀던전 : 벨더 왕궁(가칭)
		STAGE45 =
		{
			SUB_STAGE0 = { 225, 100, TRUE },
        },
		
		-- 벨더 3번 정예던전 : 아크글리터 정예부대
		STAGE46 =
		{
			SUB_STAGE0 = { 225, 100, TRUE },
        },
		
		-- 벨더 휴식방
		STAGE47 =
		{
			SUB_STAGE0 = { 275, 140, FALSE, FALSE, TRUE },
        },
		
		--------------------------------------------------------------------- 하멜
		-- 하멜 1번 스테이지
		STAGE48 =
		{
			SUB_STAGE0 = { 325, 140 },
        },
		
		-- 하멜 2번 스테이지
		STAGE49 =
		{
			SUB_STAGE0 = { 325, 190 },
        },
		
		-- 하멜 3번 스테이지(2개 랜덤 스테이지)
		STAGE50 =
		{
			SUB_STAGE0 = { 325, 240 },
        },
		STAGE51 =
		{
			SUB_STAGE0 = { 325, 240 },
        },
		
		-- 하멜 4번 스테이지(2개 랜덤 스테이지)
		STAGE52 =
		{
			SUB_STAGE0 = { 325, 290 },
        },
		STAGE53 =
		{
			SUB_STAGE0 = { 325, 290 },
        },		
		
		-- 하멜 4번 스테이지(분기점 있음)
		STAGE54 =
		{
			SUB_STAGE0 = { 275, 290, FALSE, TRUE },
        },
						
		-- 하멜 4번 정예던전 : 마족 정예부대
		STAGE55 =
		{
			SUB_STAGE0 = { 225, 290, TRUE },
        },
		
		-- 하멜 휴식방(최종 휴식방)
		STAGE56 =
		{
			SUB_STAGE0 = { 250, 215, FALSE, FALSE, TRUE },
        },
				
	},

	-- 0번 스테이지 : 루벤/엘더 1번 스테이지 [윌리엄(숲 속의 페허)]
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_RUIN_OF_ELF_BOSS_STAGE"],

		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_NORMAL"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},


		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_PPORU_WILLIAM_NORMAL"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 35 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 30 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 20 },
				NEXT_STAGE3 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 15 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_NORMAL"],
					START_POS	= { 5, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 11, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
				 
			},
		},
	},
	
	-- 1번 스테이지 : 루벤/엘더 2번 스테이지 중 랜덤 첫 번째 방 [에인션트 뽀루의 숲(하얀 안개 슾지대)]
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_SWAMP_BOSS_STAGE"],
		
		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_ANCIENT_PPORU"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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
					NPC_UNIT_ID["NUI_ANCIENT_PPORU"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 30 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 30 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 7, 0, 20 },
				NEXT_STAGE3 = { CLEAR_TYPE["CT_STAGE"], 8, 0, 20 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_PPORU"],
					START_POS	= { 10, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,	

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 19, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},
			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 2번 스테이지 : 루벤/엘더 2번 스테이지 중 랜덤 두 번째 방 [엘의 나무]
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_EL_TREE_STAGE1"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
			NPC_UNIT_ID["NUI_MONKEY_KING"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],			
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
					NPC_UNIT_ID["NUI_MONKEY_KING"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 30 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 30 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 7, 0, 20 },
				NEXT_STAGE3 = { CLEAR_TYPE["CT_STAGE"], 8, 0, 20 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 9, },

					LEVEL  		= 0,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_KING"],
					START_POS	= { 10, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 19, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 3번 스테이지 : 루벤/엘더 2번 스테이지 중 랜덤 세 번째 방 [하얀 안개 슾지대]
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_SWAMP_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 30 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 30 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 7, 0, 20 },
				NEXT_STAGE3 = { CLEAR_TYPE["CT_STAGE"], 8, 0, 20 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 4, },
					LEVEL  		= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 6, },
					LEVEL  		= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 8, },
					LEVEL  		= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 10, },
					LEVEL  		= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 12 },
					LEVEL  		= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 19, },
					LEVEL  		= 2,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 4번 스테이지 : 루벤/엘더 2번 스테이지 중 랜덤 네 번째 방 [엘의 나무]
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_EL_TREE_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MUSHROOM_KING"],
			-- NPC_UNIT_ID["NUI_BEE_QUEEN"],  -- 얘 RT_UP 같은 리액션이 좀 이상해서 빼겠습니다.
			NPC_UNIT_ID["NUI_MONKEY_BOMB_KING"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},


		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 30 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 30 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 7, 0, 20 },
				NEXT_STAGE3 = { CLEAR_TYPE["CT_STAGE"], 8, 0, 20 },
			},

			NPC_GROUP =
			{
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_KING"],
					START_POS	= { 5, 15, 8, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 1,	

				},
    			-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BEE_QUEEN"],
					-- START_POS	= { 18, 13, 4, },

					-- LEVEL  		= 0,
					-- HAVE_BOSS_GAGE	= TRUE,
					-- -- SHOW_BOSS_NAME	= TRUE,
					-- 
					-- BOSS_GAUGE_HP_LINES = 2,	

				-- },
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_KING"],
					START_POS	= { 17, 6, 14, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,	

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 4, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
				 
			},
		},
	},
	
	-- 5번 스테이지 : 루벤/엘더 3번 스테이지 중 랜덤 첫번째 방 [어둠의 숲]
	STAGE5 =
    {
		WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE3"],
 		

		READY_NPC =
		{
  			NPC_UNIT_ID["NUI_ENT_ARCADE"],
			NPC_UNIT_ID["NUI_BAT_KING"],
  			NPC_UNIT_ID["NUI_BOX_HENIR"],
  		},

		SUB_STAGE0 =
		{
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 9, 0, 100, },
			},

   			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_ARCADE"],
					START_POS	= { 10, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 1,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_KING"],
					START_POS	= { 5, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 1,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
       		},

			TRIGGER_LIST =
			{	 
			},
		},
	},
	
	-- 6번 스테이지 : 루벤/엘더 3번 스테이지 중 랜덤 두 번째 방 [월리의 성 외곽]
	STAGE6 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"],


		READY_NPC =
		{
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_C"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_FIRE"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 9, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF"],
					START_POS	= { 4, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_C"],
					START_POS	= { 0, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_FIRE"],
					START_POS	= { 5, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 8, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
		
	-- 7번 스테이지 : 루벤/엘더 3번 스테이지 중 랜덤 세 번째 방 [월리의 성]
	STAGE7 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_EXPERT"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_STRONG"],	-- 중간보스 베른거트
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{		
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,
	
			GO_TYPE             = GO_TYPE["GT_NONE"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 9, 0, 100, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_EXPERT"],
					START_POS	= { 0, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_STRONG"],
					START_POS	= { 4, },

					LEVEL  		= 0,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 7, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 8번 스테이지 : 루벤/엘더 3번 스테이지 중 랜덤 네 번째 방 [벤더스의 동굴]
	STAGE8 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE4"],


		READY_NPC =
		{
            NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
			NPC_UNIT_ID["NUI_BENDERS_NASOD"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,

			GO_TYPE				= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 9, 0, 100, },
			},
			

   			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NASOD"],
					START_POS	= { 12, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
					START_POS	= { 9, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 15, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
    		},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 9번 스테이지 : 루벤/엘더 휴식방입니다.
 	STAGE9 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_ELDER"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
			NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
			NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
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
					NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 10, 0, 100 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 11, 0, 100 },
			},
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_ELDER"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					-- NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
			},
			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 10번 스테이지 : 베스마 1번 스테이지 중 랜덤 첫 번째 방 [베스마 호수]
	STAGE10 =
	{
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

            CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 12, 0, 40, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 13, 0, 40, },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 14, 0, 20, },
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
					START_POS	= { 1, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
					START_POS	= { 5, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 7, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},                                              

			TRIGGER_LIST =
			{
			},
		},		
	},
	
	-- 11번 스테이지 : 베스마 1번 스테이지 중 랜덤 두 번째 방 [밤의 베스마 호수]
	STAGE11 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 12, 0, 40, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 13, 0, 40, },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 14, 0, 20, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW"],
					START_POS	= { 2, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW"],
					START_POS	= { 3, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			}, 
			
			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 12번 스테이지 : 베스마 2번 스테이지 중 랜덤 첫 번째 방 [베스마 호수]
	STAGE12 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_LAKE_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_EXPERT"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

            CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 15, 0, 60, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 16, 0, 40, },
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
					START_POS	= { 7, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
					START_POS	= { 2, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 5, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},                                              

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 13번 스테이지 : 베스마 2번 스테이지 중 랜덤 두 번째 방 [베스마 협곡]
	STAGE13 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_LAKE_CANYON_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 15, 0, 60, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 16, 0, 40, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK"],
					START_POS	= { 3, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK"],
					START_POS	= { 7, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK"],
					START_POS	= { 5, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 5, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 14번 스테이지 : 베스마 2번 스테이지 중 랜덤 세 번째 방 [용의 둥지]
	STAGE14 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_KING"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 15, 0, 60, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 16, 0, 40, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_KING"],
					START_POS	= { 3, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_KING"],
					START_POS	= { 16, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 13, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 15번 스테이지 : 베스마 3번 스테이지 중 랜덤 첫 번째 방 [리치 광산]
	STAGE15 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_MINE_STAGE4"],

		READY_NPC = 
		{
			-- NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_HENIR"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 17, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER_HENIR"],
					START_POS	= { 2, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER_HENIR"],
					START_POS	= { 4, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 13, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 16번 스테이지 : 베스마 3번 스테이지 중 랜덤 두 번째 방 [리치 광산]
	STAGE16 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_MINE2_STAGE4"],

		READY_NPC = 
		{
			-- NPC_UNIT_ID["NUI_NASOD_MINER_THIN_BIG"],
			NPC_UNIT_ID["NUI_WALLY_8TH_MK2"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 17, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MK2"],
					START_POS	= { 13, },
					LEVEL  		= 0,   
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,
	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MK2"],
					START_POS	= { 3, },  

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 7, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 17번 스테이지 : 베스마 4번 스테이지[수송 비공정]
	STAGE17 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE5"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"],
			NPC_UNIT_ID["NUI_WALLY_9TH_ARMOR"],
			NPC_UNIT_ID["NUI_WALLY_9TH_EXPERT"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE_SECRET"], 19, 0, 100, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE_SECRET"], 18, 0, 100, },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE_SECRET"], -1, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					KEY_CODE	= 101,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_ARMOR"],
					START_POS	= { 4, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					KEY_CODE	= 1,
					BOSS_GAUGE_HP_LINES = 3,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_ARMOR"],
					START_POS	= { 9, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					KEY_CODE	= 2,
					BOSS_GAUGE_HP_LINES = 3,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_EXPERT"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE = TRUE,
					KEY_CODE	= 11,
					BOSS_GAUGE_HP_LINES = 4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_9TH_EXPERT"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE = TRUE,
					KEY_CODE	= 12,
					BOSS_GAUGE_HP_LINES = 4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 7, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					HOST			= FALSE,
					ONE_TIME		= TRUE,
					INTERVAL		= 0,
					CONDITION_FUNC		= "CF_STAGE17_SUB0_TRIGGER0",
					REACT_FUNG		= "RF_STAGE17_SUB0_TRIGGER0",
				},
				TRIGGER1 =
				{
					HOST			= FALSE,
					ONE_TIME		= TRUE,
					INTERVAL		= 0,
					CONDITION_FUNC		= "CF_STAGE17_SUB0_TRIGGER1",
					REACT_FUNG		= "RF_STAGE17_SUB0_TRIGGER1",
				},
				TRIGGER2 =
				{
					HOST			= FALSE,
					ONE_TIME		= TRUE,
					INTERVAL		= 0,
					CONDITION_FUNC		= "CF_STAGE17_SUB0_TRIGGER2",
					REACT_FUNG		= "RF_STAGE17_SUB0_TRIGGER2",
				},
				TRIGGER3 =
				{
					HOST			= FALSE,
					ONE_TIME		= TRUE,
					INTERVAL		= 0,
					CONDITION_FUNC		= "CF_STAGE17_SUB0_TRIGGER3",
					REACT_FUNG		= "RF_STAGE17_SUB0_TRIGGER3",
				},

			},
		},
	},
	
	-- 18번 스테이지 : 베스마 제 1 비밀던전[월리의 지하 연구실]
	STAGE18 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_SECRET_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_INSPECTOR"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

        SECRET_STAGE = TRUE,

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				DELAY_TIME_CLEAR_SUB_STAGE = 5.0,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 19, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_INSPECTOR"],
					START_POS	= { 13, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 19,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 2, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 19번 스테이지 : 베스마 휴식방입니다.
 	STAGE19 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_BESMA"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
			NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
			NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
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
					NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 20, 0, 40 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 21, 0, 40 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE"], 22, 0, 20 },
			},
			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_BESMA"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					-- NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
			},
			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 20번 스테이지 : 알테라 1번 스테이지 중 랜덤 첫 번째 방 [블랙크로우 비공정]
	STAGE20 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE6"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
			NPC_UNIT_ID["NUI_RAVEN"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 23, 0, 50, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 24, 0, 50, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN"],
					START_POS	= { 9, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN"],
					START_POS	= { 10, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_HEAVY_MACHINE_GUN"],
					START_POS	= { 8, },
					LEVEL  		= 0,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 13, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 21번 스테이지 : 알테라 1번 스테이지 중 랜덤 두 번째 방 [블랙크로우 비공정]
	STAGE21 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE6"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_CANNON_BIG"],
			NPC_UNIT_ID["NUI_RAVEN"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 23, 0, 50, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 24, 0, 50, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_BIG"],
					START_POS	= { 12, },
					LEVEL  		= 0,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN"],
					START_POS	= { 9, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN"],
					START_POS	= { 10, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 9, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 22번 스테이지 : 알테라 1번 스테이지 중 랜덤 세 번째 방 [회귀의 평원]
	STAGE22 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 23, 0, 50, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 24, 0, 50, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
					START_POS	= { 5, },
					
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],
					START_POS	= { 9, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 11, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 23번 스테이지 : 알테라 2번 스테이지 중 랜덤 첫 번째 방 [운송터널 : B-4]
	STAGE23 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON_DEFECT"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_ARMADILLO_EARTH"],
			NPC_UNIT_ID["NUI_ALTERA_MINE_NONE"],
			NPC_UNIT_ID["NUI_PARASITE"],
			NPC_UNIT_ID["NUI_PARASITE_HOUSE"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"],
			NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"],
			NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"],
			NPC_UNIT_ID["NUI_BAT_SONIC"],
			NPC_UNIT_ID["NUI_CANNON_MINI"],
			NPC_UNIT_ID["NUI_CANNON_MINI_UP"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
    			CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 6 },
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 25, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_SHELL"],
					START_POS	= { 1, },
					LEVEL  		= 3,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"],
					START_POS	= { 1, },

					LEVEL  		= 3,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 4,
					KEY_CODE	= 6,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"],
					START_POS	= { 1, },
					LEVEL  		= 3,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,					
					KEY_CODE	= 5,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"],
					START_POS	= { 1, },
					LEVEL  		= 3,
					ACTIVE		= TRUE,
					GAGE_BAR	= FALSE,									
					KEY_CODE	= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"],
					START_POS	= { 1, },
					LEVEL  		= 3,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,					
					KEY_CODE	= 2,					

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"],
					START_POS	= { 1, },
					LEVEL  		= 3,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,					
					KEY_CODE	= 3,					

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"],
					START_POS	= { 1, },
					LEVEL  		= 3,
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,					
					KEY_CODE	= 4,					

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 12, },
					LEVEL  		= 0,					
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP_BESMA"],
					START_POS	= { 17, },
					LEVEL  		= 0,					
					ACTIVE		= FALSE,        NO_DROP = TRUE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y	= 1000,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
					START_POS	= { 4, 6, },
					LEVEL  		= 0,					
					ACTIVE		= FALSE,        NO_DROP = TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT"],
					START_POS	= { 14, 15, },
					LEVEL  		= 0,					
					ACTIVE		= FALSE,        NO_DROP = TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 5, },
					LEVEL  		= 0,   
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 24번 스테이지 : 알테라 2번 스테이지 중 랜덤 두 번째 방 [알테라 평원]
	STAGE24 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_STAGE3"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"],
			NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE"],
			NPC_UNIT_ID["NUI_BARRIERMACHINE_FIRE"],
			NPC_UNIT_ID["NUI_BARRIERMACHINE_ICE"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 25, 0, 100 },
			},

			NPC_GROUP =
			{
			     {
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"],
					START_POS	= { 5, },

					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,	

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE"],
					START_POS	= { 3, },

					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRIERMACHINE_FIRE"],
					START_POS	= { 4, },
					LEVEL  		= 2,
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BARRIERMACHINE_ICE"],
					START_POS	= { 2, },
					LEVEL  		= 2,
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 8,19, },
					LEVEL  		= 2,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 25번 스테이지 : 알테라 3번 스테이지[나소드 생산기지]
	STAGE25 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_NASOD_GUARDIAN"],
			NPC_UNIT_ID["NUI_RAVEN_CLONE"],
			NPC_UNIT_ID["NUI_RAVEN_CLONE_PROTO"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 26, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN_CLONE"],
					START_POS	= { 4, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RAVEN_CLONE"],
					START_POS	= { 11, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 16, 18, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 26번 스테이지 : 알테라 4번 스테이지[알테라 코어]
	STAGE26 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"],
			NPC_UNIT_ID["NUI_EL_POWER_PLANT_HENIR"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_FIRE"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_ICE"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_EARTH"],
			NPC_UNIT_ID["NUI_EL_EXTRACTOR_NOVA"],
			NPC_UNIT_ID["NUI_NASOD_KING_HENIR"],
			NPC_UNIT_ID["NUI_NASOD_HEALER_BLADER"],
			NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"],
			NPC_UNIT_ID["NUI_NASOD_WATCH"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE_SECRET"], 29, 0, 100 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE_SECRET"], 27, 0, 100 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE_SECRET"], 28, 0, 100 },

			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"],
					START_POS	= { 1, },
					LEVEL  		= 2,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					KEY_CODE	= 102,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_EARTH"],
					START_POS	= { 9, },
					LEVEL  		= 2,
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_FIRE"],
					START_POS	= { 11, },
					LEVEL  		= 2,
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_NOVA"],
					START_POS	= { 20, },
					LEVEL  		= 2,
					ACTIVE		= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_EXTRACTOR_ICE"],
					START_POS	= { 22, },
					LEVEL  		= 2,
					ACTIVE		= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_EL_POWER_PLANT_HENIR"],
					START_POS	= { 1, },

					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 10,
					KEY_CODE    = 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_NASOD_KING_HENIR"],
					START_POS	= { 54, },
					LEVEL  		= 2,
					GAGE_BAR	= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 39, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 27번 스테이지 : 알테라 제 2 비밀던전[용의 둥지 :  나락]
    STAGE27 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_HELL_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMANKING_DARK_COMMON"],
			NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

        SECRET_STAGE = TRUE,

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				DELAY_TIME_CLEAR_SUB_STAGE = 5.0,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 29, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMANKING_DARK_COMMON"],
					START_POS	= { 4, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					BOSS_GAUGE_HP_LINES = 7,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON"],
					START_POS	= { 8, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					BOSS_GAUGE_HP_LINES = 21,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 7, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 28번 스테이지 : 알테라 제 1 정예던전[고대 나소드의 봉인]
    STAGE28 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_HENIR_APPLE"],
			NPC_UNIT_ID["NUI_HENIR_CODE_Q_PROTO_00"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

        SECRET_STAGE = TRUE,

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				DELAY_TIME_CLEAR_SUB_STAGE = 5.0,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 29, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_APPLE"],
					START_POS	= { 18, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					BOSS_GAUGE_HP_LINES = 13,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_CODE_Q_PROTO_00"],
					START_POS	= { 21, },

					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					BOSS_GAUGE_HP_LINES = 17,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 29번 스테이지 : 알테라 휴식방입니다.
 	STAGE29 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_ALTERA"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
			NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
			NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
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
					NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 30, 0, 50 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 31, 0, 50 },
			},
			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_ALTERA"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					-- NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
			},
			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 30번 스테이지 : 페이타 1번 스테이지 중 랜덤 첫 번째 방 [봉헌의 신전 입구]
	STAGE30 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_DULLAHAN"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 32, 0, 60, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 33, 0, 40, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_DULLAHAN"],
					START_POS	= { 14, },				

					LEVEL  		= 1,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DULLAHAN"],
					START_POS	= { 16, },				

					LEVEL  		= 1,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 21, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 31번 스테이지 : 페이타 1번 스테이지 중 랜덤 두 번째 방 [나선 회랑]
	STAGE31 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GOLEM_BOSS_EXPERT"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 32, 0, 60, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 33, 0, 40, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_BOSS_EXPERT"],
					START_POS	= { 11, },

					LEVEL  		= 1,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 6,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_BOSS_EXPERT"],
					START_POS	= { 10, },

					LEVEL  		= 1,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 6,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 32번 스테이지 : 페이타 2번 스테이지 중 랜덤 첫 번째 방 [지하 예배당]
	STAGE32 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_CHAPEL_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_AMETHYST"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
    			CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_AMETHYST"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 34, 0, 100, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_AMETHYST"],
					START_POS	= { 1, },

					LEVEL  		= 3,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 4,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 2, },
					LEVEL  		= 5,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 6, },
                    LEVEL  		= 5,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 3, 7, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 33번 스테이지 : 페이타 2번 스테이지 중 랜덤 두 번째 방 [지하 정원]
	STAGE33 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE_BOSS"],

		READY_NPC =
		{
			-- NPC_UNIT_ID["NUI_JUBIGEE"],
			NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
			NPC_UNIT_ID["NUI_PLANT_WHIP_B"],
			NPC_UNIT_ID["NUI_PLANT_OVERLOAD_HENIR"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 34, 0, 100, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_OVERLOAD_HENIR"],
					START_POS	= { 1, },
					LEVEL  		= 3,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 5,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_OVERLOAD_HENIR"],
					START_POS	= { 2, },
					LEVEL  		= 3,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 5,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_OVERLOAD_HENIR"],
					START_POS	= { 3, },
					LEVEL  		= 3,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 5,	
				},
				-- { -- 쥬비기와 처음 덩굴줄기 몬스터 제거(중반부 던전으로 당겨짐에 따른 하향)
					-- NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					-- START_POS	= { 11, },
					-- LEVEL  		= 2,
					-- ACTIVE      = FALSE,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					-- START_POS	= { 9, },
					-- LEVEL  		= 2,
					-- ACTIVE      = FALSE,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_B"],
					-- START_POS	= { 7, },
					-- LEVEL  		= 2,
					-- ACTIVE      = FALSE,
					-- NO_DROP     = TRUE,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_B"],
					-- START_POS	= { 6, },
					-- LEVEL  		= 2,
					-- ACTIVE      = FALSE,
					-- NO_DROP     = TRUE,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 5,8, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 34번 스테이지 : 페이타 3번 스테이지 [첨탑의 심장부]
	STAGE34 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_TOWER_HEART_STAGE_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_CUTTYSARK"],
			NPC_UNIT_ID["NUI_TRAP_CROSSBOW"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
    			CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_CUTTYSARK"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 35, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CUTTYSARK"],
					START_POS	= { 1, },
					LEVEL  		= 3,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 8,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CROSSBOW"],
					START_POS	= { 2, },
					LEVEL  		= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CROSSBOW"],
					START_POS	= { 3, },
					LEVEL  		= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CROSSBOW"],
					START_POS	= { 4, },
					LEVEL  		= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CROSSBOW"],
					START_POS	= { 5, },
					LEVEL  		= 1,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				-- {-- 가고일 몬스터 제거(중반부 던전으로 당겨짐에 따른 하향)
					-- NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					-- START_POS	= { 2, },
					-- LEVEL  		= 2,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					-- START_POS	= { 5, },
					-- LEVEL  		= 2,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 3,4, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},

	-- 35번 스테이지 : 페이타 4번 스테이지 [봉헌의 제단]
	STAGE35 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"],
			NPC_UNIT_ID["NUI_SUMMON_BOSS_A_HENIR"],
			NPC_UNIT_ID["NUI_PD_MONSTER_B"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				DELAY_TIME_CLEAR_SUB_STAGE = 5.0,
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE_SECRET"], 38, 0, 100 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE_SECRET"], 36, 0, 100 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE_SECRET"], 37, 0, 100 },

			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"],
					START_POS	= { 2, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					KEY_CODE	= 103,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SUMMON_BOSS_A_HENIR"],
					START_POS	= { 1, },
					LEVEL  		= 1,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 11,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SUMMON_BOSS_A_HENIR"],
					START_POS	= { 2, },
					LEVEL  		= 1,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 11,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PD_MONSTER_B"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					LEVEL  		= 0,
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 36번 스테이지 : 페이타 제 3 비밀던전[운송 터널 : 오염구역]
	STAGE36 =
	{
		WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_REVERS_COMMON"],
			NPC_UNIT_ID["NUI_ELSWORD_PARASITE_COMMON"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

        SECRET_STAGE = TRUE,

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				DELAY_TIME_CLEAR_SUB_STAGE = 5.0,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 38, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELSWORD_PARASITE_COMMON"],
					START_POS	= { 9, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					BOSS_GAUGE_HP_LINES = 15,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 12, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
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
	
	-- 37번 스테이지 : 페이타 제 2 정예던전[글리터 정예부대]
	STAGE37 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE_BOSS"],

		READY_NPC = 
		{
			-- NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_BOSS"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_BOSS"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_BOSS"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

        SECRET_STAGE = TRUE,

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				DELAY_TIME_CLEAR_SUB_STAGE = 5.0,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 38, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER_BOSS"],
					START_POS	= { 5, },
					LEVEL		= 5,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_BOSS"],
					START_POS	= { 16, },
					LEVEL  		= 5,
					HAVE_BOSS_GAGE	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					BOSS_GAUGE_HP_LINES = 3,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_BOSS"],
					START_POS	= { 19, },
					LEVEL  		= 5,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					BOSS_GAUGE_HP_LINES = 2,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 4, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	
	-- 38번 스테이지 : 페이타 휴식방입니다.
 	STAGE38 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_PEITA"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
			NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
			NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
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
					NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 39, 0, 100 },
			},
			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_PEITA"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					-- NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
			},
			TRIGGER_LIST =
			{
			},
		},

	},
	
	
	-- 39번 스테이지 : 벨더 1번 스테이지 중 랜덤 첫 번째 방 [제 3 거주지구]
	STAGE39 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_UNOHOUND"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 40, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_UNOHOUND"],
					START_POS	= { 8, },
					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 9,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_UNOHOUND"],
					START_POS	= { 5, },
					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 9,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 12, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 40번 스테이지 : 벨더 1번 스테이지 중 랜덤 두 번째 방 [희망의 다리]
	STAGE40 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_DARKELF_BOSS"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 42, 0, 100, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_BOSS"],
					START_POS	= { 19, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 6,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_BOSS"],
					START_POS	= { 11, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 6,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_BOSS"],
					START_POS	= { 12, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 6,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 5, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 41번 스테이지 : 벨더 2번 스테이지 [왕궁 진입로]
	STAGE41 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HENIR_GLITER_VANGUARD"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
    			CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_HENIR_GLITER_VANGUARD"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 42, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_GLITER_VANGUARD"],
					START_POS	= { 8, },
					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,	
				},		
				-- {	-- 뱅가드 라인맵 버그로 인해 1마리 줄이고 HP증가 예정
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_VANGUARD"],
					-- START_POS	= { 9, },
					-- LEVEL  		= 2,
					-- HAVE_BOSS_GAGE	= TRUE,
					-- -- SHOW_BOSS_NAME	= TRUE,
					-- 
					-- BOSS_GAUGE_HP_LINES = 3,	
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 42번 스테이지 : 벨더 3번 스테이지 [불타는 희망의 다리]
	STAGE42 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CRAZY_PUPPET"],
			NPC_UNIT_ID["NUI_CRAZY_PUPPET_SMALL_TRUE"],
			NPC_UNIT_ID["NUI_CRAZY_PUPPET_SMALL_FALSE"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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
					NPC_UNIT_ID["NUI_CRAZY_PUPPET"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 43, 0, 100, },
			},

			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET_SMALL_TRUE"],
					DROP_TIMES	= 5,
				},
			},

			NPC_GROUP =
			{
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CRAZY_PUPPET"],
					START_POS	= { 12, },
					LEVEL  		= 4,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 14,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 20, 23, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 43번 스테이지 : 벨더 4번 스테이지 [제 1 상업지구]
	STAGE43 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_MARKET_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SPRIGGAN_SMALL"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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
					NPC_UNIT_ID["NUI_SPRIGGAN_SMALL"],
					IS_RIGHT	= TRUE,
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 44, 0, 100, },
			},

			NPC_GROUP =
			{
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPRIGGAN_SMALL"],
					START_POS	= { 6, },
					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					KEY_CODE	= 1,
					BOSS_GAUGE_HP_LINES = 13,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPRIGGAN_SMALL"],
					START_POS	= { 8, },
					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					KEY_CODE	= 2,
					BOSS_GAUGE_HP_LINES = 13,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 4, 11, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
		

	},

	-- 44번 스테이지 : 벨더 5번 스테이지 [남쪽 게이트]
	STAGE44 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_GATE_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"],
			NPC_UNIT_ID["NUI_DARKELF_BOSS_FAKE"],
			NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"],
			NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"],
			NPC_UNIT_ID["NUI_DARK_NEPHILIM"],
			NPC_UNIT_ID["NUI_BLOOD_EATER"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 4, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					LEVEL  		= 0,
					START_POS	= { 23, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
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
			
			GO_TYPE             = GO_TYPE["GT_LEFT"],

			USE_POS_OF_MONSTER_FOR_REBIRTH = TRUE,
			KEY_CODE_OF_MONSTER_FOR_REBIRTH = 20,
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE_SECRET"], 47, 0, 100 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE_SECRET"], 45, 0, 100 },	
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE_SECRET"], 46, 0, 100 },

			},
			

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"],
					START_POS	= { 60, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					KEY_CODE	= 104,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID			= NPC_UNIT_ID["NUI_DARK_NEPHILIM"],
					START_POS		= { 43, }, --30, --52
					LEVEL  		= 4,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 27,
					KEY_CODE		= 20,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARKELF_BOSS_FAKE"],
					START_POS	= { 31, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DARK_NEPHILIM_FAKE"],
					START_POS	= { 31, },
					FOCUS_CAMERA	= TRUE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"],
					START_POS	= { 66, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"],
					START_POS	= { 68, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"],
					START_POS	= { 80, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"],
					START_POS	= { 82, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"],
					START_POS	= { 96, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"],
					START_POS	= { 98, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"],
					START_POS	= { 109, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"],
					START_POS	= { 111, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 73, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					-- START_POS	= { 72, },
					-- GAGE_BAR	= FALSE,
					-- ACTIVE		= FALSE,
					-- --NO_DROP     = TRUE,
					-- IS_RIGHT	= TRUE,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 88, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					-- START_POS	= { 87, },
					-- GAGE_BAR	= FALSE,
					-- ACTIVE		= FALSE,
					-- --NO_DROP     = TRUE,
					-- IS_RIGHT	= TRUE,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 92, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					-- START_POS	= { 93, },
					-- GAGE_BAR	= FALSE,
					-- ACTIVE		= FALSE,
					-- --NO_DROP     = TRUE,
					-- IS_RIGHT	= TRUE,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					START_POS	= { 119, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
					--NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_CANNON_DEMON"],
					-- START_POS	= { 118, },
					-- GAGE_BAR	= FALSE,
					-- ACTIVE		= FALSE,
					-- --NO_DROP     = TRUE,
					-- IS_RIGHT	= TRUE,
				-- },
		
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 45번 스테이지 : 벨더 제 4 비밀던전[환각의 벨더]
	STAGE45 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_SECRET_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_SECRET_BOSS"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

        SECRET_STAGE = TRUE,

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				DELAY_TIME_CLEAR_SUB_STAGE = 5.0,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 47, 0, 100 },
			},

			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ZOMBIE"],
					DROP_TIMES	= 30,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_SECRET_BOSS"],
					START_POS	= { 1, },
					LEVEL		= 5,
					HAVE_BOSS_GAGE	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					BOSS_GAUGE_HP_LINES = 15,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 15, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 46번 스테이지 : 벨더 제 3 정예던전[아크글리터 정예부대]
	STAGE46 =
	{
		WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_BOSS"],
			NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT_BOSS"],
			NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT_BOSS"],
			NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS"],
			NPC_UNIT_ID["NUI_COACKATRIGLE_BOSS"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

        SECRET_STAGE = TRUE,

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				DELAY_TIME_CLEAR_SUB_STAGE = 5.0,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 47, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_BOSS"],
					START_POS	= { 5, },
					LEVEL  		= 5,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 4,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_COACKATRIGLE_BOSS"],
					START_POS	= { 5, },
					LEVEL  		= 5,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT_BOSS"],
					START_POS	= { 13, },
					LEVEL  		= 5,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 2,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT_BOSS"],
					START_POS	= { 23, },
					LEVEL  		= 5,
					HAVE_BOSS_GAGE	= TRUE,
					SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE, 
					STOP_AT_START_STATE = TRUE,	
					BOSS_GAUGE_HP_LINES = 4,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS"],
					START_POS	= { 10, },
					LEVEL  		= 5,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 3,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 15, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	
	-- 47번 스테이지 : 벨더 휴식방입니다.
 	STAGE47 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_VELDER"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
			NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
			NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
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
					NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 48, 0, 100 },
			},
			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_VELDER"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					-- NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_HENIR_YES"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"],
					START_POS	= { 6, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_HENIR_NO"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT    = TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
			},
			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 48번 스테이지 : 하멜 1번 스테이지 [레시암 외곽]
	STAGE48 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_MASTER"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 49, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_MASTER"],
					START_POS	= { 21, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 13,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_MASTER"],
					START_POS	= { 19, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 13,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_MASTER"],
					START_POS	= { 17, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 13,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 1, 2, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 49번 스테이지 : 하멜 2번 스테이지 [가라앉은 레시암]
	STAGE49 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CORAL_SERPENT"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 50, 0, 50, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 51, 0, 50, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CORAL_SERPENT"],
					START_POS	= { 5, },
					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 10,	
					KEY_CODE		= 3,
					IS_RIGHT		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CORAL_SERPENT"],
					START_POS	= { 10, },
					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 10,	
					KEY_CODE		= 1,
					IS_RIGHT		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CORAL_SERPENT"],
					START_POS	= { 20, },
					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 10,	
					KEY_CODE		= 2,
					IS_RIGHT		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 4, 10, 20, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 50번 스테이지 : 하멜 3번 스테이지 중 랜덤한 첫 번째 스테이지 [고대수로]
	STAGE50 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HENIR_CRYSTAL_TRAP_LEFT"],
			NPC_UNIT_ID["NUI_HENIR_CRYSTAL_TRAP_RIGHT"],
			NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 52, 0, 45, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 53, 0, 55, },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_CRYSTAL_TRAP_LEFT"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_CRYSTAL_TRAP_RIGHT"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE"],
					START_POS	= { 8, },
					LEVEL  		= 5,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 14,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 16, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 51번 스테이지 : 하멜 3번 스테이지 중 랜덤한 두 번째 스테이지 [고대수로 중심부]
	STAGE51 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_CORE_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_VICTOR"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 52, 0, 45, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 53, 0, 55, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VICTOR"],
					START_POS	= { 1, },
					LEVEL  		= 3,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE, 
					STOP_AT_START_STATE = TRUE,	
					BOSS_GAUGE_HP_LINES = 17,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VICTOR"],
					START_POS	= { 2, },
					LEVEL  		= 3,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 17,
					KEY_CODE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 3,4, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	-- 52번 스테이지 : 하멜 4번 스테이지 중 랜덤한 첫 번째 스테이지 [마그만타의 동굴]
	STAGE52 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MAGMANTA"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 54, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MAGMANTA"],
					START_POS	= { 6, },
					LEVEL  		= 3,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 23,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MAGMANTA"],
					START_POS	= { 2, },
					LEVEL  		= 3,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 23,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 4, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	-- 53번 스테이지 : 하멜 4번 스테이지 중 랜덤한 두 번째 스테이지 [얼어붙은 물의 사원]
	STAGE53 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_B0SS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_AVALANCHE"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 54, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AVALANCHE"],
					START_POS	= { 1, },
					LEVEL  		= 5,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 27,	
					KEY_CODE		= 1,
					IS_RIGHT		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 19, 9, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},

			},

			TRIGGER_LIST =
			{
			},
		},
	},

	-- 54번 스테이지 : 하멜 5번 스테이지 [물의 전당]
	STAGE54 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"],
			NPC_UNIT_ID["NUI_HENIR_RAN"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = 0,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 0,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE_SECRET"], 56, 0, 100 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE_SECRET"], -1, 0, 100 },
				NEXT_STAGE2 = { CLEAR_TYPE["CT_STAGE_SECRET"], 55, 0, 100 },

			},
			
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					KEY_CODE	= 105,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RAN"],
					START_POS	= { 1, },
					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					STOP_AT_START_STATE = TRUE,
					KEY_CODE	= 1,
					BOSS_GAUGE_HP_LINES = 33,
						
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RAN"],
					START_POS	= { 1, },
					LEVEL  		= 2,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					KEY_CODE	= 2,
					BOSS_GAUGE_HP_LINES = 33,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					LEVEL  		= 0,
					START_POS	= { 2, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},
			TRIGGER_LIST =
			{
			},
		},
	},
		
	-- 55번 스테이지 : 하멜 제 4 정예던전[마족 정예부대]
	STAGE55 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SHADOW_STINGER"],
			NPC_UNIT_ID["NUI_CLOE_THE_CORRUPTION"],
			NPC_UNIT_ID["NUI_CONRAD_THE_ODD"],
			NPC_UNIT_ID["NUI_BOBOSSE_THE_REDHAMMER"],
			NPC_UNIT_ID["NUI_BOX_HENIR"],
		},

        SECRET_STAGE = TRUE,

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				DELAY_TIME_CLEAR_SUB_STAGE = 5.0,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 56, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_STINGER"],
					START_POS	= { 2, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 6,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CLOE_THE_CORRUPTION"],
					START_POS	= { 3, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					FOCUS_CAMERA	= TRUE,  
					STOP_AT_START_STATE = TRUE,
					BOSS_GAUGE_HP_LINES = 6,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CONRAD_THE_ODD"],
					START_POS	= { 5, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 6,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOBOSSE_THE_REDHAMMER"],
					START_POS	= { 7, },
					LEVEL  		= 0,
					HAVE_BOSS_GAGE	= TRUE,
					-- SHOW_BOSS_NAME	= TRUE,
					
					BOSS_GAUGE_HP_LINES = 6,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HENIR"],
					START_POS	= { 7, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},

	},
	
	
	-- 56번 스테이지 : 하멜 휴식방(최종 클리어)입니다.
 	STAGE56 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_HAMEL"],
			NPC_UNIT_ID["NUI_HENIR_CLEAR_GLAVE"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
			NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
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
				CLEAR_TIME = 10,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_HAMEL"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					-- NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_CLEAR_GLAVE"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"],
					START_POS	= { 1, },
					LEVEL  		= 0,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					GAGE_BAR    = FALSE,
				},
			},
			TRIGGER_LIST =
			{
			},
		},

	},
	
}

---------------------------------------------------------------------------------
function CF_STAGE17_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pNPC = pX2DungeonGame:GetNPCUnitByKeyCode( 11 )
	if pNPC ~= nil then
		return true
	else
		return false
	end
		
end

function RF_STAGE17_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pNPC = pX2DungeonGame:GetNPCUnitByKeyCode( 11 )
	if pNPC ~= nil then
		
		pNPC:StateChangeForce( pNPC:GetDisabledStateID() )
	
	end
	
end

---------------------------------------------------------------------------------
function CF_STAGE17_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pNPC = pX2DungeonGame:GetNPCUnitByKeyCode( 12 )
	if pNPC ~= nil then
		return true
	else
		return false
	end
		
end

function RF_STAGE17_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pNPC = pX2DungeonGame:GetNPCUnitByKeyCode( 12 )
	if pNPC ~= nil then
		
		pNPC:StateChangeForce( pNPC:GetDisabledStateID() )
	
	end
	
end




---------------------------------------------------------------------------------
function CF_STAGE17_SUB0_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	npcNum = pX2DungeonGame:LiveKeyCodeNPCNum( 1 )
	if npcNum == 0 then
		return true
	else
		return false
	end
		
end

function RF_STAGE17_SUB0_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pNPC = pX2DungeonGame:GetNPCUnitByKeyCode( 11 )
	if pNPC ~= nil then
		
		if pNPC:GetNowStateID() == pNPC:GetDisabledStateID() then
		
			pNPC:StateChangeForce( pNPC:GetStartState() )
			
		end
	
	end

end

---------------------------------------------------------------------------------
function CF_STAGE17_SUB0_TRIGGER3( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	npcNum = pX2DungeonGame:LiveKeyCodeNPCNum( 2 )
	if npcNum == 0 then
		return true
	else
		return false
	end
		
end

function RF_STAGE17_SUB0_TRIGGER3( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pNPC = pX2DungeonGame:GetNPCUnitByKeyCode( 12 )
	if pNPC ~= nil then
		
		if pNPC:GetNowStateID() == pNPC:GetDisabledStateID() then
		
			pNPC:StateChangeForce( pNPC:GetStartState() )
			
		end
	
	end

end



function CF_STAGE4_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	return true
	
end

function RF_STAGE4_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	--pX2DungeonGame:PlayWorldCamera(0)

	
end