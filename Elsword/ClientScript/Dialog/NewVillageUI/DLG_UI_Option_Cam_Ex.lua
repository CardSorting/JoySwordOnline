-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
--[[
X_x88 2011 09 27 이준호
이건 DLG_UI_Option_Cam.lua랑 다르게 버튼을 눌렀을때만 이벤트를 처리하기 때문에 
라디오 버튼을 등록하는 네임을 다른게 적용했다.  그부분만 유의
--]]



g_pStaticCam= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCam )
g_pStaticCam:SetName( "Cam_User_Option" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_CAM_USER_WINDOW_CLOSE"])
--g_pUIDialog:SetEnableMoveByDrag( true ) 드레그를 하면 포커스 설정을 해야 함으로 새로운
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
d_TEXT_POS_X=24;
d_BG_SIZE_Y=50;
-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg1_left" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_Y = d_BG_SIZE_Y,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg1_middle" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X = 330+30,
	ADD_SIZE_Y = d_BG_SIZE_Y,
	"LEFT_TOP		= D3DXVECTOR2(10,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_BG1)

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg1_right" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_Y = d_BG_SIZE_Y,
	"LEFT_TOP		= D3DXVECTOR2(341+30,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg2_left" )

g_pPicture_bg2:SetPoint
{
	ADD_SIZE_Y = d_BG_SIZE_Y,
	"LEFT_TOP		= D3DXVECTOR2(13,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg2_middle" )

g_pPicture_bg2:SetPoint
{
     ADD_SIZE_X = 307+30  ,
	 ADD_SIZE_Y = d_BG_SIZE_Y,
	"LEFT_TOP		= D3DXVECTOR2(21,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg2_right" )

g_pPicture_bg2:SetPoint
{
	ADD_SIZE_Y = d_BG_SIZE_Y,
	"LEFT_TOP		= D3DXVECTOR2(329+30,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------------------BG3
d_PIC3_X=18;
d_PIC3_Y=50;
--위의 배경사이즈 값에서 더하는 형식을 취했습니다
d_SIZE_Y=28+d_BG_SIZE_Y;
g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg3_left" )

g_pPicture_bg3:SetPoint
{
	ADD_SIZE_Y = d_SIZE_Y,
	"LEFT_TOP		= D3DXVECTOR2(d_PIC3_X,d_PIC3_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg3_middle" )

g_pPicture_bg3:SetPoint
{
     ADD_SIZE_X = 400-70,
	 ADD_SIZE_Y = d_SIZE_Y,
	"LEFT_TOP		= D3DXVECTOR2(d_PIC3_X+7,d_PIC3_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg3_right" )

g_pPicture_bg3:SetPoint
{
	ADD_SIZE_Y = d_SIZE_Y,
	"LEFT_TOP		= D3DXVECTOR2(400+d_PIC3_X+7-70,d_PIC3_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------TITLE
g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_title)

g_pPicture_title:SetTex( "DLG_UI_Title03.TGA", "CAM_SETTING" )

g_pPicture_title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cam_User_ExitBtn" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(410-70,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(406-70,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(406+1-70,10 +1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_CAM_USER_WINDOW_CLOSE"] )

-------------------bar1
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 395-70,
	"LEFT_TOP		= D3DXVECTOR2(d_TEXT_POS_X,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--==================================================================================================
--==================================================================================================
--==================================================================================================
-------------------텍스트1 해상도
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( "Cam_User_text1" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_14399,--CamOption
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_TEXT_POS_X,70)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


--===========================리스트 박스=========================================

