-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--[[
----------------------------------------------
-- [대전개편] K값 구하는 함수
----------------------------------------------
function GET_K_FACTOR( PvpPlayCount, IsWin, IsWinBeforeMatch, UserMaxRating )

	-- 공식 대전 5회 미만은 최초 진입자다!
    --if (PvpPlayCount <= 5) then
	
		-- 연승!
	--	if (IsWin == IsWinBeforeMatch) then
    --        return 300.0
	--	else
	--		return 300.0 * 0.65	
	--	end
			
	--else
	
		-- 만약 30번 이상 플레이 했고 한번이라도 Rating이 2400을 넘었다면?
	if (PvpPlayCount > 30) and (UserMaxRating > 2400) then
        return 24.0
    end
	--end

	return 32.0
	
end
--]]

----------------------------------------------
-- [2012 대전 시즌2] K값 구하는 함수
----------------------------------------------
function GET_K_FACTOR( PvpPlayCount, IsWinBeforeMatch, IsWin, UserRating, CurrentKFactor, IsRedistributionUser )

	local KFactorResult = CurrentKFactor

	-- 공식 대전 10회 미만은 배치 랭커다!
    if (PvpPlayCount < 10 and IsRedistributionUser == false) then
	
		if (0 < PvpPlayCount) then
		
			-- 2012.10.4 패치로 0.65 > 0.8로 조정
			-- 높은 랭크로의 빠른 이동을 위한 장치 A
			-- (장치 B : 배치유저끼리 싸워서 지면 레이팅 차감 1/2)
			if ( (IsWinBeforeMatch == IsWin) == false ) then
				KFactorResult = CurrentKFactor * 0.8
			end
			
		end
		
	else
	
		-- 2012.9.27 패치로 k팩터 조정값 세부 분할
		-- 저랭크 유저일 수록 빠르게 올라올 수 있도록 기회 제공
		-- 만약 30번 이상 플레이 했고 최대 레이팅이 1351을 넘지 못했다면
		if (PvpPlayCount > 29) and (UserRating < 1851) then
	        KFactorResult = 32.0
	    elseif (UserRating > 2350) then
			KFactorResult = 12.0
	    elseif (UserRating > 1850) then
			KFactorResult = 24.0
	    elseif (UserRating > 1350) then
			KFactorResult = 36.0
	    elseif (UserRating > 950) then
			KFactorResult = 48.0
	    elseif (UserRating >= 0) then
			KFactorResult = 60.0
	    else 
			-- 만약의 오류를 위해
			KFactorResult = 32.0
		end
		
	end
	
	return KFactorResult - CurrentKFactor
	
end


----------------------------------------------
-- [대전개편] 기대 승률 구하는 함수
----------------------------------------------
function GET_EXPECT_OF_VICTORY( MyTeamRating, EnemyTeamRating )

	local TeamRatingGap = ( EnemyTeamRating - MyTeamRating )
	local MiddleResult	= math.pow( 10.0, ( TeamRatingGap / 400.0 ) )
	local Result = ( 1.0 / ( 1.0 + MiddleResult ) )

	--print( '여기서 확인!' )
	--print( TeamRatingGap )

	return Result
	
end


--[[
----------------------------------------------
-- [대전개편] 대전 결과에 따른 Rating값 구하는 함수
----------------------------------------------
function GET_RATING_PVP_RESULT( MyTeamRating, EnemyTeamRating, UserRating, UserMaxRating, PvpPlayCount, IsWin, IsWinBeforeMatch, MatchType, PvpNpcType )

	-- K상수값을 구하자!
	local KFactor = GET_K_FACTOR( PvpPlayCount, IsWin, IsWinBeforeMatch, UserMaxRating )


	-- 기대승률을 구하자!
	local ExpectOfVictory = GET_EXPECT_OF_VICTORY( MyTeamRating, EnemyTeamRating )


	-- 승패값을 구하자!
	local MyTeamResultFactor
	if (IsWin == true) then
		MyTeamResultFactor = 1.0
	else
		MyTeamResultFactor = 0.0
	end


	-- 최종 Rating값을 구하자!
	local RatingResult = ( UserRating + ( KFactor * ( MyTeamResultFactor - ExpectOfVictory ) ) )
	
	
	--print( '------------- Rating값 구하는 함수 ---------------' )
	--print( 'K상수' )
	--print( KFactor )
	--print( '기대승률' )
	--print( ExpectOfVictory )
	--print( '승패값' )
	--print( MyTeamResultFactor )
	--print( '최종결과값' )
	--print( RatingResult )
	--print( '실제 유저가 받을값' )
	--print( RatingResult - UserRating )
	--print( '-----------------------------------------------' )
	

	-- 최종Rating값에서 유저의 현재Rating값을 뺀것을 돌려주자!
    return ( RatingResult - UserRating )
end
--]]

