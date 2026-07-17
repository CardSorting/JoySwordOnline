-- Global variables to track win streaks, daily bonuses, play sessions, promotions, loss streaks, performance grades, demotion shields, clutch wins, rating gaps, promotion series, and nemesis wins
g_MatchUpdated = g_MatchUpdated or false
g_PvpWinStreak = g_PvpWinStreak or 0
g_LastWinDate = g_LastWinDate or ""
g_IsFirstWinToday = g_IsFirstWinToday or false
g_SessionMatchesPlayed = g_SessionMatchesPlayed or 0
g_IsRankPromoted = g_IsRankPromoted or false
g_PvpLossStreak = g_PvpLossStreak or 0
g_IsComebackWin = g_IsComebackWin or false
g_LastMatchDeathNum = g_LastMatchDeathNum or 0
g_DemotionShields = g_DemotionShields or 3
g_IsClutchWin = g_IsClutchWin or false
g_IsGiantSlayer = g_IsGiantSlayer or false
g_IsHighStakesWin = g_IsHighStakesWin or false
g_IsNemesisWin = g_IsNemesisWin or false
g_InPromoSeries = g_InPromoSeries or false
g_PromoTargetMilestone = g_PromoTargetMilestone or 0
g_PromoWins = g_PromoWins or 0
g_PromoLosses = g_PromoLosses or 0
g_PromoOutcome = g_PromoOutcome or 0

function UPDATE_WIN_STREAK( IsWin )
	if not g_MatchUpdated then
		g_SessionMatchesPlayed = g_SessionMatchesPlayed + 1
		if IsWin == true then
			g_PvpWinStreak = g_PvpWinStreak + 1
			-- Restore a Demotion Shield charge on victory (max 3)
			g_DemotionShields = math.min(g_DemotionShields + 1, 3)
			-- Check if this is a Comeback Win (ending a loss streak of 2+)
			if g_PvpLossStreak >= 2 then
				g_IsComebackWin = true
			else
				g_IsComebackWin = false
			end
			g_PvpLossStreak = 0
			-- Check if this is the First Win of the Day
			local today = os.date("%Y-%m-%d")
			if g_LastWinDate ~= today then
				g_IsFirstWinToday = true
				g_LastWinDate = today
			else
				g_IsFirstWinToday = false
			end
		else
			g_PvpWinStreak = 0
			g_IsFirstWinToday = false
			g_IsComebackWin = false
			g_PvpLossStreak = g_PvpLossStreak + 1
		end
		g_MatchUpdated = true
	end
end

function CLEAR_MATCH_FLAG()
	g_MatchUpdated = false
end

function GET_STREAK_MULTIPLIER()
	if g_PvpWinStreak >= 4 then
		return 1.5
	elseif g_PvpWinStreak == 3 then
		return 1.25
	elseif g_PvpWinStreak == 2 then
		return 1.1
	else
		return 1.0
	end
end

function GET_SESSION_MULTIPLIER()
	local bonus = math.min(g_SessionMatchesPlayed * 0.05, 0.25)
	return 1.0 + bonus
end

function GET_PERFORMANCE_GRADE_MULTIPLIER( IsWin, KillNum, MDKillNum, DeathNum )
	if IsWin == true then
		if DeathNum == 0 and KillNum >= 3 then
			return 1.5 -- S Grade
		elseif DeathNum <= 1 and (KillNum + MDKillNum) >= 2 then
			return 1.2 -- A Grade
		else
			return 1.0 -- B Grade
		end
	else
		if (KillNum + MDKillNum) >= 3 and DeathNum <= 2 then
			return 1.0 -- A Grade (on loss)
		else
			return 0.8 -- C Grade (on loss)
		end
	end
