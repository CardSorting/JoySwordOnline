-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요
-- 큐브 내용물 매핑 (offline permanent pools)
-- g_pRandomItemManager:AddRandomItemMappingData( int nIndex, int iCubeID, int iKeyItemID, int iBeforeGroupID, int iAfterGroupID)
-- g_pRandomItemManager:AddRandomItemMappingTime( int nIndex, const char* szStartDate, const char* szEndDate)
g_pRandomItemManager:AddRandomItemMappingData( 1, 108900, 207500, 502070, 502071)
g_pRandomItemManager:AddRandomItemMappingTime( 1, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )
g_pRandomItemManager:AddRandomItemMappingData( 2, 85002440, 207500, 502070, 502071)
g_pRandomItemManager:AddRandomItemMappingTime( 2, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )
g_pRandomItemManager:AddRandomItemMappingData( 3, 85002870, 207500, 502070, 502071)
g_pRandomItemManager:AddRandomItemMappingTime( 3, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )


-- FURTHER_IMPROVE_ICEBURNERS: Themed Ice Burner mapping rules
g_pRandomItemManager:AddRandomItemMappingData( 10, 85002870, 207500, 502870, 502870 ) -- Archangel Burner
g_pRandomItemManager:AddRandomItemMappingTime( 10, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )
g_pRandomItemManager:AddRandomItemMappingData( 11, 85002440, 207500, 502440, 502440 ) -- Nasod Battle Suit Burner
g_pRandomItemManager:AddRandomItemMappingTime( 11, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )
g_pRandomItemManager:AddRandomItemMappingData( 12, 85002872, 207500, 502872, 502872 ) -- Velder Imperial Guard Burner
g_pRandomItemManager:AddRandomItemMappingTime( 12, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )
g_pRandomItemManager:AddRandomItemMappingData( 13, 85002874, 207500, 502874, 502874 ) -- Salvatore Solace Burner
g_pRandomItemManager:AddRandomItemMappingTime( 13, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )
-- END_FURTHER_IMPROVE_ICEBURNERS