----------------------------------------------
-- [2012 대전 시즌2] 대전 결과에 따른 Rating값 구하는 함수
----------------------------------------------
function GET_RATING_PVP_RESULT( MyTeamRating, EnemyTeamRating, UserRating, IsWin, KFactor, ArrangeTeamsMatch )

	-- 기대승률을 구하자!
	local ExpectOfVictory = GET_EXPECT_OF_VICTORY( MyTeamRating, EnemyTeamRating )


	-- 승패값을 구하자!
	local MyTeamResultFactor
	if (IsWin == true) then
		MyTeamResultFactor = 1.0
	else
		MyTeamResultFactor = 0.0
	end


	-- 최종 Rating값을 구하자!
	local RatingResult = ( UserRating + ( KFactor * ( MyTeamResultFactor - ExpectOfVictory ) ) )
	
	
	--print( '------------- Rating값 구하는 함수 ---------------' )
	--print( 'K상수' )
	--print( KFactor )
	--print( '기대승률' )
	--print( ExpectOfVictory )
	--print( '승패값' )
	--print( MyTeamResultFactor )
	--print( '최종결과값' )
	--print( RatingResult )
	--print( '실제 유저가 받을값' )
	--print( RatingResult - UserRating )
	--print( '-----------------------------------------------' )
	
	local RatingIncresment = RatingResult - UserRating
	
	if ( ArrangeTeamsMatch == true ) and ( IsWin == false ) then
		RatingIncresment = RatingIncresment * 0.5
	end

	-- 최종Rating값에서 유저의 현재Rating값을 뺀것을 돌려주자!
    return RatingIncresment
end


--[[
MATCH_TYPE =
{
	MT_TEAM_1_ON_1			= 0,
	MT_TEAM_2_ON_2			= 1,
	MT_TEAM_3_ON_3			= 2,
	MT_TEAM_DEATH_1_ON_1	= 3,
	MT_TEAM_DEATH_2_ON_2	= 4,
	MT_TEAM_DEATH_3_ON_3	= 5,
}
]]


