-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Profile_System_Input" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( PROFILE_MANAGER_UI_MSG["PMUM_CLOSE"] )

--g_pUIDialog:SetModal( true )
-- --g_pUIDialog:SetFront( true )
--g_pUIDialog:SetEnableMoveByDrag( true )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )
--g_pUIDialog:SetCloseCustomUIEventID( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CLOSE"] )



g_pStaticProfileInput = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticProfileInput )
g_pStaticProfileInput:SetName( "Profile_Input" )


---------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_L393px_Top" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X= 13,  
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_L393px_Middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X= 13,   
    ADD_SIZE_Y = 178,
	"LEFT_TOP		= D3DXVECTOR2(0,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_L393px_Bottom" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X= 13,
	"LEFT_TOP		= D3DXVECTOR2(0,208)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_M373px_Top" )

g_pPicture_bg2:SetPoint
{
     ADD_SIZE_X= 13,   
	"LEFT_TOP		= D3DXVECTOR2(11,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_M373px_Middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X= 13,
    ADD_SIZE_Y = 107-3,
	"LEFT_TOP		= D3DXVECTOR2(11,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_M373px_Bottom" )

g_pPicture_bg2:SetPoint
{
        ADD_SIZE_X= 13,
	"LEFT_TOP		= D3DXVECTOR2(11,173-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------------title
----------------TITLE

g_pPicture_title1 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_title1 )

g_pPicture_title1:SetTex( "DLG_UI_Title03.tga", "Title_MyProfileInput" )

g_pPicture_title1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(9,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


-------------공지 부분

g_pPicture_title2 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_title2 )

g_pPicture_title2:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Bg_Notice_1" )

g_pPicture_title2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(122,16)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
-------------------------BAR(실제 길이 2px)

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 77,
	"LEFT_TOP		= D3DXVECTOR2(18,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 276,
	"LEFT_TOP		= D3DXVECTOR2(102,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



---세로 라인 예시---
g_pPicture_line0 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_line0 )

g_pPicture_line0:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line0:SetPoint
{
     ADD_SIZE_Y = 112,
	"LEFT_TOP		= D3DXVECTOR2(98,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


--------------------다음줄 부터+29
g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 77,
	"LEFT_TOP		= D3DXVECTOR2(18,87+29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 276,
	"LEFT_TOP		= D3DXVECTOR2(102,87+29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



-----29*2
g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 77,
	"LEFT_TOP		= D3DXVECTOR2(18,89+29*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticProfileInput:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 276,
	"LEFT_TOP		= D3DXVECTOR2(102,89+29*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


--------------------------------------------------------소제목 모음--------------------------------------------------------
------------------------------    한줄 소개    ------------------------------
g_pStaticIntroduce = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticIntroduce )
g_pStaticIntroduce:SetName( "introduce" )

-------------한줄 소개 타이틀
g_pPicturecri1 = g_pUIDialog:CreatePicture()
g_pStaticIntroduce:AddPicture( g_pPicturecri1 )
g_pPicturecri1:SetTex( "DLG_UI_Title03.TGA", "STitle_Introduce" )
g_pPicturecri1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(28,61)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-------------한줄 소개  Bg
g_pPicturecri2 = g_pUIDialog:CreatePicture()
g_pStaticIntroduce:AddPicture( g_pPicturecri2 )
g_pPicturecri2:SetTex( "DLG_UI_Button20_NEW.TGA", "Chatbox" )
g_pPicturecri2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(114,58)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


---유저 네임 텍스트 입력 박스
g_pIMEIntroduce = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEIntroduce )
g_pIMEIntroduce:SetName( "IMEIntroduce" )
g_pIMEIntroduce:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP				= D3DXVECTOR2( 125, 61 )",
	"RIGHT_BOTTOM		= D3DXVECTOR2( 335,77 )",
	"COLOR					= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pIMEIntroduce:SetFont( XF_DODUM_11_NORMAL )
g_pIMEIntroduce:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEIntroduce:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEIntroduce:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEIntroduce:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEIntroduce:SetByteLimit(30)


------------------------------    태어난 해    ------------------------------
g_pStaticYear = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticYear )
g_pStaticYear:SetName( "year" )

-------------태어난 해 Bg
g_pPicturecri3 = g_pUIDialog:CreatePicture()
g_pStaticYear:AddPicture( g_pPicturecri3 )
g_pPicturecri3:SetTex( "DLG_UI_Title03.TGA", "STitle_Birthday" )
g_pPicturecri3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(29,92)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pButtonYear_choice1 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonYear_choice1 )
g_pButtonYear_choice1:SetName( "Year_choice1" )

g_pButtonYear_choice1:SetDropHeight( 100 )