d_LIST1_POS_X=80;
d_LIST1_POS_Y=70-3;
d_LIST1_LENGHT=263;
g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_left" )
g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(d_LIST1_POS_X,d_LIST1_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_middle" )
g_pPicture_blank:SetPoint
{
     ADD_SIZE_X = d_LIST1_LENGHT-1 ,
	"LEFT_TOP		= D3DXVECTOR2(d_LIST1_POS_X+5,d_LIST1_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank)
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_right" )
g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(d_LIST1_POS_X+d_LIST1_LENGHT+5,d_LIST1_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--해상도
g_pComboBox_CamList = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBox_CamList )
g_pComboBox_CamList:SetName( "Cam_User_Resolution_List" )
--g_pComboBox_CamList:SetDropHeight( 80 )
g_pComboBox_CamList:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13SEMIBOLD,
	"POS 			= D3DXVECTOR2(220-15,3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
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
g_pComboBox_CamList:SetTextPos( d_LIST1_POS_X, d_LIST1_POS_Y)
g_pComboBox_CamList:SetTextSize( d_LIST1_LENGHT-13, 21)
--버튼
g_pComboBox_CamList:SetTextStringOffsetPos( 30, 4 )
g_pComboBox_CamList:SetButtonPos( d_LIST1_POS_X+d_LIST1_LENGHT-12, d_LIST1_POS_Y+5)
g_pComboBox_CamList:SetButtonSize( 15, 12)
--g_pComboBox_CamList:SetCustomMsgSelectionChanged( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_CAM_USER_RESOLUTION_LIST"] )
--==========================================================================================
-------------------텍스트1 화질


d_RADIO1_X=35;--기준좌표
d_RADIO1_Y=110;--기준좌표
d_RADIO1_TICK=100;--라디오 버튼간 간격
d_RADIO1_TEXT="Cam_User_Quality_Radio_";

g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( "Cam_User_text2" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_14389,--CamOption
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_TEXT_POS_X+1,d_RADIO1_Y)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-------------------텍스트1 저화질
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( d_RADIO1_TEXT.."1".."_text" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_14390,--CamOption
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK-30,d_RADIO1_Y-1-8)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

--라디오버튼
g_pRadio_Cpature_Low = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadio_Cpature_Low )
g_pRadio_Cpature_Low:SetName( d_RADIO1_TEXT.."1" )
g_pRadio_Cpature_Low:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadio_Cpature_Low:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadio_Cpature_Low:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadio_Cpature_Low:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK-55,d_RADIO1_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Cpature_Low:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK-55,d_RADIO1_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Cpature_Low:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK-55,d_RADIO1_Y-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(d_RADIO1_X+16+d_RADIO1_TICK-55,d_RADIO1_Y+14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadio_Cpature_Low:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK-55,d_RADIO1_Y-2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadio_Cpature_Low:SetGroupID( 2 )

---중간
-------------------텍스트1 일반화질
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( d_RADIO1_TEXT.."2".."_text" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_14391,--CamOption
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK+70,d_RADIO1_Y+1-8)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

--
g_pRadio_Cpature_Middle = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadio_Cpature_Middle )

g_pRadio_Cpature_Middle:SetName( d_RADIO1_TEXT.."2"  )
g_pRadio_Cpature_Middle:SetNormalTex( "DLG_UI_Button08.tga", "radio_Normal" )
g_pRadio_Cpature_Middle:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadio_Cpature_Middle:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadio_Cpature_Middle:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK*2-55,d_RADIO1_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadio_Cpature_Middle:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK*2-55,d_RADIO1_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadio_Cpature_Middle:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK*2-55,d_RADIO1_Y-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(d_RADIO1_X+16+d_RADIO1_TICK*2-55,d_RADIO1_Y+14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadio_Cpature_Middle:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK*2-55,d_RADIO1_Y-2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Cpature_Middle:SetGroupID( 2 )


---높음
-------------------텍스트1 고화질
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( d_RADIO1_TEXT.."3".."_text" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_14392,--CamOption
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK+170+5-10,d_RADIO1_Y+1-8)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pRadio_Cpature_High = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadio_Cpature_High )
--g_pRadio_Cpature_High:SetFixOverByCheck( true ) 
--g_pRadio_Cpature_High:SetShowOffBGByCheck( true )

g_pRadio_Cpature_High:SetName( d_RADIO1_TEXT.."3" )
g_pRadio_Cpature_High:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadio_Cpature_High:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadio_Cpature_High:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadio_Cpature_High:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK*3-55-5,d_RADIO1_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadio_Cpature_High:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK*3-55-5,d_RADIO1_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadio_Cpature_High:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK*3-55-5,d_RADIO1_Y-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(d_RADIO1_X+16+d_RADIO1_TICK*3-55-5,d_RADIO1_Y+14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadio_Cpature_High:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(d_RADIO1_X+d_RADIO1_TICK*3-55-5,d_RADIO1_Y-2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Cpature_High:SetGroupID( 2 )

--=====================================================================================
-------------------텍스트1 프레임


d_LIST2_POS_X=130;
d_LIST2_POS_Y=150;
d_LIST2_LENGHT=270;
--------------------------------------TEXT
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( "Cam_User_text3" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_14400,--CamOption
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_TEXT_POS_X+1,d_LIST2_POS_Y+3)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
-------------------------------------
g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_left" )
g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(d_LIST2_POS_X-50,d_LIST2_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_middle" )
g_pPicture_blank:SetPoint
{
     ADD_SIZE_X = d_LIST2_LENGHT-9 ,
	"LEFT_TOP		= D3DXVECTOR2(d_LIST2_POS_X+5-50,d_LIST2_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank)
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_right" )
g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(d_LIST2_POS_X+d_LIST2_LENGHT+5-58,d_LIST2_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pComboBox_CamList = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBox_CamList )
g_pComboBox_CamList:SetName( "Cam_User_Frame_List" )
--g_pComboBox_CamList:SetDropHeight( 80 )
g_pComboBox_CamList:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13SEMIBOLD,
	"POS 			= D3DXVECTOR2(220,3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
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
g_pComboBox_CamList:SetTextPos( d_LIST2_POS_X-47, d_LIST2_POS_Y)
g_pComboBox_CamList:SetTextSize( d_LIST2_LENGHT-18, 21)
--버튼
g_pComboBox_CamList:SetTextStringOffsetPos( 25, 3 )
g_pComboBox_CamList:SetButtonPos( d_LIST2_POS_X+d_LIST2_LENGHT-69, d_LIST2_POS_Y+5)
g_pComboBox_CamList:SetButtonSize( 15, 12)
--=====================================================================================
-------------------텍스트1 비디오 포맷 2011.10.07에 추가
d_LIST3_POS_X=130;
d_LIST3_POS_Y=190;
d_LIST3_LENGHT=270;
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( "Cam_User_text5" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_17506,--CamOption
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_TEXT_POS_X+1,d_LIST3_POS_Y+3-8)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_left" )
g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(d_LIST3_POS_X-50,d_LIST3_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_middle" )
g_pPicture_blank:SetPoint
{
     ADD_SIZE_X = d_LIST3_LENGHT-9 ,
	"LEFT_TOP		= D3DXVECTOR2(d_LIST3_POS_X-45,d_LIST3_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank)
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_right" )
g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(d_LIST3_POS_X+d_LIST3_LENGHT-53,d_LIST3_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pComboBox_CamList = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBox_CamList )
g_pComboBox_CamList:SetName( "Cam_User_VideoFormat_List" )
--g_pComboBox_CamList:SetDropHeight( 80 )
g_pComboBox_CamList:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13SEMIBOLD,
	"POS 			= D3DXVECTOR2(220,3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
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
g_pComboBox_CamList:SetTextPos( d_LIST3_POS_X-47, d_LIST3_POS_Y)
g_pComboBox_CamList:SetTextSize( d_LIST3_LENGHT-18, 21)
--버튼
g_pComboBox_CamList:SetTextStringOffsetPos( 25, 3 )
g_pComboBox_CamList:SetButtonPos( d_LIST3_POS_X+d_LIST3_LENGHT-69, d_LIST3_POS_Y+5)
g_pComboBox_CamList:SetButtonSize( 15, 12)
g_pComboBox_CamList:SetDropHeight(60)
--g_pComboBox_CamList:SetCustomMsgSelectionChanged( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GENERAL_VIDEO_TYPE"] )

--==========================================================================================

d_RADIO2_X=35;--기준좌표
d_RADIO2_Y=234;--기준좌표
d_RADIO2_TICK=100;--라디오 버튼간 간격
d_RADIO2_TEXT="Cam_User_AudioChannel_Radio_";
-------------------텍스트1 모노
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( "Cam_User_text3" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_17507,--CamOption
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_TEXT_POS_X+1,d_RADIO2_Y)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


-------------------텍스트1 모노
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( d_RADIO2_TEXT.."1".."_text" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_14402,--CamOption
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_RADIO2_X+d_RADIO2_TICK-15,d_RADIO2_Y)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

--라디오버튼
g_pRadio_Cpature_Low = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadio_Cpature_Low )
g_pRadio_Cpature_Low:SetName( d_RADIO2_TEXT.."1" )
g_pRadio_Cpature_Low:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadio_Cpature_Low:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadio_Cpature_Low:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadio_Cpature_Low:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(d_RADIO2_X+d_RADIO2_TICK-55,d_RADIO2_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Cpature_Low:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(d_RADIO2_X+d_RADIO2_TICK-55,d_RADIO2_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Cpature_Low:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(d_RADIO2_X+d_RADIO2_TICK-55,d_RADIO2_Y-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(d_RADIO2_X+16+d_RADIO2_TICK-55,d_RADIO2_Y+14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Cpature_Low:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(d_RADIO2_X+d_RADIO2_TICK-55,d_RADIO2_Y-2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadio_Cpature_Low:SetGroupID( 3 )

---중간
-------------------텍스트1 스테레오
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( d_RADIO2_TEXT.."2".."_text" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_14403,--CamOption
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_RADIO2_X+d_RADIO2_TICK*2+10,d_RADIO2_Y)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

--
g_pRadio_Cpature_Middle = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadio_Cpature_Middle )

g_pRadio_Cpature_Middle:SetName( d_RADIO2_TEXT.."2" )
g_pRadio_Cpature_Middle:SetNormalTex( "DLG_UI_Button08.tga", "radio_Normal" )
g_pRadio_Cpature_Middle:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadio_Cpature_Middle:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadio_Cpature_Middle:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_RADIO2_X+d_RADIO2_TICK*2-30,d_RADIO2_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadio_Cpature_Middle:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_RADIO2_X+d_RADIO2_TICK*2-30,d_RADIO2_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadio_Cpature_Middle:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(d_RADIO2_X+d_RADIO2_TICK*2-30,d_RADIO2_Y-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(d_RADIO2_X+16+d_RADIO2_TICK*2-30,d_RADIO2_Y+14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadio_Cpature_Middle:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(d_RADIO2_X+d_RADIO2_TICK*2-30,d_RADIO2_Y-2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Cpature_Middle:SetGroupID( 3 )

--=====================================================================================
-------------------텍스트1 오디오 음질


d_LIST4_POS_X=130;
d_LIST4_POS_Y=268;
d_LIST4_LENGHT=270;
g_pStatic_text= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_text )
g_pStatic_text:SetName( "Cam_User_text4" )
g_pStatic_text:AddString
{
	MSG 			= STR_ID_14404,--CamOption
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(d_TEXT_POS_X+1,d_LIST4_POS_Y+4)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_left" )
g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(d_LIST4_POS_X-50,d_LIST4_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_middle" )
g_pPicture_blank:SetPoint
{
     ADD_SIZE_X = d_LIST4_LENGHT-9,
	"LEFT_TOP		= D3DXVECTOR2(d_LIST4_POS_X+5-50,d_LIST4_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticCam:AddPicture( g_pPicture_blank)
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_right" )
g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(d_LIST4_POS_X+d_LIST4_LENGHT-53,d_LIST4_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pComboBox_CamList = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBox_CamList )
g_pComboBox_CamList:SetName( "Cam_User_AudioQuality_List" )
--g_pComboBox_CamList:SetDropHeight( 80 )
g_pComboBox_CamList:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13SEMIBOLD,
	"POS 			= D3DXVECTOR2(220,3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
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
g_pComboBox_CamList:SetTextPos( d_LIST4_POS_X-46, d_LIST4_POS_Y)
g_pComboBox_CamList:SetTextSize( d_LIST4_LENGHT-18, 21)
--버튼
g_pComboBox_CamList:SetTextStringOffsetPos( 25, 3 )
g_pComboBox_CamList:SetButtonPos( d_LIST4_POS_X+d_LIST4_LENGHT-69, d_LIST4_POS_Y+5)
g_pComboBox_CamList:SetButtonSize( 15, 12)
g_pComboBox_CamList:SetDropHeight(40)

--g_pComboBox_CamList:SetCustomMsgSelectionChanged( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GENERAL_VIDEO_TYPE"] )

--=================================================================================================
g_pStaticCam= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCam )
g_pStaticCam:SetName( "Cam_User_Accept_Btn" )

d_BTN1_POS_X=175;
d_BTN1_POS_Y=304;
g_pButton_Abj = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Abj )
g_pButton_Abj:SetName( "Cam_Option_Extra" )

g_pButton_Abj:SetNormalTex( "DLG_UI_Button05.tga", "OK_Button_Normal" )
g_pButton_Abj:SetOverTex( "DLG_UI_Button05.tga", "OK_Button_Over" )
g_pButton_Abj:SetDownTex( "DLG_UI_Button05.tga", "OK_Button_Over" )


g_pButton_Abj:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_BTN1_POS_X,d_BTN1_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Abj:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_BTN1_POS_X-3,d_BTN1_POS_Y-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Abj:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(d_BTN1_POS_X-2,d_BTN1_POS_Y-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Abj:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_CAM_USER_ACCEPT_BTN"] )
--=================================================================================================
g_pStaticCam= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCam )
g_pStaticCam:SetName( "Cam_User_Cancel_Btn" )

d_BTN2_POS_X=266;
g_pButton_Abj = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Abj )
g_pButton_Abj:SetName( "Cam_Option_Extra" )

g_pButton_Abj:SetNormalTex( "DLG_UI_BUTTON02.tga", "Cancle_Normal" )
g_pButton_Abj:SetOverTex( "DLG_UI_BUTTON02.tga", "Cancle_Over" )
g_pButton_Abj:SetDownTex( "DLG_UI_BUTTON02.tga", "Cancle_Over" )


g_pButton_Abj:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_BTN2_POS_X,d_BTN1_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Abj:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(d_BTN2_POS_X-4,d_BTN1_POS_Y-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Abj:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(d_BTN2_POS_X-3,d_BTN1_POS_Y-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Abj:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_CAM_USER_WINDOW_CLOSE"] )