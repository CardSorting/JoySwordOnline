-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 320,80 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_MSG["STUCM_FIRST_GUIDE_CLOSE"] )


g_pStatic_POPUP_ARIEL = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_POPUP_ARIEL )
g_pStatic_POPUP_ARIEL:SetName( "ARIEL" )


----------아리엘
g_pPicture_POPUP_ARIEL = g_pUIDialog:CreatePicture()
g_pStatic_POPUP_ARIEL:AddPicture( g_pPicture_POPUP_ARIEL )
g_pPicture_POPUP_ARIEL:SetTex( "ARIEL_RURIEL.tga", "ARIEL_BG" )
g_pPicture_POPUP_ARIEL:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(130,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------





----------팝업
g_pPicture_DUNGEON_Bg_LINE1 = g_pUIDialog:CreatePicture()
g_pStatic_POPUP_ARIEL:AddPicture( g_pPicture_DUNGEON_Bg_LINE1 )
g_pPicture_DUNGEON_Bg_LINE1:SetTex( "POPUP_BOX_ARIEL.tga", "POPUP_BOX_ARIEL" )
g_pPicture_DUNGEON_Bg_LINE1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0+200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------





----------내용

--[[
g_pPicture_POPUP_ARIEL = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pPicture_POPUP_ARIEL )
g_pPicture_POPUP_ARIEL:SetName( "POPUP_ARIEL_Text" )
g_pPicture_POPUP_ARIEL:SetOffsetPos( -332+44, -227 )


g_pPicture_POPUP_ARIEL:AddString
{
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(330,505)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}]]--
-------------





---------확인 버튼
g_pButton_Close = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Close )
g_pButton_Close:SetName( "POPUP_ARIEL_Button_Close" )

g_pButton_Close:SetNormalTex( "DLG_UI_Button05.tga", "OK_BUTTON_NORMAL" )
g_pButton_Close:SetOverTex( "DLG_UI_Button05.tga", "OK_BUTTON_OVER" )
g_pButton_Close:SetDownTex( "DLG_UI_Button05.tga", "OK_BUTTON_OVER" )

g_pButton_Close:SetNormalPoint
{
		ADD_SIZE_X = -36,
		ADD_SIZE_Y = -12,
	"LEFT_TOP		= D3DXVECTOR2(344.5,532)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Close:SetOverPoint
{
		ADD_SIZE_X = -36,
		ADD_SIZE_Y = -12,
	"LEFT_TOP		= D3DXVECTOR2(344-3,532-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Close:SetDownPoint
{
	ADD_SIZE_X = -38,
	ADD_SIZE_Y = -14,
 	"LEFT_TOP		= D3DXVECTOR2(344-2,532-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Close:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSUCM_CLOSE_DAILY_GIFT_BOX"] )
-------------