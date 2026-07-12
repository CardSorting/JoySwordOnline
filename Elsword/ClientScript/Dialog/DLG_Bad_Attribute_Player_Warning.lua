-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Bad_Attribute_Player_Warning_" )
g_pUIDialog:SetPos( 317,135 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


DLG_Bad_Attribute_Player_Warning = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( DLG_Bad_Attribute_Player_Warning )
DLG_Bad_Attribute_Player_Warning:SetName( "DLG_Bad_Attribute_Player_Warning" )


DLG_Bad_Attribute_Player_Warning1 = g_pUIDialog:CreatePicture()
DLG_Bad_Attribute_Player_Warning:AddPicture( DLG_Bad_Attribute_Player_Warning1 )

DLG_Bad_Attribute_Player_Warning1:SetTex( "DLG_UI_Common_Texture70_NEW.TGA", "WARNNING_TEXT" )

DLG_Bad_Attribute_Player_Warning1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pStaticExitButton = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticExitButton )
g_pStaticExitButton:SetName ( "ExitButtonUp" )


------ 버튼 Static

g_pPictureExitButton = g_pUIDialog:CreatePicture()
g_pStaticExitButton:AddPicture( g_pPictureExitButton )

g_pPictureExitButton:SetTex( "DLG_UI_Common_Texture49_NEW.tga", "MAP_X" )

g_pPictureExitButton:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(350,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----닫기 버튼 
g_pButton_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_X )
g_pButton_X:SetName( "_exit" )


g_pButton_X:SetNormalStatic( g_pStaticExitButton )
g_pButton_X:SetOverStatic( g_pStaticExitButton )
g_pButton_X:SetDownStatic( g_pStaticExitButton )


-- g_pButton_X:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "MAP_X" )
-- g_pButton_X:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "MAP_X" )
-- g_pButton_X:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "MAP_X" )


g_pButton_X:SetNormalPoint
{
	IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(350, 24)",
	"RIGHT_TOP		= D3DXVECTOR2(350+12, 24)",
	"LEFT_BOTTOM	= D3DXVECTOR2(350, 24+12)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(350+12, 24+12)",	
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_X:SetOverPoint
{
	IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(350, 24)",
	"RIGHT_TOP		= D3DXVECTOR2(350+12, 24)",
	"LEFT_BOTTOM		= D3DXVECTOR2(350, 24+12)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(350+12, 24+12)",	
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetDownPoint
{
	IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(350, 24)",
	"RIGHT_TOP		= D3DXVECTOR2(350+12, 24)",
	"LEFT_BOTTOM		= D3DXVECTOR2(350, 24+12)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(350+12, 24+12)",	
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetCustomMsgMouseUp( DUNGEON_GAME_UI_CUSTOM_MSG["DGUCM_CLOSE_BAD_ATTITUDE_WARNING_DIALOG"] )