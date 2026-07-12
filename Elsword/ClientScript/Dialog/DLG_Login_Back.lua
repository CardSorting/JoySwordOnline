-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Login_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )

g_pStaticLogin = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLogin )
g_pStaticLogin:SetName( "Login" )

g_pPictureLoginBG1 = g_pUIDialog:CreatePicture()
g_pStaticLogin:AddPicture( g_pPictureLoginBG1 )

g_pPictureLoginBG1:SetTex( "DLG_Login0.TGA", "BG01" )

g_pPictureLoginBG1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(512,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,512)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLoginBG2 = g_pUIDialog:CreatePicture()
g_pStaticLogin:AddPicture( g_pPictureLoginBG2 )

g_pPictureLoginBG2:SetTex( "DLG_Login1.TGA", "BG02" )

g_pPictureLoginBG2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"RIGHT_TOP		= D3DXVECTOR2(1024,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(512,512)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLoginBG3 = g_pUIDialog:CreatePicture()
g_pStaticLogin:AddPicture( g_pPictureLoginBG3 )

g_pPictureLoginBG3:SetTex( "DLG_Login2.TGA", "BG03" )

g_pPictureLoginBG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"RIGHT_TOP		= D3DXVECTOR2(512,512)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,768)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(512,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLoginBG4 = g_pUIDialog:CreatePicture()
g_pStaticLogin:AddPicture( g_pPictureLoginBG4 )

g_pPictureLoginBG4:SetTex( "DLG_Login2.TGA", "BG04" )

g_pPictureLoginBG4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"RIGHT_TOP		= D3DXVECTOR2(1024,512)",
	"LEFT_BOTTOM		= D3DXVECTOR2(512,768)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--[[

g_pStaticQuest_Popup_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuest_Popup_Window )
g_pStaticQuest_Popup_Window:SetName( "Static_Quest_Reward_Popup_Item" )




-- 아이템 배경 사각형 3개
g_pPictureQuest_Popup_Window_Slot3 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Popup_Window:AddPicture( g_pPictureQuest_Popup_Window_Slot3 )

g_pPictureQuest_Popup_Window_Slot3:SetTex( "DLG_First_Loading2.TGA", "Popup_Quest_Window7" )

