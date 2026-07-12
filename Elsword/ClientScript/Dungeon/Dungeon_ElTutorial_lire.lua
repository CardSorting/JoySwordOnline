-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST =
{
	STAGE0 =
	{
		WORLD_ID		= WORLD_ID["WI_TUTORIAL"],
		START_MOTION	= FALSE,

		READY_NPC =
		{
   			NPC_UNIT_ID["NUI_TUTORIAL_MARS"],   						
   			NPC_UNIT_ID["NUI_BOX_TUTORIAL"],
   			NPC_UNIT_ID["NUI_BOX_TUTORIAL2"],
   			NPC_UNIT_ID["NUI_SMALLGATE_POST"],
   			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
   			NPC_UNIT_ID["NUI_ARME_VIOLET_MAGE"],
			NPC_UNIT_ID["NUI_ELSWORD_SWORDMAN"],
   		},
   		
   		READY_TEXTURE = 
   		{
   			"HQ_WhiteBack.dds",
	   		"HQ_Standing_Elsword_01.dds",
	   		"HQ_Standing_Elsword_02.dds",
	   		"HQ_Standing_Thief01_01.dds",
	   		"HQ_Standing_Thief02_01.dds",
	   		"HQ_Standing_Aishya_01.dds",
	   		"HQ_Standing_Aishya_02.dds",
	   		"HQ_Standing_Aishya_03.dds",
	   		"HQ_Standing_Aishya_04.dds",
	   		"HQ_Standing_Lena_01.dds",
	   		"HQ_Standing_Lena_02.dds",
	   		"HQ_Standing_Lena_03.dds",
	   		"HQ_Standing_Lena_04.dds",
	   		"HQ_Standing_Monster.dds",  
	   		"tutorial_misson_effect.dds",
	   		"HQ_Present_Lena_Prol1.dds",	   		
	   		"HQ_Present_Lena_Prol2.dds",
	   		"HQ_Present_Lena_Prol3.dds",
	   		"HQ_Present_Lena_Prol4.dds",
	   		"HQ_Present_Lena_Prol5.dds",	
   		},
   		
   		READY_SOUND = 
   		{
   			"Tuto_Elder_1.ogg",
   			"Tuto_Elder_2.ogg",
   			"Tuto_Elder_3.ogg",
   			"Tuto_Elder_4.ogg",
   			"Tuto_Elder_5.ogg",
   		
	   		"Tuto_Lena_1.ogg",
	   		"Tuto_Lena_2.ogg",
	   		"Tuto_Lena_3.ogg",
	   		"Tuto_Lena_4.ogg",
	   		"Tuto_Lena_5.ogg",
	   		"Tuto_Lena_6.ogg",
	   		"Tuto_Lena_7.ogg",
	   		"Tuto_Lena_8.ogg",
	   		"Tuto_Lena_9.ogg",
	   		"Tuto_Lena_10.ogg",
	   		"Tuto_Lena_11.ogg",
	   		"Tuto_Lena_12.ogg",
	   		"Tuto_Lena_13.ogg",
	   		"Tuto_Lena_14.ogg",
	   		"Tuto_Lena_15.ogg",
	   		"Tuto_Lena_16.ogg",
	   		"Tuto_Lena_17.ogg",
	   		"Tuto_Lena_18.ogg",
	   		"Tuto_Lena_19.ogg",
	   		"Tuto_Lena_20.ogg",
	   		"Tuto_Lena_21.ogg",
	   		"Tuto_Lena_22.ogg",
	   		"Tuto_Lena_23.ogg",
	   		
	   		"Tuto_Elsword_17.ogg",
	   		"Tuto_Elsword_18.ogg",
	   		"Tuto_Elsword_19.ogg",
	   		"Tuto_Elsword_20.ogg",
	   		"Tuto_Elsword_21.ogg",
	   		"Tuto_Elsword_22.ogg",
	   		
	   		"Tuto_Aisha_6.ogg",
	   		"Tuto_Aisha_7.ogg",
	   		"Tuto_Aisha_8.ogg",
	   		"Tuto_Aisha_9.ogg",
	   		"Tuto_Aisha_10.ogg",
	   		"Tuto_Aisha_11.ogg",
	   		"Tuto_Aisha_12.ogg",
	   		"Tuto_Aisha_13.ogg",
	   		"Tuto_Aisha_14.ogg",
	   		"Tuto_Aisha_15.ogg",
	   		"Tuto_Aisha_16.ogg",
	   		
	   		
			"Tuto_Aisha_6_2.ogg",
			"Tuto_Lena_14_1.ogg",
			"Tuto_Lena_15_1.ogg",
			"Tuto_Lena_20_1.ogg",
			"Tuto_Lena_22_1.ogg",
			"Tuto_Lena_22_2.ogg",
	   		
   		},

		SUB_STAGE0 =
		{
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,

			GO_TYPE				= GO_TYPE["GT_RIGHT"],

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 1,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100 },
			},

   			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TUTORIAL_MARS"],
					START_POS	= { 1, },
     				LEVEL		= 0,
     				ACTIVE		= TRUE,  
					NO_DROP		=TRUE,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TUTORIAL_MARS"],
					START_POS	= { 2, },
     				LEVEL		= 0,
     				ACTIVE		= TRUE,
					NO_DROP		=TRUE,			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TUTORIAL_MARS"],
					START_POS	= { 3, },
     				LEVEL		= 0,
     				ACTIVE		= TRUE,    
					NO_DROP		=TRUE,		
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
				TRIGGER1 =
				{
					--#Scen1 도둑들과의 대화
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER1",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER1",
				},
				TRIGGER2 =
				{
					-- 첫번째 나레이션 끝나고 "앞으로 이동하시오"
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER2",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER2",
				},
				TRIGGER3 =
				{
					-- 10초간 키입력이 없으면 "앞으로 이동하시오"
					ONE_TIME			= FALSE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER3",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER3",
				},				
				TRIGGER4 =
				{
					-- 키입력이 있거나 나레이션중이면 >>> 화살표 없애기
					ONE_TIME			= FALSE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER4",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER4",
				},		
				TRIGGER5 =
				{
					-- 키입력이 있거나 나레이션중이면 "앞으로 이동하시오" 글자 없애기
					ONE_TIME			= FALSE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER5",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER5",
				},
			},
		},			
			
		
		SUB_STAGE1 =
		{
   			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= -1,

			GO_TYPE				= GO_TYPE["GT_RIGHT"],

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 1,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

   		  	NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ARME_VIOLET_MAGE"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
     				LEVEL		= 0,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ELSWORD_SWORDMAN"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
     				LEVEL		= 0,
     				KEY_CODE	= 1,
     				IS_RIGHT	= TRUE,
				},
       		},

			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					HOST				= FALSE,
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB1_TRIGGER0",
					REACT_FUNG			= "RF_STAGE0_SUB1_TRIGGER0",
				},
				TRIGGER1 =
				{
					HOST				= FALSE,
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB2_TRIGGER0",
					REACT_FUNG			= "RF_STAGE0_SUB2_TRIGGER0",
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


function CF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pGUUser = pX2DungeonGame:GetMyUnit()	
	fDistance = pGUUser:GetXDistanceFrom( 0 )
	if fDistance > 250 then
		return true
	else
		return false
	end
	
end

function RF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
		
	pX2DungeonGame:EnableAllNPCAI( true )
	pX2DungeonGame:TextOutTutorial( STR_ID_4374, 5 )

end



----------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pSlideShot = pX2DungeonGame:GetSlideShot()
	if pSlideShot:IsPresentNow() == false then
		return true
	else
		return false
	end

end

function RF_STAGE0_SUB0_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pDungeon = pX2DungeonGame:GetDungeon()
	pDungeonStage = pDungeon:GetNowStage()	
	
	pSlideShot = pX2DungeonGame:GetSlideShot()

	if (nil ~= pDungeonStage ) and ( false == pDungeonStage:IsGoEffectOn() ) and ( pSlideShot:IsPresentNow() == false ) then
		pDungeonStage:StartGoEffect( GO_TYPE["GT_RIGHT"] )
		pX2DungeonGame:TextOutTutorial( STR_ID_4376, 5 )
	end
	
end



----------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER3( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	fElapsedTime = pX2DungeonGame:GetElapsedTimeAfterLastKeyboardInput()	
	if (fElapsedTime > 10.0) then
		return true
	else 
		return false
	end

end

function RF_STAGE0_SUB0_TRIGGER3( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pDungeon = pX2DungeonGame:GetDungeon()
	pDungeonStage = pDungeon:GetNowStage()	
	
	pSlideShot = pX2DungeonGame:GetSlideShot()

	if (nil ~= pDungeonStage ) and ( false == pDungeonStage:IsGoEffectOn() ) and ( pSlideShot:IsPresentNow() == false ) then
		pDungeonStage:StartGoEffect( GO_TYPE["GT_RIGHT"] )
	end
	
end


----------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER4( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pDungeon = pX2DungeonGame:GetDungeon()
	pDungeonStage = pDungeon:GetNowStage()	
	bKeyPressed = pX2DungeonGame:IsKeyPressed()
	
	if ( true == pDungeonStage:IsGoEffectOn() ) and (true == bKeyPressed) then 
		return true
	end
	
	if pSlideShot:IsPresentNow() == true then
		return true
	end
	
	return false

end

function RF_STAGE0_SUB0_TRIGGER4( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pDungeon = pX2DungeonGame:GetDungeon()	
	pDungeonStage = pDungeon:GetNowStage()		
	pDungeonStage:StopGoEffect()
	
end





----------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER5( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	bKeyPressed = pX2DungeonGame:IsKeyPressed()
	bTargetMsg = pX2DungeonGame:IsTutorialMessage( STR_ID_4375 )
	if (true == bKeyPressed) and (true == bTargetMsg) then
		return true
	else 
		return false
	end

end

function RF_STAGE0_SUB0_TRIGGER5( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pX2DungeonGame:TextOutTutorial( STR_ID_EMPTY, 0 )	
	
end






function CF_STAGE0_SUB1_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pGUUser = pX2DungeonGame:GetMyUnit()	
	fDistance = pGUUser:GetXDistanceFrom( 0 )
	if fDistance > 2000 then
		return true
	else
		return false
	end
	
end

function RF_STAGE0_SUB1_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	pSlideShot = pX2DungeonGame:GetSlideShot()
	pSlideShot:ScenStart_LUA( "PF_STAGE0_SUB0_SHOT", 30 )
end










----------------------------------------------------------------------------------
function CF_STAGE0_SUB2_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pGUUser = pX2DungeonGame:GetMyUnit()	
	fDistance = pGUUser:GetXDistanceFrom( 0 )
	if fDistance > 3600 then 
		return true
	else
		return false
	end
	
end

function RF_STAGE0_SUB2_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	pSlideShot = pX2DungeonGame:GetSlideShot()
	pSlideShot:ScenStart_LUA( "PF_STAGE0_SUB2_SHOT", 0 )
end


-------------------------------------------------------------------------------------------------

function PF_STAGE0_SUB0_SHOT0( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
	
		pX2DungeonGame:GetWorld():SetBGM( "Tutorial_Lena.ogg" )
		pX2DungeonGame:GetWorld():PlayBGM()
		
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "BACK", pParticle:CreateSequence_LUA( "PresentWhiteBack", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentLenaProl1", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4107, 0.07, "#C006600" )
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_1.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT1( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL2", pParticle:CreateSequence_LUA( "PresentLenaProl2", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_4039, STR_ID_4108, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_1.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elder_1.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT2( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4109, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Elder_1.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_2.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT3( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_4039, STR_ID_4110, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_2.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elder_2.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT4( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4111, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Elder_2.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_3.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT5( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_4039, STR_ID_4112, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_3.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elder_3.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT6( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL3", pParticle:CreateSequence_LUA( "PresentLenaProl3", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4113, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Elder_3.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_4.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT7( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_4039, STR_ID_4114, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_4.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elder_4.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT8( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4115, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Elder_4.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_5.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT9( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_4039, STR_ID_4116, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_5.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elder_5.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT10( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL4", pParticle:CreateSequence_LUA( "PresentLenaProl4", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4117, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Elder_5.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_6.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT11( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:DeleteSeq_LUA( "PROL2" )
		pSlideShot:DeleteSeq_LUA( "PROL3" )
		pSlideShot:DeleteSeq_LUA( "PROL4" )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4118, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_6.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_7.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT12( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL5", pParticle:CreateSequence_LUA( "PresentLenaProl5", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_4040, STR_ID_4119, 0.07, "#C000000" )
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

function PF_STAGE0_SUB0_SHOT13( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_4036, STR_ID_4120, 0.07, "#C000000" )
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

function PF_STAGE0_SUB0_SHOT14( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_4040, STR_ID_4121, 0.07, "#C000000" )
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

function PF_STAGE0_SUB0_SHOT15( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_4036, STR_ID_4122, 0.07, "#C000000" )
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

function PF_STAGE0_SUB0_SHOT16( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_4040, STR_ID_4123, 0.07, "#C000000" )
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

function PF_STAGE0_SUB0_SHOT17( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_4038, STR_ID_4124, 0.07, "#C000000" )
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

function PF_STAGE0_SUB0_SHOT18( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4125, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_7.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_8.ogg" ) 
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
		pSlideShot:DeleteSeq_LUA( "BACK" )
		pSlideShot:DeleteSeq_LUA( "PROL5" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "LENA", pParticle:CreateSequence_LUA( "PresentLena1Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4126, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_8.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_9.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT20( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pX2DungeonGame:GetWorld():SetBGM( "Music003_Square.ogg" )
		pX2DungeonGame:GetWorld():PlayBGM()
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4127, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_9.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_10.ogg" ) 
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







function PF_STAGE0_SUB0_SHOT21( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "AISHA", pParticle:CreateSequence_LUA( "PresentAisha2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4128, 0.07, "#C6600CC" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_10.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_6_2.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 1.2 ) == true then
		pSlideShot:CrashSeq_LUA( "AISHA", 0.8, 10 )
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

function PF_STAGE0_SUB0_SHOT22( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "AISHA" )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4129, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_6_2.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_11.ogg" ) 
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

------------------------------------------------------------------------------------------------


function PF_STAGE0_SUB0_SHOT30( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:SetTextBoxShow( true )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "THIEF_B", pParticle:CreateSequence_LUA( "PresentThief1Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_4037, STR_ID_4130, 0.07, "#C000000" )
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

function PF_STAGE0_SUB0_SHOT31( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "THIEF_A", pParticle:CreateSequence_LUA( "PresentThief2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_4036, STR_ID_4131, 0.07, "#C000000" )
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

function PF_STAGE0_SUB0_SHOT32( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "LENA", pParticle:CreateSequence_LUA( "PresentLena1Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4132, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_11.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_12.ogg" ) 
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
		pSlideShot:CrashSeq_LUA( "THIEF_A", 0.5, 10 )
		pSlideShot:AddText2_LUA( false, STR_ID_4036, STR_ID_4133, 0.07, "#C000000" )
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
		pSlideShot:DeleteSeq_LUA( "THIEF_A" )
		pSlideShot:DeleteSeq_LUA( "THIEF_B" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_614, STR_ID_4134, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_12.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_18.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "ELSWORD", 0.7, 10 )
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
		pSlideShot:DeleteSeq_LUA( "ELSWORD" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "AISHA", pParticle:CreateSequence_LUA( "PresentAisha2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4135, 0.07, "#C6600CC" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_18.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_13.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT36( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "AISHA" )
		pSlideShot:ChangeTex_LUA( "LENA", "HQ_Standing_Lena_03.dds" )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4136, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_13.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_13.ogg" ) 
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

function PF_STAGE0_SUB0_SHOT37( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "AISHA" )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4137, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_13.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_14.ogg" ) 
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



-----------------------------------------------------------------------------------------

function PF_STAGE0_SUB2_SHOT0( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:SetTextBoxShow( true )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_614, STR_ID_4138, 0.07, "#CFF0000" )
		
		pKTDXApp:StopSound_LUA( "Tuto_Lena_14.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "ELSWORD", 0.5, 10 )
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

function PF_STAGE0_SUB2_SHOT1( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "LENA", pParticle:CreateSequence_LUA( "PresentLena2Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4139, 0.07, "#C006600" )
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_14_1.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT2( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "ELSWORD" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "AISHA", pParticle:CreateSequence_LUA( "PresentAisha2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4140, 0.07, "#C6600CC" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_14_1.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_14.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "AISHA", 0.5, 10 )
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

function PF_STAGE0_SUB2_SHOT3( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4141, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_14.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_15.ogg" ) 
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


function PF_STAGE0_SUB2_SHOT4( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "AISHA" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_614, STR_ID_4142, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_15.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_19.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "ELSWORD", 0.5, 10 )
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

function PF_STAGE0_SUB2_SHOT5( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "ELSWORD" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "AISHA", pParticle:CreateSequence_LUA( "PresentAisha2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4143, 0.07, "#C6600CC" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_19.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_15.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT6( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "AISHA" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_614, STR_ID_4144, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_15.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_20.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "ELSWORD", 0.5, 10 )
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

function PF_STAGE0_SUB2_SHOT7( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "ELSWORD" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "AISHA", pParticle:CreateSequence_LUA( "PresentAisha2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4145, 0.07, "#C6600CC" )
		
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_20.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_15_1.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "AISHA", 0.5, 10 )
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

function PF_STAGE0_SUB2_SHOT8( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeTex_LUA( "LENA", "HQ_Standing_Lena_04.dds" )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4146, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_20.ogg" ) 
		pKTDXApp:StopSound_LUA( "Tuto_Lena_15_1.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_16.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "LENA", 0.5, 10 )
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

function PF_STAGE0_SUB2_SHOT9( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "AISHA" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword1Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_614, STR_ID_4147, 0.07, "#CFF0000" )
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

function PF_STAGE0_SUB2_SHOT10( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "ELSWORD" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "AISHA", pParticle:CreateSequence_LUA( "PresentAisha1Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4147, 0.07, "#C6600CC" )
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

function PF_STAGE0_SUB2_SHOT11( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4147, 0.07, "#C006600" )
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

function PF_STAGE0_SUB2_SHOT12( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeTex_LUA( "LENA", "HQ_Standing_Lena_01.dds" )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4148, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_16.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_17.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT13( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "AISHA" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword1Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_614, STR_ID_4149, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_17.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_21.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT14( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4150, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_21.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_18.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT15( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeTex_LUA( "ELSWORD", "HQ_Standing_Elsword_02.dds" )
		pSlideShot:AddText2_LUA( false, STR_ID_614, STR_ID_4151, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_18.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_22.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "ELSWORD", 0.5, 10 )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pNPC = pX2DungeonGame:GetKeyCodeNPC( 1 )
		if pNPC ~= nil then
			pNPC:SetShow( false )
		end
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pNPC = pX2DungeonGame:GetKeyCodeNPC( 1 )
		if pNPC ~= nil then 
			pNPC:SetShow( false )
		end
		pSlideShot:GoNextScen()
	end
			
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT16( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "ELSWORD" )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4152, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_22.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_19.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "LENA", 0.5, 10 )
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

function PF_STAGE0_SUB2_SHOT17( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "ELSWORD" )
		pSlideShot:ChangeTex_LUA( "LENA", "HQ_Standing_Lena_03.dds" )
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4153, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_19.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_20.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT18( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "AISHA", pParticle:CreateSequence_LUA( "PresentAisha3Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4154, 0.07, "#C6600CC" )
		
		pKTDXApp:StopSound_LUA( "Tuto_Lena_20.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_20_1.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT19( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4155, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_20_1.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_21.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT20( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeTex_LUA( "AISHA", "HQ_Standing_Aishya_02.dds" )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4156, 0.07, "#C6600CC" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_21.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_16.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "AISHA", 0.5, 10 )
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

function PF_STAGE0_SUB2_SHOT21( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4157, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_16.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_22.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT22( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4158, 0.07, "#C6600CC" )
		
		pKTDXApp:StopSound_LUA( "Tuto_Lena_22.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_22_1.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT23( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4159, 0.07, "#C6600CC" )
		
		pKTDXApp:StopSound_LUA( "Tuto_Lena_22_1.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_22_2.ogg" ) 
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

function PF_STAGE0_SUB2_SHOT24( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_616, STR_ID_4160, 0.07, "#C006600" )
		pKTDXApp:StopSound_LUA( "Tuto_Lena_22_2.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Lena_23.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pKTDXApp:StopSound_LUA( "Tuto_Lena_23.ogg" ) 
	
		pSlideShot:ScenEnd()
		pX2DungeonGame:ClearSubStage( CLEAR_TYPE["CT_GAME"], 0, 0 )
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:ScenEnd()
		pX2DungeonGame:ClearSubStage( CLEAR_TYPE["CT_GAME"], 0, 0 )
	end
			
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end




















