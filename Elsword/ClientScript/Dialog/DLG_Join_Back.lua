-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Join_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )

g_pStaticJoinBG = g_pUIDialog:CreateStatic()
g_pStaticJoinBG:SetName( "StaticJoinBG" )

g_pPictureJoinBG = g_pUIDialog:CreatePicture()
g_pStaticJoinBG:AddPicture( g_pPictureJoinBG )
g_pUIDialog:AddControl( g_pStaticJoinBG )

g_pPictureJoinBG:SetTex( "DLG_Join0.tga", "JoinBG" )

g_pPictureJoinBG:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(1024,0)",
	"LEFT_BOTTOM	= D3DXVECTOR2(0,768)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pIMEEditBoxJoinID = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxJoinID )
g_pIMEEditBoxJoinID:SetName( "IMEEditBoxJoinID" )
g_pIMEEditBoxJoinID:SetTextPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(122,144)",
	"RIGHT_TOP		= D3DXVECTOR2(315,144)",
	"LEFT_BOTTOM	= D3DXVECTOR2(122,161)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(315,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxJoinID:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxJoinID:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxJoinID:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxJoinID:SetSelectedBackColor( 1.0, 1.0, 0.0, 1.0 )
g_pIMEEditBoxJoinID:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxJoinID:SetTabControlName( "EditBoxJoinPassword" );

g_pEditBoxJoinPassword = g_pUIDialog:CreateEditBox()
g_pUIDialog:AddControl( g_pEditBoxJoinPassword )
g_pEditBoxJoinPassword:SetName( "EditBoxJoinPassword" )
g_pEditBoxJoinPassword:SetTextPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(122,192)",
	"RIGHT_TOP		= D3DXVECTOR2(315,192)",
	"LEFT_BOTTOM	= D3DXVECTOR2(122,209)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(315,209)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pEditBoxJoinPassword:SetFont( XF_DODUM_15_NORMAL )
g_pEditBoxJoinPassword:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pEditBoxJoinPassword:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pEditBoxJoinPassword:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pEditBoxJoinPassword:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pEditBoxJoinPassword:SetTabControlName( "IMEEditBoxJoinName" );
g_pEditBoxJoinPassword:SetHideChar( "*" )

g_pIMEEditBoxJoinName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxJoinName )
g_pIMEEditBoxJoinName:SetName( "IMEEditBoxJoinName" )
g_pIMEEditBoxJoinName:SetTextPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(122,240)",
	"RIGHT_TOP		= D3DXVECTOR2(315,240)",
	"LEFT_BOTTOM	= D3DXVECTOR2(122,258)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(315,258)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxJoinName:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxJoinName:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxJoinName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxJoinName:SetSelectedBackColor( 1.0, 1.0, 0.0, 1.0 )
g_pIMEEditBoxJoinName:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxJoinName:SetTabControlName( "IMEEditBoxJoinNickName" );

g_pIMEEditBoxJoinNickName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxJoinNickName )
g_pIMEEditBoxJoinNickName:SetName( "IMEEditBoxJoinNickName" )
g_pIMEEditBoxJoinNickName:SetTextPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(122,287)",
	"RIGHT_TOP		= D3DXVECTOR2(315,287)",
	"LEFT_BOTTOM	= D3DXVECTOR2(122,305)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(315,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxJoinNickName:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxJoinNickName:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxJoinNickName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxJoinNickName:SetSelectedBackColor( 1.0, 1.0, 0.0, 1.0 )
g_pIMEEditBoxJoinNickName:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxJoinNickName:SetTabControlName( "IMEEditBoxJoinID" );




g_pButtonJoinOK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoinOK )
g_pButtonJoinOK:SetName( "ButtonJoinOK" )
g_pButtonJoinOK:SetNormalTex( "DLG_Join1.tga", "ButtonJoinOK_Over" )

g_pButtonJoinOK:SetOverTex( "DLG_Join1.tga", "ButtonJoinOK_Over" )

g_pButtonJoinOK:SetDownTex( "DLG_Join1.tga", "ButtonJoinOK_Down" )

g_pButtonJoinOK:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(143,347)",
	"RIGHT_TOP		= D3DXVECTOR2(289,347)",
	"LEFT_BOTTOM	= D3DXVECTOR2(143,429)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(289,429)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoinOK:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(139,343)",
	"RIGHT_TOP		= D3DXVECTOR2(295,343)",
	"LEFT_BOTTOM	= D3DXVECTOR2(139,434)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(295,434)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoinOK:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(139,343)",
	"RIGHT_TOP		= D3DXVECTOR2(295,343)",
	"LEFT_BOTTOM	= D3DXVECTOR2(139,434)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(295,434)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoinOK:SetCustomMsgMouseUp( STATE_JOIN_UI_CUSTOM_MSG["SJUCM_MEMBER_JOIN"] )




g_pButtonBackToLogin = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBackToLogin )
g_pButtonBackToLogin:SetName( "ButtonBackToLogin" )
g_pButtonBackToLogin:SetNormalTex( "DLG_Join2.tga", "ButtonBackToLogin_Normal" )

g_pButtonBackToLogin:SetOverTex( "DLG_Join2.tga", "ButtonBackToLogin_Over" )

g_pButtonBackToLogin:SetDownTex( "DLG_Join2.tga", "ButtonBackToLogin_Down" )

g_pButtonBackToLogin:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(143,454)",
	"RIGHT_TOP		= D3DXVECTOR2(289,454)",
	"LEFT_BOTTOM	= D3DXVECTOR2(143,537)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(289,537)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBackToLogin:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(139,450)",
	"RIGHT_TOP		= D3DXVECTOR2(295,450)",
	"LEFT_BOTTOM	= D3DXVECTOR2(139,541)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(295,541)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBackToLogin:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT			= FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(139,450)",
	"RIGHT_TOP		= D3DXVECTOR2(295,450)",
	"LEFT_BOTTOM	= D3DXVECTOR2(139,541)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(295,541)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBackToLogin:SetCustomMsgMouseUp( STATE_JOIN_UI_CUSTOM_MSG["SJUCM_BACK_TO_LOGIN"] )




