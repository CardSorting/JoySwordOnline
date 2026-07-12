-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--======================================================================
-- DUNGEON RESULT
-- ※ print() <= 함수는 디버깅을 위한 출력함수 이므로 나둬 주세요.! 
--======================================================================
--프로그램에서 사용하는 랭크식별 코드값

RANK_TYPE =
{
	RT_NONE		= 0,
	RT_F		= 1,
	RT_E		= 2,
	RT_D		= 3,
	RT_C		= 4,
	RT_B		= 5,
	RT_A		= 6,
	RT_S		= 7,
	RT_SS		= 8,
}

--던전게임 파티보너스 확률(2인, 3인, 4인)
ResultProcess:AddDungeonPartyBonus( 0.5, 1.0, 1.5 )

--던전게임 난이도별 파티보너스 확률(보통, 어려움, 매우어려움)
ResultProcess:AddDungeonPartyDifficultyBonus( 1.0, 2.0, 2.25 )

--던전게임 모드별 파티보너스 확률(일반, 헤니르, 비밀던전)
ResultProcess:AddDungeonModePartyBonus( 2.25, 2.25, 2.25 )

-- 가중치를 조절할 필요가 있는 던전의 추가 가중치 설정 
 	
function WEIGHT_BY_DUNGEONID( nDungeonID )

   local fConstDungeon = 1.0
	
	--헤니르
	if nDungeonID == DUNGEON_ID["DI_ELDER_HENIR_SPACE"] then
     fConstDungeon = 9.0	
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_HENIR_SPACE"] then
     fConstDungeon = 9.0
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_HENIR_SPACE"] then
     fConstDungeon = 9.0
	elseif nDungeonID == DUNGEON_ID["DI_FEITA_HENIR_SPACE"] then
     fConstDungeon = 9.0
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_HENIR_SPACE"] then
     fConstDungeon = 9.0
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_HENIR_SPACE"] then
     fConstDungeon = 9.0	 

	 --[[
	DI_ELDER_SECRET_COMMON	                = 33030, 평균 707초
    DI_ELDER_SECRET_HELL	                = 33031,
    	
	DI_BESMA_SECRET_COMMON	                = 33040,
    DI_BESMA_SECRET_HELL	                = 33041,
    
	DI_ALTERA_SECRET_COMMON	                = 33050,
    DI_ALTERA_SECRET_HELL	                = 33051, ]]
	 
	 --비밀던전
	elseif nDungeonID == DUNGEON_ID["DI_ELDER_SECRET_COMMON"] then
     fConstDungeon = 1.5	 
	elseif nDungeonID == DUNGEON_ID["DI_ELDER_SECRET_HELL"] then
     fConstDungeon = 3.0		 
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_SECRET_COMMON"] then
     fConstDungeon = 1.5		 
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_SECRET_HELL"] then
     fConstDungeon = 3.0		 
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_SECRET_COMMON"] then
     fConstDungeon = 1.5		 
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_SECRET_HELL"] then
     fConstDungeon = 3.0		 
	 
	end
	
	return fConstDungeon
	
end


-----------------------------------------------------------------------------
-- time

