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
   			NPC_UNIT_ID["NUI_SUMMON"],
			NPC_UNIT_ID["NUI_ARME_VIOLET_MAGE"],
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
	   		"HQ_Standing_Monster.dds",  
	   		"tutorial_misson_effect.dds",
	   		"HQ_Present_Elsword_Prol1.dds",
	   		"HQ_Present_Elsword_Prol2.dds",
	   		"HQ_Present_Elsword_Prol3.dds",
	   		"HQ_Present_Elsword_Prol3.dds",
	   		"HQ_Present_Elsword_Prol4.dds",	   		
	   		"HQ_Present_Elsword_Prol5.dds",
	   		"HQ_Present_Elsword_Prol6.dds",
	   		"HQ_Present_Elsword_Prol7.dds",
	   		"HQ_Present_Elsword_Prol8.dds", 		
   		},
   		
   		READY_SOUND = 
   		{
	   		"Tuto_Elsword_1.ogg",
	   		"Tuto_Elsword_2.ogg",
	   		"Tuto_Elsword_3.ogg",
	   		"Tuto_Elsword_4.ogg",
	   		"Tuto_Elsword_5.ogg",
	   		"Tuto_Elsword_6.ogg",
	   		"Tuto_Elsword_7.ogg",
	   		"Tuto_Elsword_8.ogg",
	   		"Tuto_Elsword_9.ogg",
	   		"Tuto_Elsword_10.ogg",
	   		"Tuto_Elsword_11.ogg",
	   		"Tuto_Elsword_12.ogg",
	   		"Tuto_Elsword_13.ogg",
	   		"Tuto_Elsword_14.ogg",
	   		"Tuto_Elsword_15.ogg",
	   		"Tuto_Elsword_16.ogg",
	   		"Tuto_Elsword_17.ogg",
	   		
	   		"Tuto_Aisha_1.ogg",
	   		"Tuto_Aisha_2.ogg",
	   		"Tuto_Aisha_3.ogg",
	   		"Tuto_Aisha_4.ogg",
	   		"Tuto_Aisha_5.ogg",
	   		"Tuto_Aisha_6.ogg",
	   		
	   		"Tutorial_Aisha_Lightning.ogg",
	   		"Tutorial_Elsword_Resonance.ogg",
	   		"Tutorial_Summon_Attack.ogg",
	   		"Tutorial_Summon_Attack_Explosion.ogg",
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
					NPC_ID		= NPC_UNIT_ID["NUI_SUMMON"],
					START_POS	= { 7, },
     				LEVEL		= 1,
     				KEY_CODE	= 1,
				},
       		},

			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					--#Scen2 도둑들과의 대화2
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB1_TRIGGER0",
					REACT_FUNG			= "RF_STAGE0_SUB1_TRIGGER0",
				},
				TRIGGER1 =
				{
					-- 소환수 이벤트
					HOST				= FALSE,
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB1_TRIGGER1",
					REACT_FUNG			= "RF_STAGE0_SUB1_TRIGGER1",
				},
				TRIGGER2 =
				{
					HOST				= FALSE,
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB1_TRIGGER2",
					REACT_FUNG			= "RF_STAGE0_SUB1_TRIGGER2",
				},
				TRIGGER3 =
				{
					HOST				= FALSE,
					ONE_TIME			= TRUE,
					INTERVAL			= 0,
					CONDITION_FUNC		= "CF_STAGE0_SUB1_TRIGGER3",
					REACT_FUNG			= "RF_STAGE0_SUB1_TRIGGER3",
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
	pSlideShot = pX2DungeonGame:GetSlideShot()
	pSlideShot:ScenStart_LUA( "PF_STAGE0_SUB0_SHOT", 5 )
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
	pSlideShot:ScenStart_LUA( "PF_STAGE0_SUB0_SHOT", 15 )
end








function CF_STAGE0_SUB1_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pGUUser = pX2DungeonGame:GetMyUnit()	
	fDistance = pGUUser:GetXDistanceFrom( 0 )
	if fDistance > 4000 then 
		return true
	else
		return false
	end
	
end

function RF_STAGE0_SUB1_TRIGGER1( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	pSlideShot = pX2DungeonGame:GetSlideShot()
	pSlideShot:ScenStart_LUA( "PF_STAGE0_SUB2_SHOT", 0 )
end







function CF_STAGE0_SUB1_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pNPC = pX2DungeonGame:GetKeyCodeNPC( 1 )	
	if pNPC == nil then
		return false
	end
	
	if pSlideShot:IsPresentNow() == true then 
		return false
	end
	
	
	--if pNPC:GetNowHP_LUA() < pNPC:GetMaxHP() * 0.85 then 
	if pNPC:GetNowHP_LUA() < pNPC:GetMaxHP() - 6 then 
		return true
	else
		return false
	end

end

function RF_STAGE0_SUB1_TRIGGER2( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pSlideShot:ScenStart_LUA( "PF_STAGE0_SUB2_SHOT", 50 )
	
end






function CF_STAGE0_SUB1_TRIGGER3( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pNPC = pX2DungeonGame:GetKeyCodeNPC( 1 )	
	if pNPC == nil then
		return false
	end
	
	if pSlideShot:IsPresentNow() == true then 
		return false
	end

	

	return false


end

function RF_STAGE0_SUB1_TRIGGER3( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )
	
	pSlideShot:ScenStart_LUA( "PF_STAGE0_SUB2_SHOT", 20 )
	
end









------------------------------------------------------------------------------------------------------------------------------------
function PF_STAGE0_SUB0_SHOT0( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "BACK", pParticle:CreateSequence_LUA( "PresentWhiteBack", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentElswordProl1", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4041, 0.07, "#CFF0000" )
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_1.ogg" ) 
		
		pX2DungeonGame:GetWorld():SetBGM( "Tutorial_Elsword.ogg" )
		pX2DungeonGame:GetWorld():PlayBGM()
	
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
		
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT1( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "PROL2", pParticle:CreateSequence_LUA( "PresentElswordProl2", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4042, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_1.ogg" ) 		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_2.ogg" ) 
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
		
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT2( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "PROL3", pParticle:CreateSequence_LUA( "PresentElswordProl3", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4043, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_2.ogg" ) 		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_3.ogg" ) 
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
		
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT3( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pParticle:CreateSequence_LUA( "FadeWhiteBack", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	end
	
	if pSlideShot:EventTimer( 2 ) == true then
		pSlideShot:ScenEnd()
	end
		
	pSlideShot:CannotInput( 0.1 )
	
end




-------------------------------------------

function PF_STAGE0_SUB0_SHOT5( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword1Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4044, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_3.ogg" ) 		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_4.ogg" ) 
		
		pX2DungeonGame:GetWorld():SetBGM( "Music003_Square.ogg" )
		pX2DungeonGame:GetWorld():PlayBGM()

	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT6( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
		
	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "THIEF_A", pParticle:CreateSequence_LUA( "PresentThief1Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_4036, STR_ID_4045, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
	
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT7( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "THIEF_B", pParticle:CreateSequence_LUA( "PresentThief2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_4037, STR_ID_4046, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
	
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT8( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeTex_LUA( "ELSWORD", "HQ_Standing_Elsword_02.dds" )
		pSlideShot:ChangeSize_LUA( "ELSWORD", 400, 551 )
		pSlideShot:CrashSeq_LUA( "ELSWORD", 0.5, 10 )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4047, 0.07, "#CFF0000" )
		
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_4.ogg" ) 		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_5.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
	
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT9( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:CrashSeq_LUA( "THIEF_A", 0.6, 3 )
		--pSlideShot:AddText2_LUA( false, STR_ID_4036, "헤헹~ 재주 있으면 잡아보시지", 0.07, "#C000000" )
		pSlideShot:AddText2_LUA( false, STR_ID_4036, STR_ID_4048, 0.07, "#C000000" )
	end
		
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:ScenEnd()
		pX2DungeonGame:EnableAllNPCAI( true )
		pX2DungeonGame:TextOutTutorial( STR_ID_4374, 5 )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:ScenEnd()
		pX2DungeonGame:EnableAllNPCAI( true )
		pX2DungeonGame:TextOutTutorial( STR_ID_4374, 5 )
	end
	
	pSlideShot:CannotInput( 0.1 )
	
end



-----------------------------------------------------------------------------------

function PF_STAGE0_SUB0_SHOT15( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddSeqMap_LUA( "THIEF_B", pParticle:CreateSequence_LUA( "PresentThief2Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_4037, STR_ID_4049, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pSlideShot:CannotInput( 0.1 )
	
end


function PF_STAGE0_SUB0_SHOT16( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "THIEF_A", pParticle:CreateSequence_LUA( "PresentThief1Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_4036, STR_ID_4050, 0.07, "#C000000" )
		pSlideShot:CrashSeq_LUA( "THIEF_A", 0.6, 3 )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT17( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword1Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4051, 0.07, "#CFF0000" )
		
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_5.ogg" ) 				
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_6.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT18( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_4036, STR_ID_4052, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT19( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeTex_LUA( "ELSWORD", "HQ_Standing_Elsword_02.dds" )
		pSlideShot:ChangeSize_LUA( "ELSWORD", 400, 551 )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4053, 0.07, "#CFF0000" )
		
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_6.ogg" ) 				
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_7.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT20( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_4036, STR_ID_4054, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB0_SHOT21( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4055, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_7.ogg" ) 				
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_8.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:ScenEnd()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:ScenEnd()
	end
		
	pSlideShot:CannotInput( 0.1 )
	
end


----------------------------------------------------------------------------------

function PF_STAGE0_SUB2_SHOT0( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:SetTextBoxShow( true )
		
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword2Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4056, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_8.ogg" )
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_9.ogg" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT1( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "MONSTER", pParticle:CreateSequence_LUA( "PresentMonsterRight", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_773, STR_ID_4057, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT2( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "BLACK_BACK", pParticle:CreateSequence_LUA( "PresentBlackBack", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddSeqMap_LUA( "PROL4", pParticle:CreateSequence_LUA( "PresentElswordProl4", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_773, STR_ID_4058, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT3( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "BLACK_BACK" )
		pSlideShot:DeleteSeq_LUA( "PROL4" )
		pSlideShot:CrashSeq_LUA( "ELSWORD", 0.5, 10 )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4059, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_9.ogg" ) 
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_10.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:ScenEnd()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:ScenEnd()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end



------------------------------------------------------------------------------------------------------------------------------------------


function PF_STAGE0_SUB2_SHOT20( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddSeqMap_LUA( "MONSTER", pParticle:CreateSequence_LUA( "PresentMonsterRight", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_773, STR_ID_4060, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT21( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "BLACK_BACK", pParticle:CreateSequence_LUA( "PresentBlackBack", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddSeqMap_LUA( "PROL5", pParticle:CreateSequence_LUA( "PresentElswordProl5", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_773, STR_ID_4061, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_10.ogg" )
		pKTDXApp:PlaySound2D_LUA( "Tutorial_Summon_Attack.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT22( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "PROL6", pParticle:CreateSequence_LUA( "PresentElswordProl6", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4062, 0.07, "#CFF0000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT23( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "PROL7", pParticle:CreateSequence_LUA( "PresentElswordProl7", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pParticle:CreateSequence_LUA( "WhiteShock", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pSlideShot:AddText2_LUA( true, STR_ID_EMPTY, STR_ID_4063, 0.07, "#C000000" )
		pKTDXApp:StopSound_LUA( "Tutorial_Summon_Attack.ogg" )
		pKTDXApp:PlaySound2D_LUA( "Tutorial_Summon_Attack_Explosion.ogg" ) 
		
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT24( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "BLACK_BACK" )
		pSlideShot:DeleteSeq_LUA( "PROL5" )
		pSlideShot:DeleteSeq_LUA( "PROL6" )
		pSlideShot:DeleteSeq_LUA( "PROL7" )
		
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword2Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4064, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tutorial_Summon_Attack_Explosion.ogg" )
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_11.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT25( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then		
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddText2_LUA( false, STR_ID_773, STR_ID_4065, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT26( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "ELSWORD" )
		pSlideShot:AddText2_LUA( true, STR_ID_615, STR_ID_4066, 0.07, "#C6600CC" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "AISHA", pParticle:CreateSequence_LUA( "PresentAisha1Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		
		pos = pX2DungeonGame:GetNPCStartPos( 10 )
		pX2DungeonGame:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_ARME_VIOLET_MAGE"], 1, false, pos, true, 0, true  )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT27( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "BLACK_BACK" )
		pSlideShot:AddSeqMap_LUA( "BLACK_BACK", pParticle:CreateSequence_LUA( "PresentBlackBack", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddSeqMap_LUA( "PROL8", pParticle:CreateSequence_LUA( "PresentElswordProl8", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pParticle:CreateSequence_LUA( "WhiteShock", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pSlideShot:AddText2_LUA( true, STR_ID_615, STR_ID_4067, 0.07, "#C6600CC" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_11.ogg" )
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_1.ogg" ) 
		pKTDXApp:PlaySound2D_LUA( "Tutorial_Aisha_Lightning.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT28( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "BLACK_BACK" )
		pSlideShot:DeleteSeq_LUA( "PROL8" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:CrashSeq_LUA( "MONSTER", 0.5, 10 )
		pSlideShot:AddText2_LUA( false, STR_ID_773, STR_ID_4068, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
	
end

function PF_STAGE0_SUB2_SHOT29( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "BLACK_BACK" )
		pSlideShot:DeleteSeq_LUA( "PROL8" )
		
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddText2_LUA( true, STR_ID_615, STR_ID_4069, 0.07, "#C6600CC" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT30( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddText2_LUA( true, STR_ID_615, STR_ID_4070, 0.07, "#C6600CC" )
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_1.ogg" ) 
		pKTDXApp:StopSound_LUA( "Tutorial_Aisha_Lightning.ogg" ) 
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_2.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT31( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddText2_LUA( false, STR_ID_773, STR_ID_4071, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT32( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:ChangeTex_LUA( "AISHA", "HQ_Standing_Aishya_02.dds" )
		pSlideShot:ChangeSize_LUA( "AISHA", 400, 551 )
		pSlideShot:CrashSeq_LUA( "AISHA", 0.5, 10 )
		pSlideShot:AddText2_LUA( true, STR_ID_615, STR_ID_4072, 0.07, "#C6600CC" )
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_2.ogg" ) 
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_3.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT33( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "AISHA" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword2Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4073, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_3.ogg" ) 		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_12.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT34( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "BLACK_BACK", pParticle:CreateSequence_LUA( "PresentBlackBack", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddSeqMap_LUA( "PROL9", pParticle:CreateSequence_LUA( "PresentElswordProl9", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT35( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "PROL10", pParticle:CreateSequence_LUA( "PresentElswordProl10", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4074, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_12.ogg" ) 		
		pKTDXApp:PlaySound2D_LUA( "Tutorial_Elsword_Resonance.ogg" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT36( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "MONSTER" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "MONSTER", pParticle:CreateSequence_LUA( "PresentMonsterRight", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_773, STR_ID_4075, 0.07, "#C000000" )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT37( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "ELSWORD" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword2Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4076, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tutorial_Elsword_Resonance.ogg" )
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_13.ogg" ) 
	end
		
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pX2DungeonGame:GetMyUnit():ForceChangeHyperMode(1)
		pSlideShot:ScenEnd()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pX2DungeonGame:GetMyUnit():ForceChangeHyperMode(1)
		pSlideShot:ScenEnd()
	end
	
	if pX2DungeonGame:IsSkipKeyPressed() == true and pSlideShot:GetNowTime() > 0.2 then
		pX2DungeonGame:GetMyUnit():ForceChangeHyperMode(1)
		pSlideShot:ScenEnd()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end



----------------------------------------------------------------------------------------


function PF_STAGE0_SUB2_SHOT50( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:SetTextBoxShow( true )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "ELSWORD", pParticle:CreateSequence_LUA( "PresentElsword2Left", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4077, 0.07, "#CFF0000" )
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_13.ogg" ) 
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "ELSWORD", 0.5, 10 )
	end
	
	if pSlideShot:EventTimer( 0.15 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pParticle:CreateSequence_LUA( "WhiteShock", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT51( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "MONSTER", pParticle:CreateSequence_LUA( "PresentMonsterRight", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_773, STR_ID_4078, 0.07, "#C000000" )
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pParticle:CreateSequence_LUA( "WhiteShock", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pSlideShot:CrashSeq_LUA( "MONSTER", 0.5, 10 )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT52( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_773, STR_ID_4079, 0.07, "#C000000" )
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "MONSTER", 0.5, 10 )
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pNPC = pX2DungeonGame:GetKeyCodeNPC( 1 )
		if pNPC ~= nil then
			pNPC:SetNowHP_LUA( 0 )
		end
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pNPC = pX2DungeonGame:GetKeyCodeNPC( 1 )
		if pNPC ~= nil then 
			pNPC:SetNowHP_LUA( 0 )
		end
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT53( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "MONSTER" )
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:ChangeTex_LUA( "ELSWORD", "HQ_Standing_Elsword_01.dds" )
		pSlideShot:ChangeSize_LUA( "ELSWORD", 400, 557 )

		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4080, 0.07, "#CFF0000" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_13.ogg" ) 		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_14.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT54( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "AISHA", pParticle:CreateSequence_LUA( "PresentAisha1Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4081, 0.07, "#C6600CC" )
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_14.ogg" ) 		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_4.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT55( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4082, 0.07, "#CFF0000" )	
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_4.ogg" ) 
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_15.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT56( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeTex_LUA( "AISHA", "HQ_Standing_Aishya_03.dds" )
		pSlideShot:CrashSeq_LUA( "AISHA", 0.3, 3 )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4083, 0.07, "#C6600CC" )	
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_15.ogg" ) 		
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_5.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT57( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4084, 0.07, "#CFF0000" )	
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_5.ogg" ) 	
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_16.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT58( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4085, 0.07, "#C6600CC" )	
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT59( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeTex_LUA( "ELSWORD", "HQ_Standing_Elsword_02.dds" )
		pSlideShot:CrashSeq_LUA( "ELSWORD", 0.5, 10 )
		pSlideShot:AddText2_LUA( true, STR_ID_614, STR_ID_4086, 0.07, "#CFF0000" )	
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_16.ogg" ) 
		pKTDXApp:PlaySound2D_LUA( "Tuto_Elsword_17.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end

function PF_STAGE0_SUB2_SHOT60( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )

	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeTex_LUA( "AISHA", "HQ_Standing_Aishya_02.dds" )
		pSlideShot:ChangeSize_LUA( "AISHA", 400, 551 )
		pSlideShot:CrashSeq_LUA( "AISHA", 0.5, 10 )
		pSlideShot:AddText2_LUA( false, STR_ID_615, STR_ID_4087, 0.07, "#C6600CC" )	
		pKTDXApp:StopSound_LUA( "Tuto_Elsword_17.ogg" ) 
		pKTDXApp:PlaySound2D_LUA( "Tuto_Aisha_6.ogg" ) 
	end
	
	
	
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pKTDXApp:StopSound_LUA( "Tuto_Aisha_6.ogg" ) 
		pSlideShot:ScenEnd()
		pX2DungeonGame:ClearSubStage( CLEAR_TYPE["CT_GAME"], 0, 0 )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 0.4 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:ScenEnd()
		pX2DungeonGame:ClearSubStage( CLEAR_TYPE["CT_GAME"], 0, 0 )
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
	
end




