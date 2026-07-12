-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다

-- 아이야 콤보 훈련2


STAGE_LIST = 
{
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_TRAINING_CENTER_STAGE3"],
		START_MOTION	= FALSE,
	
		READY_NPC = 
		{ 
			
			NPC_UNIT_ID["NUI_INVISIBLE_DUMMY"],
		},
		
		
	
   		READY_TEXTURE = 
   		{
	   		"DLG_KEYS.tga",
	   		"HQ_RankPC_0.tga",
	   		"HQ_RankPC_1.tga",
			"HQ_RankPC_2.tga",	   		
			"HQ_RankPC_3.tga",	   		
			"HQ_RankPC_4.tga",	   		
			"HQ_RankPC_5.tga",	   		
			"HQ_RankPC_6.tga",	   		
			"HQ_RankPC_7.tga",	   		
			"HQ_RankPC_8.tga",	   		
			"HQ_RankPC_9.tga",	   		
			"FadeInOut.dds",
			"NoAlphaImage.dds",	
			"PC_-.tga",
			"PC_I.tga",
			"HQ_Start.dds",
			
			"Danger_Arrow.dds",
			"HQ_Level_Up.dds",
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
					START_POS	= { 3, },
					LEVEL		= 10,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_WOODEN_NO_ATTACK"],			
					START_POS	= { 1, },
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
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER1",	
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER1",			
				},
				
				TRIGGER2 = 
				{
					HOST				= TRUE,
					ONE_TIME			= FALSE,
					INTERVAL			= 1,
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
	
	
	pSlideShot = pX2DungeonGame:GetTrainingGameUI()
	pSlideShot:ScenStart_LUA( "PF_STAGE0_SUB0_SHOT", 0 )
	
end






---------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	if pX2DungeonGame:GetStartRealTraining() == true and
		pSlideShot:IsWaitingUserState() == false then 

		return true
	else
		return false
	end
	
end

function RF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pX2DungeonSubStage:ClearSubStage( CLEAR_TYPE["CT_GAME"], 0, 0 )	
	
end




---------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	if pX2DungeonGame:GetStartRealTraining() == true and
		pSlideShot:IsWaitingUserState() == true then 

		boxNum = pX2DungeonGame:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_MUSHROOM_WOODEN_NO_ATTACK"] )
		if boxNum < 3 then
			return true
		else
			return false
		end

	else
		return false
	end
	
end


function RF_STAGE0_SUB0_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pos = pX2DungeonGame:GetLineMap():GetRandomPosition_LUA()
	pX2DungeonGame:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MUSHROOM_WOODEN_NO_ATTACK"], 1, false, pos, true, 0, true, 0 )
	pX2DungeonGame:FlushCreateNPCReq()


end








------------------------------------------------------------------------------------------------------------------------------------------------
-- slideshot 함수

--------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT0( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
	
		pX2DungeonGame:SetStartRealTraining( false )
		
		--pX2DungeonGame:EnableAllNPCEventProcess( false )
		pX2DungeonGame:SetEnableAllKeyProcess( false )
		pX2DungeonGame:EnableAllNPCAI( false )		
		
		
		
	end
	
	if pSlideShot:EventTimer( 1.1 ) == true then
		
		pSlideShot:AddText_LUA( STR_ID_3883, 3 )
		pSlideShot:SetShowEnterMark( true )
		
	end
		
		
	if pSlideShot:GetNowTime() > 1.2 and pSlideShot:IsTextSpreading() == true and pSlideShot:IsKeyPressed( KEYBOARD["DIK_SPACE"] ) == true then
	
		pSlideShot:SetTextSpread()
	
	end
	
	if pSlideShot:GetNowTime() > 1.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 4.0  then 
			
		pSlideShot:GoNextScen()
				
	end
	
		
	
	if pSlideShot:GetNowTime() > 1.5 and pSlideShot:IsTextSpreading() == false and pSlideShot:IsKeyPressed( KEYBOARD["DIK_SPACE"] ) == true then
	
		pSlideShot:GoNextScen()
		
	end
	
end




--------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT1( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		
		pSlideShot:AddText_LUA( STR_ID_3884, 1 )
		
	end
	
		
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pSlideShot:IsKeyPressed( KEYBOARD["DIK_SPACE"] ) == true then
		
		pSlideShot:SetTextSpread()
		
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 0.2  then 
		
		pSlideShot:GoNextScen()
		pSlideShot:SetShowEnterMark( false )
		

	end
	
end




--------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT2( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		
		pX2DungeonGame:SetEnableAllKeyProcess( true )
		
		pSlideShot:ClearWaitingKeyPress()
		pSlideShot:AddWaitingKeyPress( COMMAND_PICTURE["CP_Z"] )
		pSlideShot:AddWaitingKeyPress( COMMAND_PICTURE["CP_Z"] )
		pSlideShot:AddWaitingKeyPressScaled( COMMAND_PICTURE["CP_UP_PRESSED"], true, D3DXVECTOR2( 1, 1) )
		pSlideShot:AddWaitingKeyPress( COMMAND_PICTURE["CP_Z"] )

		pSlideShot:ClearSimpleWaitingUserState()		
		pSlideShot:AddSimpleWaitingUserState( ARME_VIOLEMAGE_STATE_ID["AVSI_COMBO_Z3up"], 1, -1 )
		
	end
		
	if pSlideShot:GetNowTime() > 0.2 and 
		pSlideShot:IsWaitingSimpleUserState() == false and pSlideShot:GetElapsedTimeAfterCompletingSimpleUserState() > 1.0 then 
		
		pSlideShot:ClearWaitingKeyPress()		
		pX2DungeonGame:SetEnableAllKeyProcess( false )
		
		pSlideShot:GoNextScen()
		NICE_EFFECT( pX2DungeonGame )

	end
	
end




--------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT3( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 1.1 ) == true then
		
		pSlideShot:AddText_LUA( STR_ID_3885, 3 )
		pSlideShot:SetShowEnterMark( true )
		
		
	end
	
		
	
	if pSlideShot:GetNowTime() > 1.2 and pSlideShot:IsTextSpreading() == true and pSlideShot:IsKeyPressed( KEYBOARD["DIK_SPACE"] ) == true then
		
		pSlideShot:SetTextSpread()
		
	end
	
	if pSlideShot:GetNowTime() > 1.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 1.2  then 
		
		pSlideShot:GoNextScen()
		pSlideShot:SetShowEnterMark( false )
		

	end
	
	
end








--------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT4( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		
		pX2DungeonGame:SetEnableAllKeyProcess( true )
		
		pSlideShot:ClearWaitingKeyPress()
		pSlideShot:AddWaitingKeyPress( COMMAND_PICTURE["CP_X"] )
		pSlideShot:AddWaitingKeyPress( COMMAND_PICTURE["CP_X"] )
		pSlideShot:AddWaitingKeyPressScaled( COMMAND_PICTURE["CP_RIGHT_PRESSED"], true, D3DXVECTOR2( 1, 1) )
		pSlideShot:AddWaitingKeyPress( COMMAND_PICTURE["CP_X"] )

		pSlideShot:ClearSimpleWaitingUserState()		
		pSlideShot:AddSimpleWaitingUserState( ARME_VIOLEMAGE_STATE_ID["AVSI_COMBO_X3front"], 1, -1 )
		
	end
		
	if pSlideShot:GetNowTime() > 0.2 and 
		pSlideShot:IsWaitingSimpleUserState() == false and pSlideShot:GetElapsedTimeAfterCompletingSimpleUserState() > 1.0 then 
		
		pSlideShot:ClearWaitingKeyPress()		
		pX2DungeonGame:SetEnableAllKeyProcess( false )
		
		pSlideShot:GoNextScen()
		NICE_EFFECT( pX2DungeonGame )

	end
	
end


--------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT5( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 1.1 ) == true then
		
		pSlideShot:AddText_LUA( STR_ID_3886, 3 )
		pSlideShot:SetShowEnterMark( true )
		
	end
	
		
	
	if pSlideShot:GetNowTime() > 1.2 and pSlideShot:IsTextSpreading() == true and pSlideShot:IsKeyPressed( KEYBOARD["DIK_SPACE"] ) == true then
		
		pSlideShot:SetTextSpread()
		
	end
	
	if pSlideShot:GetNowTime() > 1.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 4.0  then 
		
		pSlideShot:GoNextScen()

	end
	
	
	if pSlideShot:GetNowTime() > 1.5 and pSlideShot:IsTextSpreading() == false and pSlideShot:IsKeyPressed( KEYBOARD["DIK_SPACE"] ) == true then
	
		pSlideShot:GoNextScen()
		
	end
	
	
end






--------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT6( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		
		pSlideShot:AddText_LUA( STR_ID_3887, 1 )
		
	end
	
		
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pSlideShot:IsKeyPressed( KEYBOARD["DIK_SPACE"] ) == true then
		
		pSlideShot:SetTextSpread()
		
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 0.2  then 
		
		pSlideShot:GoNextScen()
		pSlideShot:SetShowEnterMark( false )
		

	end
	
end






--------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT7( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		
		pX2DungeonGame:SetEnableAllKeyProcess( true )
		
		pSlideShot:ClearWaitingKeyPress()
		pSlideShot:AddWaitingKeyPress( COMMAND_PICTURE["CP_X"] )
		pSlideShot:AddWaitingKeyPress( COMMAND_PICTURE["CP_X"] )
		pSlideShot:AddWaitingKeyPressScaled( COMMAND_PICTURE["CP_DOWN_PRESSED"], true, D3DXVECTOR2( 1, 1) )
		pSlideShot:AddWaitingKeyPress( COMMAND_PICTURE["CP_X"] )
		
		pSlideShot:ClearSimpleWaitingUserState()		
		pSlideShot:AddSimpleWaitingUserState( ARME_VIOLEMAGE_STATE_ID["AVSI_COMBO_X3down"], 1, -1 )
		
	end
	
	
	if pSlideShot:GetNowTime() > 0.2 and 
		pSlideShot:IsWaitingSimpleUserState() == false and pSlideShot:GetElapsedTimeAfterCompletingSimpleUserState() > 1.0 then
		
		pSlideShot:ClearWaitingKeyPress()

	end
	
		
	if pSlideShot:GetNowTime() > 0.2 and 
		pSlideShot:IsWaitingSimpleUserState() == false and pSlideShot:GetElapsedTimeAfterCompletingSimpleUserState() > 1.0 then 
		
		pSlideShot:ClearWaitingKeyPress()		
		pX2DungeonGame:SetEnableAllKeyProcess( false )
		
		pSlideShot:GoNextScen()
		NICE_EFFECT( pX2DungeonGame )

	end
	
end














--------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT8( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 1.1 ) == true then
		
		pSlideShot:AddText_LUA( STR_ID_3888, 3 )
		pSlideShot:SetShowEnterMark( true )
		
	end
		
	SET_TEXT_SPREAD_AT_RETURN( pSlideShot, 1.2 )
	GO_NEXT_SCENE( pSlideShot, 1.3, 2.0, false )
	
	
	if pSlideShot:GetNowTime() > 1.5 and pSlideShot:IsTextSpreading() == false then 
	
		pSlideShot:SetShowEnterMark( false )
	
	end
	

end 








--------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT9( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		
		pSlideShot:AddText_LUA( STR_ID_EMPTY, 0 )
		pSlideShot:SetShowEnterMark( false )
		
		
		
		pSlideShot:ClearTrainingObjective()		
		pSlideShot:ClearWaitingUserState()		

		iObjectiveIndex = pSlideShot:AddTrainingObjective( D3DXVECTOR2( 205, 600 ), D3DXVECTOR2( 40, 40 ), 5 )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_Z" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_Z" ], false )
		--pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_UP_PRESSED" ], false, true )
		pSlideShot:AddTrainingObjectivePictureScaled( iObjectiveIndex, COMMAND_PICTURE[ "CP_UP_PRESSED" ], D3DXVECTOR2(0.8, 0.8), true )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_Z" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_BLANK" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_0" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_SLASH" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_3" ], false )
		pSlideShot:AddWaitingUserState_LUA( ARME_VIOLEMAGE_STATE_ID["AVSI_COMBO_Z3up"], 3, iObjectiveIndex, "ZZ↑Z" )
		
		  
		
		iObjectiveIndex = pSlideShot:AddTrainingObjective( D3DXVECTOR2( 610, 600 ), D3DXVECTOR2( 40, 40 ), 5 )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_X" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_X" ], false )
		--pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_RIGHT_PRESSED" ], false, true )
		pSlideShot:AddTrainingObjectivePictureScaled( iObjectiveIndex, COMMAND_PICTURE[ "CP_RIGHT_PRESSED" ], D3DXVECTOR2(0.8, 0.8), true )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_X" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_BLANK" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_0" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_SLASH" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_3" ], false )
		pSlideShot:AddWaitingUserState_LUA( ARME_VIOLEMAGE_STATE_ID["AVSI_COMBO_X3front"], 3, iObjectiveIndex, "XX→X" )
		
		
		
		iObjectiveIndex = pSlideShot:AddTrainingObjective( D3DXVECTOR2( 205, 670 ), D3DXVECTOR2( 40, 40 ), 5 )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_X" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_X" ], false )
		--pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_DOWN_PRESSED" ], false, true )
		pSlideShot:AddTrainingObjectivePictureScaled( iObjectiveIndex, COMMAND_PICTURE[ "CP_DOWN_PRESSED" ], D3DXVECTOR2(0.8, 0.8), true )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_X" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_BLANK" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_0" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_SLASH" ], false )
		pSlideShot:AddTrainingObjectivePicture( iObjectiveIndex, COMMAND_PICTURE[ "CP_3" ], false )
		pSlideShot:AddWaitingUserState_LUA( ARME_VIOLEMAGE_STATE_ID["AVSI_COMBO_X3down"], 3, iObjectiveIndex, "XXdownX" )
		
		
		pSlideShot:SetEnableWaitingUserState( true )
		

		TRAINING_START_EFFECT( pX2DungeonGame )
		
	end
	
	
	if pSlideShot:GetNowTime() > 1.5 then
		
		pSlideShot:ScenEnd()

		
		pX2DungeonGame:SetStartRealTraining( true )
		pX2DungeonGame:EnableAllNPCEventProcess( true )
		pX2DungeonGame:EnableAllNPCAI( true )		
		pX2DungeonGame:SetEnableAllKeyProcess( true )
		
	end
	
end






------------------------------------------------------------------------------------------
-- UTILITY FUNCTION

------------------------------------------------------------------------------------------
function TRAINING_START_EFFECT( pX2DungeonGame )

	pMajorParticle = pX2DungeonGame:GetMajorParticle()
	if pMajorParticle ~= nil then
	
		pMajorParticle:CreateSequence_LUA( "GameStart", D3DXVECTOR3(0, 0, 0), D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,1) )
	
	end
	
