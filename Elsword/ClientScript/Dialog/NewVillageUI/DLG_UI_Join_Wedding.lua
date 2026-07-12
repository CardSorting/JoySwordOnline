-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Mail_View_System" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetPos( 324-100-70,128 )
g_pUIDialog:SetCloseCustomUIEventID( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_USE_ITEM_CANCEL"] )

--BG
g_pStaticpaper_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpaper_window )
g_pStaticpaper_window:SetName( "g_pStaticpaper_window" )



g_pPicturepaper_window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG1 )

g_pPicturepaper_window_BG1:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_InviteCard" )

g_pPicturepaper_window_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--예식장 이미지 부분
g_pPicturepaper_window_BG8 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG8 )

g_pPicturepaper_window_BG8:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bt_InviteWedding_Small_Sander" )

g_pPicturepaper_window_BG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(29+2,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--예식장 이미지 부분
g_pPicturepaper_window_Ruben = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_Ruben )

g_pPicturepaper_window_Ruben:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bt_InviteWedding_Small_Ruben" )

g_pPicturepaper_window_Ruben:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(29+2,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--예약권or 첩첩장 부분
g_pPicturepaper_window_BG8 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG8 )
g_pPicturepaper_window_BG8:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_Title_Reserve" )
g_pPicturepaper_window_BG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(214,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPicturepaper_window_BG9 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG9 )

g_pPicturepaper_window_BG9:SetTex( "DLG_Common_New_Texture61.TGA", "SLOT_SMALL" )

g_pPicturepaper_window_BG9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+45,371)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepaper_window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG10 )

g_pPicturepaper_window_BG10:SetTex( "DLG_Common_New_Texture61.TGA", "SLOT_SMALL" )

g_pPicturepaper_window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+90,371)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepaper_window_BG11 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG11 )

g_pPicturepaper_window_BG11:SetTex( "DLG_Common_New_Texture61.TGA", "SLOT_SMALL" )

g_pPicturepaper_window_BG11:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+135,371)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepaper_window_BG12 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG12 )

g_pPicturepaper_window_BG12:SetTex( "DLG_Common_New_Texture61.TGA", "SLOT_SMALL" )

g_pPicturepaper_window_BG12:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+180,371)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]
---HELP 버튼
g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )
g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )
g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(438,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(438-4,13-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
    ADD_SIZE_X = -2 ,
    ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(438-4+1,13-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(290)


---결혼식장 바로가기 버튼
g_pButtonJoinWedding = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoinWedding )
g_pButtonJoinWedding:SetName( "Delete" )
g_pButtonJoinWedding:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Wedding_WeddingShortcut_Normal" )

g_pButtonJoinWedding:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Wedding_WeddingShortcut_Over" )

g_pButtonJoinWedding:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Wedding_WeddingShortcut_Over" )

g_pButtonJoinWedding:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(250,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoinWedding:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(250,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoinWedding:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(250+1,248+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoinWedding:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_USE_ITEM_OK"] )




---창닫기버튼
g_pButtonClose = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClose )
g_pButtonClose:SetName( "Close" )
g_pButtonClose:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Wedding_X_Normal" )

g_pButtonClose:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Wedding_X_Over" )

g_pButtonClose:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Wedding_X_Over" )

g_pButtonClose:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(466,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(466,14)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(466+1,14+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_USE_ITEM_CANCEL"] )

--------------내용_상단

--신랑
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticBoyFont" )
g_pStaticpost_window_Font:AddString
{
--	MSG 			= STR_ID_4620,
 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(307,67)",
	"COLOR			= D3DXCOLOR(0.6,0.4,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}


--신부
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticGirlFont" )
g_pStaticpost_window_Font:AddString
{
--	MSG 			= STR_ID_4620,
 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(307,67+19)",
	"COLOR			= D3DXCOLOR(0.6,0.4,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

--신랑
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font3" )
g_pStaticpost_window_Font:AddString
{
--	MSG 			= STR_ID_4620,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(307,67)",
	"COLOR			= D3DXCOLOR(0.6,0.4,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

--예식 날짜
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font2" )
g_pStaticpost_window_Font:AddString
{
--	MSG				= STR_ID_4620,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(24+6,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

--예식 날짜_카운트
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font4" )
g_pStaticpost_window_Font:AddString
{
--	MSG 			= STR_ID_4620,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(26+5,109)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}




--------------내용_하단
--유저 메시지 부분
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font1" )
g_pStaticpost_window_Font:AddString
{
--	MSG 			= STR_ID_4620,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(184+40+70,180)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

-- g_pIME_Edit_Message = g_pUIDialog:CreateIMEEditBox()
-- g_pUIDialog:AddControl( g_pIME_Edit_Message )
-- g_pIME_Edit_Message:SetName( "IME_Edit_Message" )
-- g_pIME_Edit_Message:SetTextPoint
-- {
	-- USE_TEXTURE_SIZE= FALSE,
	-- "LEFT_TOP		= D3DXVECTOR2(30,148-6)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(337,363-6)",
	-- "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pIME_Edit_Message:SetFont( XF_DODUM_15_NORMAL )
-- g_pIME_Edit_Message:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
-- g_pIME_Edit_Message:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
-- g_pIME_Edit_Message:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
-- g_pIME_Edit_Message:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

-- g_pIME_Edit_Message:SetMultiLineOption(0, 0)
-- g_pIME_Edit_Message:SetWidthLimit(300)
-- g_pIME_Edit_Message:SetLineLimit(13)
-- g_pIME_Edit_Message:SetByteLimit(400)


--[[
----- postbox slot ---------------------------------------------------------
slotID = 102
pPostSlot = g_pPostBoxInventory:CreateItemSlot()
g_pPostBoxInventory:AddSlot( pPostSlot )

tempX = 119 + 250 + 274
tempY = 371 + 144

pPostSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_POST_RECEIVE"],

	SORT_TYPE	= 0,
	SLOT_ID		= slotID,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	--SLOT_BACK_DLG_FILE = "DLG_Unit_State_Inventory_Slot_Back.lua",

	"POS		= D3DXVECTOR2( tempX ,tempY )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}
--]]
