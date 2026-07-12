-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST = 
{
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_FOREST_OF_EL"],
		START_MOTION	= TRUE,
	
		READY_NPC = 
		{ 
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BOX_DROPPER"],		
		},
					
   			
		READY_SOUND = 
		{
			"Succeed.ogg",			
		},
   		
   		
   		
   		

		SUB_STAGE0 =
		{		
			MAIN_LINE_SET = 0,
			
			NPC_GROUP = 
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_DROPPER"],			
					START_POS	= { 8, },
					LEVEL		= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],	
					START_POS	= { 9, },
					LEVEL		= 4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 11, },
					LEVEL		= 4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 12, },
					LEVEL		= 4,
				},
			},			
			
			TRIGGER_LIST = 
			{
				TRIGGER0 = 
				{
					HOST				= TRUE,
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER0",	
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER0",			
				},	
				
				TRIGGER1 = 
				{
					HOST				= TRUE,
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER1",	
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER1",			
				},	
						
				
			},
		},		
	},
}



---------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	if pX2DungeonGame:IsHost() == 0 then
		return true
	else
		return false
	end
end

function RF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pX2DungeonSubStage:SetWinWhenTimeOut( true )
	
end




---------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	if pX2DungeonGame:LiveActiveNPCNum() == 0 then
		return true
	else
		return false
	end
end

function RF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	pX2DungeonSubStage:ClearSubStage( CLEAR_TYPE["CT_GAME"], 0, 0 )
end