function DUNGEON_TIME_RESULT( pUnitInfo, nDungeonID, pMonsterManager, nPlayTime )

	-- 던전 랭크 개편
	-- pMonsterManager:GetNormalNpcDieCount()
	-- pMonsterManager:GetLowEliteNpcDieCount()
	-- pMonsterManager:GetHighEliteNpcDieCount()
	-- pMonsterManager:GetMiddleBossDieCount()
	-- pMonsterManager:GetBossDieCount()

	local fMonsterWghtTime = 

		pMonsterManager:GetNormalNpcDieCount() *1
		+pMonsterManager:GetLowEliteNpcDieCount() *2
		+pMonsterManager:GetHighEliteNpcDieCount() *3
		+pMonsterManager:GetMiddleBossDieCount() *4
		+pMonsterManager:GetBossDieCount() *12
	
	
	local fConstDungeon = WEIGHT_BY_DUNGEONID(nDungeonID)

	
	local fTimeResult = nPlayTime / ( fConstDungeon * fMonsterWghtTime )


	local nTimeRank = RANK_TYPE["RT_F"]

	if fTimeResult <= 3.5 then
	 nTimeRank = RANK_TYPE["RT_SS"]
 	   elseif fTimeResult <= 4.2 then
  	 nTimeRank = RANK_TYPE["RT_S"]
 	   elseif fTimeResult <= 5.0 then
  	 nTimeRank = RANK_TYPE["RT_A"]
 	   elseif fTimeResult <= 6.0 then
  	 nTimeRank = RANK_TYPE["RT_B"]
 	   elseif fTimeResult <= 10 then
  	 nTimeRank = RANK_TYPE["RT_C"]

  	  else
  	 nTimeRank = RANK_TYPE["RT_F"]

	end


	
	local fBonusPoint = 0.0
	if nTimeRank == RANK_TYPE["RT_SS"] then
	    fBonusPoint = 0.03
	    elseif nTimeRank == RANK_TYPE["RT_S"] then
	    fBonusPoint = 0.02
	    elseif nTimeRank == RANK_TYPE["RT_A"] then
	    fBonusPoint = 0.01
	end


	pUnitInfo:SetResultData( fBonusPoint, nTimeRank )
	
	return nTimeRank



end



-----------------------------------------------------------------------------
-- Damage

function DUNGEON_DAMAGE_RESULT( pUnitInfo, nDungeonID, pMonsterManager )

		-- 던전 랭크 개편
	-- pMonsterManager:GetNormalNpcDieCount()
	-- pMonsterManager:GetLowEliteNpcDieCount()
	-- pMonsterManager:GetHighEliteNpcDieCount()
	-- pMonsterManager:GetMiddleBossDieCount()
	-- pMonsterManager:GetBossDieCount()
	-- pUnitInfo:GetTotalAttackedDamage() -- 피격 대미지 총합
	-- pUnitInfo:GetTotalRecoveryHP() -- 총 HP회복량
	-- pUnitInfo:GetBaseHP() -- 장비포함StatHP
	-- pUnitInfo:GetTotalSumNpcHP() -- 모든 NPC HP총합
	
	local fMonsterWghtDamage = 

		pMonsterManager:GetNormalNpcDieCount() *1
		+pMonsterManager:GetLowEliteNpcDieCount() *2
		+pMonsterManager:GetHighEliteNpcDieCount() *3
		+pMonsterManager:GetMiddleBossDieCount() *4
		+pMonsterManager:GetBossDieCount() *12


	local fDamageResult = ( pUnitInfo:GetTotalAttackedDamage() - ( pUnitInfo:GetTotalRecoveryHP() * 0.5 ) ) / pUnitInfo:GetBaseHP() * 100


	local nDamageRank = RANK_TYPE["RT_F"]

	if fDamageResult <= 20 then
	 nDamageRank = RANK_TYPE["RT_SS"]
 	   elseif fDamageResult <= 50 then
  	 nDamageRank = RANK_TYPE["RT_S"]
 	   elseif fDamageResult <= 90 then
  	 nDamageRank = RANK_TYPE["RT_A"]
 	   elseif fDamageResult <= 150 then
  	 nDamageRank = RANK_TYPE["RT_B"]
 	   elseif fDamageResult <= 900 then
  	 nDamageRank = RANK_TYPE["RT_C"]

  	  else
  	 nDamageRank = RANK_TYPE["RT_F"]
	end

	
	local fBonusPoint = 0.0
	if nDamageRank == RANK_TYPE["RT_SS"] then
	    fBonusPoint = 0.03
	    elseif nDamageRank == RANK_TYPE["RT_S"] then
	    fBonusPoint = 0.02
	    elseif nDamageRank == RANK_TYPE["RT_A"] then
	    fBonusPoint = 0.01
	end


	pUnitInfo:SetResultData( fBonusPoint, nDamageRank )
	
	return nDamageRank



