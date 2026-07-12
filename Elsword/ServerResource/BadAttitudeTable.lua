-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
--[[
-- 던전 타입 별 불량 유저로 등록 되는 점수
--( CXSLDungeon::DUNGEON_TYPE eDungeonType, int iPoint )	
BadAttitudeTable:AddBadAttitudeCutLinePoint( DUNGEON_TYPE["DT_NORMAL"], 3 )
BadAttitudeTable:AddBadAttitudeCutLinePoint( DUNGEON_TYPE["DT_SECRET"], 5 )
BadAttitudeTable:AddBadAttitudeCutLinePoint( DUNGEON_TYPE["DT_HENIR"],  7 )
BadAttitudeTable:AddBadAttitudeCutLinePoint( DUNGEON_TYPE["DT_DEFENCE_DUNGEON"],  1 )

-- 던전 타입 별 강퇴용 추가 점수
--( CXSLDungeon::DUNGEON_TYPE eDungeonType, int iPoint )
BadAttitudeTable:AddForceExitPoint( DUNGEON_TYPE["DT_NORMAL"], 2 )
BadAttitudeTable:AddForceExitPoint( DUNGEON_TYPE["DT_SECRET"], 2 )
BadAttitudeTable:AddForceExitPoint( DUNGEON_TYPE["DT_HENIR"],  3 )
BadAttitudeTable:AddForceExitPoint( DUNGEON_TYPE["DT_DEFENCE_DUNGEON"],  1 )
--]]