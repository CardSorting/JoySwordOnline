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
   		},
   		
   		READY_TEXTURE = 
   		{
   			"HQ_WhiteBack.dds",
	   		"tutorial_misson_effect.dds",
	   		"HQ_Present_Chung_Prol1.dds",
	   		"HQ_Present_Chung_Prol2.dds",
	   		"HQ_Present_Chung_Prol3.dds",
	   		"HQ_Present_Chung_Prol4.dds",
	   		"HQ_Present_Chung_Prol5.dds",
	   		"HQ_Present_Chung_Prol6.dds",
	   		"HQ_Present_Chung_Prol7.dds",
	   		"HQ_Standing_Chung_01.dds",
	   		"HQ_Standing_Chung_02.dds",
   		},
   		
   		READY_SOUND = 
   		{
   			"Tuto_Chung_01.ogg",
   			"Tuto_Chung_02.ogg",
   			"Tuto_Chung_03.ogg",
   			"Tuto_Chung_04.ogg",
   			"Tuto_Chung_05.ogg",
   			"Tuto_Chung_06.ogg",
   			"Tuto_Chung_07.ogg",
   			"Tuto_Chung_08.ogg",
   			"Tuto_Chung_09.ogg",
   			"Tuto_Chung_10.ogg",
   			"Tuto_Chung_11.ogg",
   			"Tuto_Chung_12.ogg",
   			"Tuto_Chung_13.ogg",
   			"Tuto_Chung_14.ogg",
   			"Tuto_Chung_15.ogg",
   			"Tuto_Chung_16-01.ogg",
   			"Tuto_Chung_16.ogg",
   			"Tuto_Chung_17-01.ogg",
   			"Tuto_Chung_17.ogg",
   			"Tuto_Chung_18.ogg",
   			"Tuto_Chung_19.ogg",
   			"Tuto_Chung_20-01.ogg",
   			"Tuto_Chung_20.ogg",
   			"Tuto_Chung_21.ogg",
   			"Tuto_Chung_22-01.ogg",
   			"Tuto_Chung_22.ogg",
   			"Tuto_Chung_23.ogg",
   			"Tuto_Chung_24.ogg",
   			"Tuto_Chung_25.ogg",
   			"Tuto_Chung_26.ogg",
   			"Tuto_Chung_27.ogg",
   			"Tuto_Chung_28.ogg",
   			"Tuto_Chung_29.ogg",
   			"Tuto_Chung_30.ogg",
   			"Tuto_Chung_31-01.ogg",
   			"Tuto_Chung_31-02.ogg",
   			"Tuto_Chung_31.ogg",
   			"Tuto_Chung_32-01.ogg",
   			"Tuto_Chung_32-02.ogg",
   			"Tuto_Chung_32-03.ogg",
   			"Tuto_Chung_32-04.ogg",
   			"Tuto_Chung_32.ogg",
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
					-- Z와 X를 이용해 몬스터를 처치해 보세요
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
				TRIGGER6 =
				{
					-- Ctrl 키를 눌러 각성하세요.
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB0_TRIGGER6",
					REACT_FUNG			= "RF_STAGE0_SUB0_TRIGGER6",
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
       		},

			TRIGGER_LIST =
			{
				TRIGGER0 =
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
	bHyperModeUsed = pGUUser:GetHyperModeUsed()
	if bHyperModeUsed == true then
		return true
	else
		return false
	end
	
end

function RF_STAGE0_SUB0_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
		
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


----------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER6( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pGUUser = pX2DungeonGame:GetMyUnit()	
	fDistance = pGUUser:GetXDistanceFrom( 0 )
	if fDistance > 250 then
		return true
	else
		return false
	end
	
end

function RF_STAGE0_SUB0_TRIGGER6( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pX2DungeonGame:EnableAllNPCAI( true )
	pX2DungeonGame:TextOutTutorial( STR_ID_10199, 30 )
	pGUUser = pX2DungeonGame:GetMyUnit()	
	pGUUser:SetHyperModeCount(3)
	
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
	
		pX2DungeonGame:GetWorld():SetBGM( "Tutorial_Chung.ogg" )
		pX2DungeonGame:GetWorld():PlayBGM()


		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "BACK", pParticle:CreateSequence_LUA( "PresentWhiteBack", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentChungProl1", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9839, 0.07, "#C000000" )
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_01.ogg" )
		
		pX2DungeonGame:GetWorld():SetBGM( "Tutorial_Chung.ogg" )
		pX2DungeonGame:GetWorld():PlayBGM()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT1( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9840, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_01.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_02.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT2( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9841, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_02.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_03.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT3( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9842, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_03.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_04.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end


function PF_STAGE0_SUB0_SHOT4( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL2", pParticle:CreateSequence_LUA( "PresentChungProl2", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9843, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_04.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_05.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT5( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9844, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_05.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_06.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT6( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9845, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_06.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_07.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT7( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL3", pParticle:CreateSequence_LUA( "PresentChungProl3", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9846, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_07.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_08.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT8( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9847, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_08.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_09.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT9( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL4", pParticle:CreateSequence_LUA( "PresentChungProl3_2", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9848, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_09.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_10.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 6  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT10( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9849, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_10.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_11.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 4  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

----- 다음 3칸

function PF_STAGE0_SUB0_SHOT11( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:DeleteSeq_LUA( "PROL2" )
		pSlideShot:DeleteSeq_LUA( "PROL3" )
		pSlideShot:DeleteSeq_LUA( "PROL4" )
		pSlideShot:AddSeqMap_LUA( "PROL5", pParticle:CreateSequence_LUA( "PresentChungProl4", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9850, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_11.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_12.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT12( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9851, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_12.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_13.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT13( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9852, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_13.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_14.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 4  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT14( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9853, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_14.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_15.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT15( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL6", pParticle:CreateSequence_LUA( "PresentChungProl5", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9854, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_15.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_16.ogg" ) 
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
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9855, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_16.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_17.ogg" ) 
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
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9856, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_17.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_18.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT18( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9857, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_18.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_19.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT19( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL7", pParticle:CreateSequence_LUA( "PresentChungProl6", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9858, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_19.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_20.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT20( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9859, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_20.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_21.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT21( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9860, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_21.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_22.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT22( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9861, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_22.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_23.ogg" ) 
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


function PF_STAGE0_SUB0_SHOT23( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL5" )
		pSlideShot:DeleteSeq_LUA( "PROL6" )
		pSlideShot:DeleteSeq_LUA( "PROL7" )
		pSlideShot:DeleteSeq_LUA( "BACK" )
		pX2DungeonGame:GetWorld():SetBGM( "Music035_Stage.ogg" )
		pX2DungeonGame:GetWorld():PlayBGM()
		pSlideShot:AddSeqMap_LUA( "CHUNG", pParticle:CreateSequence_LUA( "PresentChung1Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9862, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_23.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_24.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT24( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9863, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_24.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_25.ogg" ) 		
		
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 2  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT25( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9864, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_25.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_26.ogg" ) 			
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 2  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end


function PF_STAGE0_SUB0_SHOT26( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9865, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_26.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_27.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:ScenEnd()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
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
		
		pGUUser = pX2DungeonGame:GetMyUnit()	
		bHyperModeUsed = pGUUser:GetHyperModeUsed()
		if bHyperModeUsed == true then
			pSlideShot:AddSeqMap_LUA( "CHUNG", pParticle:CreateSequence_LUA( "PresentChung2Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		else
			pSlideShot:AddSeqMap_LUA( "CHUNG", pParticle:CreateSequence_LUA( "PresentChung1Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		end
		
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9866, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_27.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_28.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT1( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeTex_LUA( "CHUNG", "HQ_Standing_Chung_01.dds" )
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9867, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_28.ogg" ) 
		
		pGUUser = pX2DungeonGame:GetMyUnit()	
		pGUUser:SetRemainHyperModeTime(0)
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_29.ogg" ) 			
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 2  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end


function PF_STAGE0_SUB2_SHOT2( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "LENA", pParticle:CreateSequence_LUA( "PresentAisha1Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_9868, 0.07, "#C6600CC" )
		
		pKTDXApp:StopSound_LUA( "Tuto_Chung_29.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT3( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9869, 0.07, "#C000000" )
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_30.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT4( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_9870, 0.07, "#C6600CC" )
		
		pKTDXApp:StopSound_LUA( "Tuto_Chung_30.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT5( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9871, 0.07, "#C000000" )
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_31.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 2  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT6( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddText2_LUA( true, STR_ID_9739, STR_ID_9872, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Chung_31.ogg" ) 
		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Chung_32.ogg" ) 
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:ScenEnd()
		pX2DungeonGame:ClearSubStage( CLEAR_TYPE["CT_GAME"], 0, 0 )
	end
	
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:ScenEnd()
		pX2DungeonGame:ClearSubStage( CLEAR_TYPE["CT_GAME"], 0, 0 )
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end