end


---------------------------------------------------------------------------------------------------





-----------------------------------------------------------------------------------------------------
-- Combo  ( nStartNumMember ==> nEndNumMember )


function DUNGEON_COMBO_RESULT( pUnitInfo, nDungeonID, pMonsterManager, nEndNumMember, iPartyTotalGivenDamage )

		-- 던전 랭크 개편
	-- pMonsterManager:GetNormalNpcDieCount()
	-- pMonsterManager:GetLowEliteNpcDieCount()
	-- pMonsterManager:GetHighEliteNpcDieCount()
	-- pMonsterManager:GetMiddleBossDieCount()
	-- pMonsterManager:GetBossDieCount()
	-- pUnitInfo:GetBaseHP() -- 장비포함StatHP
	-- pUnitInfo:GetTotalGivenDamamge() 총 자신이 준 데미지 양
	-- pUnitInfo:GetTotalSumNpcHP()  npc 총 HP합 (현재는 파티원(자신 포함) 모두가 준 데미지 합산으로 대체하였다.)
	
	
	local MonsterWghtCombo = 

		pMonsterManager:GetNormalNpcDieCount() *1
		+pMonsterManager:GetLowEliteNpcDieCount() *2
		+pMonsterManager:GetHighEliteNpcDieCount() *3
		+pMonsterManager:GetMiddleBossDieCount() *4
		+pMonsterManager:GetBossDieCount() *12


	local fConstDungeon = WEIGHT_BY_DUNGEONID(nDungeonID)
	
	
  -- **64 monster total HP, 자신이 준 데미지 합


	local IndexC = ( pUnitInfo:GetTotalGivenDamamge() / iPartyTotalGivenDamage ) - ( 1/ nEndNumMember ) --endmember!! 


	local ArdentIndexC = math.pow(3,IndexC) 


	local fComboResult = ( pUnitInfo:GetComboScore() / ( MonsterWghtCombo * fConstDungeon ) ) * math.pow(nEndNumMember,0.5) --* ArdentIndexC   -- 오류로 인해서 
		

    -- 범위 설정 *****
	
	local nComboRank = RANK_TYPE["RT_F"]

	if fComboResult > 65 then
  		 nComboRank = RANK_TYPE["RT_SS"]
  	   elseif fComboResult >= 45 then
 	 	 nComboRank = RANK_TYPE["RT_S"]
 	   elseif fComboResult >= 30 then
 	 	 nComboRank = RANK_TYPE["RT_A"]
 	   elseif fComboResult >= 15 then
  		 nComboRank = RANK_TYPE["RT_B"]
 	   elseif fComboResult >= 2 then
  		 nComboRank = RANK_TYPE["RT_C"]
  	   else
 	    nComboRank = RANK_TYPE["RT_F"]
	end

	
	local fBonusPoint = 0.0
	if nComboRank == RANK_TYPE["RT_SS"] then
	    fBonusPoint = 0.05
   	 elseif nComboRank == RANK_TYPE["RT_S"] then
	    fBonusPoint = 0.03
	 elseif nComboRank == RANK_TYPE["RT_A"] then
	    fBonusPoint = 0.01
        end





	pUnitInfo:SetResultData( fBonusPoint, nComboRank )
	
	return nComboRank                               -- 64 , 왜 nComboRank를 반환하지 않고? 기존 파일에는 fTotalComboPercent 를 반환하는건지? 

end