end

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
function GET_RATING_PVP_RESULT( MyTeamRating, EnemyTeamRating, UserRating, IsWin, KFactor, ArrangeTeamsMatch )

	-- Check if this is a High Stakes or Nemesis match based on win streak
	local EffectiveEnemyRating = EnemyTeamRating
	local IsHighStakes = (g_PvpWinStreak == 4)
	local IsNemesis = (g_PvpWinStreak >= 5)
	
	if IsNemesis then
		EffectiveEnemyRating = EnemyTeamRating + 200
	elseif IsHighStakes then
		EffectiveEnemyRating = EnemyTeamRating + 150
	end

	-- 기대승률을 구하자!
	local ExpectOfVictory = GET_EXPECT_OF_VICTORY( MyTeamRating, EffectiveEnemyRating )


	-- 승패값을 구하자!
	local MyTeamResultFactor
	if (IsWin == true) then
		MyTeamResultFactor = 1.0
	else
		MyTeamResultFactor = 0.0
	end


	-- 최종 Rating값을 구하자!
	local RatingResult = ( UserRating + ( KFactor * ( MyTeamResultFactor - ExpectOfVictory ) ) )
	
	local RatingIncresment = RatingResult - UserRating
	
	-- Modern Progression: Underdog Rating Scaling & Loss Mitigation (Rating gap >= 200)
	local RatingGap = EffectiveEnemyRating - MyTeamRating
	if RatingGap >= 200 then
		if IsWin == true then
			RatingIncresment = RatingIncresment * 1.5
		else
			RatingIncresment = RatingIncresment * 0.5
		end
	end
	
	-- Modern Progression: Win Streak Loss Protection
	if IsWin == false and g_PvpWinStreak > 0 then
		RatingIncresment = RatingIncresment * 0.5
	end
	
	-- Modern Progression: Loss Streak Protection (mitigate rating loss on consecutive defeats)
	if IsWin == false then
		if g_PvpLossStreak == 2 then
			RatingIncresment = RatingIncresment * 0.75 -- 25% loss reduction
		elseif g_PvpLossStreak >= 3 then
			RatingIncresment = RatingIncresment * 0.5  -- 50% loss reduction
		end
	end
	
	-- Modern Progression: "On Fire" Hot Streak (Win Streak >= 3)
	if g_PvpWinStreak >= 3 then
		RatingIncresment = RatingIncresment * 1.5
	end
	
	-- Update win streak & Demotion Shields
	local OldShields = g_DemotionShields
	
	g_IsHighStakesWin = false
	if IsWin == true and IsHighStakes then
		g_IsHighStakesWin = true
	end
	
	g_IsNemesisWin = false
	if IsWin == true and IsNemesis then
		g_IsNemesisWin = true
	end
	
	UPDATE_WIN_STREAK( IsWin )
	
	-- Modern Progression: Win Streak Gain Multiplier (applied on win)
	if IsWin == true then
		RatingIncresment = RatingIncresment * GET_STREAK_MULTIPLIER()
	end
	
	-- Modern Progression: High Stakes Lobby Win Boost (2x rating points)
	if g_IsHighStakesWin == true then
		RatingIncresment = RatingIncresment * 2.0
	end
	
	-- Modern Progression: Nemesis Boss Win Boost (2.5x rating points)
	if g_IsNemesisWin == true then
		RatingIncresment = RatingIncresment * 2.5
	end
	
	-- Modern Progression: Comeback Booster (+50% rating gain after breaking a loss streak)
	if IsWin == true and g_IsComebackWin == true then
		RatingIncresment = RatingIncresment * 1.5
	end
	
	-- Modern Progression: Low-Elo Catch-Up Booster (applied on win under 1200)
	if IsWin == true and UserRating < 1200 then
		RatingIncresment = RatingIncresment * 1.5
	end
	
	if ( ArrangeTeamsMatch == true ) and ( IsWin == false ) then
		RatingIncresment = RatingIncresment * 0.5
	end

	-- Modern Progression: Rating Milestone Floor Protection with Demotion Shield Charges
	local Milestones = { 2000, 1800, 1600, 1400, 1200, 1000 }
	local RatingFloor = 0
	for _, val in ipairs(Milestones) do
		if UserRating >= val then
			RatingFloor = val
			break
		end
	end
	
	local NewRating = UserRating + RatingIncresment
	if NewRating < RatingFloor then
		if OldShields > 0 then
			-- Shield absorbs the drop to keep the player at the floor
			RatingIncresment = RatingFloor - UserRating
			g_DemotionShields = math.max(OldShields - 1, 0)
		else
			-- Protection fails: demote below floor
		end
	end
	
	-- Modern Progression: Best-of-3 Promotion Series Logic
	g_PromoOutcome = 0
	if g_InPromoSeries == false then
		-- Check if player qualified for a new series
		local TargetMilestone = 0
		for _, val in ipairs(Milestones) do
			if UserRating < val and (UserRating + RatingIncresment) >= val then
				TargetMilestone = val
				break
			end
		end
		
		if TargetMilestone > 0 and IsWin == true then
			g_InPromoSeries = true
			g_PromoTargetMilestone = TargetMilestone
			g_PromoWins = 1
			g_PromoLosses = 0
			-- Lock rating at the gate
			RatingIncresment = (TargetMilestone - 1) - UserRating
		end
	else
		-- In active series: update win/loss counters
		if IsWin == true then
			g_PromoWins = g_PromoWins + 1
		else
			g_PromoLosses = g_PromoLosses + 1
		end
		
		-- Evaluate outcomes
		if g_PromoWins >= 2 then
			-- Promo Succeeded!
			RatingIncresment = (g_PromoTargetMilestone + 50) - UserRating
			g_PromoOutcome = 1
			g_InPromoSeries = false
		elseif g_PromoLosses >= 2 then
			-- Promo Failed!
			RatingIncresment = (g_PromoTargetMilestone - 30) - UserRating
			g_PromoOutcome = 2
			g_InPromoSeries = false
		else
			-- Series still active: keep locked at gate
			RatingIncresment = (g_PromoTargetMilestone - 1) - UserRating
		end
	end

	-- Modern Progression: Rank Promotion Detection (Only if not overriding with active promo series lock)
	g_IsRankPromoted = false
	if g_InPromoSeries == false and g_PromoOutcome == 0 then
		for _, val in ipairs(Milestones) do
			if UserRating < val and (UserRating + RatingIncresment) >= val then
				g_IsRankPromoted = true
				break
			end
		end
	end

	-- 최종Rating값에서 유저의 현재Rating값을 뺀것을 돌려주자!
    return RatingIncresment