g_pButtonYear_choice1:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButtonYear_choice1:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonYear_choice1:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonYear_choice1:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonYear_choice1:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonYear_choice1:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonYear_choice1:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonYear_choice1:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pButtonYear_choice1:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pButtonYear_choice1:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pButtonYear_choice1:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pButtonYear_choice1:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pButtonYear_choice1:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pButtonYear_choice1:InitScrollBar()

g_pButtonYear_choice1:SetTextPos( 115, 88 )
g_pButtonYear_choice1:SetTextSize( 70, 25 )

g_pButtonYear_choice1:SetTextStringOffsetPos( 4+4, 4+2 )
g_pButtonYear_choice1:SetButtonPos( 115+70+5, 88 )
g_pButtonYear_choice1:SetButtonSize( 25, 25 )

-- -------------------------------------------------------- 사는 곳--------------------------------------------------------
g_pStaticLocation = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocation )
g_pStaticLocation:SetName( "location" )

------------사는 곳 Bg
g_pPicturecri4 = g_pUIDialog:CreatePicture()
g_pStaticLocation:AddPicture( g_pPicturecri4 )
g_pPicturecri4:SetTex( "DLG_UI_Title03.TGA", "STitle_City" )
g_pPicturecri4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(35,124)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- -----사는 곳(시)   드랍 버튼
g_pButtonLocation_choice1 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonLocation_choice1 )
g_pButtonLocation_choice1:SetName( "Location_choice1" )

g_pButtonLocation_choice1:SetDropHeight( 100 )

g_pButtonLocation_choice1:SetString
{
	-- MSG 			= "NoName",
 	FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButtonLocation_choice1:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonLocation_choice1:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonLocation_choice1:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonLocation_choice1:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonLocation_choice1:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonLocation_choice1:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonLocation_choice1:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pButtonLocation_choice1:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pButtonLocation_choice1:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pButtonLocation_choice1:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pButtonLocation_choice1:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pButtonLocation_choice1:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pButtonLocation_choice1:InitScrollBar()

g_pButtonLocation_choice1:SetTextPos( 115, 121 )
g_pButtonLocation_choice1:SetTextSize( 70, 25 )

g_pButtonLocation_choice1:SetTextStringOffsetPos( 4+4, 4+2 )
g_pButtonLocation_choice1:SetButtonPos( 115+70+5, 121 )
g_pButtonLocation_choice1:SetButtonSize( 25, 25 )

g_pButtonLocation_choice1:SetCustomMsgSelectionChanged( PROFILE_MANAGER_UI_MSG["PMUM_LOCATION1"] )

-- -----사는 곳(군)   드랍 버튼
g_pButtonLocation_choice2 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonLocation_choice2 )
g_pButtonLocation_choice2:SetName( "Location_choice2" )

g_pButtonLocation_choice2:SetDropHeight( 200 )

g_pButtonLocation_choice2:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pButtonLocation_choice2:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonLocation_choice2:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonLocation_choice2:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonLocation_choice2:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonLocation_choice2:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonLocation_choice2:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonLocation_choice2:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pButtonLocation_choice2:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pButtonLocation_choice2:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pButtonLocation_choice2:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pButtonLocation_choice2:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pButtonLocation_choice2:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pButtonLocation_choice2:InitScrollBar()

g_pButtonLocation_choice2:SetTextPos( 220, 121 )
g_pButtonLocation_choice2:SetTextSize( 70, 25 )

g_pButtonLocation_choice2:SetTextStringOffsetPos(  4+4, 4+2 )
g_pButtonLocation_choice2:SetButtonPos( 220+70+5, 121 )
g_pButtonLocation_choice2:SetButtonSize( 25, 25 )


-- -------------------------------------------------------- 성별--------------------------------------------------------
g_pStaticGender = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGender )
g_pStaticGender:SetName( "gender" )

------------성별 Bg
g_pPicturecri5 = g_pUIDialog:CreatePicture()
g_pStaticGender:AddPicture( g_pPicturecri5 )
g_pPicturecri5:SetTex( "DLG_UI_Title03.TGA", "STitle_Gender" )
g_pPicturecri5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(40,154)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-------라디오 버튼
---남성 라디오 버튼
g_pRadioButton1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton1 )
g_pRadioButton1:SetFixOverByCheck( true ) 
g_pRadioButton1:SetShowOffBGByCheck( true )
g_pRadioButton1:SetName( "male" )
g_pRadioButton1:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Male_2" )
g_pRadioButton1:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Male_2_Over" )
g_pRadioButton1:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "Bt_Male_2_Over" )

