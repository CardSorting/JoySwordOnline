-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
--[[
X_x88 2011 09 26 이준호
반디캠 옵션 창입니다. d_ <- define를 참조해서 만들었기 떄문에 현재 변수값만 수정하면 전체적인 유아이를 수정할수 있습니다
루아는 가비지 컬랙션을 따로 가지고 있는데 글로벌 변수는 루아팅커(엘소드 기준)에서 두파일 할때 루아를 실행 시키고
그때 글로벌 변수값을 채웁니다. 그리고 사용이 끝남과 동시에 변수값은 자동 소멸됩니다.(단! 유저데이터로 선언된 값은 사라지지 않음

만약 변수선언이 귀찬으면 바꾸기로 상수값을 직접 넣으세요
그리고 최대한 루아 네임꼬이는걸 방지하기 위해
[포지션]_[창]_[형태]_[번호] 형태로 만들었습니다
--]]

g_pStaticCam= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCam )
g_pStaticCam:SetName( "Cam_Option_Window" )
g_pUIDialog:SetFront( true )

FIX_POS_X = 40


g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( "Cam_Option_Title1" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_17499, -- "동영상(Scroll Lock)",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,100)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( "Cam_Option_Title2" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_14398, -- "포맷 설정",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,130)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


-------------------bar1
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 387,
	"LEFT_TOP		= D3DXVECTOR2(28,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--라디오버튼
g_pRadio_CAM_DEFAULT = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadio_CAM_DEFAULT )
g_pRadio_CAM_DEFAULT:SetName( "Cam_Option_Video_General_Rbtn" )
g_pRadio_CAM_DEFAULT:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadio_CAM_DEFAULT:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadio_CAM_DEFAULT:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadio_CAM_DEFAULT:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(100+FIX_POS_X,128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_CAM_DEFAULT:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(100+FIX_POS_X,128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_CAM_DEFAULT:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(100+FIX_POS_X,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(100+15+FIX_POS_X,128+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_CAM_DEFAULT:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(100+FIX_POS_X,128)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadio_CAM_DEFAULT:SetGroupID( 4 )
g_pRadio_CAM_DEFAULT:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_VIDEO_GENERAL_RBTN"] )

--사용자 설정라디오버튼
g_pRadio_CAM_SETTING = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadio_CAM_SETTING )
g_pRadio_CAM_SETTING:SetName( "Cam_Option_Video_User_Rbtn" )
g_pRadio_CAM_SETTING:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadio_CAM_SETTING:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadio_CAM_SETTING:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadio_CAM_SETTING:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(100+FIX_POS_X,128+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_CAM_SETTING:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(100+FIX_POS_X,128+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_CAM_SETTING:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(100+FIX_POS_X,128+30)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(100+15+FIX_POS_X,128+30+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_CAM_SETTING:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(100+FIX_POS_X,128+30)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadio_CAM_SETTING:SetGroupID( 4 )
g_pRadio_CAM_SETTING:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_VIDEO_USER_RBTN"] )

--=======================리스트 박스=====================================================

--리스트
g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_left" )
g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(128+FIX_POS_X,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_middle" )
g_pPicture_blank:SetPoint
{
     ADD_SIZE_X = 180 ,
	"LEFT_TOP		= D3DXVECTOR2(133+FIX_POS_X,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank)
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_right" )
g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(134+180+FIX_POS_X,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pComboBox_CamList = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBox_CamList )
g_pComboBox_CamList:SetName( "Cam_Option_General_Video_List" )
--g_pComboBox_CamList:SetDropHeight( 80 )
g_pComboBox_CamList:SetString
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(220+FIX_POS_X,3)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pComboBox_CamList:SetTextTex( "DLG_Common_Button00.tga", "invisible" )
g_pComboBox_CamList:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )
g_pComboBox_CamList:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboBox_CamList:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboBox_CamList:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "COMBO_DOWN" )
g_pComboBox_CamList:SetDropdownTextTex ( "DLG_Common_New_Texture62.tga", "Select_Bar" )
g_pComboBox_CamList:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pComboBox_CamList:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pComboBox_CamList:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pComboBox_CamList:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pComboBox_CamList:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pComboBox_CamList:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pComboBox_CamList:InitScrollBar()

--수동으로 만들 때
g_pComboBox_CamList:SetTextPos( 129+FIX_POS_X,131 )
g_pComboBox_CamList:SetTextSize( 174, 21)
--버튼
g_pComboBox_CamList:SetTextStringOffsetPos( 61, 0 )
g_pComboBox_CamList:SetButtonPos(296+FIX_POS_X,132)
g_pComboBox_CamList:SetButtonSize( 15, 12)

g_pComboBox_CamList:SetPos(0,0)
g_pComboBox_CamList:SetCustomMsgSelectionChanged( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_VIDEO_GENERAL_LIST"] )


--===============================================================================================


g_pButton_CAM_SETTING = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_CAM_SETTING )
g_pButton_CAM_SETTING:SetName( "Cam_Option_Video_User_Btn" )
g_pButton_CAM_SETTING:SetNormalTex( "DLG_UI_Button20.tga", "CAM_SETTING_NORMAL" )
g_pButton_CAM_SETTING:SetOverTex( "DLG_UI_Button20.tga", "CAM_SETTING_OVER" )
g_pButton_CAM_SETTING:SetDownTex( "DLG_UI_Button20.tga", "CAM_SETTING_OVER" )

g_pButton_CAM_SETTING:SetNormalPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(129+FIX_POS_X,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CAM_SETTING:SetOverPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(129+FIX_POS_X,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CAM_SETTING:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(129+1+FIX_POS_X,154+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CAM_SETTING:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_VIDEO_USER_BTN"] )

