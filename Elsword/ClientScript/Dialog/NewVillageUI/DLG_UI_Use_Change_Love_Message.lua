-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Cash_Shop_Popup_Present" )
g_pUIDialog:SetPos( 389,335 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( RELATIONSHIP_UI_MESSAGE["RUM_COUPLE_CHANGE_LOVE_MESSAGE_CANCEL"] )


---------static
g_pStaticCashShop_PresentWindow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow )
g_pStaticCashShop_PresentWindow:SetName( "g_pStaticCashShop_PresentWindow" )

------ 배경
g_pPictureCashshop_PresentWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG1 )

g_pPictureCashshop_PresentWindow_BG1:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_Couple_NicknameInput" )

g_pPictureCashshop_PresentWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------ 애칭 입력 공지
g_pPictureCashshop_PresentWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG1 )

g_pPictureCashshop_PresentWindow_BG1:SetTex( "DLG_UI_Common_Texture_MarriageSystem_04.TGA", "Bg_Nickname_Notice" )

g_pPictureCashshop_PresentWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
---------------------------------버튼 모음


------확인 버튼--
g_pButtonFriend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonFriend )
g_pButtonFriend:SetName( "Buy_Window" )
g_pButtonFriend:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Complete_Normal" )

g_pButtonFriend:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Complete_Over" )

g_pButtonFriend:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Complete_Over" )

g_pButtonFriend:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(197,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(197,71)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(197+1,71+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_COUPLE_CHANGE_LOVE_MESSAGE_OK"]  )

------나가기 버튼--
g_pButtonGuild = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild )
g_pButtonGuild:SetName( "Guild" )
g_pButtonGuild:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Couple_X_Normal" )

g_pButtonGuild:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Couple_X_Over" )

g_pButtonGuild:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Couple_X_Over" )

g_pButtonGuild:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(230,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(230,20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(230+1,20+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_COUPLE_CHANGE_LOVE_MESSAGE_CANCEL"]  )



-------------------------------------------스트링 입력
-----------------------커플링 입력 시 공지 부분

g_pStatic_TITLE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TITLE )
g_pStatic_TITLE:SetName( "StaticNoticeMsgUp" )

g_pStatic_TITLE:AddString
{
--	MSG 			= STR_ID_17819, --"[커플 신청할 유저의 닉네임을 입력하세요.]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(50,55)",
	"COLOR			= D3DXCOLOR(0.9,0.2,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
}

-----------------------애칭 입력 시 공지 부분

g_pStatic_TITLE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TITLE )
g_pStatic_TITLE:SetName( "StaticNoticeMsgDown" )

g_pStatic_TITLE:AddString
{
--	MSG 			= STR_ID_17819, --"[커플 신청할 유저의 닉네임을 입력하세요.]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(76,39)",
	"COLOR			= D3DXCOLOR(0.9,0.2,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
}



g_pIME_Nickname= g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Nickname )
g_pIME_Nickname:SetName( "IME_Nicname" )
g_pIME_Nickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(50,75)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(186,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Nickname:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Nickname:SetTextColor( 0.3, 0.3, 0.3, 1.0 )
g_pIME_Nickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Nickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Nickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Nickname:SetByteLimit( 16 )	
g_pIME_Nickname:SetCustomMsgEnter ( RELATIONSHIP_UI_MESSAGE["RUM_COUPLE_CHANGE_LOVE_MESSAGE_OK"] )

