-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_SkillTree_Navi" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_CLOSE_SKILL_WINDOW"] )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_3"] )


-- mini skill tree 그림이 들어갈 static
g_pStatic_MiniSkillLine = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MiniSkillLine )
g_pStatic_MiniSkillLine:SetName( "Mini_Skill_Line" )


-- mini skill tree 그림이 들어갈 static
g_pStatic_MiniSkillIcon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MiniSkillIcon )
g_pStatic_MiniSkillIcon:SetName( "Mini_Skill_Icon" )






g_pNavi = g_pUIDialog:CreateNavigation()
g_pUIDialog:AddControl( g_pNavi )
g_pNavi:SetName( "SkillTree_Navi" )
g_pNavi:SetBGTex_LUA( "DLG_Room_Button0.tga", "Invisible" )
g_pNavi:SetWindowTex_LUA( "DLG_Common_New_Texture23.tga", "Skill_Tree_Navigation_Box" )
--g_pNavi:SetBGTex_LUA( "DLG_Common_New_Texture04.tga", "MAKING_GROUP_BACKGROUND11_2" )
--g_pNavi:SetWindowTex_LUA( "DLG_Common_New_Texture10.tga", "MAKING_DUNGEON_BG2" )


g_pNavi:SetBGPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,
	--"LEFT_TOP		= D3DXVECTOR2(100,100)",
	--"RIGHT_BOTTOM	= D3DXVECTOR2(300,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"LEFT_TOP		= D3DXVECTOR2(826,546)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(992,691)",
	CHANGE_TIME		= 0.0,
}

g_pNavi:SetWindowPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,
	--"LEFT_TOP		= D3DXVECTOR2(150,150)",
	--"RIGHT_BOTTOM	= D3DXVECTOR2(200,200)",
	"LEFT_TOP		= D3DXVECTOR2(826,546)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(826+30,546+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNavi:SetCustomMsgLButtonDown( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_NEW_SKILL_NAVI_LEFT_CLICKED"] )
--g_pNavi:SetCustomMsgMouseDragging( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_NEW_SKILL_NAVI_DRAGGING"] )

