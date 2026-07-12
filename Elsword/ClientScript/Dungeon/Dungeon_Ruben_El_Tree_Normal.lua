-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 147, 67 },
		},
		STAGE1 = 
		{
			SUB_STAGE0 = { 209, 67 },
		},
		STAGE2 =
		{
       		SUB_STAGE0 = { 278, 67 , TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_EL_TREE_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_CHICKEN"],
			NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE"],
			NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE_POST"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},
			
			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 2, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 3, },
					IS_RIGHT	= TRUE,					
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN"],
					START_POS	= { 5, },
					--IS_RIGHT	= TRUE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN"],
					START_POS	= { 6, },
					--IS_RIGHT	= TRUE,					
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 7, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 9, },
					--IS_RIGHT	= TRUE,					
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE_POST"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
			},

			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					--시작 카메라
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER0",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER0",
				},			
			},
		},
	},
	
	
	

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_EL_TREE_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_CHICKEN"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],	
			NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE"],
			NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE_POST"],
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
					NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN_FEMALE"],
					START_POS	= { 2, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,	
					IS_RIGHT	= TRUE,
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN"],
					START_POS	= { 6, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 7, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN"],
					START_POS	= { 13, },	
				},
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN"],
					START_POS	= { 24, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 19, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 20, },	
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN"],
					START_POS	= { 44, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN"],
					START_POS	= { 46, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 31, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN"],
					START_POS	= { 37, },	
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_EL_TREE_GATE_POST"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},

	
	
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_EL_TREE_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],

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
					NPC_UNIT_ID["NUI_PPORU_GIANT_WHITE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},
			
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_WHITE"],
					DROP_TIMES	= 2,
				},
			},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
					START_POS	= { 16, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE, 
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 11, },
					ACTIVE		= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 20, },	
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
			},

			TRIGGER_LIST =
			{
			},
		},
	},
}




function CF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	return true
	
end

function RF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	--pX2DungeonGame:PlayWorldCamera(0)

	
end

