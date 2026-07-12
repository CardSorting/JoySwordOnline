-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pMap_World_region_Velder = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pMap_World_region_Velder )
g_pMap_World_region_Velder:SetName( "LocalButton" )

g_pMap_World_region_Velder:SetNormalTex( "DLG_Map_World3.TGA", "Point" )

g_pMap_World_region_Velder:SetOverTex( "DLG_Map_World3.TGA", "Point" )

g_pMap_World_region_Velder:SetDownTex( "DLG_Map_World3.TGA", "Point" )

g_pMap_World_region_Velder:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pMap_World_region_Velder:SetOverPoint
{

    ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(-1,-1)",
    
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pMap_World_region_Velder:SetDownPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pMap_World_region_Velder:SetCustomMsgMouseUp( STATE_WORLD_MAP_UI_CUSTOM_MSG["SWMUCM_LOCAL_BUTTON_UP"] )
g_pMap_World_region_Velder:SetCustomMsgMouseOver( STATE_WORLD_MAP_UI_CUSTOM_MSG["SWMUCM_LOCAL_BUTTON_OVER"] )
