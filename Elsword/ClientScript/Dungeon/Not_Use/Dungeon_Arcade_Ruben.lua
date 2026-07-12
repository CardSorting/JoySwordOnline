-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

 -- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다

-- 스테이지 흐름 (0)-(1)-(2)


STAGE_LIST = 
{

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE19"],
        START_MOTION	= TRUE,

 		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MUSHROOM"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
 			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
			},
		},
	},
	
	
	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE15"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
			NPC_UNIT_ID["NUI_BEE_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
 			},

			NPC_GROUP =
			{
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ARCADE"],
					START_POS	= { 2, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ARCADE"],
					START_POS	= { 4, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ARCADE"],
					START_POS	= { 6, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ARCADE"],
					START_POS	= { 8, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ARCADE"],
					START_POS	= { 10, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ARCADE"],
					START_POS	= { 12, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ARCADE"],
					START_POS	= { 14, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE_ARCADE"],
					START_POS	= { 16, },
					IS_RIGHT    = TRUE,
				},


				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
			},
		},
	},
	

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE1"],



		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MONKEY_A"],
			NPC_UNIT_ID["NUI_CHEST_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
 			},

			NPC_GROUP =
			{
                {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 6, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 21, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 31, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 6, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 28, },
				},
			},
		},
	},
	


	STAGE3 =
	{
  		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE7"],

		READY_NPC =
		{
			
			NPC_UNIT_ID["NUI_MONKEY_C"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_CHEST_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
 			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 27, },
					IS_RIGHT    = TRUE,
				},   
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 31, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 33, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 2, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 4, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 22, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 16, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},
		},
	},
	
 	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE14"],
        MISSION_TITLE	= "벌집을 모두 떨어뜨려라!",
        
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
 			},

			NPC_GROUP =
			{
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 3, },
					IS_RIGHT    = TRUE,
					ADD_POS_Y	= -120,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 5, },
					IS_RIGHT    = TRUE,
					ADD_POS_Y	= -120,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 12, },
					IS_RIGHT    = TRUE,
					ADD_POS_Y	= -120,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 4, },
					IS_RIGHT    = TRUE,
					ADD_POS_Y	= -120,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 6, },
					IS_RIGHT    = TRUE,
					ADD_POS_Y	= -120,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 7, },
					IS_RIGHT    = TRUE,
					ADD_POS_Y	= -120,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 1, },
				},


				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 2, },
					ADD_POS_Y	= -120,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 8, },
					ADD_POS_Y	= -120,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 9, },
					ADD_POS_Y	= -120,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 10, },
					ADD_POS_Y	= -120,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 11, },
					ADD_POS_Y	= -120,
				},
			},
		},
	},
	
	STAGE5 =
	{
  		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE23"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
 			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 7, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 11, },
					IS_RIGHT	= TRUE,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 4, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 1, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 2, },
					IS_RIGHT	= TRUE,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 5, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 12, },
                    IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 13, },

				},


			},
		},
	},
	
	
	STAGE6 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE8"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
			NPC_UNIT_ID["NUI_CHEST_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 7, 0, 100, },
 			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 37, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 27, },
				},


				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 15, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 30, },
					IS_RIGHT	= TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
					START_POS	= { 25, },					
				},


				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},                                      
			},
		},
	},
	
	
	
	STAGE7 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE21"],
       MISSION_TITLE	= "오래된 동전을 조심해라~?",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CHEST_ARCADE"],
			NPC_UNIT_ID["NUI_CHEST_ARCADE_MONSTER"],
			NPC_UNIT_ID["NUI_MUSHROOM_POISON_ARCADE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],



			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_INVISIBLE_DUMMY"],
					START_POS	= { 15, },
					GAGE_BAR	= FALSE,
				},
		
			},

			
			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					HOST				= FALSE,
					ONE_TIME			= TRUE,
					INTERVAL			= 1,
					CONDITION_FUNC		= "CF_STAGE7_SUB0_TRIGGER0",
					REACT_FUNG			= "RF_STAGE7_SUB0_TRIGGER0",
				},
				
				
				TRIGGER1 =
				{
					HOST				= TRUE,
					ONE_TIME			= TRUE,
					INTERVAL			= 1,
					CONDITION_FUNC		= "CF_STAGE7_SUB0_TRIGGER1",
					REACT_FUNG			= "RF_STAGE7_SUB0_TRIGGER1",
				},
				
				
				TRIGGER2 =
				{
					HOST				= TRUE,
					ONE_TIME			= TRUE,
					INTERVAL			= 1,
					CONDITION_FUNC		= "CF_STAGE7_SUB0_TRIGGER2",
					REACT_FUNG			= "RF_STAGE7_SUB0_TRIGGER2",
				},


				TRIGGER3 =
				{
					HOST				= TRUE,
					ONE_TIME			= TRUE,
					INTERVAL			= 1,
					CONDITION_FUNC		= "CF_STAGE7_SUB0_TRIGGER3",
					REACT_FUNG			= "RF_STAGE7_SUB0_TRIGGER3",
				},
				
				
			},

			
		},
	},
	
    STAGE8 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE13"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BOX_"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
			NPC_UNIT_ID["NUI_MUSHROOM"],
			NPC_UNIT_ID["NUI_CHEST_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 9, 0, 100, },
 			},

			NPC_GROUP =
			{
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 27, },
				},


				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 5, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},
		},
	},
	
	STAGE9 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE10"],
		
		MISSION_TITLE	= "상자를 부숴라!!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BOX_"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 10, 0, 100, },
 			},

			NPC_GROUP =
			{
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 64, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 41, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 44, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 47, },
					ACTIVE		= FALSE,
				},
  				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 56, },					
				},
			},
		},
	},
	
   	STAGE10 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE9"],

       MISSION_TITLE	= "뛰어라!!",
        
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
			NPC_UNIT_ID["NUI_CHEST_ARCADE"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_SMALL_ARCADE"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_END_ARCADE"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_SMALL_CONTROLER_ARCADE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,               
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0	=
			{
    			CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 11, 0, 100, },
 			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 7, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_SMALL_CONTROLER_ARCADE"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_ROCK_END_ARCADE"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 24, },
					KEY_CODE    = 1,
				},
			},
			

			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					HOST				= FALSE,
					ONE_TIME			= TRUE,
					INTERVAL			= 1,
					CONDITION_FUNC		= "CF_STAGE10_SUB0_TRIGGER0",
					REACT_FUNG			= "RF_STAGE10_SUB0_TRIGGER0",
				},
			},
		},
	},
	
	STAGE11 =
	{
  		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE7"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MONKEY_C_BOSS"],                
			
			NPC_UNIT_ID["NUI_MONKEY_BOSS"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 12, 0, 100, },
 			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C_BOSS"],
					START_POS	= { 13, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS"],
					START_POS	= { 28, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
					START_POS	= { 32, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 3, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 26, },
				},
			},
		},
	},
	
	
	STAGE12 =
	{
  		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE17"],
  		
  		MISSION_TITLE	= "롤링몽 10마리를 처치하라!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE2"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC_COUNT"],
				DELAY_TIME_CLEAR_SUB_STAGE = 5.0,
				NPC_KEYCODE_AND_COUNT = 
				{
					1, 10,
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 13, 0, 100, },
 			},

			NPC_GROUP =
			{
   				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE2"],
					START_POS	= { 1, },
					IS_RIGHT    = TRUE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE2"],
					START_POS	= { 2, },
					KEY_CODE	= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_INVISIBLE_DUMMY"],
					START_POS	= { 2, },					
					GAGE_BAR	= FALSE,					
				},
			},
			
			
			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					HOST				= TRUE,
					ONE_TIME			= FALSE,
					INTERVAL			= 5,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER0",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER0",
				},
			},
			
		},
	},
	


	STAGE13 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE6"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
			NPC_UNIT_ID["NUI_CHEST_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 14, 0, 100, },
 			},

			NPC_GROUP =
			{
            	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 12, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 17, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 2, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 7, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 20, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 21, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 9, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
				},
			},
		},
	},

	
	STAGE14 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE16"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 15, 0, 100, },
 			},

			NPC_GROUP =
			{
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 32, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 67, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 65, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 31, },
					
					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 18, },
					IS_RIGHT    = TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 25, },
				},
				
				
				 {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 14, },
					IS_RIGHT    = TRUE,
				},
				
				
				 {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE"],
					START_POS	= { 49, },
				},
				

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
					START_POS	= { 42, },
					IS_RIGHT    = TRUE,
				},
			},
		},
	},
	
	STAGE15 =
	{
  		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE1"],
  		
  		MISSION_TITLE	= "쏟아지는 상자를 피해 보스몽을 처치해라!",
  		

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MONKEY_C_BOSS"],
			NPC_UNIT_ID["NUI_BOX_DROPPER"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_AIR_SHIP"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_AIR_SHIP"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 16, 0, 100, },
 			},

			NPC_GROUP =
			{
   				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C_BOSS"],
					START_POS	= { 28, },
					LEVEL       = 10,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_DROPPER"],
					START_POS	= { 7, },
					ACTIVE      = FALSE,
				},				
			},
		},
	},
	
	
	
	STAGE16 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE11"],

		READY_NPC =
		{
			
			NPC_UNIT_ID["NUI_BOX_"],
			NPC_UNIT_ID["NUI_CHEST_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 17, 0, 100, },
 			},

			NPC_GROUP =
			{
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 22, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 16, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 10, },
					IS_RIGHT    = TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 53, },
				},
     		    {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 50, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 44, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
					START_POS	= { 41, },
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
					START_POS	= { 26, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
					START_POS	= { 57, },
				},
			},
		},
	},
	


   	STAGE17 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE10"],
		
		MISSION_TITLE	= "키라키라를 처치해라!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BOX_"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
			NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 18, 0, 100, },
 			},

			NPC_GROUP =
			{
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 64, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 28, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 38, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 41, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 44, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 47, },
					ACTIVE		= FALSE,
				},
  				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
					START_POS	= { 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
					START_POS	= { 58, },
					IS_RIGHT    = TRUE,
				},

			},
		},
	},
	
	STAGE18 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE18"],
		MISSION_TITLE	= "벤더스를 처치해라!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BESMA_ROCK_ARCADE"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_ARCADE"],
			NPC_UNIT_ID["NUI_BESMA_ROCK_END_ARCADE"],
			NPC_UNIT_ID["NUI_MUSHROOM"],
			NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 19, 0, 100, },
 			},

			NPC_GROUP =
			{
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE3"],
					START_POS	= { 1, },					
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					UNIT_SCALE	= 1.4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE3"],
					START_POS	= { 2, },					
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					UNIT_SCALE	= 1.4,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 3, },										
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"],
					START_POS	= { 9, },
				},
			},
		},
	},
	
	
	
   	STAGE19 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_RUBEN_STAGE8"],
		MISSION_TITLE	= "뽀루 패밀리를 해치워라!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_PPORU_GIANT_BLACK"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_WHITE"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
 			},

			NPC_GROUP =
			{
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_BLACK"],
					START_POS	= { 36, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_WHITE"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
					START_POS	= { 23, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 14, },
					IS_RIGHT	= TRUE,
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST1"],
					START_POS	= { 13, },
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 42, },
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 35, },
					IS_RIGHT	= TRUE,
					ACTIVE      = FALSE,
				},
			},
		},
	},
}





