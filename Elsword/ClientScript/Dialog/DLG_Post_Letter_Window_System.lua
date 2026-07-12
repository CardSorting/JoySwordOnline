-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Mail_View_System" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_3"] )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( POSTBOX_VIEW_UI_MSG["PBVUM_CLOSE"]  )

--BG
g_pStaticpaper_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpaper_window )
g_pStaticpaper_window:SetName( "g_pStaticpaper_window" )



g_pPicturepaper_window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG1 )

g_pPicturepaper_window_BG1:SetTex( "DLG_Common_New_Texture74.TGA", "system_letter_bg" )

g_pPicturepaper_window_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--보낸이
g_pPicturepaper_window_BG2 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG2 )

g_pPicturepaper_window_BG2:SetTex( "DLG_Common_New_Texture67.TGA", "TEXT_FROM" )

g_pPicturepaper_window_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,76-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--제목
g_pPicturepaper_window_BG3 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG3 )

g_pPicturepaper_window_BG3:SetTex( "DLG_Common_New_Texture67.TGA", "TEXT_TOPIC" )

g_pPicturepaper_window_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,95-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--첨부
g_pPicturepaper_window_BG4 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG4 )

g_pPicturepaper_window_BG4:SetTex( "DLG_Common_New_Texture67.TGA", "TEXT_APPEND" )

g_pPicturepaper_window_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,114-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--첨부물품
g_pPicturepaper_window_BG5 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG5 )

g_pPicturepaper_window_BG5:SetTex( "DLG_Common_New_Texture61.TGA", "ADD_ITEM" )

g_pPicturepaper_window_BG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,373)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--ADD SLOT
g_pPicturepaper_window_BG8 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG8 )

g_pPicturepaper_window_BG8:SetTex( "DLG_Common_New_Texture61.TGA", "SLOT_SMALL" )

g_pPicturepaper_window_BG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119,371)",
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

--답장버튼
g_pButtonReply = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonReply )
g_pButtonReply:SetName( "Reply" )
g_pButtonReply:SetNormalTex( "DLG_Common_New_Texture67.tga", "ANSWER_NORMAL" )

g_pButtonReply:SetOverTex( "DLG_Common_New_Texture67.tga", "ANSWER_OVER" )

g_pButtonReply:SetDownTex( "DLG_Common_New_Texture67.tga", "ANSWER_OVER" )

g_pButtonReply:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(77,447-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonReply:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(73,443-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReply:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(73+1,443-11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReply:SetCustomMsgMouseUp( POSTBOX_VIEW_UI_MSG["PBVUM_REPLY"] )

---삭제버튼
g_pButtonDelete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDelete )
g_pButtonDelete:SetName( "Delete" )
g_pButtonDelete:SetNormalTex( "DLG_Common_New_Texture67.tga", "DELETE_NORMAL" )

g_pButtonDelete:SetOverTex( "DLG_Common_New_Texture67.tga", "DELETE_OVER" )

g_pButtonDelete:SetDownTex( "DLG_Common_New_Texture67.tga", "DELETE_OVER" )

g_pButtonDelete:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(186,447-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(182,443-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(182+1,443-11+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete:SetCustomMsgMouseUp( POSTBOX_VIEW_UI_MSG["PBVUM_DELETE"] )


---창닫기버튼
g_pButtonClose = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClose )
g_pButtonClose:SetName( "Close" )
g_pButtonClose:SetNormalTex( "DLG_Common_New_Texture67.tga", "EXIT_NORMAL" )

g_pButtonClose:SetOverTex( "DLG_Common_New_Texture67.tga", "EXIT_OVER" )

g_pButtonClose:SetDownTex( "DLG_Common_New_Texture67.tga", "EXIT_OVER" )

g_pButtonClose:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(322,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(322,18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(322+1,18+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetCustomMsgMouseUp( POSTBOX_VIEW_UI_MSG["PBVUM_CLOSE"] )

--------------내용_상단
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font1" )
g_pStaticpost_window_Font:AddString
{
	--MSG 			= "[08.08.19] 엘소드짱",
 	FONT_INDEX      = XUF_DODUM_15_BOLD,
 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_REFT"],
	"POS 			= D3DXVECTOR2(84,76-4)",
	"COLOR			= D3DXCOLOR(1.0,0.8,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font2" )
g_pStaticpost_window_Font:AddString
{
	--MSG 			= "고구마 장사가 힘들어요",
 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_REFT"],
	"POS 			= D3DXVECTOR2(84,95-3)",
	"COLOR			= D3DXCOLOR(1.0,0.8,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font3" )
g_pStaticpost_window_Font:AddString
{
	--MSG 			= "엘소드 황금무기, 아이샤 황금무기..",
 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_REFT"],
	"POS 			= D3DXVECTOR2(84,114-2)",
	"COLOR			= D3DXCOLOR(1.0,0.08,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------내용_하단
g_pIME_Edit_Message = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Edit_Message )
g_pIME_Edit_Message:SetName( "IME_Edit_Message" )
g_pIME_Edit_Message:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(30,148-6)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(337,363-6)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Edit_Message:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Edit_Message:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_Edit_Message:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Edit_Message:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIME_Edit_Message:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_pIME_Edit_Message:SetMultiLineOption(0, 0)
g_pIME_Edit_Message:SetWidthLimit(300)
g_pIME_Edit_Message:SetLineLimit(13)
g_pIME_Edit_Message:SetByteLimit(400)


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
