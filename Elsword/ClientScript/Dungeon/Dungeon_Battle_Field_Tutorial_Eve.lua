-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_TUTORIAL"],
		START_MOTION = FALSE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_TUTO_LOW_ACTOR"],
			NPC_UNIT_ID["NUI_TUTO_BENDERS_ACTOR"],
			NPC_UNIT_ID["NUI_TUTO_TOTO_ACTOR"],
			NPC_UNIT_ID["NUI_TUTO_ZERO_EPIC_ACTOR"],
			NPC_UNIT_ID["NUI_MUSHROOM"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_TUTO_LOW_ACTOR"],
					START_POS	= { 4, },	
     				LEVEL		= 0,
     				ACTIVE		= TRUE,     
					NO_DROP		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TUTO_BENDERS_ACTOR"],
					START_POS	= { 7, },		
     				LEVEL		= 0,
     				ACTIVE		= TRUE,     
					NO_DROP		= TRUE,		
				},				
			},

			TRIGGER_LIST =
			{	
				TRIGGER0 =
				{
					--#Scen 회상
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER0",
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
	
	pSlideShot = pX2DungeonGame:GetSlideShot()
	pSlideShot:ScenStart_LUA( "PF_STAGE0_SUB0_SHOT", 0 )
	
	pX2DungeonGame:EnableAllNPCAI( false )
	
end


-------------------------------------------------------------------------------------------------

function PF_STAGE0_SUB0_SHOT0( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
	
		pSlideShot:SetSlideBGM_LUA( "Tutorial_Eve01.ogg" )
		
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "BACK", pParticle:CreateSequence_LUA( "PresentProlBlackBack", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentEveProl1", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )

	end
	
	if pSlideShot:GetNowTime() > 4.7 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 5.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT1( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:AddSeqMap_LUA( "PROL2", pParticle:CreateSequence_LUA( "PresentEveProl2", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
	end
	
	if pSlideShot:GetNowTime() > 4.7 and pX2DungeonGame:IsSkipKeyPressed() == true then		
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 5.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT2( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		
		pSlideShot:DeleteSeq_LUA( "PROL2" )
		
		pSlideShot:ChangeColor_LUA( "BACK", 2.0, D3DXCOLOR(1,1,1,1) )
		
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddSeqMap_LUA( "PROL3", pParticle:CreateSequence_LUA( "PresentEveProl3", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4184, 0.07, "#C000000" )
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_1.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT3( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4185, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_2.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT4( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL4", pParticle:CreateSequence_LUA( "PresentEveProl4", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4186, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_3.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT5( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4187, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_4_1.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT6( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4188, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_4_2.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT7( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL5", pParticle:CreateSequence_LUA( "PresentEveProl5", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4189, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_5.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT8( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4190, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_6.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT9( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL3" )
		pSlideShot:DeleteSeq_LUA( "PROL4" )
		pSlideShot:DeleteSeq_LUA( "PROL5" )
		
		pSlideShot:AddSeqMap_LUA( "PROL6", pParticle:CreateSequence_LUA( "PresentEveProl6", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4191, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_7.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT10( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4192, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_8_1.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT11( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4193, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_8_2.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end


function PF_STAGE0_SUB0_SHOT12( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:AddSeqMap_LUA( "PROL7", pParticle:CreateSequence_LUA( "PresentEveProl7", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4194, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_9_1.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT13( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4195, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_9_2.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT14( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:AddSeqMap_LUA( "PROL8", pParticle:CreateSequence_LUA( "PresentEveProl8", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4196, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_10.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT15( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4197, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_11.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT16( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pX2DungeonGame:GetWorld():StopBGM()
		
		pSlideShot:DeleteSeq_LUA( "PROL6" )
		pSlideShot:DeleteSeq_LUA( "PROL7" )
		pSlideShot:DeleteSeq_LUA( "PROL8" )
		
		pSlideShot:ChangeColor_LUA( "BACK", 0.5, D3DXCOLOR(0,0,0,1) )
		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4198, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_12.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT17( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4199, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_13.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT18( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:StopAllSound_LUA()
		pSlideShot:DeleteSeq_LUA( "BACK" )
		
		pSlideShot:SetSlideBGM_LUA( "Tutorial_Eve02.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT19( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:AddSeqMap_LUA( "STAND1", pParticle:CreateSequence_LUA( "StandingEve01", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4200, 0.07, "#C000000" )
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_14.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT20( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4201, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_15.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT21( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:ChangeColor_LUA( "STAND1", 0.5, D3DXCOLOR(1,1,1,0) ) --안보이게 처리
		
		pSlideShot:AddSeqMap_LUA( "TUTO1", pParticle:CreateSequence_LUA( "PresentEveTotu1", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		
		pSlideShot:AddSeqMap_LUA( "STAND3", pParticle:CreateSequence_LUA( "StandingEve03", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4202, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_16.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT22( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then				
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4203, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_17.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT23( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "TUTO1" )
		
		pSlideShot:ChangeColor_LUA( "STAND3", 0.5, D3DXCOLOR(1,1,1,0) ) -- 안보여지고
		pSlideShot:ChangeColor_LUA( "STAND1", 0.5, D3DXCOLOR(1,1,1,1) ) -- 1번으로 표정전환.
		
		pSlideShot:AddSeqMap_LUA( "TUTO2", pParticle:CreateSequence_LUA( "PresentEveTotu2", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4204, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_18.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT24( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then				
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4205, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_19.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT25( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then	
		pSlideShot:DeleteSeq_LUA( "TUTO2" )			
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4206, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_20.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT26( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then	
		pSlideShot:ChangeColor_LUA( "STAND1", 0.5, D3DXCOLOR(1,1,1,0) ) -- 1번 안보여지고 2번으로
		pSlideShot:AddSeqMap_LUA( "STAND2", pParticle:CreateSequence_LUA( "StandingEve02", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )	
		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4207, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_21.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT27( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then	
		pSlideShot:ChangeColor_LUA( "STAND2", 0.5, D3DXCOLOR(1,1,1,0) ) --2번 안보여지고 다시 1번으로
		pSlideShot:ChangeColor_LUA( "STAND1", 0.5, D3DXCOLOR(1,1,1,1) )
		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4208, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_22.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT28( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then	
		pSlideShot:ChangeColor_LUA( "STAND1", 0.5, D3DXCOLOR(1,1,1,0) ) --1번 안보여지고 다시 3번으로
		pSlideShot:ChangeColor_LUA( "STAND3", 0.5, D3DXCOLOR(1,1,1,1) )
		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4209, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_23.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT29( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4210, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_24.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT30( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:ChangeColor_LUA( "STAND3", 0.5, D3DXCOLOR(1,1,1,0) ) --3번 안보여지고 다시 1번으로
		pSlideShot:ChangeColor_LUA( "STAND1", 0.5, D3DXCOLOR(1,1,1,1) )
		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4211, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_25.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT31( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then				
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4212, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_26.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT32( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then				
		pSlideShot:StopAllSound_LUA()
		-- 이브 화면에서 사라지고
		pSlideShot:ChangeColor_LUA( "STAND1", 0.5, D3DXCOLOR(1,1,1,0) )
		-- 화면 다시 검은색으로
		pSlideShot:AddSeqMap_LUA( "BACK", pParticle:CreateSequence_LUA( "PresentProlBlackBack", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		-- 엘소드 화면에 나오면서
		pSlideShot:AddSeqMap_LUA( "ELSWORD1", pParticle:CreateSequence_LUA( "PresentElsword1Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4213, 0.07, "#C000000" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT33( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then	
		-- 엘소드 화면에서 사라지고..
		pSlideShot:ChangeColor_LUA( "ELSWORD1", 0.5, D3DXCOLOR(1,1,1,0) )
		-- 아이샤 화면에 나오면서
		pSlideShot:AddSeqMap_LUA( "AISHYA1", pParticle:CreateSequence_LUA( "PresentAisha2Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		
		pSlideShot:AddText2_LUA( true, STR_ID_615, STR_ID_4214, 0.07, "#C000000" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT34( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:CrashSeq_LUA( "AISHYA1", 1.5, 5.0 )
		pSlideShot:AddText2_LUA( true, STR_ID_615, STR_ID_4215, 0.07, "#C000000" )		
		pSlideShot:PlaySound2D_LUA( "Tutorial_Eve_Hit.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT35( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		--아이샤 사라지고..
		pSlideShot:ChangeColor_LUA( "AISHYA1", 0.5, D3DXCOLOR(1,1,1,0) )
		-- 다시 원래 화면으로 돌아옴.
		pSlideShot:ChangeColor_LUA( "BACK", 0.5, D3DXCOLOR(1,1,1,0) )
		-- 이브 2번으로 다시나오면서.
		pSlideShot:ChangeColor_LUA( "STAND2", 0.5, D3DXCOLOR(1,1,1,1) )
		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4216, 0.07, "#C000000" )
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_27.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT36( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "TUTO3", pParticle:CreateSequence_LUA( "PresentEveTotu3", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4217, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_28.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT37( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4218, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_29.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT38( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		-- 튜토리얼 3번 삭제
		pSlideShot:DeleteSeq_LUA( "TUTO3" )
		-- 이브 2번에서 3번으로 교체
		pSlideShot:ChangeColor_LUA( "STAND2", 0.5, D3DXCOLOR(1,1,1,0) )
		pSlideShot:ChangeColor_LUA( "STAND3", 0.5, D3DXCOLOR(1,1,1,1) )
		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4219, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT39( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4220, 0.07, "#C000000" )
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_30.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT40( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then	
		-- 이브 3번에서 1번으로 교체
		pSlideShot:ChangeColor_LUA( "STAND3", 0.5, D3DXCOLOR(1,1,1,0) )
		pSlideShot:ChangeColor_LUA( "STAND1", 0.5, D3DXCOLOR(1,1,1,1) )
			
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4221, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_31.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT41( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then				
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4222, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Eve_32.ogg" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:ChangeColor_LUA( "STAND1", 0.5, D3DXCOLOR(1,1,1,0) )
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:ChangeColor_LUA( "STAND1", 0.5, D3DXCOLOR(1,1,1,0) )
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT42( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	----------------------------------------
	--이번 씬을 마지막으로 던전플레이 시작
	----------------------------------------
	
	if pSlideShot:EventTimer( 0.1 ) == true then	
		pSlideShot:StopAllSound_LUA()
		-- 이브 표정 모두 삭제
		pSlideShot:DeleteSeq_LUA( "ELSWORD1" )
		pSlideShot:DeleteSeq_LUA( "AISHYA1" )
		pSlideShot:DeleteSeq_LUA( "STAND1" )
		pSlideShot:DeleteSeq_LUA( "STAND2" )
		pSlideShot:DeleteSeq_LUA( "STAND3" )
		pSlideShot:DeleteSeq_LUA( "BACK" )
		
		pSlideShot:AddText2_LUA( true, STR_ID_618, STR_ID_4223, 0.07, "#C000000" )
	end	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:ScenEnd()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:ScenEnd()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end
