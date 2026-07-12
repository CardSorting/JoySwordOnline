-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


GlobalMissionManager:SetGlobalMissionOn( false )
--[[
WEEK_OF_MONTH =
{
	WOM_NONE		= 0,
	WOM_SUNDAY		= 1,
	WOM_MONDAY		= 2, 
	WOM_TUESDAY		= 3,
	WOM_WEDNESDDAY	= 4, 
	WOM_THURSDAY	= 5,
	WOM_FRIDAY		= 6,
	WOM_SATERDAY	= 7,
}

GLOBAL_MISSION_TYPE = 
{
	GMT_NONE			= 0,
	GMT_NPC_HUNT		= 1,
	GMT_DUNGEON_CLEAR	= 2,
	GMT_QUEST_CLEAR		= 3,
	GMT_COLLECT_ITEM	= 4,
}
--]]

-- 테스트
--[[
GlobalMissionManager:SetGlobalMissionOpenInfo( 1, "2012-09-09 00:00:00", 1439, 1, 662, 20000 )	
GlobalMissionManager:SetGlobalMissionOpenInfo( 2, "2012-09-10 00:00:00", 1439, 1, 665, 20000 )
GlobalMissionManager:SetGlobalMissionOpenInfo( 3, "2012-09-11 00:00:00", 1439, 1, 662, 20000 )	
GlobalMissionManager:SetGlobalMissionOpenInfo( 4, "2012-09-12 00:00:00", 1439, 1, 662, 20000 )	
--]]

-- 라이브
--GlobalMissionManager:SetGlobalMissionInfo(GlobalMissionID, StartTime, DurationTime, MissionType, ClearCondition, ClearCount, RewardType, RewardDurationTime, SuccessScriptID, FailScriptID)
--GlobalMissionManager:SetGlobalMissionInfo( "2012-09-12 00:00:00", 1439, 1, 662, 30000, 1, 1439, 10000, 10001 )	-- 해적 뽀루
--GlobalMissionManager:SetGlobalMissionInfo( "2012-09-14 00:00:00", 1439, 1, 662, 37500, 1, 1439, 10000, 10001 )	-- 해적 뽀루
--GlobalMissionManager:SetGlobalMissionInfo( "2012-09-16 00:00:00", 1439, 1, 662, 63000, 1, 1439, 10000, 10001 )	-- 해적 뽀루
--GlobalMissionManager:SetGlobalMissionInfo( "2012-09-18 00:00:00", 1439, 1, 662, 46000, 1, 1439, 10000, 10001 )	-- 해적 뽀루
--GlobalMissionManager:SetGlobalMissionInfo( "2012-09-20 00:00:00", 1439, 1, 662, 31500, 1, 1439, 10000, 10001 )	-- 해적 뽀루
--GlobalMissionManager:SetGlobalMissionInfo( "2012-09-22 00:00:00", 1439, 1, 665, 67500, 1, 1439, 10000, 10001 )	-- 강력해진 해적 뽀루
--GlobalMissionManager:SetGlobalMissionInfo( "2012-09-24 00:00:00", 1439, 1, 662, 42000, 1, 1439, 10000, 10001 )	-- 해적 뽀루