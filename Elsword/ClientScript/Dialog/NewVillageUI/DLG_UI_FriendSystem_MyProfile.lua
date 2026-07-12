-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Profile_System" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( PROFILE_MANAGER_UI_MSG["PMUM_CLOSE"] )

-- g_pUIDialog:SetModal( true )
-- g_pUIDialog:SetFront( true )
-- --g_pUIDialog:SetEnableMoveByDrag( true )
-- --g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )
-- g_pUIDialog:SetCloseCustomUIEventID( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CLOSE"] )



g_pStaticProfile = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticProfile )
g_pStaticProfile:SetName( "Profile" )


---------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Large2_Top" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Large2_Middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 165,
	"LEFT_TOP		= D3DXVECTOR2(0,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Large2_Bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,193)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------BG2


g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Medium2_Top8" )

g_pPicture_bg4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Medium2_Middle" )

g_pPicture_bg5:SetPoint
{
    ADD_SIZE_Y = 108,
	"LEFT_TOP		= D3DXVECTOR2(11,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg6 = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_bg6 )

g_pPicture_bg6:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Medium2_Bottom" )

g_pPicture_bg6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------캐릭터 초상화 백판
g_pPicture_bg7 = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_bg7 )

g_pPicture_bg7:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Bg_Character_Back" )

g_pPicture_bg7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,103)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------캐릭터 초상화 위치 할 곳
g_pPicture_bg8 = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_bg8 )

g_pPicture_bg8:SetTex( "DLG_UI_Common_Texture68_NEW.TGA", "ARA_LH_MEDIUM" )

g_pPicture_bg8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(23,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------title
----------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title03.tga", "Title_MyProfile" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(9,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

----------------성별 아이콘 위치 할 곳

g_pPicture_gender = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_gender )

g_pPicture_gender:SetTex( "DLG_UI_Button20_NEW.tga", "Bt_FeMale_Over" )

g_pPicture_gender:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(25,113)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------나이 위치 할 곳
g_pStaticAge = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAge )
g_pStaticAge:SetName( "Age" )
g_pStaticAge:AddString
{
	 -- MSG 			= "29세",
	FONT_INDEX		= XUF_DODUM_11_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(44,116)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",--노란색
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--[[
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
-------------------------BAR(실제 길이 2px)

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticProfile:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 360,
	"LEFT_TOP		= D3DXVECTOR2(18,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
]]--


--------------------------------------------------------소제목 모음--------------------------------------------------------
-------------------------------------------------------- --------------------------------------------------------
g_pStaticLoginPerson = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLoginPerson )
g_pStaticLoginPerson:SetName( "g_pStaticLoginPerson" )

------------닉네임 타이틀
g_pPicturecri1 = g_pUIDialog:CreatePicture()
g_pStaticLoginPerson:AddPicture( g_pPicturecri1 )
g_pPicturecri1:SetTex( "DLG_UI_Title03.TGA", "STitle_Nickname" )
g_pPicturecri1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(85,70)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStatic_NickName = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_NickName )
g_pStatic_NickName:SetName( "NickName" )
g_pStatic_NickName:AddString
{
	 -- MSG 			= "[아이디여섯자]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(140,70)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",--노란색
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------------레벨 타이틀
g_pPicturecri2 = g_pUIDialog:CreatePicture()
g_pStaticLoginPerson:AddPicture( g_pPicturecri2 )
g_pPicturecri2:SetTex( "DLG_UI_Title03.TGA", "STitle_Lv" )
g_pPicturecri2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(85,92)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStatic_Level = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Level )
g_pStatic_Level:SetName( "Level" )
g_pStatic_Level:AddString
{
	 -- MSG 			= "[000]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(140,92)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",--노란색
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------------사는 곳 타이틀
g_pPicturecri3 = g_pUIDialog:CreatePicture()
g_pStaticLoginPerson:AddPicture( g_pPicturecri3 )
g_pPicturecri3:SetTex( "DLG_UI_Title03.TGA", "STitle_City" )
g_pPicturecri3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(85,114)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStatic_Area = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Area )
g_pStatic_Area:SetName( "Area" )
g_pStatic_Area:AddString
{
	 -- MSG 			= "[000]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(140,114)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",--노란색
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---자기 소개 글
-------------자기 소개글  Bg
g_pPicturecri4 = g_pUIDialog:CreatePicture()
g_pStaticLoginPerson:AddPicture( g_pPicturecri4 )
g_pPicturecri4:SetTex( "DLG_UI_Button20_NEW.TGA", "Chatbox" )
g_pPicturecri4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(25,148)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

---자기 소개글 텍스트 입력 박스
g_pStatic_Introduce = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Introduce )
g_pStatic_Introduce:SetName( "Introduce" )
g_pStatic_Introduce:AddString
{
	 -- MSG 			= "[000]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2( 27,153 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- g_pIMEPartyName = g_pUIDialog:CreateIMEEditBox()
-- g_pUIDialog:AddControl( g_pIMEPartyName )
-- g_pIMEPartyName:SetName( "IMEPartyName" )
-- g_pIMEPartyName:SetTextPoint
-- {
	-- USE_TEXTURE_SIZE= FALSE,
	-- "LEFT_TOP				= D3DXVECTOR2( 27,150 )",
	-- "RIGHT_BOTTOM		= D3DXVECTOR2( 251,166 )",
	-- "COLOR					= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME			= 0.0,
-- }
-- g_pIMEPartyName:SetFont( XF_DODUM_11_NORMAL )
-- g_pIMEPartyName:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
-- g_pIMEPartyName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
-- g_pIMEPartyName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
-- g_pIMEPartyName:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
-- g_pIMEPartyName:SetCustomMsgEnter( PROFILE_MANAGER_UI_MSG["UMUI_INVITE_PARTY_NAME"] )
------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

-----EXIT  버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(245,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245-4,15-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(245-3,15-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX:SetCustomMsgMouseUp( PROFILE_MANAGER_UI_MSG["PMUM_CLOSE"] )

-----수정  버튼
g_pButtonRe = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRe )
g_pButtonRe:SetName( "button_change" )
g_pButtonRe:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Edit" )

g_pButtonRe:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Edit_Over" )

g_pButtonRe:SetDownTex( "DLG_UI_Button20_NEW.tga", "Bt_Edit_Over" )

g_pButtonRe:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(216,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRe:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(216,15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRe:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(216+1,15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRe:SetCustomMsgMouseUp( PROFILE_MANAGER_UI_MSG["PMUM_PROFILE_CHANGE"] )