----------------------------------------------
-- [대전개편] 대전 결과에 따른 Ranking Point 구하는 함수
----------------------------------------------
function GET_RANKING_POINT_PVP_RESULT( MyTeamRating, EnemyTeamRating, IsWin, KillNum, MDKillNum, DeathNum, MatchType, PvpNpcType )

	-- 기대승률을 구하자!	
	local ExpectOfVictory = GET_EXPECT_OF_VICTORY( MyTeamRating, EnemyTeamRating )

	
	-- 승패 RPoint 구하는 방식 대폭 변경 (조건이 추가된 이유)
	
	-- A. 승,패에 따른 RP 변동의 기본 점수 기준 설정 (모드별)
	local WinLoseConstant
		if ( MATCH_TYPE["MT_TEAM_DEATH_3_ON_3"] == MatchType )  then
			WinLoseConstant = 16
		elseif ( MATCH_TYPE["MT_TEAM_DEATH_2_ON_2"] == MatchType )  then
			WinLoseConstant = 14
		elseif ( MATCH_TYPE["MT_TEAM_DEATH_1_ON_1"] == MatchType )  then
			WinLoseConstant = 14
		elseif ( MATCH_TYPE["MT_TEAM_3_ON_3"] == MatchType )  then
			WinLoseConstant = 14
		elseif ( MATCH_TYPE["MT_TEAM_2_ON_2"] == MatchType )  then
			WinLoseConstant = 14
		else 
			WinLoseConstant = 12
			
		end

	-- B. 승 패 결정
	local WinLoseRFactor
		if (IsWin == true ) then
			WinLoseRFactor = 1

		else 
			WinLoseRFactor = 0
		end
	
	-- C. (A, B를 이용하여) 승패 결과에 따른 변동을 결정하자.	
	local WinLoseMPoint  = WinLoseConstant * ( WinLoseRFactor - ExpectOfVictory )

	-- C값의 하한선을 -6으로 하자!
	local WinLoseRPoint = math.max ( WinLoseMPoint , -6 )

    -- 킬데스 RPoint를 구하자!
    local MiddleResult = ( KillNum + MDKillNum - DeathNum )
	local SecondMiddleResult = math.max ( -4, MiddleResult )   -- 하한점도 추가
	local KillDeathRPoint = math.min( 12, SecondMiddleResult )	
	
	
	
	--[[ 승패 RPoint를 구하자!
	local WinLoseRPoint
	if ( IsWin == true ) then
        WinLoseRPoint = ( 12.0 * ( 1.0 - ExpectOfVictory ) )
	else
		WinLoseRPoint = ( -12.0 * ExpectOfVictory )
	end
	

    -- 킬데스 RPoint를 구하자!
    local MiddleResult = ( KillNum + MDKillNum - DeathNum )
	local KillDeathRPoint = math.min( 12, MiddleResult )
	
	]]
	
	-- 최종 결과값 반환
	local FinalResult = ( WinLoseRPoint + KillDeathRPoint )
	
	
	-- 영웅NPC와의 대전이라면?      --** 
	if ( PvpNpcType == PVP_NPC_TYPE["PNT_HERO_NPC"] ) then
	
		FinalResult = ( FinalResult * 2 )    -- 2배로 수정
		
	end
	
	
	--print( '------------- Ranking Point값 구하는 함수 ---------------' )	
	--print( '기대승률' )
	--print( ExpectOfVictory )
	--print( '승패값' )
	--print( WinLoseRPoint )
	--print( '최종결과값' )
	--print( FinalResult )
	--print( '-----------------------------------------------' )
	
	
	return FinalResult

end



