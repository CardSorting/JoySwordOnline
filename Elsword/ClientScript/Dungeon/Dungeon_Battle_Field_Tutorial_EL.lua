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
			START_LINE_SET	= -1,
			MAIN_LINE_SET	= 0,
			END_LINE_SET	= 1,
			GO_TYPE	= GO_TYPE["GT_RIGHT"],

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
end

-- UIMajorParticle에 있음
-- 1-1번째 회상 장면 //  3년전.. 엘 수색대 과정을 마치고 떠낫던 수행의 길...
function PF_STAGE0_SUB0_SHOT0( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then	
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "BACK", pParticle:CreateSequence_LUA( "PresentProlBlackBack",
											D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentElesisProl0_1_Start",
											D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )	-- 문구 페이드 인
		pSlideShot:SetSlideBGM_LUA( "Tutorial_Elesis01.ogg" )
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_1.ogg" )
	end

	if pSlideShot:GetNowTime() > 0.3 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:EventTimer( 7 ) == true then		
		pSlideShot:GoNextScen()
	end

	pSlideShot:CannotInput( 0.1 )
end

-- 1-1번째 회상 장면 // 세상을 돕는다는 건 참 힘든 일이었지만, 생각지 못했던 명성과 실력도 얻게 되었다.
function PF_STAGE0_SUB0_SHOT1( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_2.ogg" )
	end

	if pSlideShot:GetNowTime() > 0.3 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:EventTimer( 8 ) == true then		
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end
-- 1-1번째 회상 장면 ( 가문 소개 글 1 ) 소멸
function PF_STAGE0_SUB0_SHOT2( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentElesisProl0_1_End",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )	-- 문구 페이드 아웃	
		pSlideShot:StopAllSound_LUA()
	end

	if pSlideShot:GetNowTime() > 1.5 then
		pSlideShot:GoNextScen()
	end
	

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 1-2번째 회상 장면 //   사람들은 나를.. '붉은 머리의 검사'라 부른다.
function PF_STAGE0_SUB0_SHOT3( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentElesisProl0_2_Start",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_3.ogg" )
	end

	if pSlideShot:GetNowTime() > 0.3 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:EventTimer( 5 ) == true then		
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 1-2번째 회상 장면  소멸
function PF_STAGE0_SUB0_SHOT4( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentElesisProl0_2_End",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )	-- 문구 페이드 아웃	
		pSlideShot:StopAllSound_LUA()
	end

	if pSlideShot:GetNowTime() > 1.5 then
		pSlideShot:GoNextScen()
	end
	

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 1-3번째 회상 장면 // 모험을 마치고 엘소드가 기다리는 고향, 루벤으로 돌아왔다.
function PF_STAGE0_SUB0_SHOT5( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentElesisProl0_3_Start",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )	
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_4.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.0 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	
	if pSlideShot:EventTimer( 5 ) == true then		
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end
-- 1-3번째 회상 장면  소멸
function PF_STAGE0_SUB0_SHOT6( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentElesisProl0_3_End",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )	
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 1.5 then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end
-- 2-1번째  // 고향으로 돌아온 나는 엘소드에게 검술을 가르쳐주며 ..
function PF_STAGE0_SUB0_SHOT7( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddSeqMap_LUA( "PROL2", pParticle:CreateSequence_LUA( "PresentElesisProl1_1",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
			
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25880, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_5.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.2 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 7.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 6  then 
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-2번째 // 그러던 어느날... 갑작스런 마족의 습격을 받았다. 
function PF_STAGE0_SUB0_SHOT8( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL3", pParticle:CreateSequence_LUA( "PresentElesisProl1_2",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
			
		pSlideShot:StopAllSound_LUA()
		pSlideShot:SetSlideBGM_LUA( "Tutorial_Elesis02.ogg" )
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_6.ogg" )
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25881, 0.07, "#C000000" )
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
	
	if pSlideShot:GetNowTime() > 6.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-3번째 // 스카 : 네가 붉은 머리의 검사인가..?
function PF_STAGE0_SUB0_SHOT9( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_26145, STR_ID_25882, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Scar_1.ogg" )
	end

	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 2.5  then 
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-4번째 // 누구냐? 날 찾는 이유는 뭐지
function PF_STAGE0_SUB0_SHOT10( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25883, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_7.ogg" )
	end

	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 3  then 
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-5번째 // 갑작스럽게 습격을 하는 검은 갑주의 괴한 그와 치열한 전투를 벌였지만...
function PF_STAGE0_SUB0_SHOT11( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25884, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:AddSeqMap_LUA( "PROL4", pParticle:CreateSequence_LUA( "PresentElesisProl1_3",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_8.ogg" )
		
		pSlideShot:AddSeqMap_LUA( "PROL5", pParticle:CreateSequence_LUA( "PresentElesisProl1_4",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )			
	end

	if pSlideShot:GetNowTime() > 0.4 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 10.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-6번째 //소멸
function PF_STAGE0_SUB0_SHOT12( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL2" )
		pSlideShot:DeleteSeq_LUA( "PROL3" )
		pSlideShot:DeleteSeq_LUA( "PROL4" )
		pSlideShot:DeleteSeq_LUA( "PROL5" )
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 0.3 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 3-1번째 // 서로 지쳐갈 무렵, 괴한이 난폭하고 어두운 기운을... 
function PF_STAGE0_SUB0_SHOT13( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25885, 0.07, "#C000000" )
		
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentElesisProl2_1",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
			
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_9.ogg" )
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

-- 3-2번째 // 뒤에서 엘소드의 목소리가 들려왔다.
function PF_STAGE0_SUB0_SHOT14( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25886, 0.07, "#C000000" )
		
		pSlideShot:AddSeqMap_LUA( "PROL2", pParticle:CreateSequence_LUA( "PresentElesisProl2_2",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
			
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_10.ogg" )
	end
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end

	if pSlideShot:GetNowTime() > 4.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end
	
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 3-3번째 // 이야아앗!!!!!
function PF_STAGE0_SUB0_SHOT15( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_25010, STR_ID_25887, 0.07, "#C000000" )
		
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "ElswordVoice_Shout03.ogg" )
		pSlideShot:CrashSeq_LUA( "PROL2", 0.5, 10 )
	end
	
	if pSlideShot:EventTimer( 2.5 ) == true then
		pSlideShot:PlaySound2D_LUA( "Sword_Clang.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 4.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end
	
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

function PF_STAGE0_SUB0_SHOT16( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL3", pParticle:CreateSequence_LUA( "PresentElesisProl2_3",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "ElesisVoice_Shout12.ogg" )
	end
	if pSlideShot:EventTimer( 0.6 ) == true then
		pSlideShot:PlaySound2D_LUA( "Raven_BurstingBlade_3.ogg" )
	end
	
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	
	if pSlideShot:GetNowTime() > 4.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end
	
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 3-4번째 // 엘소드가 힘을 다해 휘두른 대검을...
function PF_STAGE0_SUB0_SHOT17( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then	
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25888, 0.07, "#C000000" )
			
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_11.ogg" )
	end

	if pSlideShot:GetNowTime() > 0.5 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 8.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 3-5번째 // 스카 : 크흠!!! 과연 나에게 이정도 상처를..
function PF_STAGE0_SUB0_SHOT18( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_26145, STR_ID_25889, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Scar_2.ogg" )
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

-- 3-6번째 // 어두운 기운이 그의 몸 주위를 휘돌앗다.
function PF_STAGE0_SUB0_SHOT19( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25890, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_12.ogg" )
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

-- 3-7번째 // 스카 : 역시 그 녀석의 핏줄이라는 건가? 후후... 언젠가는 
function PF_STAGE0_SUB0_SHOT20( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_26145, STR_ID_25891, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Scar_3.ogg" )
	end

	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 14.5  then 
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 3-8번째 // 검은 마법진에 휩싸인 마족은
function PF_STAGE0_SUB0_SHOT21( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
	
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:DeleteSeq_LUA( "PROL2" )
		pSlideShot:DeleteSeq_LUA( "PROL3" )
		
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25892, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_13.ogg" )
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

-- 3-9번째 // 엘리오스까지 마족이 나타나다니 .. 또 무슨 일이
function PF_STAGE0_SUB0_SHOT22( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25893, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_14.ogg" )
	end

	if pSlideShot:EventTimer( 6.5 ) == true then
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_15.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 8  then 
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 3-10번째 // 그리고 핏줄이라고? 설마?
function PF_STAGE0_SUB0_SHOT23( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	pSlideShot:GoNextScen()
	-- if pSlideShot:EventTimer( 0.1 ) == true then
		-- pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25894, 0.07, "#C000000" )
		-- pSlideShot:StopAllSound_LUA()
		-- pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_15.ogg" )
	-- end

	-- if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		-- pSlideShot:GoNextScen()
	-- end
	-- if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		-- pSlideShot:SetTextSpread()
	-- end
	-- if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		-- pSlideShot:GoNextScen()
	-- end

	-- pX2DungeonGame:PauseNPCAI( 0.1 )
	-- pSlideShot:CannotInput( 0.1 )
end

-- 3-11번째 // 생각지도 못한 강한 마족
function PF_STAGE0_SUB0_SHOT24( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25895, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_16.ogg" )
	end

	if pSlideShot:EventTimer( 8 ) == true then
		pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_17.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
	end
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 9  then 
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 3-12 // 그리고 마계의 음모를 저지하기 위해서
function PF_STAGE0_SUB0_SHOT25( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	pSlideShot:GoNextScen()
	-- if pSlideShot:EventTimer( 0.1 ) == true then
		-- pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25896, 0.07, "#C000000" )
		-- pSlideShot:StopAllSound_LUA()
		-- pSlideShot:PlaySound2D_LUA( "Tuto_Elesis_17.ogg" )
	-- end

	-- if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		-- pSlideShot:GoNextScen()
	-- end
	-- if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		-- pSlideShot:SetTextSpread()
	-- end
	-- if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		-- pSlideShot:GoNextScen()
	-- end

	-- pX2DungeonGame:PauseNPCAI( 0.1 )
	-- pSlideShot:CannotInput( 0.1 )
end

-- 4-1번째 회상 장면 ( 검은 화면 페이드 인 되면서, 루벤 )
function PF_STAGE0_SUB0_SHOT26( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:StopAllSound_LUA()
		pSlideShot:ResetBGM()
		pSlideShot:ChangeColor_LUA( "BACK", 2.0, D3DXCOLOR(0,0,0,0) )
		pSlideShot:SetTextBoxShow( false )		
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

-- 4-2번째 // ?
function PF_STAGE0_SUB0_SHOT27( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "ELESIS", pParticle:CreateSequence_LUA( "PresentElesisRight", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25876, 0.07, "#C000000" )
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

-- 4-3번째 // ?
function PF_STAGE0_SUB0_SHOT28( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	----------------------------------------
	--이번 씬을 마지막으로 던전플레이 시작
	----------------------------------------
	if pSlideShot:EventTimer( 0.1 ) == true then
		-- 대화
		pSlideShot:AddText2_LUA( true, STR_ID_25873, STR_ID_25877, 0.07, "#C000000" )
		pSlideShot:DeleteSeq_LUA( "BACK" )
	end

	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:ScenEnd()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:ScenEnd()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end
--pSlideShot:ChangeColor_LUA( "BACK", 2.0, D3DXCOLOR(1,1,1,1) )