end
--]]

----------------------------------------------
-- [2012 대전 시즌2] 대전 결과에 따른 Rating값 구하는 함수
----------------------------------------------
function GET_RATING_PVP_RESULT( MyTeamRating, EnemyTeamRating, UserRating, IsWin, KFactor, ArrangeTeamsMatch )

	-- Check if this is a High Stakes or Nemesis match based on win streak
	local EffectiveEnemyRating = EnemyTeamRating
	local IsHighStakes = (g_PvpWinStreak == 4)
	local IsNemesis = (g_PvpWinStreak >= 5)
	
	if IsNemesis then
		EffectiveEnemyRating = EnemyTeamRating + 200
	elseif IsHighStakes then
		EffectiveEnemyRating = EnemyTeamRating + 150
	end

	-- 기대승률을 구하자!
	local ExpectOfVictory = GET_EXPECT_OF_VICTORY( MyTeamRating, EffectiveEnemyRating )


	-- 승패값을 구하자!
	local MyTeamResultFactor
	if (IsWin == true) then
		MyTeamResultFactor = 1.0
	else
		MyTeamResultFactor = 0.0
	end


	-- 최종 Rating값을 구하자!
	local RatingResult = ( UserRating + ( KFactor * ( MyTeamResultFactor - ExpectOfVictory ) ) )
	
	local RatingIncresment = RatingResult - UserRating
	
	-- Modern Progression: Underdog Rating Scaling & Loss Mitigation (Rating gap >= 200)
	local RatingGap = EffectiveEnemyRating - MyTeamRating
	if RatingGap >= 200 then
		if IsWin == true then
			RatingIncresment = RatingIncresment * 1.5
		else
			RatingIncresment = RatingIncresment * 0.5
		end
	end
	
	-- Modern Progression: Win Streak Loss Protection
	if IsWin == false and g_PvpWinStreak > 0 then
		RatingIncresment = RatingIncresment * 0.5
	end
	
	-- Modern Progression: Loss Streak Protection (mitigate rating loss on consecutive defeats)
	if IsWin == false then
		if g_PvpLossStreak == 2 then
			RatingIncresment = RatingIncresment * 0.75 -- 25% loss reduction
		elseif g_PvpLossStreak >= 3 then
			RatingIncresment = RatingIncresment * 0.5  -- 50% loss reduction
		end
	end
	
	-- Modern Progression: "On Fire" Hot Streak (Win Streak >= 3)
	if g_PvpWinStreak >= 3 then
		RatingIncresment = RatingIncresment * 1.5
	end
	
	-- Update win streak & Demotion Shields
	local OldShields = g_DemotionShields
	
	g_IsHighStakesWin = false
	if IsWin == true and IsHighStakes then
		g_IsHighStakesWin = true
	end
	
	g_IsNemesisWin = false
	if IsWin == true and IsNemesis then
		g_IsNemesisWin = true
	end
	
	UPDATE_WIN_STREAK( IsWin )
	
	-- Modern Progression: Win Streak Gain Multiplier (applied on win)
	if IsWin == true then
		RatingIncresment = RatingIncresment * GET_STREAK_MULTIPLIER()
	end
	
	-- Modern Progression: High Stakes Lobby Win Boost (2x rating points)
	if g_IsHighStakesWin == true then
		RatingIncresment = RatingIncresment * 2.0
	end
	
	-- Modern Progression: Nemesis Boss Win Boost (2.5x rating points)
	if g_IsNemesisWin == true then
		RatingIncresment = RatingIncresment * 2.5
	end
	
	-- Modern Progression: Comeback Booster (+50% rating gain after breaking a loss streak)
	if IsWin == true and g_IsComebackWin == true then
		RatingIncresment = RatingIncresment * 1.5
	end
	
	-- Modern Progression: Low-Elo Catch-Up Booster (applied on win under 1200)
	if IsWin == true and UserRating < 1200 then
		RatingIncresment = RatingIncresment * 1.5
	end
	
	if ( ArrangeTeamsMatch == true ) and ( IsWin == false ) then
		RatingIncresment = RatingIncresment * 0.5
	end

	-- Modern Progression: Rating Milestone Floor Protection with Demotion Shield Charges
	local Milestones = { 2000, 1800, 1600, 1400, 1200, 1000 }
	local RatingFloor = 0
	for _, val in ipairs(Milestones) do
		if UserRating >= val then
			RatingFloor = val
			break
		end
	end
	
	local NewRating = UserRating + RatingIncresment
	if NewRating < RatingFloor then
		if OldShields > 0 then
			-- Shield absorbs the drop to keep the player at the floor
			RatingIncresment = RatingFloor - UserRating
			g_DemotionShields = math.max(OldShields - 1, 0)
		else
			-- Protection fails: demote below floor
		end
	end
	
	-- Modern Progression: Best-of-3 Promotion Series Logic
	g_PromoOutcome = 0
	if g_InPromoSeries == false then
		-- Check if player qualified for a new series
		local TargetMilestone = 0
		for _, val in ipairs(Milestones) do
			if UserRating < val and (UserRating + RatingIncresment) >= val then
				TargetMilestone = val
				break
			end
		end
		
		if TargetMilestone > 0 and IsWin == true then
			g_InPromoSeries = true
			g_PromoTargetMilestone = TargetMilestone
			g_PromoWins = 1
			g_PromoLosses = 0
			-- Lock rating at the gate
			RatingIncresment = (TargetMilestone - 1) - UserRating
		end
	else
		-- In active series: update win/loss counters
		if IsWin == true then
			g_PromoWins = g_PromoWins + 1
		else
			g_PromoLosses = g_PromoLosses + 1
		end
		
		-- Evaluate outcomes
		if g_PromoWins >= 2 then
			-- Promo Succeeded!
			RatingIncresment = (g_PromoTargetMilestone + 50) - UserRating
			g_PromoOutcome = 1
			g_InPromoSeries = false
		elseif g_PromoLosses >= 2 then
			-- Promo Failed!
			RatingIncresment = (g_PromoTargetMilestone - 30) - UserRating
			g_PromoOutcome = 2
			g_InPromoSeries = false
		else
			-- Series still active: keep locked at gate
			RatingIncresment = (g_PromoTargetMilestone - 1) - UserRating
		end
	end

	-- Modern Progression: Rank Promotion Detection (Only if not overriding with active promo series lock)
	g_IsRankPromoted = false
	if g_InPromoSeries == false and g_PromoOutcome == 0 then
		for _, val in ipairs(Milestones) do
			if UserRating < val and (UserRating + RatingIncresment) >= val then
				g_IsRankPromoted = true
				break
			end
		end
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

	-- Check if this is a High Stakes or Nemesis match
	local EffectiveEnemyRating = EnemyTeamRating
	if g_PvpWinStreak >= 5 then
		EffectiveEnemyRating = EnemyTeamRating + 200
	elseif g_PvpWinStreak == 4 then
		EffectiveEnemyRating = EnemyTeamRating + 150
	end

	-- 기대승률을 구하자! (using EffectiveEnemyRating)
	local ExpectOfVictory = GET_EXPECT_OF_VICTORY( MyTeamRating, EffectiveEnemyRating )

	
	-- 승패 RP 변동 기본 설정
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

	-- 승 패 결정
	local WinLoseRFactor
		if (IsWin == true ) then
			WinLoseRFactor = 1
		else 
			WinLoseRFactor = 0
		end
	
	local WinLoseMPoint  = WinLoseConstant * ( WinLoseRFactor - ExpectOfVictory )
	local WinLoseRPoint = math.max ( WinLoseMPoint , -6 )

    local MiddleResult = ( KillNum + MDKillNum - DeathNum )
	local SecondMiddleResult = math.max ( -4, MiddleResult )
	local KillDeathRPoint = math.min( 12, SecondMiddleResult )	
	
	-- 최종 결과값 반환
	local FinalResult = ( WinLoseRPoint + KillDeathRPoint )
	
	-- 영웅NPC와의 대전이라면?
	if ( PvpNpcType == PVP_NPC_TYPE["PNT_HERO_NPC"] ) or ( PvpNpcType == PVP_NPC_TYPE["PNT_BEGINNER_NPC"] ) then
		FinalResult = ( FinalResult * 2 )
	end
	
	-- Modern Progression: Performance-Based Modifiers
	local PerformanceMultiplier = 1.0
	-- Flawless Victory (+50% Ranking Points)
	if IsWin == true and DeathNum == 0 and KillNum > 0 then
		PerformanceMultiplier = PerformanceMultiplier + 0.5
	end
	-- Underdog Adjustment (+50% on win, -50% loss mitigation on defeat)
	local RatingGap = EffectiveEnemyRating - MyTeamRating
	
	-- Determine Giant Slayer status
	g_IsGiantSlayer = false
	if IsWin == true and RatingGap >= 200 then
		g_IsGiantSlayer = true
	end
	
	if RatingGap >= 200 then
		if IsWin == true then
			PerformanceMultiplier = PerformanceMultiplier + 0.5
		else
			PerformanceMultiplier = PerformanceMultiplier - 0.5
		end
	end
	FinalResult = FinalResult * PerformanceMultiplier
	
	-- Store death num globally for other calculations
	g_LastMatchDeathNum = DeathNum
	
	-- Determine Clutch Win status
	g_IsClutchWin = false
	if IsWin == true then
		if MatchType == MATCH_TYPE["MT_TEAM_DEATH_3_ON_3"] and DeathNum >= 10 then
			g_IsClutchWin = true
		elseif MatchType == MATCH_TYPE["MT_TEAM_DEATH_2_ON_2"] and DeathNum >= 6 then
			g_IsClutchWin = true
		elseif MatchType == MATCH_TYPE["MT_TEAM_DEATH_1_ON_1"] and DeathNum >= 4 then
			g_IsClutchWin = true
		elseif (MatchType == MATCH_TYPE["MT_TEAM_1_ON_1"] or MatchType == MATCH_TYPE["MT_TEAM_3_ON_3"]) and DeathNum >= 2 then
			g_IsClutchWin = true
		end
	end
	
	-- Apply Clutch Rating Boost
	if g_IsClutchWin == true then
		FinalResult = FinalResult * 1.3
	end
	
	-- Apply High Stakes Lobby Win Boost (2x RP)
	if g_IsHighStakesWin == true then
		FinalResult = FinalResult * 2.0
	end
	
	-- Apply Nemesis Boss Win Boost (2.5x RP)
	if g_IsNemesisWin == true then
		FinalResult = FinalResult * 2.5
	end
	
	-- Apply Promotion Series Success Boost (2x RP)
	if g_PromoOutcome == 1 then
		FinalResult = FinalResult * 2.0
	end
	
	-- Modern Progression: Performance Grade Multiplier
	local GradeMultiplier = GET_PERFORMANCE_GRADE_MULTIPLIER( IsWin, KillNum, MDKillNum, DeathNum )
	FinalResult = FinalResult * GradeMultiplier
	
	-- Modern Progression: Win Streak Multiplier (applied on win)
	if IsWin == true then
		FinalResult = FinalResult * GET_STREAK_MULTIPLIER()
	end
	
	return FinalResult