g_pPictureQuest_Popup_Window_Slot3:SetPoint
{

   	"LEFT_TOP		= D3DXVECTOR2(37,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Popup_Window_Slot4 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Popup_Window:AddPicture( g_pPictureQuest_Popup_Window_Slot4 )

g_pPictureQuest_Popup_Window_Slot4:SetTex( "DLG_First_Loading2.TGA", "Popup_Quest_Window7" )

g_pPictureQuest_Popup_Window_Slot4:SetPoint
{

   	"LEFT_TOP		= D3DXVECTOR2(122,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Popup_Window_Slot5 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Popup_Window:AddPicture( g_pPictureQuest_Popup_Window_Slot5 )

g_pPictureQuest_Popup_Window_Slot5:SetTex( "DLG_First_Loading2.TGA", "Popup_Quest_Window7" )

g_pPictureQuest_Popup_Window_Slot5:SetPoint
{

   	"LEFT_TOP		= D3DXVECTOR2(207,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--]]







g_pButtonLogin = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLogin )
g_pButtonLogin:SetName( "ButtonLogin" )
g_pButtonLogin:SetNormalTex( "DLG_Login3.tga", "BTN_LOGIN" )
g_pButtonLogin:SetOverTex( "DLG_Login3.tga", "BTN_LOGIN" )
g_pButtonLogin:SetDownTex( "DLG_Login3.tga", "BTN_LOGIN" )

g_pButtonLogin:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(194+385 + 25 - 21 - 7,566+97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLogin:SetOverPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(194+385 + 25 - 21 - 7,566+97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLogin:SetDownPoint
{
	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(194+385 + 25 - 21 - 7,566+97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLogin:SetCustomMsgMouseUp( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_NEXON_KOREA_LOGIN"] )






g_pButtonHomePage = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHomePage )
g_pButtonHomePage:SetName( "ButtonHomepage" )
g_pButtonHomePage:SetNormalTex( "DLG_Login3.tga", "BTN_JOIN" )
g_pButtonHomePage:SetOverTex( "DLG_Login3.tga", "BTN_JOIN" )
g_pButtonHomePage:SetDownTex( "DLG_Login3.tga", "BTN_JOIN" )

g_pButtonHomePage:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(520-50 + 25 - 157 + 13 - 7,566+95 + 2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHomePage:SetOverPoint
{ 
	
	"LEFT_TOP		= D3DXVECTOR2(520-50 + 25 - 157 + 13 - 7,566+95 + 2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHomePage:SetDownPoint
{
	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(520-50 + 25 - 157 + 13 - 7,566+95 + 2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHomePage:SetCustomMsgMouseUp( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_HOMEPAGE_MOVE"] )


g_pButtonHomePage = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHomePage )
g_pButtonHomePage:SetName( "ButtonHomepage" )
g_pButtonHomePage:SetNormalTex( "DLG_Login3.tga", "BTN_REGISTER" )
g_pButtonHomePage:SetOverTex( "DLG_Login3.tga", "BTN_REGISTER" )
g_pButtonHomePage:SetDownTex( "DLG_Login3.tga", "BTN_REGISTER" )

g_pButtonHomePage:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(520-50 + 25 - 42 - 7,566+95 + 2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHomePage:SetOverPoint
{ 
	
	"LEFT_TOP		= D3DXVECTOR2(520-50 + 25 - 42 - 7,566+95 + 2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHomePage:SetDownPoint
{
	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(520-50 + 25 - 42 - 7,566+95 + 2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHomePage:SetCustomMsgMouseUp( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_REGISTER_MOVE"] )

--  fix!! 채널서버 접속 방식으로 바뀌면서 임시로 막아놓음, 나중에 수정해야함
--[[
	
g_pButtonJoin = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoin )
g_pButtonJoin:SetName( "ButtonJoin" )
g_pButtonJoin:SetNormalTex( "DLG_Login3.tga", "BTN_JOIN" )

g_pButtonJoin:SetOverTex( "DLG_Login3.tga", "BTN_JOIN" )

g_pButtonJoin:SetDownTex( "DLG_Login3.tga", "BTN_JOIN" )

g_pButtonJoin:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(299,566)",
	"RIGHT_TOP		= D3DXVECTOR2(398,566)",
	"LEFT_BOTTOM		= D3DXVECTOR2(299,614)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(398,614)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(299,566)",
	"RIGHT_TOP		= D3DXVECTOR2(398,566)",
	"LEFT_BOTTOM		= D3DXVECTOR2(299,614)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(398,614)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin:SetDownPoint
{
	"LEFT_TOP		= D3DXVECTOR2(302,569)",
	"RIGHT_TOP		= D3DXVECTOR2(401,569)",
	"LEFT_BOTTOM		= D3DXVECTOR2(302,617)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(401,617)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin:SetCustomMsgMouseUp( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_CHANGE_STATE_MEMBER_JOIN"] )

--]]





g_pIMELoginID = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMELoginID )
g_pIMELoginID:SetName( "IMELoginID" )
g_pIMELoginID:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(452,598 - 18)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(671,618 - 18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMELoginID:SetFont( XF_DODUM_15_NORMAL )
g_pIMELoginID:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMELoginID:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMELoginID:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMELoginID:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMELoginID:SetTabControlName( "EditBoxLoginPassword" )
--g_pIMELoginID:SetDefTextAlign( DRAW_TEXT["DT_CENTER"] )
--g_pIMELoginID:SetCustomMsgEnter( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_NEXON_KOREA_LOGIN"] )
--[[
	g_pIMELoginID:SetWidthLimit( 60 )
	g_pIMELoginID:SetMultiLineOption( 1, 1 )

	g_pIMELoginID = g_pUIDialog:CreateIMEEditBox()
	g_pUIDialog:AddControl( g_pIMELoginID )
	g_pIMELoginID:SetName( "IMELoginID2" )
	g_pIMELoginID:SetTextPoint
	{
		USE_TEXTURE_SIZE= FALSE,
		"LEFT_TOP		= D3DXVECTOR2(250,524)",
		"RIGHT_BOTTOM		= D3DXVECTOR2(388,524 + 524 - 506)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pIMELoginID:SetFont( XF_DODUM_15_NORMAL )
	g_pIMELoginID:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
	g_pIMELoginID:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
	g_pIMELoginID:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
	g_pIMELoginID:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
	g_pIMELoginID:SetWidthLimit( 60 )
	g_pIMELoginID:SetMultiLineOption( 1, 2 )
--]]

g_pEditBoxLoginPassword = g_pUIDialog:CreateEditBox()
g_pUIDialog:AddControl( g_pEditBoxLoginPassword )
g_pEditBoxLoginPassword:SetName( "EditBoxLoginPassword" )
g_pEditBoxLoginPassword:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(452,598+34-15)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(671,618+36 - 15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pEditBoxLoginPassword:SetFont( XF_DODUM_15_NORMAL )
g_pEditBoxLoginPassword:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pEditBoxLoginPassword:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pEditBoxLoginPassword:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pEditBoxLoginPassword:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pEditBoxLoginPassword:SetTabControlName( "IMELoginID" )
g_pEditBoxLoginPassword:SetHideChar( "*" )
g_pEditBoxLoginPassword:SetCustomMsgEnter( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_LOGIN"] )
g_pEditBoxLoginPassword:SetByteLimit( 16 )


-- #ifdef SAVE_LOGIN_ID
-- ID 저장
--[[
g_pCheckBoxRememberID = g_pUIDialog:CreateCheckBox()
g_pCheckBoxRememberID:SetName( "CheckBoxRememberID" )
g_pUIDialog:AddControl( g_pCheckBoxRememberID )
g_pCheckBoxRememberID:SetNormalTex( "DLG_LoginWindow.TGA", "BTN_REMEMBER_NORMAL" )
g_pCheckBoxRememberID:SetCheckedTex( "DLG_LoginWindow.TGA", "BTN_REMEMBER_OVER" )
g_pCheckBoxRememberID:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(593+20,729-17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxRememberID:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(588+20,722-17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxRememberID:SetCustomMsgChecked( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_REMEMBER_ID_CHECK_ON"] )
g_pCheckBoxRememberID:SetCustomMsgUnChecked( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_REMEMBER_ID_CHECK_OFF"] )

g_pEditBoxLoginPassword = g_pUIDialog:CreateEditBox()
g_pUIDialog:AddControl( g_pEditBoxLoginPassword )
g_pEditBoxLoginPassword:SetName( "EditBoxLoginPassword" )
g_pEditBoxLoginPassword:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(392+20,709-45)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(610+20,726-45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pEditBoxLoginPassword:SetFont( XF_DODUM_15_NORMAL )
g_pEditBoxLoginPassword:SetTextColor( 0.0, 0.184, 0.325, 1.0 )
g_pEditBoxLoginPassword:SetSelectedTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pEditBoxLoginPassword:SetSelectedBackColor( 0.0, 0.184, 0.325, 1.0 )
g_pEditBoxLoginPassword:SetCaretColor( 0.0, 0.184, 0.325, 1.0 )
g_pEditBoxLoginPassword:SetTabControlName( "EditBoxLoginOTP" )
g_pEditBoxLoginPassword:SetPrevTabControlName( "IMELoginID" )
g_pEditBoxLoginPassword:SetHideChar( "*" )
g_pEditBoxLoginPassword:SetCustomMsgEnter( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_LOGIN"] )
--]]
-- #endif SAVE_LOGIN_ID


--[[
g_pButtonHomePage = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHomePage )
g_pButtonHomePage:SetName( "ButtonHomepage" )
g_pButtonHomePage:SetNormalTex( "DLG_Login3.tga", "BTN_FACEBOOK" )
g_pButtonHomePage:SetOverTex( "DLG_Login3.tga", "BTN_FACEBOOK" )
g_pButtonHomePage:SetDownTex( "DLG_Login3.tga", "BTN_FACEBOOK" )

g_pButtonHomePage:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(520-50 + 25 - 157 + 13 +3,566+95 + 2 +23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHomePage:SetOverPoint
{ 
	
	"LEFT_TOP		= D3DXVECTOR2(520-50 + 25 - 157 + 13 +3,566+95 + 2+23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHomePage:SetDownPoint
{
	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(520-50 + 25 - 157 + 13 +3,566+95 + 2+23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHomePage:SetCustomMsgMouseUp( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_STEAM_COMMUNITY_MOVE"] )
--]]