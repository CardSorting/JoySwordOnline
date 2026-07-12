-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "PVPGameExit" )
g_pUIDialog:SetPos( 300,300 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )

g_pStaticPVPGameExitBG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVPGameExitBG )
g_pStaticPVPGameExitBG:SetName( "StaticPVPGameExitBG" )


g_pPicturePVPGameExitBG = g_pUIDialog:CreatePicture()
g_pStaticPVPGameExitBG:AddPicture( g_pPicturePVPGameExitBG )

g_pPicturePVPGameExitBG:SetTex
{
	TEX_NAME		= "DLG_Popup.tga",
	"LEFT_TOP		= D3DXVECTOR2(2,2)",
	"RIGHT_TOP		= D3DXVECTOR2(442,2)",
	"LEFT_BOTTOM		= D3DXVECTOR2(2,155)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(442,155)",
}
g_pPicturePVPGameExitBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(440,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,153)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(440,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME    		= 0.0,
}


g_pStaticPVPGameExitBG:AddString
{
	MSG 			= STR_ID_1132,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(150,30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "PVPGameExitOK" )
g_pButton:SetNormalTex( "DLG_Popup.tga", "OKButtonNormal" )

g_pButton:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(250,94)",
	"RIGHT_TOP		= D3DXVECTOR2(303,94)",
	"LEFT_BOTTOM		= D3DXVECTOR2(250,126)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(303,126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetOverTex( "DLG_Popup.tga", "OKButtonOver" )

g_pButton:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(247,91)",
	"RIGHT_TOP		= D3DXVECTOR2(306,91)",
	"LEFT_BOTTOM		= D3DXVECTOR2(247,129)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(306,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetDownTex( "DLG_Popup.tga", "OKButtonDown" )

g_pButton:SetDownPoint
{
	"LEFT_TOP		= D3DXVECTOR2(249,93)",
	"RIGHT_TOP		= D3DXVECTOR2(304,93)",
	"LEFT_BOTTOM		= D3DXVECTOR2(249,127)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(304,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButton:SetCustomMsgMouseUp( PVP_GAME_UI_CUSTOM_MSG["PGUCM_GAME_EXIT_OK"] )



g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "PVPGameExitCancel" )
g_pButton:SetNormalTex( "DLG_Popup.tga", "CancelButtonNormal" )

g_pButton:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(320,94)",
	"RIGHT_TOP		= D3DXVECTOR2(370,94)",
	"LEFT_BOTTOM		= D3DXVECTOR2(320,126)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(370,126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetOverTex( "DLG_Popup.tga", "CancelButtonOver" )

g_pButton:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(317,91)",
	"RIGHT_TOP		= D3DXVECTOR2(373,91)",
	"LEFT_BOTTOM		= D3DXVECTOR2(317,129)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(373,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetDownTex( "DLG_Popup.tga", "CancelButtonDown" )

g_pButton:SetDownPoint
{
	"LEFT_TOP		= D3DXVECTOR2(319,93)",
	"RIGHT_TOP		= D3DXVECTOR2(371,93)",
	"LEFT_BOTTOM		= D3DXVECTOR2(319,127)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(371,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton:SetCustomMsgMouseUp( PGUCM_GAME_EXIT_CANCEL )