end



----------------------------------------------
-- [대전개편] 대전 결과에 따른 Arena Point 보상 구하는 함수
----------------------------------------------
function GET_ARENA_POINT_PVP_RESULT( UserRating, IsWin, KillNum, MDKillNum, MatchType, PvpNpcType )

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
	else
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
	
	local MaxKillDeath
	if ( MATCH_TYPE["MT_TEAM_DEATH_3_ON_3"] == MatchType ) then
			MaxKillDeath = 10
	elseif( MATCH_TYPE["MT_TEAM_DEATH_2_ON_2"] == MatchType ) then
			MaxKillDeath = 10
	elseif( MATCH_TYPE["MT_TEAM_DEATH_1_ON_1"] == MatchType ) then
			MaxKillDeath = 3
	elseif ( MATCH_TYPE["MT_TEAM_3_ON_3"] == MatchType ) then
			MaxKillDeath = 	10
	elseif ( MATCH_TYPE["MT_TEAM_2_ON_2"] == MatchType ) then
			MaxKillDeath = 	10
	else 
			MaxKillDeath = 0
	end
	
	local KillDeathAPoint = math.min( MaxKillDeath, ( KillNum + MDKillNum ) )
	local RatingMiddle = ( UserRating * 0.01 )
	local RatingAPoint = math.floor( RatingMiddle ) + 10
	
	local SemiFinalResult = ( ( WinLoseAPoint + KillDeathAPoint ) * RatingAPoint ) + 0.5
	local FinalResult = math.floor( SemiFinalResult )
	
	-- NPC와의 대전
	if ( PvpNpcType == PVP_NPC_TYPE["PNT_HERO_NPC"] ) or ( PvpNpcType == PVP_NPC_TYPE["PNT_BEGINNER_NPC"] ) then
		FinalResult = ( FinalResult * 10 )
	end
	
	-- Modern Progression: Domination Bonus (+30% AP for 3+ kills on win)
	if IsWin == true and KillNum >= 3 then
		FinalResult = math.floor( FinalResult * 1.3 )
	end
	
	-- Modern Progression: Win Streak Multiplier (applied on win)
	if IsWin == true then
		FinalResult = math.floor( FinalResult * GET_STREAK_MULTIPLIER() )
	end
	
	-- Modern Progression: First Win of the Day Bonus (2x AP on first win)
	if IsWin == true and g_IsFirstWinToday == true then
		FinalResult = FinalResult * 2
	end
	
	-- Modern Progression: Rank Promotion Bonus (2x AP on rank promotion)
	if IsWin == true and g_IsRankPromoted == true then
		FinalResult = FinalResult * 2
	end
	
	-- Modern Progression: Clutch Victory Bonus (1.5x AP)
	if g_IsClutchWin == true then
		FinalResult = FinalResult * 1.5
	end
	
	-- Modern Progression: Giant Slayer Underdog Bonus (1.5x AP)
	if g_IsGiantSlayer == true then
		FinalResult = FinalResult * 1.5
	end
	
	-- Modern Progression: High Stakes Lobby Win Boost (2x AP)
	if g_IsHighStakesWin == true then
		FinalResult = FinalResult * 2.0
	end
	
	-- Modern Progression: Nemesis Boss Win Boost (2.5x AP)
	if g_IsNemesisWin == true then
		FinalResult = FinalResult * 2.5
	end
	
	-- Modern Progression: Promotion Series Success Bonus (3x AP)
	if g_PromoOutcome == 1 then
		FinalResult = FinalResult * 3
	end
	
	-- Modern Progression: Performance Grade Multiplier
	local deaths = g_LastMatchDeathNum or 0
	local GradeMultiplier = GET_PERFORMANCE_GRADE_MULTIPLIER( IsWin, KillNum, MDKillNum, deaths )
	FinalResult = math.floor( FinalResult * GradeMultiplier )
	
	-- Modern Progression: Session Heat (Consecutive Play Bonus)
	FinalResult = math.floor( FinalResult * GET_SESSION_MULTIPLIER() )
	
	return FinalResult
