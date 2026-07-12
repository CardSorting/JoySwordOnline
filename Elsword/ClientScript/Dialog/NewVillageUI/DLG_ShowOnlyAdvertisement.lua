-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_GAME_EDIT_CUSTOM_MSG["UGECM_CAMERA_EDIT_CLOSE"] )

g_pStaticopen = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticopen )

g_pUIDialog:SetPos(790,600) 
-- FREE CAMERA
g_pButton_SocketCheat = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SocketCheat )
g_pButton_SocketCheat:SetName( "Button_SocketCheat" )
g_pButton_SocketCheat:SetNormalTex( "DLG_UI_Button19_NEW.tga", "COMM_NORMAL" )
g_pButton_SocketCheat:SetOverTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pButton_SocketCheat:SetDownTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pButton_SocketCheat:SetNormalPoint
{	
    ADD_SIZE_X = 40,
    ADD_SIZE_Y = 40,
    "LEFT_TOP		= D3DXVECTOR2(105+8,45+7)",
	"COLOR			= D3DXCOLOR(1.0,0.2,0.1,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetOverPoint
{
    ADD_SIZE_X = 200,
    ADD_SIZE_Y = 200,
	"LEFT_TOP		= D3DXVECTOR2(105,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetDownPoint
{
    ADD_SIZE_X = 200,
    ADD_SIZE_Y = 200,
 	"LEFT_TOP		= D3DXVECTOR2(105+1,45+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetCustomMsgMouseOver( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_HIDE_UI_MOUSE_OVER"] )
g_pButton_SocketCheat:SetCustomMsgMouseOut( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_HIDE_UI_MOUSE_OUT"] )