function CF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	if pX2DungeonSubStage ~= nil then 
		if pX2DungeonSubStage:GetCheckedClearSubStage() == false then 
			return true
		end 
	end 
		
	pX2DungeonGame:KillNPC( NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE2"], 10 )
	return false
	
end


function RF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pos = pX2DungeonGame:GetLineMap():GetStartPosition( 1 )
	pX2DungeonGame:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE2"], 1, true, pos, true, 0, true, 1 )
	
	pos = pX2DungeonGame:GetLineMap():GetStartPosition( 2 )
	pX2DungeonGame:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE2"], 1, true, pos, false, 0, true, 1 )
	
	pX2DungeonGame:FlushCreateNPCReq()
	
end









function CF_STAGE7_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	return true 
	
end


function RF_STAGE7_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	for i = 1, 23 do 
		
		vPos = pX2DungeonGame:GetLineMap():GetStartPosition( i )
		vPos.y = vPos.y + 150.0
		pX2DungeonGame:GetDropItemManager():AddDropItem_LUA( 127020, vPos, 10.0, 9999.0 )
		
	end
	
	
	pX2DungeonGame:GetTimerManyPurpose1():restart()

end





function CF_STAGE7_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	-- 시간이 10초 지났고		
	if pX2DungeonGame:GetTimerManyPurpose1():elapsed() > 15.0 and
		pX2DungeonGame:GetTimerManyPurpose1():elapsed() < 16.0 then
	
		nCount = pX2DungeonGame:GetDropItemManager():CountDropItemByID( 127020 ) 
		if nCount > 0 then 
			return true
		end
		
	end
	
	return false
	
end



function RF_STAGE7_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pMinorParticle = pX2DungeonGame:GetMinorParticle()
	local vPos = pX2DungeonGame:GetLineMap():GetStartPosition( 1 )
	
	for i=0, 10 do 
	
		bOK = pX2DungeonGame:GetDropItemManager():GetDropItemPosition( i, vPos )
		
		if bOK == true then 
		
			if pMinorParticle ~= nil then
				pMinorParticle:CreateSequence_LUA( "DownSmoke", vPos, D3DXVECTOR2(100,100), D3DXVECTOR2(15,-1) )
        	end
		
			if i > 5 then 
				pX2DungeonGame:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MONKEY_A"], 1, true, vPos, true, 0, true, 1 )
			else
				pX2DungeonGame:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MONKEY_C"], 1, true, vPos, true, 0, true, 1 )
			end
			
		end
		
	end
	
	pX2DungeonGame:FlushCreateNPCReq()	
	pX2DungeonGame:GetDropItemManager():DeleteAllItem()
	
end










function CF_STAGE7_SUB0_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )


	-- 시간이 20초 지났고		
	if pX2DungeonGame:GetTimerManyPurpose1():elapsed() > 20.0 then 
		
		nNum = pX2DungeonGame:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_MONKEY_A"] )
		nNum2 = pX2DungeonGame:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_MONKEY_C"] )

		if (nNum+nNum2) <= 0 then 
			return true
		end
		
	end
	
	return false
	
		
	
