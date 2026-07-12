-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "LocalMapPasswordCheck" )
g_pUIDialog:SetPos( 250,300 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )





g_pStaticPopupPassword = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPopupPassword )
g_pStaticPopupPassword:SetName( "StaticPopupPassword" )
g_pPicturePopupWindow = g_pUIDialog:CreatePicture()
g_pStaticPopupPassword:AddPicture( g_pPicturePopupWindow )
g_pPicturePopupWindow:SetTex( "DLG_Popup.tga", "MsgBack" )

g_pPicturePopupWindow:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(440,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME    		= 0.0,
}

g_pStaticPopupPassword:AddString
{
	MSG 			= STR_ID_1107,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(150,30)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




g_pPicturePopupPassword= g_pUIDialog:CreatePicture()
g_pStaticPopupPassword:AddPicture( g_pPicturePopupPassword )


g_pPicturePopupPassword:SetTex( "DLG_Popup.tga", "PopupPassword" )

g_pPicturePopupPassword:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(110,51)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(337,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}

g_pIMEEditBoxPopupPassword = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxPopupPassword )
g_pIMEEditBoxPopupPassword:SetName( "EditBoxPassword" )
g_pIMEEditBoxPopupPassword:SetTextPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(115,55)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(333,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxPopupPassword:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxPopupPassword:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxPopupPassword:SetSelectedTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxPopupPassword:SetSelectedBackColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxPopupPassword:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxPopupPassword:SetTabControlName( "EditBoxPassword" );
g_pIMEEditBoxPopupPassword:SetCustomMsgEnter( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_ROOM_PASSWORD_CHECK_OK"] )




g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Ok" )
g_pButton:SetNormalTex( "DLG_Popup.tga", "OKButtonNormal" )

g_pButton:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(250,94)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(303,126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetOverTex( "DLG_Popup.tga", "OKButtonOver" )

g_pButton:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(247,91)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(306,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetDownTex( "DLG_Popup.tga", "OKButtonDown" )

g_pButton:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(249,93)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(304,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_ROOM_PASSWORD_CHECK_OK"]  )


g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Cancel" )
g_pButton:SetNormalTex( "DLG_Popup.tga", "CancelButtonNormal" )

g_pButton:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(320,94)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(370,126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetOverTex( "DLG_Popup.tga", "CancelButtonOver" )

g_pButton:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(317,91)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(373,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetDownTex( "DLG_Popup.tga", "CancelButtonDown" )

g_pButton:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(319,93)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(371,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_ROOM_PASSWORD_CHECK_CANCEL"]  )
