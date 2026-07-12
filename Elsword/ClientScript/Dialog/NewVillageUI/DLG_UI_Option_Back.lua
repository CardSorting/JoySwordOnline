-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Option_Back" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_WINDOW_CLOSE"] )

g_pStaticoption = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticoption )
g_pStaticoption:SetName( "g_pStaticoption" )

-- KEY_MAPPING_INT
ADD_BG_SIZE_X = 40	-- 패드 사용시 40
ADD_PAD_SIZE_X = -10	-- 패드 사용시 53

MOVE_ETC_BUTTON_X = - 45	-- 기타, 보안 버튼 좌측으로 이동

-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticoption:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg1_left" )

g_pPicture_BG1:SetPoint
{
    ADD_SIZE_Y = 26 ,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticoption:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg1_middle" )

g_pPicture_BG1:SetPoint
{
	 ADD_SIZE_X = 430,
	 ADD_SIZE_Y		= 26,
	"LEFT_TOP		= D3DXVECTOR2(10,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticoption:AddPicture( g_pPicture_BG1)

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg1_right" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_Y		= 26,
	"LEFT_TOP		= D3DXVECTOR2(441,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticoption:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg2_left" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 26 ,
	"LEFT_TOP		= D3DXVECTOR2(13,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticoption:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg2_middle" )

g_pPicture_bg2:SetPoint
{
     ADD_SIZE_X = 407,
	 ADD_SIZE_Y		= 26,
	"LEFT_TOP		= D3DXVECTOR2(21,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticoption:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg2_right" )

g_pPicture_bg2:SetPoint
{
	--ADD_SIZE_X = 66,
	ADD_SIZE_Y		= 26,
	"LEFT_TOP		= D3DXVECTOR2(329+100,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











------------------                     그래픽                     ---------------


g_pRadioButtongraphic = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtongraphic )

g_pRadioButtongraphic:SetFixOverByCheck( true )
g_pRadioButtongraphic:SetShowOffBGByCheck( true )

g_pRadioButtongraphic:SetName( "Option_Graphic_Menu" )

g_pRadioButtongraphic:SetNormalTex( "DLG_UI_Button08.tga", "graphic_normal" )


g_pRadioButtongraphic:SetOverTex( "DLG_UI_Button08.tga", "graphic_over" )


g_pRadioButtongraphic:SetCheckedTex( "DLG_UI_Button08.tga", "graphic_down" )


g_pRadioButtongraphic:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24-4,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtongraphic:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24-4,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtongraphic:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(24-4,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(93-4,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtongraphic:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(24-4-1,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtongraphic:SetGroupID( 1 )
g_pRadioButtongraphic:SetChecked( true )
g_pRadioButtongraphic:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC"] )






-----------------                     사운드                ----------------------


g_pRadioButtonsound = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonsound )
g_pRadioButtonsound:SetFixOverByCheck( true )
g_pRadioButtonsound:SetShowOffBGByCheck( true )
g_pRadioButtonsound:SetName( "Option_Sound_Menu" )
g_pRadioButtonsound:SetNormalTex( "DLG_UI_Button08.tga", "sound_normal" )
g_pRadioButtonsound:SetOverTex( "DLG_UI_Button08.tga", "sound_over" )
g_pRadioButtonsound:SetCheckedTex( "DLG_UI_Button08.tga", "sound_down" )
g_pRadioButtonsound:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(92-4-15,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonsound:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(92-4-15,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonsound:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(92-4-15,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(163-4-15,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonsound:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(92-4-15,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pRadioButtonsound:SetGroupID( 1 )
g_pRadioButtonsound:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND"] )


------------------                     보안                    ---------------


g_pRadioButtonsecurity = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonsecurity )

g_pRadioButtonsecurity:SetFixOverByCheck( true )
g_pRadioButtonsecurity:SetShowOffBGByCheck( true )
--g_pRadioButtonsecurity:SetShowEnable( false, false )

g_pRadioButtonsecurity:SetName( "Option_security_Menu" )

g_pRadioButtonsecurity:SetNormalTex( "DLG_UI_Button18.tga", "security_normal" )


g_pRadioButtonsecurity:SetOverTex( "DLG_UI_Button18.tga", "security_over" )


g_pRadioButtonsecurity:SetCheckedTex( "DLG_UI_Button18.tga", "security_down" )


g_pRadioButtonsecurity:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(298-7+MOVE_ETC_BUTTON_X,52+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonsecurity:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(298-7+MOVE_ETC_BUTTON_X,52+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonsecurity:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(298-7+MOVE_ETC_BUTTON_X,52+2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(298+69-7,84+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonsecurity:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(298-3-7+MOVE_ETC_BUTTON_X,48+2+2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonsecurity:SetGroupID( 1 )
g_pRadioButtonsecurity:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SECURITY"] )










-----------------                기타              ----------------------


g_pRadioButtonetc = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonetc )

g_pRadioButtonetc:SetFixOverByCheck( true )
g_pRadioButtonetc:SetShowOffBGByCheck( true )

g_pRadioButtonetc:SetName( "Option_Other_Menu" )

g_pRadioButtonetc:SetNormalTex( "DLG_UI_Button08.tga", "etc_normal" )


g_pRadioButtonetc:SetOverTex( "DLG_UI_Button08.tga", "etc_over" )


g_pRadioButtonetc:SetCheckedTex( "DLG_UI_Button08.tga", "etc_down" )


g_pRadioButtonetc:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(255+100+MOVE_ETC_BUTTON_X,52+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonetc:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(255+100-1+MOVE_ETC_BUTTON_X,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonetc:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(255+100+MOVE_ETC_BUTTON_X,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(326+100+MOVE_ETC_BUTTON_X,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonetc:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(258+100-3+MOVE_ETC_BUTTON_X,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonetc:SetGroupID( 1 )
g_pRadioButtonetc:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER"] )



-----------------             반디캠              ----------------------X_x88


g_pRadio_Option_Cam = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadio_Option_Cam )

g_pRadio_Option_Cam:SetFixOverByCheck( true )
g_pRadio_Option_Cam:SetShowOffBGByCheck( true )

g_pRadio_Option_Cam:SetName( "Option_Cam_Menu" )

g_pRadio_Option_Cam:SetNormalTex( "DLG_UI_Button08.tga", "VIDEO_normal" )


g_pRadio_Option_Cam:SetOverTex( "DLG_UI_Button08.tga", "VIDEO_over" )


g_pRadio_Option_Cam:SetCheckedTex( "DLG_UI_Button08.tga", "VIDEO_down" )


g_pRadio_Option_Cam:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(186-61,53)",		--D3DXVECTOR2(255-100+66,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Option_Cam:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(186-61,52)",		--D3DXVECTOR2(257-100+66,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Option_Cam:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(186-61,53)",		--D3DXVECTOR2(255-100+66,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(186+57-61,84)",	--D3DXVECTOR2(326-100+67,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadio_Option_Cam:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(186-61,48)",		--D3DXVECTOR2(259-100+66,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadio_Option_Cam:SetGroupID( 1 )
g_pRadio_Option_Cam:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_CAM"] )
--g_pRadio_Option_Cam:SetShow(false)
------------------------BG3


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticoption:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg3_left" )

g_pPicture_bg3:SetPoint
{
	ADD_SIZE_Y		= 26,
	"LEFT_TOP		= D3DXVECTOR2(18,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticoption:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg3_middle" )

g_pPicture_bg3:SetPoint
{
     ADD_SIZE_X = 398,
	 ADD_SIZE_Y		= 26,
	"LEFT_TOP		= D3DXVECTOR2(25,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticoption:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture08.TGA", "option_bg3_right" )

g_pPicture_bg3:SetPoint
{
	ADD_SIZE_Y		= 26,
	"LEFT_TOP		= D3DXVECTOR2(324+100,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------TITLE


g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticoption:AddPicture( g_pPicture_title)

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "option" )

g_pPicture_title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}















--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(313+100,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(309+100,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(309+1+100,10 +1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_WINDOW_CLOSE"] )



-----------------                     게임패드                ----------------------
-- KEY_MAPPING_INT 패드 사용시 주석 해제

g_pRadioButtonInput = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonInput )

g_pRadioButtonInput:SetFixOverByCheck( true )
g_pRadioButtonInput:SetShowOffBGByCheck( true )

g_pRadioButtonInput:SetName( "Option_Input_Menu" )

g_pRadioButtonInput:SetNormalTex( "DLG_UI_Button08_A.tga", "PAD_NORMAL" )


g_pRadioButtonInput:SetOverTex( "DLG_UI_Button08_A.tga", "PAD_OVER" )


g_pRadioButtonInput:SetCheckedTex( "DLG_UI_Button08_A.tga", "PAD_DOWN" )


g_pRadioButtonInput:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(186 + ADD_PAD_SIZE_X,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonInput:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(186 + ADD_PAD_SIZE_X,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonInput:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(186 + ADD_PAD_SIZE_X,53)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(186+57 + ADD_PAD_SIZE_X,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonInput:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(186+2 + ADD_PAD_SIZE_X,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonInput:SetGroupID( 1 )
g_pRadioButtonInput:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_INPUT"] )


IncludeLua( "DLG_UI_Option_Graphic.lua" )
IncludeLua( "DLG_UI_Option_Sound.lua" )
IncludeLua( "DLG_UI_Option_Etc.lua" )
IncludeLua( "DLG_UI_Option_Security.lua" )
IncludeLua( "DLG_UI_Option_Cam.lua" )
-- #ifdef IDENTITY_CONFIRM , 조이패드 
IncludeLua( "DLG_UI_Option_Etc2.lua" ) --우선 제거
-- #endif IDENTITY_CONFIRM , 조이패드