end

	

------------------------------------------------------------------------------------------
function NICE_EFFECT( pX2DungeonGame )

	pMyUnit = pX2DungeonGame:GetMyUnit()
	if pMyUnit ~= nil then
	
		vPos		= pMyUnit:GetPos()
		vPos.y = vPos.y + 200.0
		vPos.z = vPos.z - 200.0
		
		pMinorParticle = pX2DungeonGame:GetMinorParticle()
		if pMinorParticle ~= nil then
	
			pMinorParticle:CreateSequence_LUA( "TrainingSuccess", vPos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
			pMyUnit:PlaySound_LUA( "Succeed.ogg" )
			
		end
	
	end
	
end





------------------------------------------------------------------------------------------
function GO_NEXT_SCENE( pSlideShot, elapsedTime, elapsedTimeAfterTextSpread, bGoNextAtReturn )

	if pSlideShot:GetNowTime() > elapsedTime and pSlideShot:GetElapsedTimeAfterTextSpread() > elapsedTimeAfterTextSpread then 
		
		pSlideShot:GoNextScen()

	end
	
	
	if bGoNextAtReturn == true and 	pSlideShot:GetNowTime() > elapsedTime+0.1 and 
		pSlideShot:IsTextSpreading() == false and pSlideShot:IsKeyPressed( KEYBOARD["DIK_SPACE"] ) == true then
	
		pSlideShot:GoNextScen()
		
	end
	
end




------------------------------------------------------------------------------------------
function SET_TEXT_SPREAD_AT_RETURN( pSlideShot, elapsedTime )

	if pSlideShot:GetNowTime() > elapsedTime and pSlideShot:IsTextSpreading() == true and 
		pSlideShot:IsKeyPressed( KEYBOARD["DIK_SPACE"] ) == true then
	
		pSlideShot:SetTextSpread()		
	
	end
	
end
