-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Messenger_User_Info" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )






------------------버튼-------------------------- 
g_pButtonChat_Id = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonChat_Id )
g_pButtonChat_Id:SetName( "Chat_Id" )
g_pButtonChat_Id:SetNormalTex( "DLG_Common_New_Texture02.dds", "Chat_Id_Normal" )

g_pButtonChat_Id:SetOverTex( "DLG_Common_New_Texture02.dds", "Chat_Id_Over" )

g_pButtonChat_Id:SetDownTex( "DLG_Common_New_Texture02.dds", "Chat_Id_Over" )

g_pButtonChat_Id:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChat_Id:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChat_Id:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChat_Id:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_OPEN_CHAT_SESSION"] )


g_pButtonX2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX2 )
g_pButtonX2:SetName( "X2" )
g_pButtonX2:SetNormalTex( "DLG_Common_Texture20.tga", "Button_X2_Normal" )

g_pButtonX2:SetOverTex( "DLG_Common_Texture20.tga", "Button_X2_Over" )

g_pButtonX2:SetDownTex( "DLG_Common_Texture20.tga", "Button_X2_Normal" )

g_pButtonX2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(110,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(110,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX2:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(110,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX2:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_CLOSE_CHAT_SESSION"] )



g_pStaticMessenger_NickName = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMessenger_NickName )
g_pStaticMessenger_NickName:SetName( "StaticMessenger_NickName" )

g_pStaticMessenger_NickName:AddString
{
	MSG 			= STR_ID_1127,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(58,13)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


