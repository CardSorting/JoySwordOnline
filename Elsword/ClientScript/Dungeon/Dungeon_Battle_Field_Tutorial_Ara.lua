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
	pX2DungeonGame:EnableAllNPCAI( false )
end

-- UIMajorParticle에 있음
-- 1-1번째 회상 장면 ( 가문 소개 글 1 ) 나는 대대로 영수를 지키는 어쩌구 한 가문 자손임
function PF_STAGE0_SUB0_SHOT0( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pParticle = pX2Data:GetUIMajorParticle()
		pSlideShot:AddSeqMap_LUA( "BACK", pParticle:CreateSequence_LUA( "PresentProlBlackBack",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:BlackLayOutMove( true, 1 )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentAraProl1_1_Start",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )	-- 문구 페이드 인
		pSlideShot:SetSlideBGM_LUA( "Tutorial_Ara.ogg" )
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_1.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.0 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 6.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 1-1번째 회상 장면 ( 가문 소개 글 1 ) 가문의 긍지라 할 수 있는 비술 어쩌구 공을 세워
function PF_STAGE0_SUB0_SHOT1( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_2.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.0 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 6.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 1-1번째 회상 장면 ( 가문 소개 글 1 ) 제국의 무인으로 위상이 드높았당
function PF_STAGE0_SUB0_SHOT2( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then	
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_3.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.0 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 4.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 1-2번째 회상 장면 ( 가문 소개 글 1 ) 소멸
function PF_STAGE0_SUB0_SHOT3( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:AddSeqMap_LUA( "PROL1", pParticle:CreateSequence_LUA( "PresentAraProl1_1_End",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )	-- 문구 페이드 아웃	
		pSlideShot:StopAllSound_LUA()
	end

	if pSlideShot:GetNowTime() > 1.5 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 1-2번째 회상 장면 ( 가문 소개 글 2 ) 한 가문의 일원으로 무예를 어쩌구 게을러 하지 않았고
function PF_STAGE0_SUB0_SHOT4( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:AddSeqMap_LUA( "PROL2", pParticle:CreateSequence_LUA( "PresentAraProl1_2_Start",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_4.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.0 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 5.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 1-2번째 회상 장면 ( 가문 소개 글 2 ) 내 힘으로 무언가를 지켜 나갈 수 어쩌구 가지고 있었다.
function PF_STAGE0_SUB0_SHOT5( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL1" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_5.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.0 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 4.8 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 1-2번째 회상 장면 ( 가문 소개 글 2 ) 그날 밤에 그 일이 있기 전까진...
function PF_STAGE0_SUB0_SHOT6( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_6.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.0 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 4.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 1-2번째 회상 장면 ( 가문 소개 글 2 ) 소멸
function PF_STAGE0_SUB0_SHOT7( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL2" )
		pSlideShot:AddSeqMap_LUA( "PROL2", pParticle:CreateSequence_LUA( "PresentAraProl1_2_End",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )	
		pSlideShot:StopAllSound_LUA()
	end
	
	if pSlideShot:GetNowTime() > 1.5 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-1번째 회상 장면 ( 아라 달려오는 장면 + 탁탁탁 + 하앍하앍 )
function PF_STAGE0_SUB0_SHOT8( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL2" )
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddSeqMap_LUA( "PROL3", pParticle:CreateSequence_LUA( "PresentAraProl2_1",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tutorial_RunStep.ogg" )  	-- 탁탁탁
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_7.ogg" )			-- 하앍하앍
	end

	if pSlideShot:GetNowTime() > 1.2 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 6.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-2번째 회상 장면 ( 대사_1 그날 밤, 엄청나 굉음과 함께 마족들이 마을을 습격했다. )
function PF_STAGE0_SUB0_SHOT9( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21321, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_8.ogg" )
	end

	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	if pSlideShot:GetNowTime() > 0.3 and pSlideShot:GetElapsedTimeAfterTextSpread() > 6  then 
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-3번째 회상 장면 ( 대사_2 마족들의 힘에 마을 사람들이 하나, 둘 쓰러져 갔고... )
function PF_STAGE0_SUB0_SHOT10( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21322, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_9.ogg" )
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

-- 2-4번째 회상 장면 ( 대사_3 내 힘은... 수 많은 마족들을 상대하기에는 턱없이 부족했다. )
function PF_STAGE0_SUB0_SHOT11( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21323, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_10.ogg" )
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

-- 2-5번째 회상 장면 ( 사운드 달려가다가 멈추는 소리 )
function PF_STAGE0_SUB0_SHOT12( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tutorial_RunStop.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.2 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 6.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-6번째 회상 신 ( 마족 등장 신 + 크르르르 소리 )
function PF_STAGE0_SUB0_SHOT13( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL4", pParticle:CreateSequence_LUA( "PresentAraProl2_2",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tutorial_MonGrowl1.ogg" )
	end
	
	if pSlideShot:GetNowTime() > 1.2 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 6.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end
		
	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-7번째 회상 장면 ( 대사_1 마족들에게 둘러싸여 궁지에 몰렸을 때 )
function PF_STAGE0_SUB0_SHOT14( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21324, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_11.ogg" )
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

-- 2-8번째 회상 장면 ( 바닥 부셔짐 -> 카메라 흔들림 순간, 바닥이 크게 흔들리며 무너져 내렸고 )
function PF_STAGE0_SUB0_SHOT15( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL5", pParticle:CreateSequence_LUA( "PresentAraProl2_3",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		--pSlideShot:CrashSeq_LUA( "PROL5", 1.5, 5.0 )
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21325, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_12.ogg" )
	end
	
	if pSlideShot:EventTimer( 0.12 ) == true then
		pSlideShot:CrashSeq_LUA( "PROL5", 0.5, 10 )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	if pSlideShot:GetNowTime() > 1.0 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 2-9번째 회상 장면 ( 바닥 부셔짐 -> 카메라 흔들림 순간, 바닥이 크게 흔들리며 무너져 내렸고 )
function PF_STAGE0_SUB0_SHOT16( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:CrashSeq_LUA( "PROL5", 0.5, 5.0 )
	end
	
	if pSlideShot:GetNowTime() > 0.2 and pSlideShot:IsTextSpreading() == false and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 0.1 and pSlideShot:IsTextSpreading() == true and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:SetTextSpread()
		pSlideShot:StopAllSound_LUA()
	end
	if pSlideShot:GetNowTime() > 1.0 and pSlideShot:GetElapsedTimeAfterTextSpread() > 5  then 
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 3-1번째 회상 장면 ( 검은 화면, 꺄아앗! 텍스트 상자 Crash )
function PF_STAGE0_SUB0_SHOT17( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL3" )
		pSlideShot:DeleteSeq_LUA( "PROL4" )
		pSlideShot:DeleteSeq_LUA( "PROL5" )
		-- pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21326, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_13.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.2 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 6.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 3-2번째 회상 장면 ( 검은 화면, 미처 피할 틈도 업이 함께 떨어지고 말았다 )
function PF_STAGE0_SUB0_SHOT18( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21327, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_14.ogg" )
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

-- 3-3번째 회상 장면 ( 검은 화면, 크르르르르......... )
function PF_STAGE0_SUB0_SHOT19( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		--pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21328, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tutorial_MonGrowl2.ogg" )
	end

	if pSlideShot:GetNowTime() > 1.2 and pX2DungeonGame:IsSkipKeyPressed() == true then
		pSlideShot:GoNextScen()
	end
	if pSlideShot:GetNowTime() > 6.0 and pSlideShot:IsTextSpreading() == false then
		pSlideShot:GoNextScen()
	end

	pX2DungeonGame:PauseNPCAI( 0.1 )
	pSlideShot:CannotInput( 0.1 )
end

-- 4-1번째 회상 장면 ( 지하제단, 정신을 차려 보니, 숨겨져 있던 지하 제단의 차가운 바닥 위였다. )
function PF_STAGE0_SUB0_SHOT20( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL6", pParticle:CreateSequence_LUA( "PresentAraProl3_1",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21329, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_15.ogg" )
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

-- 4-2번째 회상 장면 ( 지하제단, 그리고... )
function PF_STAGE0_SUB0_SHOT21( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:StopAllSound_LUA()
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

-- 4-3번째 회상 장면 ( 지하제단, 어딘가 낯익은 그림자가 내 앞에 서 있었다. )
function PF_STAGE0_SUB0_SHOT22( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21331, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_16.ogg" )
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

-- 4-4번째 회상 장면 ( 지하제단, 아라 얼굴, 아렌.....오~뽜~야? )
function PF_STAGE0_SUB0_SHOT23( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeColor_LUA( "PROL6", 0.5, D3DXCOLOR(0.65,0.65,0.65,1) )
		pSlideShot:AddSeqMap_LUA( "PROL7", pParticle:CreateSequence_LUA( "PresentAraProl3_2",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21332, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_17.ogg" )
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

-- 4-5번째 회상 장면 ( 지하제단, 란 얼굴, 아렌이라... 오랜만에 듣는 이름이군요. 글자 색상 변경해야함 )
function PF_STAGE0_SUB0_SHOT24( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL8", pParticle:CreateSequence_LUA( "PresentAraProl3_3",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_11512, STR_ID_21333, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ran_1.ogg" )
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

-- 4-6번째 회상 장면 ( 지하제단, 달의 엘, 달의 엘? 오빠야...니 미쳤나...?! )
function PF_STAGE0_SUB0_SHOT25( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL9", pParticle:CreateSequence_LUA( "PresentAraProl3_4",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21334, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_18.ogg" )
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

-- 4-7번째 회상 장면 ( 지하제단, 란, 흥 성게군요 )
function PF_STAGE0_SUB0_SHOT26( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_11512, STR_ID_21335, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ran_2.ogg" )
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

-- 4-8번째 회상 장면 ( 지하제단, 아라, 마족이 되어버린 오니짱의 칼이 높게 치솟았고, )
function PF_STAGE0_SUB0_SHOT27( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21336, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_19.ogg" )
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

-- 4-9번째 회상 장면 ( 지하제단, 아라, 나는 그 위압감에 뒷걸음질을 칠 수 밖에 없었다 )
function PF_STAGE0_SUB0_SHOT28( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL9" )
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21337, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_20.ogg" )
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

-- 4-10번째 회상 장면 ( 지하제단, 아라, 오 비녀잡! )
function PF_STAGE0_SUB0_SHOT29( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddSeqMap_LUA( "PROL10", pParticle:CreateSequence_LUA( "PresentAraProl3_5",
			D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21338, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_21.ogg" )
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

-- 4-11번째 회상 장면 ( 지하제단, 아라, 곧이어 뿜어져 나온 엄청나 콜라의 양에 난 의식을 잃고 말았다. )
function PF_STAGE0_SUB0_SHOT30( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21339, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_22.ogg" )
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

-- 5-1번째 회상 장면 ( 페이드 아웃 )
function PF_STAGE0_SUB0_SHOT31( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:DeleteSeq_LUA( "PROL6" )
		pSlideShot:DeleteSeq_LUA( "PROL7" )
		pSlideShot:DeleteSeq_LUA( "PROL8" )
		pSlideShot:DeleteSeq_LUA( "PROL10" )
		pSlideShot:SetTextBoxShow( false )
		pSlideShot:ChangeColor_LUA( "BACK", 2.0, D3DXCOLOR(1,1,1,1) )
		pSlideShot:StopAllSound_LUA()
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

-- 5-2번째 회상 장면 ( 페이드 아웃, 그 일로 각성하게 된 신령스러운 여우가 나를 지켜주었지만 )
function PF_STAGE0_SUB0_SHOT32( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21340, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_23.ogg" )
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

-- 5-3번째 회상 장면 ( 페이드 아웃, 깨어났을 땐, 내 오라버니는 엘의 조각을 들고 사라져 버린 뒤였다 )
function PF_STAGE0_SUB0_SHOT33( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21341, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_24.ogg" )
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

-- 5-6번째 회상 장면 ( 페이드 아웃, 그때부터 우린 함께 길을 나서게 되었다. 나는 내 오라버니 어쩌구 위해서)
function PF_STAGE0_SUB0_SHOT34( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21344, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_25.ogg" )
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

-- 5-5번째 회상 장면 ( 페이드 아웃, 비녀 속의 여우는 불완전한 봉인을 온전히 풀어버리기 위해서... )
function PF_STAGE0_SUB0_SHOT35( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21343, 0.07, "#C000000" )
		pSlideShot:StopAllSound_LUA()
		pSlideShot:PlaySound2D_LUA( "Tuto_Ara_26.ogg" )
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

-- 6-1번째 회상 장면 ( 검은 화면 페이드 인 되면서, 루벤 )
function PF_STAGE0_SUB0_SHOT36( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		pSlideShot:ChangeColor_LUA( "BACK", 2.0, D3DXCOLOR(0,0,0,0) )
		pSlideShot:SetTextBoxShow( false )
		pSlideShot:StopAllSound_LUA()
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

-- 6-1번째 회상 장면 ( 아라 스텐딩 등장, 이곳이 바로 루벤 숲이군요 )
function PF_STAGE0_SUB0_SHOT37( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	if pSlideShot:EventTimer( 0.1 ) == true then
		-- 아라 화면에 나오면서
		pSlideShot:AddSeqMap_LUA( "ARA1", pParticle:CreateSequence_LUA( "PresentAra1Right", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) ) )
		pSlideShot:SetTextBoxShow( true )
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21511, 0.07, "#C000000" )
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

-- 6-1번째 회상 장면 ( 여기서는 오라버니의 흔적을 찾을 수 있을까요? )
function PF_STAGE0_SUB0_SHOT38( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	----------------------------------------
	--이번 씬을 마지막으로 던전플레이 시작
	----------------------------------------
	if pSlideShot:EventTimer( 0.1 ) == true then
		-- 대화
		pSlideShot:AddText2_LUA( true, STR_ID_21181, STR_ID_21512, 0.07, "#C000000" )
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
