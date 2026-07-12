-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 태그 대전맵
g_pMapSelectWindow:AddMapInfo_LUA
{
	m_WorldID			= WORLD_ID["WI_TAG_PVPMAP"],

	m_bHot				= FALSE,			
	m_bNew				= TRUE,			

	m_MapName			= STR_ID_1154,			-- fix!!
	m_MapTexName		= "DLG_New_PVP_Image03.dds",			
	m_MapTexKeyName		= "MAP_SELECT_IMAGE_ARENA",	

	m_MapNameTexName	= "DLG_New_PVP_Image_TITLE.dds",	
	m_MapNameTexKeyName = "MAP_TITLE_ARENA",
}