----------------------------------------------
-- [대전개편] 대전 결과에 따른 Arena Point 보상 구하는 함수
----------------------------------------------
function GET_ARENA_POINT_PVP_RESULT( UserRating, IsWin, KillNum, MDKillNum, MatchType, PvpNpcType )

	
	-- 승패 APoint구하자! *** MatchType에 따라 차등 되어야 한다. (MatchType, Win APoint, Lose APoint) = (5, 8, 2) , (4, 6, 1.5) , (2, 5, 1.25) , (1, 5, 1.25),  ( 나머지, 4, 1)
	local WinLoseAPoint
	if (IsWin == true) then	
		if ( MATCH_TYPE["MT_TEAM_DEATH_3_ON_3"] == MatchType )  then
			WinLoseAPoint = 8
		elseif ( MATCH_TYPE["MT_TEAM_DEATH_2_ON_2"] == MatchType )  then
			WinLoseAPoint = 6	
		elseif ( MATCH_TYPE["MT_TEAM_DEATH_1_ON_1"] == MatchType )  then
			WinLoseAPoint = 4	
		elseif ( MATCH_TYPE["MT_TEAM_3_ON_3"] == MatchType )  then
			WinLoseAPoint = 5		
		elseif ( MATCH_TYPE["MT_TEAM_2_ON_2"] == MatchType )  then
			WinLoseAPoint = 5
		else
			WinLoseAPoint = 2
		end
	else	-- ***** 여기 맞는지 물어보자.
		if ( MATCH_TYPE["MT_TEAM_DEATH_3_ON_3"] == MatchType )  then
			WinLoseAPoint = 2
		elseif ( MATCH_TYPE["MT_TEAM_DEATH_2_ON_2"] == MatchType )  then
			WinLoseAPoint = 1.5	
		elseif ( MATCH_TYPE["MT_TEAM_DEATH_1_ON_1"] == MatchType )  then
			WinLoseAPoint = 1	
		elseif ( MATCH_TYPE["MT_TEAM_3_ON_3"] == MatchType )  then
			WinLoseAPoint = 1.25		
		elseif ( MATCH_TYPE["MT_TEAM_2_ON_2"] == MatchType )  then
			WinLoseAPoint = 1.25
		else
			WinLoseAPoint = 0.5
		end
	end
	

	-- 킬데스 APoint구하자!
	--local MiddleResult = math.min( 6, ( KillNum + MDKillNum ) )   -- 6으로 수정
	--local KillDeathAPoint = math.max( 0, MiddleResult )           -- 음수가 나오지 않아 불필요
	
	-------------------------------
	-- 모드별로 킬데스 포인트의 한계값 정하자. (변동 가능성이 있어서 촌스럽게)
	local MaxKillDeath
	if ( MATCH_TYPE["MT_TEAM_DEATH_3_ON_3"] == MatchType ) then					-- 3대3 데스
			MaxKillDeath = 10
	elseif( MATCH_TYPE["MT_TEAM_DEATH_2_ON_2"] == MatchType ) then			-- 2대2 데스
			MaxKillDeath = 10
	elseif( MATCH_TYPE["MT_TEAM_DEATH_1_ON_1"] == MatchType ) then			-- 1대1 데스
			MaxKillDeath = 3					--** 3 (데스지만 1대1, 없어질 모드)
	elseif ( MATCH_TYPE["MT_TEAM_3_ON_3"] == MatchType ) then			-- 3대3 팀
			MaxKillDeath = 	10
	elseif ( MATCH_TYPE["MT_TEAM_2_ON_2"] == MatchType ) then			-- 2대2 팀
			MaxKillDeath = 	10
	else 
			MaxKillDeath = 0			-- 1대1 팀매치 경우 킬데스 보너스 하향한 의미임. (8/18 0으로 수정, 킬데스 보너스 주지 않는 의미)
	end
	
	--------------------------------
	local KillDeathAPoint = math.min( MaxKillDeath, ( KillNum + MDKillNum ) )   -- 앞에서 구한 MaxKillDeath 들어감 ***
		

	-- Rating으로 APoint구하자!
	--local RatingAPoint = ( UserRating * 0.03 ) 
	local RatingMiddle = ( UserRating * 0.01 )
	local RatingAPoint = math.floor( RatingMiddle ) + 10         --** 로 바꾸어야 함   수정함
	
		

	-- 최종 결과값
	local SemiFinalResult = ( ( WinLoseAPoint + KillDeathAPoint ) * RatingAPoint ) + 0.5     -- 8/18 추가 및 수정
	local FinalResult = math.floor( SemiFinalResult )										-- 8/18 추가 및 수정
	
	
	-- 영웅NPC와의 대전이라면?
	if ( PvpNpcType == PVP_NPC_TYPE["PNT_HERO_NPC"] ) then
	
		FinalResult = ( FinalResult * 10 )
		
	end
	
	
	--print( '------------- Arena Point값 구하는 함수 ---------------' )
	--print( '승패값' )
	--print( WinLoseAPoint )
	--print( '킬데스값' )
	--print( KillDeathAPoint )
	--print( 'Rating결과값' )
	--print( RatingAPoint )
	--print( '최종결과값' )
	--print( FinalResult )
	--print( '영웅NPC와 체크한 최종결과값' )
	--print( FinalResult )
	--print( '-----------------------------------------------' )
	
	
	return FinalResult

end


