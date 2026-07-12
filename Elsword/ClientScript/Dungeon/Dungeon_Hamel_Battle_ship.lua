
STAGE_LIST =
{
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_BATTLE_SHIP_STAGE"],
		START_MOTION = TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MERMAN"],
			NPC_UNIT_ID["NUI_ANCIENT_CRAB"],
			NPC_UNIT_ID["NUI_MAST_D"],
			NPC_UNIT_ID["NUI_MAST_E"],
			NPC_UNIT_ID["NUI_MAST_F"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			-- CLEAR_COND0 =
			-- {
				-- CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				-- NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			-- },
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_TIME"],
				CLEAR_TIME = 120,
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MAST_D"],
					START_POS	= { 11, 12, 13,},
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MAST_E"],
					START_POS	= { 11, 12, 13,},
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MAST_F"],
					START_POS	= {11, 12, 13,},
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MERMAN_SHIP"],
					START_POS	= { 1, },
					--ACTIVE		= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB_SHIP"],
					START_POS	= { 9, },
					--ACTIVE		= FALSE,
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_CRAB_SHIP"],
					START_POS	= {	6, },
					--ACTIVE		= FALSE,
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
					CONDITION_FUNC			= "CF_STAGE0_SUB0_TRIGGER0",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER0",
				},
			},
		},
	},
}

function CF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	return true
end

function RF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	pX2DungeonGame:PlayWorldCamera(0)
end
