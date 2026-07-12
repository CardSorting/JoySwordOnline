-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Map_Village_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )









----------------던전가기버튼(월드가기로수정) 

g_pButtonGo_Dungeon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGo_Dungeon )
g_pButtonGo_Dungeon:SetName( "ButtonGo_Dungeon" )
g_pButtonGo_Dungeon:SetNormalTex( "DLG_Common_New_Texture44.TGA", "Village_Go_World_Normal" )

g_pButtonGo_Dungeon:SetOverTex( "DLG_Common_New_Texture44.TGA", "Village_Go_World_Over" )

g_pButtonGo_Dungeon:SetDownTex( "DLG_Common_New_Texture44.TGA", "Village_Go_World_Over" )

g_pButtonGo_Dungeon:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(27,82-25)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_Dungeon:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(27,82-25)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_Dungeon:SetDownPoint
{
      ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(28,83-25)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_Dungeon:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_WORLD"] )









----------------대전가기버튼

g_pButtonGo_PVP = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGo_PVP )
g_pButtonGo_PVP:SetName( "ButtonGo_PVP" )
g_pButtonGo_PVP:SetNormalTex( "DLG_Common_New_Texture44.TGA", "Village_Go_PVP_Normal" )

g_pButtonGo_PVP:SetOverTex( "DLG_Common_New_Texture44.TGA", "Village_Go_PVP_Over" )

g_pButtonGo_PVP:SetDownTex( "DLG_Common_New_Texture44.TGA", "Village_Go_PVP_Over" )

g_pButtonGo_PVP:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(269,82-25)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_PVP:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(269,82-25)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_PVP:SetDownPoint
{
      ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(270,83-25)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_PVP:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_STATE_CHANGE_PVP_LOBBY"] )





--이미르
g_pButtonGo_Arcade = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGo_Arcade )
g_pButtonGo_Arcade:SetName( "ButtonGo_ARCADE" )
g_pButtonGo_Arcade:SetNormalTex( "DLG_Common_New_Texture65.TGA", "Village_Go_Arcade_Normal" )

g_pButtonGo_Arcade:SetOverTex( "DLG_Common_New_Texture65.TGA", "Village_Go_Arcade_Over" )

g_pButtonGo_Arcade:SetDownTex( "DLG_Common_New_Texture65.TGA", "Village_Go_Arcade_Over" )

g_pButtonGo_Arcade:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(511,82-25)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_Arcade:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(511,82-25)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_Arcade:SetDownPoint
{
      ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(512,83-25)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_Arcade:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_STATE_CHANGE_ARCADE_LOBBY"] )








---------------월드가기(던전으로수정) 

g_pButtonGo_World = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGo_World )
g_pButtonGo_World:SetName( "ButtonGo_World" )
g_pButtonGo_World:SetNormalTex( "DLG_Common_New_Texture44.TGA", "Village_Go_Dungeon_Normal" )

g_pButtonGo_World:SetOverTex( "DLG_Common_New_Texture44.TGA", "Village_Go_Dungeon_Over" )

g_pButtonGo_World:SetDownTex( "DLG_Common_New_Texture44.TGA", "Village_Go_Dungeon_Over" )

g_pButtonGo_World:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(753,82-25)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_World:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(753,82-25)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGo_World:SetDownPoint
{
      ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(754,83-25)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}

g_pButtonGo_World:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_STATE_CHANGE_LOCAL_MAP"] )