----------------------------------------------
-- [대전개편] 대전 결과에 따른 EXP 보상 구하는 함수
----------------------------------------------
function GET_EXP_PVP_RESULT( ExpByLevel, IsWin, KillNum, MDKillNum, MatchType, PvpNpcType )
	
	-- 승패 상수	
	local WinLoseFactor
	if (IsWin == true) then
		WinLoseFactor = 1.0
	else
		WinLoseFactor = 0.2
	end
	

	-- 킬데스 값
	local MiddleResult = math.min( ( KillNum + MDKillNum ), 3 )
	local KillDeathExp = ( 0.2 * MiddleResult )
	
	
	-- MatchType별 가중치 (PT기준 설정)
	local MatchTypeBonus

		if ( MATCH_TYPE["MT_TEAM_DEATH_3_ON_3"] == MatchType )  then
			MatchTypeBonus = 2
		elseif ( MATCH_TYPE["MT_TEAM_DEATH_2_ON_2"] == MatchType )  then
			MatchTypeBonus = 2	
		elseif ( MATCH_TYPE["MT_TEAM_DEATH_1_ON_1"] == MatchType )  then
			MatchTypeBonus = 1.5
		elseif ( MATCH_TYPE["MT_TEAM_3_ON_3"] == MatchType )  then
			MatchTypeBonus = 1.25		
		elseif ( MATCH_TYPE["MT_TEAM_2_ON_2"] == MatchType )  then
			MatchTypeBonus = 1.1
		else 
			MatchTypeBonus = 1
		end

		
	-- 최종 결과값
	local FinalResult = ( ExpByLevel * ( WinLoseFactor + KillDeathExp ) ) * MatchTypeBonus
	
	
	--print( '------------- Exp 값 구하는 함수 ---------------' )		
	--print( '얻어온경험치' )
	--print( ExpByLevel )
	--print( '승패값' )
	--print( WinLoseFactor )
	--print( '킬데스EXP' )
	--print( KillDeathExp )
	--print( '최종결과값' )
	--print( FinalResult )
	--print( '-----------------------------------------------' )
	

	-- 최종 결과값 반환
    return FinalResult

end




----------------------------------------------
-- [대전개편] 공식 대전 이탈에 따른 Ranking Point 페널티 구하는 함수
----------------------------------------------
function GET_RANKING_POINT_PVP_PENALTY()

	return ( -60 )
	
end




----------------------------------------------
-- [대전개편] 공식 대전 이탈에 따른 Arena Point 페널티 구하는 함수
----------------------------------------------
function GET_ARENA_POINT_PVP_PENALTY( UserRating, MatchType, PvpNpcType )

	local MiddleResult = GET_ARENA_POINT_PVP_RESULT( UserRating, true, 0, 0 )
	
	return -( MiddleResult * 5 )

end



----------------------------------------------
-- [대전개편] 대전 레벨별 경험치 보상 테이블
----------------------------------------------
KPvpMatchResultTable:AddPvpExpRewardInfo(	1	,	0	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	2	,	74	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	3	,	157	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	4	,	234	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	5	,	314	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	6	,	404	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	7	,	492	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	8	,	584	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	9	,	678	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	10	,	789	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	11	,	882	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	12	,	1000	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	13	,	1108	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	14	,	1217	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	15	,	1341	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	16	,	1469	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	17	,	1601	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	18	,	1733	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	19	,	1865	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	20	,	2013	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	21	,	2163	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	22	,	2313	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	23	,	2472	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	24	,	2638	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	25	,	2815	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	26	,	2990	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	27	,	3176	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	28	,	3371	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	29	,	3572	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	30	,	3775	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	31	,	3995	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	32	,	4214	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	33	,	4452	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	34	,	4690	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	35	,	4936	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	36	,	5200	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	37	,	5473	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	38	,	5746	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	39	,	6036	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	40	,	6345	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	41	,	6653	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	42	,	6979	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	43	,	7322	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	44	,	7673	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	45	,	8035	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	46	,	8413	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	47	,	8809	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	48	,	9214	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	49	,	9636	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	50	,	10076	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	51	,	10534	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	52	,	11018	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	53	,	11510	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	54	,	12021	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	55	,	12557	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	56	,	13112	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	57	,	13693	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	58	,	14291	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	59	,	14916	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	60	,	15559	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	61	,	16236	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	62	,	16940	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	63	,	17662	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	64	,	18419	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	65	,	19211	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	66	,	20029	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	67	,	20873	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	68	,	21763	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	69	,	22678	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	70	,	23628	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	71	,	24623	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	72	,	25661	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	73	,	26726	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	74	,	27843	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	75	,	29005	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	76	,	30210	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	77	,	31460	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	78	,	32762	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	79	,	34118	)
KPvpMatchResultTable:AddPvpExpRewardInfo(	80	,	35525	)