g_pRadioButton1:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(114+1,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton1:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(115,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton1:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(115,153)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(115+50,153+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton1:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(115,153)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---여성 라디오 버튼
g_pRadioButton2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton2 )
g_pRadioButton2:SetFixOverByCheck( true ) 
g_pRadioButton2:SetShowOffBGByCheck( true )
g_pRadioButton2:SetName( "female" )
g_pRadioButton2:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_FeMale_2" )
g_pRadioButton2:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_FeMale_2_Over" )
g_pRadioButton2:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "Bt_FeMale_2_Over" )

g_pRadioButton2:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(178,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton2:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(178,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton2:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(178,153)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(178+50,153+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton2:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(178,153)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- ------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-----EXIT  버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Profile_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(373,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(373-4,15-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(373-3,15-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX:SetCustomMsgMouseUp( PROFILE_MANAGER_UI_MSG["PMUM_CLOSE"] )



-----저장하기   버튼
g_pButtonSave = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSave )
g_pButtonSave:SetName( "save" )
g_pButtonSave:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Save" )
g_pButtonSave:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Save_Over" )
g_pButtonSave:SetDownTex( "DLG_UI_Button20_NEW.tga", "Bt_Save_Over" )

g_pButtonSave:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(115,187)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSave:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(115,187)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSave:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(115+1,187+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSave:SetCustomMsgMouseUp( PROFILE_MANAGER_UI_MSG["PMUM_SAVE"] )

-----취소   버튼
g_pButtonCancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCancel )
g_pButtonCancel:SetName( "cancel" )
g_pButtonCancel:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Cancer" )
g_pButtonCancel:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Cancer_Over" )
g_pButtonCancel:SetDownTex( "DLG_UI_Button20_NEW.tga", "Bt_Cancer_Over" )

g_pButtonCancel:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(208,187)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(208,187)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(208+1,187+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCancel:SetCustomMsgMouseUp( PROFILE_MANAGER_UI_MSG["PMUM_CANCEL"] )

---------------------------------------------
g_pStaticInformation = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInformation)
g_pStaticInformation:SetName( "Information" )

-----------1 번 정보공개
-----체크박스
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticInformation:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_UI_Button20_NEW.TGA", "Bt_Info_Active" )

g_pPicture_box1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(350,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxsecret1 = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret1:SetName( "secretCheck1" )
g_pUIDialog:AddControl( g_pCheckBoxsecret1 )
g_pCheckBoxsecret1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxsecret1:SetCheckedTex( "DLG_UI_Button20_NEW.TGA", "Bt_Info_InActive" )

g_pCheckBoxsecret1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(350,59)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(350+44,59+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxsecret1:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(350,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------2 번 정보공개
-----체크박스
g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticInformation:AddPicture( g_pPicture_box2 )
g_pPicture_box2:SetTex( "DLG_UI_Button20_NEW.TGA", "Bt_Info_Active" )

g_pPicture_box2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(350,59+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxsecret2 = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret2:SetName( "secretCheck2" )
g_pUIDialog:AddControl( g_pCheckBoxsecret2 )
g_pCheckBoxsecret2:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxsecret2:SetCheckedTex( "DLG_UI_Button20_NEW.TGA", "Bt_Info_InActive" )

g_pCheckBoxsecret2:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(350,59+32)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(350+44,59+32+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxsecret2:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(350,59+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------3 번 정보공개
-----체크박스
g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticInformation:AddPicture( g_pPicture_box3 )
g_pPicture_box3:SetTex( "DLG_UI_Button20_NEW.TGA", "Bt_Info_Active" )

g_pPicture_box3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(350,59+63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxsecret3 = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret3:SetName( "secretCheck3" )
g_pUIDialog:AddControl( g_pCheckBoxsecret3 )
g_pCheckBoxsecret3:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxsecret3:SetCheckedTex( "DLG_UI_Button20_NEW.TGA", "Bt_Info_InActive" )

g_pCheckBoxsecret3:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(350,59+63)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(350+44,59+63+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxsecret3:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(350,59+63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------4 번 정보공개
-----체크박스
g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStaticInformation:AddPicture( g_pPicture_box4 )
g_pPicture_box4:SetTex( "DLG_UI_Button20_NEW.TGA", "Bt_Info_Active" )

g_pPicture_box4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(350,59+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxsecret4 = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret4:SetName( "secretCheck4" )
g_pUIDialog:AddControl( g_pCheckBoxsecret4 )
g_pCheckBoxsecret4:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxsecret4:SetCheckedTex( "DLG_UI_Button20_NEW.TGA", "Bt_Info_InActive" )

g_pCheckBoxsecret4:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(350,59+94)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(350+44,59+94+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxsecret4:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(350,59+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}