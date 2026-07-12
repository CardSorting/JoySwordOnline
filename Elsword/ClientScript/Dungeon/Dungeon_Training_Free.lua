-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다

-- 자유훈련 


STAGE_LIST = 
{
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],
		START_MOTION	= FALSE,
	
		READY_NPC = 
		{ 

			NPC_UNIT_ID["NUI_INVISIBLE_DUMMY"],
			NPC_UNIT_ID["NUI_MUSHROOM_WOODEN"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
		},
		
	
	
   		READY_TEXTURE = 
   		{
	   		"DLG_KEYS.tga",
	   		"HQ_RankPC_0.dds",
	   		"HQ_RankPC_1.dds",
			"HQ_RankPC_2.dds",	   		
			"HQ_RankPC_3.dds",	   		
			"HQ_RankPC_4.dds",	   		
			"HQ_RankPC_5.dds",	   		
			"HQ_RankPC_6.dds",	   		
			"HQ_RankPC_7.dds",	   		
			"HQ_RankPC_8.dds",	   		
			"HQ_RankPC_9.dds",	   		
			"FadeInOut.dds",
			"NoAlphaImage.dds",	
			"PC_-.dds",
			"PC_I.dds",
			"HQ_Start.dds",
			
			"Danger_Arrow.dds",
			"HQ_Level_Up.dds",
   		},
   		
   		
   		
   		READY_XMESH = 
		{
		},
		
		
		READY_XSKIN_MESH = 
		{
			"RespawnLanding01.X",
			"RespawnLanding02.X",
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
					NPC_ID		= NPC_UNIT_ID["NUI_INVISIBLE_DUMMY"],			
					START_POS	= { 7, },
					LEVEL		= 10,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_WOODEN"],			
					START_POS	= { 6, },
					LEVEL		= 1,
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
					ONE_TIME			= FALSE,
					INTERVAL			= 3,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER1",	
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER1",			
				},
					

				TRIGGER2 = 
				{
					HOST				= TRUE,
					ONE_TIME			= FALSE,
					INTERVAL			= 3,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER2",	
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER2",			
				},

			},
		},		
	},
}



---------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	if pX2DungeonSubStage ~= nil and pX2DungeonSubStage:GetStarted() == true then
		return true
	else
		return false
	end
	
end

function RF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pX2DungeonGame:SetStartRealTraining( true )
	--pX2DungeonGame:SetEnableAllKeyProcess( false )
	--pX2DungeonGame:EnableAllNPCEventProcess( false )
	--pX2DungeonGame:EnableAllNPCAI( false )
	
	
end





---------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	
	pTrainingUI = pX2DungeonGame:GetTrainingGameUI()
	eNPCID = pTrainingUI:GetFTNPCID()

	if pX2DungeonGame:GetStartRealTraining() == true then
	
		nCount = pX2DungeonGame:LiveNPCNumType_LUA( eNPCID ) - pTrainingUI:GetFTNPCCount()
		if nCount < 0 then
			return true
		else 
			if nCount > 0 then
		
				-- 제한수보다 몹수가 많으면 몹을 죽이자~
				pX2DungeonGame:KillNPC( eNPCID, nCount )

				return false
			end
		end
				
	else
		return false
	end
	
end



function RF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	
	pLineMap = pX2DungeonGame:GetLineMap()
	pTrainingUI = pX2DungeonGame:GetTrainingGameUI()
	
	eNPCID = pTrainingUI:GetFTNPCID()
	iNPCLevel = pTrainingUI:GetFTNPCLevel()
	
	
	if eNPCID == NPC_UNIT_ID["NUI_BEEHOUSE"] then
		
		vPos = pX2DungeonGame:GetEmptyStartPos()
		vPos.y = vPos.y - 240;
		pX2DungeonGame:PushCreateNPCReq_Lua( eNPCID, iNPCLevel, true, vPos, false, 0, true, 0 )
		pX2DungeonGame:FlushCreateNPCReq()
		
	else
	
		--vPos = pLineMap:GetRandomPosition_LUA()
		pMyUnit = pX2DungeonGame:GetMyUnit()
		vPos = pLineMap:GetRandomPositionDir( pMyUnit:GetPos(), 500, true, false )
		vPos.y = vPos.y + 150.0
		
		pX2DungeonGame:PushCreateNPCReq_Lua( eNPCID, iNPCLevel, true, vPos, false, 0, true, 0 )
		pX2DungeonGame:FlushCreateNPCReq()
	
	end

end






---------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	if pX2DungeonGame:GetStartRealTraining() == true then
		return true
	else
		return false
	end
	
end


function RF_STAGE0_SUB0_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pTrainingUI = pX2DungeonGame:GetTrainingGameUI()
	
	if pTrainingUI ~= nil then 
	
		pX2DungeonGame:SetEnableAllNPCConditionTable( pTrainingUI:GetFTEnableNPCAttack() )
		
	end

end