end


----------------------------------------------
-- [대전개편] 대전 결과에 따른 EXP 보상 구하는 함수
----------------------------------------------
function GET_EXP_PVP_RESULT( ExpByLevel, IsWin, KillNum, MDKillNum, MatchType, PvpNpcType )
	
	local WinLoseFactor
	if (IsWin == true) then
		WinLoseFactor = 1.0
	else
		WinLoseFactor = 0.2
	end
	
	local MiddleResult = math.min( ( KillNum + MDKillNum ), 3 )
	local KillDeathExp = ( 0.2 * MiddleResult )
	
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

	local FinalResult = ( ExpByLevel * ( WinLoseFactor + KillDeathExp ) ) * MatchTypeBonus
	
	-- NPC와의 대전
	if ( PvpNpcType == PVP_NPC_TYPE["PNT_HERO_NPC"] ) or ( PvpNpcType == PVP_NPC_TYPE["PNT_BEGINNER_NPC"] ) then
		FinalResult = ( FinalResult * 5 )
	end
	
	-- Modern Progression: Domination Bonus (+30% EXP for 3+ kills on win)
	if IsWin == true and KillNum >= 3 then
		FinalResult = math.floor( FinalResult * 1.3 )
	end
	
	-- Modern Progression: Win Streak Multiplier (applied on win)
	if IsWin == true then
		FinalResult = math.floor( FinalResult * GET_STREAK_MULTIPLIER() )
	end
	
	-- Modern Progression: First Win of the Day Bonus (2x EXP on first win)
	if IsWin == true and g_IsFirstWinToday == true then
		FinalResult = FinalResult * 2
	end
	
	-- Modern Progression: Rank Promotion Bonus (2x EXP on rank promotion)
	if IsWin == true and g_IsRankPromoted == true then
		FinalResult = FinalResult * 2
	end
	
	-- Modern Progression: Clutch Victory Bonus (1.5x EXP)
	if g_IsClutchWin == true then
		FinalResult = FinalResult * 1.5
	end
	
	-- Modern Progression: Giant Slayer Underdog Bonus (1.5x EXP)
	if g_IsGiantSlayer == true then
		FinalResult = FinalResult * 1.5
	end
	
	-- Modern Progression: High Stakes Lobby Win Boost (2x EXP)
	if g_IsHighStakesWin == true then
		FinalResult = FinalResult * 2.0
	end
	
	-- Modern Progression: Nemesis Boss Win Boost (2.5x EXP)
	if g_IsNemesisWin == true then
		FinalResult = FinalResult * 2.5
	end
	
	-- Modern Progression: Promotion Series Success Bonus (3x EXP)
	if g_PromoOutcome == 1 then
		FinalResult = FinalResult * 3
	end
	
	-- Modern Progression: Performance Grade Multiplier
	local deaths = g_LastMatchDeathNum or 0
	local GradeMultiplier = GET_PERFORMANCE_GRADE_MULTIPLIER( IsWin, KillNum, MDKillNum, deaths )
	FinalResult = math.floor( FinalResult * GradeMultiplier )
	
	-- Modern Progression: Session Heat (Consecutive Play Bonus)
	FinalResult = math.floor( FinalResult * GET_SESSION_MULTIPLIER() )
	
	-- Clear the match update flag for the next match
	CLEAR_MATCH_FLAG()
	
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