----------------------------------------------------------------------------------------------------
-- Technical

		-- 던전 랭크 개편
	-- pMonsterManager:GetNormalNpcDieCount()
	-- pMonsterManager:GetLowEliteNpcDieCount()
	-- pMonsterManager:GetHighEliteNpcDieCount()
	-- pMonsterManager:GetMiddleBossDieCount()
	-- pMonsterManager:GetBossDieCount()
	-- pUnitInfo:GetUsingKindOfSkill() -- 사용한 스킬 종류 카운트
	-- pUnitInfo:GetBaseHP() -- 장비포함StatHP
	-- pUnitInfo:GetTotalGivenDamamge() 총 자신이 준 데미지 양
	-- pUnitInfo:GetTotalSumNpcHP()  npc 총 HP합 (현재는 파티원(자신 포함) 모두가 준 데미지 합산으로 대체하였다.)


	
	-- pUnitInfo:GetCommandTechScore() -- 커맨드 콤보 스코어
	-- pUnitInfo:GetSkillTechScore() -- 스킬 콤보 스코어
    -- pUnitInfo:GetTechnicalScore() -- 이걸 일단 사용하고 위 두개는 패킷만 따 둡니다. (덜 구현)

function DUNGEON_TECHNICAL_RESULT( pUnitInfo, nDungeonID, pMonsterManager, nEndNumMember, iPartyTotalGivenDamage )

	local MonsterWghtTech = 

		pMonsterManager:GetNormalNpcDieCount() *1
		+pMonsterManager:GetLowEliteNpcDieCount() *2
		+pMonsterManager:GetHighEliteNpcDieCount() *3
		+pMonsterManager:GetMiddleBossDieCount() *4
		+pMonsterManager:GetBossDieCount() *12


	local fConstDungeon = WEIGHT_BY_DUNGEONID(nDungeonID)
	
	
	-- **64 monster total HP, 자신이 준 데미지 합


	local IndexT = ( pUnitInfo:GetTotalGivenDamamge() / iPartyTotalGivenDamage ) - ( 1/ nEndNumMember ) --endmember!! 


	local ArdentIndexT = math.pow(3,IndexT) 



  -- 다양한 기술을 썼을 때 보너스 책정
	local nSkillBonus = 0.0  

		if  pUnitInfo:GetUsingKindOfSkill() > 7  then
		nSkillBonus = 1.21

		elseif ( pUnitInfo:GetUsingKindOfSkill() == 7 ) then
		nSkillBonus = 1.18

		elseif ( pUnitInfo:GetUsingKindOfSkill() == 6 ) then
		nSkillBonus = 1.15

		elseif ( pUnitInfo:GetUsingKindOfSkill() == 5 ) then
		nSkillBonus = 1.12

		elseif ( pUnitInfo:GetUsingKindOfSkill() == 4 ) then
		nSkillBonus = 1.07

		elseif ( pUnitInfo:GetUsingKindOfSkill() == 3 ) then
		nSkillBonus = 1.04

		elseif ( pUnitInfo:GetUsingKindOfSkill() == 2 ) then
		nSkillBonus = 1.02

		else
		nSkillBonus = 1.0
		end

		

 
	local fTechResult = ( pUnitInfo:GetTechnicalScore() * nSkillBonus  ) / ( MonsterWghtTech * fConstDungeon ) * math.pow(nEndNumMember,0.5) --* ArdentIndexT --** 오류로 인해서


	local nSkillRank = RANK_TYPE["RT_F"]
	
 	   -- 범위 설정
		if fTechResult > 750 then
 	 	 nSkillRank = RANK_TYPE["RT_SS"]

 		   elseif (fTechResult >= 500) then
  		 nSkillRank = RANK_TYPE["RT_S"]

 		   elseif (fTechResult >= 350) then
  		 nSkillRank = RANK_TYPE["RT_A"]

  		   elseif (fTechResult >= 250) then
  		 nSkillRank = RANK_TYPE["RT_B"]

 		   elseif (fTechResult >= 50) then
  		 nSkillRank = RANK_TYPE["RT_C"]

 		   else
  		 nSkillRank = RANK_TYPE["RT_F"]

		end
	

	
	local fBonusPoint = 0.0

		if nSkillRank == RANK_TYPE["RT_SS"] then
	    fBonusPoint = 0.05
	    elseif nSkillRank == RANK_TYPE["RT_S"] then
	    fBonusPoint = 0.03
 	   elseif nSkillRank == RANK_TYPE["RT_A"] then
	    fBonusPoint = 0.01
		end

	

	pUnitInfo:SetResultData( fBonusPoint, nSkillRank )
	
	return fTechResult  -- **64
