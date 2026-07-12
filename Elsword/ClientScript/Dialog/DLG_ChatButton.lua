-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_ChatButton" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetCloseCustomUIEventID( PARTYMSGER_UI_MSG["PUM_CHAT_WINDOW_CLOSE"] )










g_pButtonHigh_Up = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHigh_Up )
g_pButtonHigh_Up:SetName( "High_Up" )
g_pButtonHigh_Up:SetNormalTex( "DLG_Common_New_Texture13.tga", "ChatButton_Talk_Normal" )

g_pButtonHigh_Up:SetOverTex( "DLG_Common_New_Texture13.tga", "ChatButton_Talk_Over" )

g_pButtonHigh_Up:SetDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Talk_Normal" )

g_pButtonHigh_Up:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(2,492+31+135)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHigh_Up:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(2,492+31+135)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHigh_Up:SetDownPoint
{
      
     ADD_SIZE_X = -2,
 	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(3,492+32+135)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHigh_Up:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_CHAT_WINDOW_OPEN_OR_CLOSE"] )