end




function RF_STAGE7_SUB0_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pX2DungeonGame:SetClearEffect( 1 )
	pX2DungeonGame:SetLastKillCheck( true )
	pX2DungeonGame:SetLastkillShotTime( 0.05 )
	
	pX2DungeonGame:GetTimerManyPurpose2():restart()
	
	
end







function CF_STAGE7_SUB0_TRIGGER3( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	-- 시간이 30초 지났고		
	if pX2DungeonGame:GetTimerManyPurpose1():elapsed() > 20.0 then 
		
		nNum = pX2DungeonGame:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_MONKEY_A"] )
		nNum2 = pX2DungeonGame:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_MONKEY_C"] )
		
		if (nNum+nNum2) <= 0 then 
			if pX2DungeonGame:GetTimerManyPurpose2():elapsed() > 5.0 then 
				return true
			end
		end
		
	end
	
	return false
	
end



function RF_STAGE7_SUB0_TRIGGER3( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	-- 몬스터 다 잡고 클리어
	pX2DungeonSubStage:ClearSubStage( CLEAR_TYPE["CT_STAGE"], 8, 0 )
	
end












-- 스테이지 시작하면 돌 굴러오니까 오른쪽으로 진행하라는 화살표 나오게
function CF_STAGE10_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	if pX2DungeonSubStage:GetDoneClearSubStage() == false then 
		return true
	end
	
	return false 

end

function RF_STAGE10_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pDungeon = pX2DungeonGame:GetDungeon()
	pDungeonStage = pDungeon:GetNowStage()	

	if nil ~= pDungeonStage then
		if pDungeonStage:IsGoEffectOn() == false then 
		
			pDungeonStage:StartGoEffect( GO_TYPE["GT_RIGHT"] )
			
		end
	end
	
end





