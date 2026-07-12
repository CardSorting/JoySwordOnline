-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- #ifdef NEW_HACKSHIELD_RULE_AGREEMENT

g_pStaticheater_use = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticheater_use )
g_pStaticheater_use:SetName( "g_pStaticheater_use" )

g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

g_pUIDialog:SetPos( 196, 34 )

-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG_TOP_LEFT" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG_TOP_MIDDLE" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X		= 590,

	"LEFT_TOP		= D3DXVECTOR2(20,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG_TOP_RIGHT" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(612,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG_MIDDLE_LEFT" )

g_pPicture_BG1:SetPoint
{
    ADD_SIZE_Y = 669,
	"LEFT_TOP		= D3DXVECTOR2(0,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG_MIDDLE_MIDDLE" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X		= 590,
    ADD_SIZE_Y = 669,
	"LEFT_TOP		= D3DXVECTOR2(20,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG_MIDDLE_RIGHT" )

g_pPicture_BG1:SetPoint
{
    ADD_SIZE_Y = 669,
	"LEFT_TOP		= D3DXVECTOR2(612,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1)

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG_BOTTOM_LEFT" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,685)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG_BOTTOM_MIDDLE" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X		= 590,

	"LEFT_TOP		= D3DXVECTOR2(20,685)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG_BOTTOM_RIGHT" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(612,685)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_title)

g_pPicture_title:SetTex( "DLG_UI_Title_EU02.tga", "ALLGEMEINE" )

g_pPicture_title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(11+3,13+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBar = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPictureBar)

g_pPictureBar:SetTex( "DLG_UI_Common_Texture01.tga", "bar1" )

g_pPictureBar:SetPoint
{
    ADD_SIZE_X = 606,
	"LEFT_TOP		= D3DXVECTOR2(11,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----BG2
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG2_TOP_LEFT" )

g_pPicture_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(15,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG2_TOP_MIDDLE" )

g_pPicture_BG2:SetPoint
{
	ADD_SIZE_X		= 560,

	"LEFT_TOP		= D3DXVECTOR2(35,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG2_TOP_RIGHT" )

g_pPicture_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(597,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG2_MIDDLE_LEFT" )

g_pPicture_BG2:SetPoint
{
    --ADD_SIZE_Y = 546,
    ADD_SIZE_Y = 568,
	"LEFT_TOP		= D3DXVECTOR2(15,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG2_MIDDLE_MIDDLE" )

g_pPicture_BG2:SetPoint
{
	ADD_SIZE_X		= 560,
     --ADD_SIZE_Y = 546,
     ADD_SIZE_Y = 568,
	"LEFT_TOP		= D3DXVECTOR2(35,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG2_MIDDLE_RIGHT" )

g_pPicture_BG2:SetPoint
{
     --ADD_SIZE_Y = 546,
     ADD_SIZE_Y = 568,
	"LEFT_TOP		= D3DXVECTOR2(597,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2)

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG2_BOTTOM_LEFT" )

g_pPicture_BG2:SetPoint
{

	--"LEFT_TOP		= D3DXVECTOR2(15,608)",
	"LEFT_TOP		= D3DXVECTOR2(15,630)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2)

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG2_BOTTOM_MIDDLE" )

g_pPicture_BG2:SetPoint
{
	ADD_SIZE_X		= 560,

	--"LEFT_TOP		= D3DXVECTOR2(35,608)",
	"LEFT_TOP		= D3DXVECTOR2(35,630)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2)

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "RULE_AGREEMENT_BG2_BOTTOM_RIGHT" )

g_pPicture_BG2:SetPoint
{

	--"LEFT_TOP		= D3DXVECTOR2(597,608)",
	"LEFT_TOP		= D3DXVECTOR2(597,630)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPicture_feel = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_feel)

g_pPicture_feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_feel:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(96,624)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_helper = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_helper )
g_pStatic_helper:SetName( "helper" )

g_pStatic_helper:AddString
{
	MSG 			= STR_ID_4569,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(116,626)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]




----------------확인 버튼

g_pButtonOK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOK )
g_pButtonOK:SetName( "OK_button" )
g_pButtonOK:SetNormalTex( "DLG_UI_Button_EU01.tga", "HACKSHIELD_AGREEMENT_OK_NORMAL" )

g_pButtonOK:SetOverTex( "DLG_UI_Button_EU01.tga", "HACKSHIELD_AGREEMENT_OK_OVER" )

g_pButtonOK:SetDownTex( "DLG_UI_Button_EU01.tga", "HACKSHIELD_AGREEMENT_OK_OVER" )

g_pButtonOK:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(138+90,649)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(135+90-1,646-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(135+1+90-1,646+1-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetCustomMsgMouseUp( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_NEW_HACKSHIELD_RULE_AGREEMENT"] )


------------------ 취소 버튼




g_pButtoncancle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncancle )
g_pButtoncancle:SetName( "cancle_button" )
g_pButtoncancle:SetNormalTex( "DLG_UI_Button_EU01.tga", "HACKSHIELD_HACKSHIELD_AGREEMENT_CANCLE_NORMAL" )

g_pButtoncancle:SetOverTex( "DLG_UI_Button_EU01.tga", "HACKSHIELD_HACKSHIELD_AGREEMENT_CANCLE_OVER" )

g_pButtoncancle:SetDownTex( "DLG_UI_Button_EU01.tga", "HACKSHIELD_HACKSHIELD_AGREEMENT_CANCLE_OVER" )

g_pButtoncancle:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(228+90,649)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(225+90-1,646-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(225+1+90-1,646+1-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetCustomMsgMouseUp( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_EXIT"] )


g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_Rule" )

g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetTextTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pListBox:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pListBox:SetScollBarTrackTex( "DLG_UI_Common_Texture01.TGA", "gray_bar" )

g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 21 )
g_pListBox:SetPos( 15, 61-9 )
g_pListBox:SetSize( 580,546+18+22 )

-- #endif NEW_HACKSHIELD_RULE_AGREEMENT