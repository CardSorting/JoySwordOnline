-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Mail_View_System" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_3"] )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( POSTBOX_VIEW_UI_MSG["PBVUM_CLOSE"]  )

--BG
g_pStaticpaper_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpaper_window )
g_pStaticpaper_window:SetName( "g_pStaticpaper_window" )



g_pPicturepaper_window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG1 )

g_pPicturepaper_window_BG1:SetTex( "DLG_UI_Common_Texture_MarriageSystem_01.TGA", "Bg_WeddingCard" )

g_pPicturepaper_window_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--물품 받는 부분ADD SLOT
g_pPicturepaper_window_BG8 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG8 )

g_pPicturepaper_window_BG8:SetTex( "DLG_Common_New_Texture61.TGA", "SLOT_SMALL" )

g_pPicturepaper_window_BG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+44,371+10)",
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
g_pButtonReply:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Wedding_Receive_Normal" )

g_pButtonReply:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Wedding_Receive_Over" )

g_pButtonReply:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Wedding_Receive_Over" )

g_pButtonReply:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(64,444)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonReply:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(64,444)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReply:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(64+1,444+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReply:SetCustomMsgMouseUp( POSTBOX_VIEW_UI_MSG["PBVUM_GET_ITEM"] )

---삭제버튼
g_pButtonDelete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDelete )
g_pButtonDelete:SetName( "Delete" )
g_pButtonDelete:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Wedding_Delete_Normal" )

g_pButtonDelete:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Wedding_Delete_Over" )

g_pButtonDelete:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Wedding_Delete_Over" )

g_pButtonDelete:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(204,444)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(204,444)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(204+1,444+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete:SetCustomMsgMouseUp( POSTBOX_VIEW_UI_MSG["PBVUM_DELETE"] )


---창닫기버튼
g_pButtonClose = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClose )
g_pButtonClose:SetName( "Close" )
g_pButtonClose:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Wedding_X_Normal" )

g_pButtonClose:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Wedding_X_Over" )

g_pButtonClose:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Wedding_X_Over" )

g_pButtonClose:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(331,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(331,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(331+1,11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetCustomMsgMouseUp( POSTBOX_VIEW_UI_MSG["PBVUM_CLOSE"] )

--------------내용_상단
--보낸이
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font1" )
g_pStaticpost_window_Font:AddString
{
	--MSG 			= "[08.08.19] 엘소드짱",
 	FONT_INDEX      = XUF_DODUM_15_BOLD,
 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_REFT"],
	"POS 			= D3DXVECTOR2(131,124)",
	"COLOR			= D3DXCOLOR(1.0,0.8,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--제목
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font2" )
g_pStaticpost_window_Font:AddString
{
	--MSG 			= "고구마 장사가 힘들어요",
 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(131,151)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

--------------내용_하단
--유저 메시지 부분
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font3" )
g_pStaticpost_window_Font:AddString
{
	--MSG 			= "엘소드 황금무기, 아이샤 황금무기..",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(57+5,273)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
g_pStaticpost_window_Font:SetShow ( false )

g_pIME_Edit_Message = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Edit_Message )
g_pIME_Edit_Message:SetName( "IME_Edit_Message" )
g_pIME_Edit_Message:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(60,260)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(60+240,260+80)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Edit_Message:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Edit_Message:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_Edit_Message:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Edit_Message:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIME_Edit_Message:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_pIME_Edit_Message:SetMultiLineOption(0, 0)
g_pIME_Edit_Message:SetWidthLimit(240)
g_pIME_Edit_Message:SetLineLimit(13)
g_pIME_Edit_Message:SetByteLimit(400)

