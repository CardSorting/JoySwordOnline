-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 110, 200 },
		},
		
		STAGE1 =
		{
			SUB_STAGE0 = { 172, 138 },
			SUB_STAGE1 = { 214, 138 },
			SUB_STAGE2 = { 256, 138 },
		},
		
		STAGE2 =
		{
			SUB_STAGE0 = { 318, 76 },
			SUB_STAGE1 = { 360, 76 },
			SUB_STAGE2 = { 402, 76 },
		},
		
		STAGE3 =
		{
			SUB_STAGE0 = { 464, 14, TRUE },
		},
	},

	STAGE0 =
	{
 		WORLD_ID = WORLD_ID["WI_SANDER_KARUSO_VILLAGE_STAGE0"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
			NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
			NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
			NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
			NPC_UNIT_ID["NUI_WIND_SYLPHE"],
			NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
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
					NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			NPC_GROUP0 =
			{
				--------연출용 몬스터----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_BATTLE_MASTER_DP"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 7, },
				},
				
				---------두번째 발판 그룹--------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 10, },
				},
				
				---------세번째 발판 그룹-------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 14, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 16, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 7, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 7, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_GATE"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},
			
			NPC_GROUP1 =
			{
				--------연출용 몬스터----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_BATTLE_MASTER_DP"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 7, },
				},
				
				---------두번째 발판 그룹--------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 10, },
				},
				
				---------세번째 발판 그룹-------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 14, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 16, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 7, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 7, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_GATE"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},
			
			NPC_GROUP2 =
			{
				--------연출용 몬스터----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_BATTLE_MASTER_DP"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 7, },
				},
				
				---------두번째 발판 그룹--------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 10, },
				},
				
				---------세번째 발판 그룹-------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 14, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 16, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 7, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 7, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_GATE"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},
			TRIGGER_LIST =
			{
				-- 연출용 카메라 설정
				TRIGGER0 =
				{
					--시작 카메라
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC			= "CF_STAGE0_SUB0_TRIGGER0",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER0",
				},
			},
		},
	},
	
	STAGE1 =
	{
 		WORLD_ID = WORLD_ID["WI_SANDER_KARUSO_VILLAGE_STAGE1"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
			NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
			NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
			NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
			NPC_UNIT_ID["NUI_WIND_SYLPHE"],
			NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
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
					LINE_INDEX	= 25,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			NPC_GROUP0 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 7, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 10, },
				},
				
				----------뒤쪽 몬스터--------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 15, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 11, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 11, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 7, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 10, },
				},
				
				----------뒤쪽 몬스터--------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 15, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 11, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 11, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 7, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 10, },
				},
				
				----------뒤쪽 몬스터--------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 15, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 11, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 11, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
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
					LINE_INDEX	= 25,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 40,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			NPC_GROUP0 =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 18, },
				},		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 19, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 96, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN_BOSS"],
					START_POS	= { 30, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 23, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 23, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			
			NPC_GROUP1 =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 18, },
				},		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 19, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 96, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN_BOSS"],
					START_POS	= { 30, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 23, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 23, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			
			NPC_GROUP2 =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 18, },
				},		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 19, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 21, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER_BOSS"],
					START_POS	= { 30, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 23, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 23, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
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
					NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},
			
			
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 40,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			NPC_GROUP0 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 33, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 34, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 34, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				
				
				-------------2번 발판-----------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION_BOSS"],
					START_POS	= { 44, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 37, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 43, },
				},
				----------맨 끝쪽----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 48, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 49, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 49, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_GATE"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},
			
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 33, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 34, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 34, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				
				
				-------------2번 발판-----------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER_BOSS"],
					START_POS	= { 44, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 37, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 43, },
				},
				----------맨 끝쪽----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 48, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 49, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 49, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_GATE"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 33, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 34, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 34, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				
				
				-------------2번 발판-----------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN_BOSS"],
					START_POS	= { 44, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 37, },
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 43, },
				},
				----------맨 끝쪽----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 50, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 48, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 49, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 49, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_GATE"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"],
					START_POS	= { 52, },
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
 		WORLD_ID = WORLD_ID["WI_SANDER_KARUSO_VILLAGE_STAGE2"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
			NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
			NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
			NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
			NPC_UNIT_ID["NUI_WIND_SYLPHE"],
			NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
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
					LINE_INDEX	= 33,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			NPC_GROUP0 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 5, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 8, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 9, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 9, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 4, },
				},

			
				-----------가운데 중보----------
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER_BOSS"],
					START_POS	= { 12, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 11, },
				},
				
				---------끝 부분------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 22, },
				},
				---위쪽-------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 20, },
				},
			},
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 5, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 8, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 9, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 9, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 4, },
				},

			
				-----------가운데 중보----------
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION_BOSS"],
					START_POS	= { 12, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 11, },
				},
				
				---------끝 부분------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 22, },
				},
				---위쪽-------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 20, },
				},
			},
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 5, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 8, },
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 9, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 9, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 4, },
				},

			
				-----------가운데 중보----------
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN_BOSS"],
					START_POS	= { 12, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 11, },
				},
				
				---------끝 부분------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 22, },
				},
				---위쪽-------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 20, },
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
					LINE_INDEX	= 33,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 71,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			NPC_GROUP0 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 26, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 27, },		
				},
				
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 28, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 28, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION_BOSS"],
					START_POS	= { 25, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 31, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 33, },		
				},
			},
			
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 26, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 27, },		
				},
				
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 28, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 28, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN_BOSS"],
					START_POS	= { 25, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 31, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 33, },		
				},
			},
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 26, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 27, },		
				},
				
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 28, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 28, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN_BOSS"],
					START_POS	= { 25, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WIND_SYLPHE"],
					START_POS	= { 31, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANGER_SIRAPE"],
					START_POS	= { 33, },		
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
					NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 100,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 37, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 38, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 39, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 40, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 41, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 42, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 43, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 44, },		
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 45, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION"],
					START_POS	= { 46, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN"],
					START_POS	= { 47, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER"],
					START_POS	= { 49, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN"],
					START_POS	= { 50, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 48, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 48, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_GATE"],
					START_POS	= { 51, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"],
					START_POS	= { 51, },
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
		WORLD_ID = WORLD_ID["WI_SANDER_KARUSO_VILLAGE_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION_BOSS"],
			NPC_UNIT_ID["NUI_KARUSO_ASSASSIN_BOSS"],
			NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN_BOSS"],
			NPC_UNIT_ID["NUI_KARUSO_FIGHTER_BOSS"],
			NPC_UNIT_ID["NUI_KARUSO_BATTLE_MASTER"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 25, }, 
				NPC_GROUP_RATE1 = { 25, },
				NPC_GROUP_RATE2 = { 25, },
				NPC_GROUP_RATE3 = { 25, },
			},
			
			NPC_GROUP0 =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER_BOSS"],
					START_POS	= { 4, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN_BOSS"],
					START_POS	= { 17, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
			},
			NPC_GROUP1 =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_FIGHTER_BOSS"],
					START_POS	= { 4, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION_BOSS"],
					START_POS	= { 17, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
			},
			NPC_GROUP2 =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN_BOSS"],
					START_POS	= { 4, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_ASSASSIN_BOSS"],
					START_POS	= { 17, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
			},
			NPC_GROUP3 =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN_BOSS"],
					START_POS	= { 4, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION_BOSS"],
					START_POS	= { 17, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
			},
			
			
			TRIGGER_LIST =
			{
			},
		},
	},
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_SANDER_KARUSO_VILLAGE_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION_BOSS"],
			NPC_UNIT_ID["NUI_KARUSO_ASSASSIN_BOSS"],
			NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN_BOSS"],
			NPC_UNIT_ID["NUI_KARUSO_FIGHTER_BOSS"],
			NPC_UNIT_ID["NUI_KARUSO_BATTLE_MASTER"],
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
					NPC_UNIT_ID["NUI_KARUSO_BATTLE_MASTER"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KARUSO_BATTLE_MASTER"],
					START_POS	= { 10, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 35,
				},
			},
			
			
			TRIGGER_LIST =
			{
			},
		},
	},

}

-- 연출용 카메라 설정
function CF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	return true
end

function RF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	pX2DungeonGame:PlayWorldCamera(0)
end
