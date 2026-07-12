-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다

-- 스테이지 흐름 (0)-(1)-(2)


STAGE_LIST =
{

    STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE12"],
        START_MOTION	= TRUE,

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BEEPOISON"],
			NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
			NPC_UNIT_ID["NUI_CHEST_ARCADE"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 17, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 7, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
					START_POS	= { 3, },
					ADD_POS_Y	= -245,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
					START_POS	= { 7, },
					ADD_POS_Y	= -245,
				},
				
--[[				
				{
					
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 19, },
					IS_RIGHT    = TRUE,
					RATE	= 0,
				},	
--]]				
				{
				    SUB_NPC0 =
				    {
				    SUB_NPC_RATE	= 70,
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 19, },
					IS_RIGHT    = TRUE,
				    },
				    SUB_NPC1 =
				    {
				    SUB_NPC_RATE	= 30,
				   	NPC_ID		= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
					START_POS	= { 19, },
					IS_RIGHT    = TRUE,
				    },
				},
--[[				
				{
				    NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 22, },
					RATE	= 0,
				},
--]]				
                {				
				    SUB_NPC0 =
					{
					SUB_NPC_RATE	= 70,
				    NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 22, },
				    },
			   	    SUB_NPC1 =
				    {
					SUB_NPC_RATE	= 30,
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
					START_POS	= { 22, },
			        },
				},
			},
		},
	},


	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE1"],
		
		MISSION_TITLE	= "머슈를 모두 해치워라!!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MUSHROOM_POISON_ARCADE"],
			NPC_UNIT_ID["NUI_MUSHROOM_KING_ARCADE"],
			NPC_UNIT_ID["NUI_MUSHROOM_KING_BLACK_ARCADE"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
 			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON_ARCADE"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_KING_ARCADE"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_KING_BLACK_ARCADE"],
					START_POS	= { 6, },
					IS_RIGHT    = TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON_ARCADE"],
					START_POS	= { 10, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
			},
		},
	},

	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE3"],
		
		MISSION_TITLE	= "위습을 모두 제거하라!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"],
			NPC_UNIT_ID["NUI_WISP_ARCADE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 11, },
          			IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 12, },
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 13, },
         			IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 14, },
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 15, },
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 16, },
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"],
				    START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 21, },
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 20, },
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 19, },
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 25, },
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP_ARCADE"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 31, },
					ACTIVE      = FALSE,
				},
			},
		},
	},


	STAGE3 =
	{
  		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE4"],
        MISSION_TITLE	= "엔트를 처치하라!",
        
        
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
			NPC_UNIT_ID["NUI_ENT_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST2"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
 			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 4, },
                    ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 6, },
                    ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 11, },
                    ACTIVE      = FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_TEST3"],
					START_POS	= { 9, },
                    ACTIVE      = FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_ARCADE"],
					START_POS	= { 21, },
					IS_RIGHT    = TRUE,
				},
			},
		},
	},


	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE3_1"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_BAT_B"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
 			},

			NPC_GROUP =
			{
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 2, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 8, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 28, },	
				},
		        {
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 45, },					
				},
		        {
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 51, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 63, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 75, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 82, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 100, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 92, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 48, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 67, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 71, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 87, },					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_B"],
					START_POS	= { 96, },									
				},
			},
		},
	},
				
				
				
	STAGE5 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE31"],
		MISSION_TITLE	= "종유석을 피하며 모든 몬스터를 처치해라!",
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_THIEF_FAT"],
			NPC_UNIT_ID["NUI_THIEF_THIN"],
			NPC_UNIT_ID["NUI_THIEF_FAT_BOSS"],
			NPC_UNIT_ID["NUI_BENDERS_NORMAL_ARCADE"],
			NPC_UNIT_ID["NUI_ROCK_DROPPER_ARCADE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_FAT"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NORMAL_ARCADE"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ROCK_DROPPER_ARCADE"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ROCK_DROPPER_ARCADE"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},
		},
	},
				
		
	STAGE6 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE2"],		

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
					START_POS	= { 3, },
					IS_RIGHT	= TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
					START_POS	= { 4, },
					IS_RIGHT	= TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
					START_POS	= { 5, },
					IS_RIGHT	= TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
					START_POS	= { 6, },
					IS_RIGHT	= TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
					START_POS	= { 7, },
					IS_RIGHT	= TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 8, },
					IS_RIGHT	= TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
					START_POS	= { 12, },
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
					START_POS	= { 13, },
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
					START_POS	= { 14, },
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
					START_POS	= { 11, },
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_ARCADE"],
					START_POS	= { 10, },
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 9, },
				},
			},
		},
	},


    STAGE7 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE35"],
				
		READY_NPC =
		{
		    NPC_UNIT_ID["NUI_MOUSE"],
			NPC_UNIT_ID["NUI_MOUSE_HOUSE"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT_ARCADE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 8, 0, 100, },
 			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT_ARCADE"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT_ARCADE"],
					START_POS	= { 6, },
				},
		        {
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT_ARCADE"],
					START_POS	= { 10, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT_ARCADE"],
					START_POS	= { 13, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSEHOUSE"],
					START_POS	= { 17, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSEHOUSE"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 19, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 21, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 23, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 25, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 28, },
				},
			},
		},
	},

	
    STAGE8 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE7"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
			NPC_UNIT_ID["NUI_THIEF_THIN"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
                    NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
                    NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 3, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
                    NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 20, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 23, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 24, },
					IS_RIGHT    = TRUE,
				},
			},
		},
	},


    STAGE9 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE32"],
	
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_MOUSE"],
			NPC_UNIT_ID["NUI_MOUSEHOUSE"],
			NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
			NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
			
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
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_DOWN_ARCADE"],
					START_POS	= { 20, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 80, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 82, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 84, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 86, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 88, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 90, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 92, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 94, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 96, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 98, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 100, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_UP_ARCADE"],
					START_POS	= { 102, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 8, },
				},
   			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSEHOUSE"],
					START_POS	= { 3, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 22, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 65, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER_ARCADE"],
					START_POS	= { 75, },
				},
			},
	    },
	},
		
		
 	STAGE10 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE5"],
		
  		MISSION_TITLE	= "봄버보스몽을 처치하라!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
			NPC_UNIT_ID["NUI_MONKEY_BOMB_KING_ARCADE"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 11, 0, 100 },
 			},

			NPC_GROUP =
			{
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
		            START_POS	= { 33, },
		            ACTIVE		= FALSE,
		            GAGE_BAR    = FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
		            START_POS	= { 3, },
		            ACTIVE		= FALSE,
		 			IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
		            START_POS	= { 28, },
		            ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
		            START_POS	= { 35, },
		            ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
		            START_POS	= { 16, },
		            ACTIVE		= FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
		            START_POS	= { 21, },
		            ACTIVE		= FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
		            START_POS	= { 38, },
		            ACTIVE		= FALSE,
	            },
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE"],
		            START_POS	= { 9, },
					ACTIVE		= FALSE,
	            },
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE"],
		            START_POS	= { 14, },
		            ACTIVE		= FALSE,
		            IS_RIGHT    = TRUE,
	            },
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
		            START_POS	= { 30, },
		            ACTIVE		= FALSE,
		            IS_RIGHT    = TRUE,
            	},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
		            START_POS	= { 32, },
		            ACTIVE		= FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_KING_ARCADE"],
		            START_POS	= { 25, },
		            IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_KING_ARCADE"],
		            START_POS	= { 24, },
	            },
			},
		},
	},


   STAGE11 =
	{
  		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE6"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CHEST_ARCADE"],
			NPC_UNIT_ID["NUI_PPORU_GIANT_BLACK"],
			NPC_UNIT_ID["NUI_PPORU_SMALL_BLACK"],
			NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
			NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
			NPC_UNIT_ID["NUI_PPORU_SMALL"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 12, 0, 100 },
 			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SPIKEBOARD_HERB_ARCADE"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 10, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 8, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 13, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 18, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 15, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 16, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 2, },
   					ACTIVE  = FALSE,              NO_DROP = TRUE,
    				GAGE_BAR = FALSE,
    				ADD_POS_Y = 1300,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 4, },
   					ACTIVE  = FALSE,              NO_DROP = TRUE,
    				GAGE_BAR = FALSE,
    				ADD_POS_Y = 1300,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 7, },
   					ACTIVE  = FALSE,              NO_DROP = TRUE,
    				GAGE_BAR = FALSE,
    				ADD_POS_Y = 1300,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 9, },
   					ACTIVE  = FALSE,              NO_DROP = TRUE,
    				GAGE_BAR = FALSE,
    				ADD_POS_Y = 1300,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 12, },
   					ACTIVE  = FALSE,              NO_DROP = TRUE,
    				GAGE_BAR = FALSE,
    				ADD_POS_Y = 1300,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 15, },
   					ACTIVE  = FALSE,              NO_DROP = TRUE,
    				GAGE_BAR = FALSE,
    				ADD_POS_Y = 1300,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DOWN_STONE_TRAP"],
					START_POS	= { 17, },
   					ACTIVE  = FALSE,              NO_DROP = TRUE,
    				GAGE_BAR = FALSE,
    				ADD_POS_Y = 1300,
				},
			},
		},
	},


    STAGE12 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE8"],
		MISSION_TITLE   = "빠른 시간 안에 장고를 처치해라!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_ARCADE"],
			
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 13, 0, 100, },
 			},
    	
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_ARCADE"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_ARCADE"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_ARCADE"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_ARCADE"],
					START_POS	= { 15, },
				},
			},
		},
	},
	

    STAGE13 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE9"],
		MISSION_TITLE   = "윌리엄을 처치해라!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_FIRE"],
			NPC_UNIT_ID["NUI_PPORU_WILLIAM_C_ARCADE"],
			NPC_UNIT_ID["NUI_BUNKER"],
			NPC_UNIT_ID["NUI_MONKEY_BOMB"],
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
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 14, 0, 100, },
 			},

			NPC_GROUP =
			{
                {
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 42, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					RATE        = 30,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_FIRE"],
					START_POS	= { 8, },
					ACTIVE      = FALSE,
					IS_RIGHT    = TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_FIRE"],
					START_POS	= { 12, },
					ACTIVE      = FALSE,
				},
   				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_FIRE"],
					START_POS	= { 38, },
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_C_ARCADE"],
					START_POS	= { 26, },  
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 19, }, 
					ACTIVE      = FALSE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 32, }, 
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB"],
					START_POS	= { 19, }, 
					SIEGE_MODE	= TRUE,
					ACTIVE      = FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB"],
					START_POS	= { 32, },
					SIEGE_MODE	= TRUE,
					ACTIVE      = FALSE,
				},
			},
		},
	},

	
	 STAGE14 =
	{
  		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE33"],
	

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_BUNKER"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
		    NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 9, },
					IS_RIGHT    =TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 15, },
					IS_RIGHT    =TRUE,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 42, },
					IS_RIGHT    =TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
					START_POS	= { 42, },
					IS_RIGHT    =TRUE,
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
					START_POS	= { 35, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
					START_POS	= { 25, },
					IS_RIGHT    =TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
					START_POS	= { 19, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},
		},
	},	
	
	
    STAGE15 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE10"],
		MISSION_TITLE   = "양산형 월리8호를 해치워라!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_ARCADE"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_BUNKER"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 16, 0, 100 },
 			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS"],
					START_POS	= { 61, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_ARCADE"],
					START_POS	= { 57, },
					KEY_CODE = 1,
				},
			},
		},
	},	

	
	STAGE16 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE11"],
	
     	READY_NPC =
		{
			NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_ARCADE"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_BUNKER"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 28, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 19, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_ARCADE"],
					START_POS	= { 5, },
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE_ARCADE"],
					START_POS	= { 55, },
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
					START_POS	= { 15, },
					SIEGE_MODE	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
					START_POS	= { 48, },
					SIEGE_MODE	= TRUE,
				},
			},
		},
	},	

	

	
    STAGE17 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE14"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER_ARCADE"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER_ARCADE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER_ARCADE"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER_ARCADE"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER_ARCADE"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_SOLDIER_THUNDER_ARCADE"],
					START_POS	= { 19, },
				},
			},
		},
	},	
   
    STAGE18 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE15"],
		MISSION_TITLE   = "최상층에 숨겨진 3개의 상자를 부숴라!",

		READY_NPC =
		{                                                
			NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE3"],
			NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE"],
			NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
			NPC_UNIT_ID["NUI_WOOD_POST_TRAP_ARCADE"],
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_CHEST_ARCADE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 19, 0, 100, },
 			},
 			
			NPC_GROUP =
			{
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE3"],
					START_POS	= { 3, },
					IS_RIGHT    = TRUE,
					ACTIVE		= FALSE,
					GAGE_BAR    = FALSE,
					UNIT_SCALE	= 3,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING_ARCADE3"],
					START_POS	= { 29, },
					ACTIVE		= FALSE,
					GAGE_BAR    = FALSE,
					UNIT_SCALE	= 3,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
					START_POS	= { 37, },
					ACTIVE		= FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
					START_POS	= { 50, },
					ACTIVE		= FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
					START_POS	= { 56, },
					ACTIVE		= FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
					START_POS	= { 63, },
					ACTIVE		= FALSE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
					START_POS	= { 45, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
					START_POS	= { 61, },	-- fix!! 라인맵에 67번 start pos이 없네요~
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOMB_ARCADE2"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 65, },
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 47, },
					IS_RIGHT    = TRUE,
				},
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_ARCADE"],
					START_POS	= { 43, },
					IS_RIGHT    = TRUE,
				},
			},
		},
	},
	 
	STAGE19 =
	{
		WORLD_ID = WORLD_ID["WI_ARCADE_ELDER_STAGE9"],
		
		MISSION_TITLE   = "벤더스를 처치해라!",

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BENDERS_NASOD"],
			NPC_UNIT_ID["NUI_STEAM_RIGHT_ARCADE"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
			NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_BUNKER"],
			
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
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
 			},

			NPC_GROUP =
			{
			 	{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 13, },
					UNIT_SCALE  = 1.3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 14, },
					IS_RIGHT    = TRUE,
					UNIT_SCALE  = 1.3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 3, },
					UNIT_SCALE  = 1.3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_BENDERS_THIEF"],
					START_POS	= { 9, },
					UNIT_SCALE  = 1.3,
					IS_RIGHT    = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
					START_POS	= { 34, },
					IS_RIGHT    = TRUE,
					SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
					START_POS	= { 33, },
     				SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
					START_POS	= { 43, },
					SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW_ARCADE"],
					START_POS	= { 18, },
					IS_RIGHT    = TRUE,
					SIEGE_MODE  = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 18, },
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 34, },
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 33, },
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUNKER"],
					START_POS	= { 43, },
					ACTIVE      = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NASOD"],
					START_POS	= { 25, },
					IS_RIGHT    = TRUE,
     				KEY_CODE    = 1,
     				UNIT_SCALE	= 1.5,
				},
			},
		},
	},  
}

