-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- 상단에 월드맵 도움말 
g_pUIDialog:SetName( "DLG_UI_WORLD_MAP_FRONT" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetCloseCustomUIEventID( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_WORLD_MAP"] )

--월드맵 프런트 ------------------------------------------------------------------------------
g_pStaticinfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticinfo )
g_pStaticinfo:SetName( "g_pStaticWorld_Map_Front" )

g_pPictureback1 = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureback1 )
g_pPictureback1:SetTex( "DLG_Common_Button02_NEW.tga", "BG_ADVICE" )
g_pPictureback1:SetPoint
{
    ADD_SIZE_X	= 1024,
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME	= 0.0,
}

-- 전체 월드 범례

g_pStaticWorldRemarks = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorldRemarks )
g_pStaticWorldRemarks:SetName( "Static_World_Remarks" )

g_pPictureTopLeft = g_pUIDialog:CreatePicture()
g_pStaticWorldRemarks:AddPicture( g_pPictureTopLeft )
g_pPictureTopLeft:SetTex( "DLG_Common_Button02_NEW.tga", "BG_ADVICE_FIELD" )
g_pPictureTopLeft:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(278,8)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureTopRight = g_pUIDialog:CreatePicture()
g_pStaticWorldRemarks:AddPicture( g_pPictureTopRight )
g_pPictureTopRight:SetTex( "DLG_Common_Button02_NEW.tga", "BG_ADVICE_QUEST" )
g_pPictureTopRight:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 573,8)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}



-- 필드 마을 범례
g_pStaticFieldRemarks = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFieldRemarks )
g_pStaticFieldRemarks:SetName( "Static_Field_Remarks" )

g_pPictureTopLeft = g_pUIDialog:CreatePicture()
g_pStaticFieldRemarks:AddPicture( g_pPictureTopLeft )
g_pPictureTopLeft:SetTex( "DLG_Common_Button02_NEW.tga", "BG_ADVICE_TOWN" )
g_pPictureTopLeft:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 177,8 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureTopRight = g_pUIDialog:CreatePicture()
g_pStaticFieldRemarks:AddPicture( g_pPictureTopRight )
g_pPictureTopRight:SetTex( "DLG_Common_Button02_NEW.tga", "BG_ADVICE_QUEST" )
g_pPictureTopRight:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(679,8)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


-- 네비게이션
g_pNavi = g_pUIDialog:CreateNavigation()
g_pUIDialog:AddControl( g_pNavi )
g_pNavi:SetName( "WorldMap_Navi" )
g_pNavi:SetBGTex_LUA( "DLG_UI_Common_Texture70_NEW.TGA", "WorldMap_Navigation" )
g_pNavi:SetWindowTex_LUA( "DLG_Common_New_Texture23.tga", "Skill_Tree_Navigation_Box" )

g_pNavi:SetBGPoint_LUA
{
	USE_TEXTURE_SIZE	= FALSE,
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"LEFT_TOP			= D3DXVECTOR2( 753, 524 )",
	"RIGHT_BOTTOM		= D3DXVECTOR2( 1019, 732 )",
	CHANGE_TIME			= 0.0,
}

g_pNavi:SetWindowPoint_LUA
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2( 758, 529 )",
	"RIGHT_BOTTOM		= D3DXVECTOR2( 911, 644 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pNavi:SetCustomMsgLButtonDown( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NAVI_LEFT_CLICKED"] )
g_pNavi:SetCustomMsgMouseDragging( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NAVI_LEFT_DRAGGING"] )

-- EXIT
g_pButtonExit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExit )
g_pButtonExit:SetName( "Exit" )
g_pButtonExit:SetNormalTex( "DLG_Common_New_Texture67.tga", "Exit_normal" )
g_pButtonExit:SetOverTex( "DLG_Common_New_Texture67.tga", "Exit_over" )
g_pButtonExit:SetDownTex( "DLG_Common_New_Texture67.tga", "Exit_over" )
g_pButtonExit:SetNormalPoint
{
    "LEFT_TOP	= D3DXVECTOR2(987,2)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonExit:SetOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(987,2)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonExit:SetDownPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP	= D3DXVECTOR2(987+1,3)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonExit:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_WORLD_MAP"] )