end




----------------------------------------------------------------------------------------------------
-- Total Rank

--[[
	RT_NONE		= 0,
	RT_F		= 1,
	RT_E		= 2,
	RT_D		= 3,
	RT_C		= 4,
	RT_B		= 5,
	RT_A		= 6,
	RT_S		= 7,
	RT_SS		= 8,
]]--

function DUNGEON_TOTAL_RANK_RESULT( nComboRank, nTechnicalRank, nDamagedRank, nTimeRank, pMonsterManager )
 
 
	local nTotalRankSum = nComboRank + nTechnicalRank + nDamagedRank + nTimeRank

	
	local nTotalRank = RANK_TYPE["RT_F"]
	
 	   -- 범위 설정
	if nTotalRankSum >= 29 then
 		nTotalRank = RANK_TYPE["RT_SS"]

 		elseif (nTotalRankSum >= 27) then
  		nTotalRank = RANK_TYPE["RT_S"]

 		elseif (nTotalRankSum >= 20) then
  		nTotalRank = RANK_TYPE["RT_A"]

  		elseif (nTotalRankSum >= 14) then
  		nTotalRank = RANK_TYPE["RT_B"]

 		elseif (nTotalRankSum >= 10) then
  		nTotalRank = RANK_TYPE["RT_C"]
  		
  		elseif (nTotalRankSum >= 4) then
  		nTotalRank = RANK_TYPE["RT_D"]

 		else
  		nTotalRank = RANK_TYPE["RT_F"]
	end

	return nTotalRank
end



------------------------------------------------------------------------------------------------------------------------------
-- 서브스테이지 콤보, 테크 랭크 구하기 추가
function SUB_STAGE_COMBO_RESULT( nDungeonID, nEndNumMember, iComboScore, MonsterWghtCombo )

	local fConstDungeon = WEIGHT_BY_DUNGEONID(nDungeonID)

	local fComboResult = ( iComboScore / ( MonsterWghtCombo * fConstDungeon ) ) * math.pow(nEndNumMember,0.5)
		

    -- 범위 설정 *****
	
	local nComboRank = RANK_TYPE["RT_F"]

	if fComboResult > 65 then
  		 nComboRank = RANK_TYPE["RT_SS"]
  	   elseif fComboResult >= 45 then
 	 	 nComboRank = RANK_TYPE["RT_S"]
 	   elseif fComboResult >= 30 then
 	 	 nComboRank = RANK_TYPE["RT_A"]
 	   elseif fComboResult >= 15 then
  		 nComboRank = RANK_TYPE["RT_B"]
 	   elseif fComboResult >= 2 then
  		 nComboRank = RANK_TYPE["RT_C"]
  	   else
 	    nComboRank = RANK_TYPE["RT_F"]
	end

	return nComboRank

end


function SUB_STAGE_TECHNICAL_RESULT( nDungeonID, nEndNumMember, iTechScore, MonsterWghtTech )

	local fConstDungeon = WEIGHT_BY_DUNGEONID(nDungeonID)
	 
	local fTechResult = ( iTechScore ) / ( MonsterWghtTech * fConstDungeon ) * math.pow(nEndNumMember,0.5)


	local nTechRank = RANK_TYPE["RT_F"]
	
 	   -- 범위 설정
		if fTechResult > 750 then
 	 	 nTechRank = RANK_TYPE["RT_SS"]

 		   elseif (fTechResult >= 500) then
  		 nTechRank = RANK_TYPE["RT_S"]

 		   elseif (fTechResult >= 350) then
  		 nTechRank = RANK_TYPE["RT_A"]

  		   elseif (fTechResult >= 250) then
  		 nTechRank = RANK_TYPE["RT_B"]

 		   elseif (fTechResult >= 50) then
  		 nTechRank = RANK_TYPE["RT_C"]

 		   else
  		 nTechRank = RANK_TYPE["RT_F"]

		end
	
	return nTechRank
end