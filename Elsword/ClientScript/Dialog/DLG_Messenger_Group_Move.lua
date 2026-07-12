-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Messenger_Group_Move" )
g_pUIDialog:SetPos( 300,250 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_MGR_GROUP_MOVE_EXIT"] )


















































g_pStaticMaking_Group_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMaking_Group_Window )
g_pStaticMaking_Group_Window:SetName( "Making_Group_Window" )





--------------밑판1-------------------
g_pPictureBG1= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG1)

g_pPictureBG1:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background1"  )
g_pPictureBG1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(123-50,194-101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG2= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG2)

g_pPictureBG2:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background2"  )
g_pPictureBG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(50-50,194-101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG3= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG3)

g_pPictureBG3:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background3"  )
g_pPictureBG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(123-50,101-101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG4= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG4)

g_pPictureBG4:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background4"  )
g_pPictureBG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(50-50,101-101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG5= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG5)

g_pPictureBG5:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background5"  )
g_pPictureBG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG6= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG6)

g_pPictureBG6:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background6"  )
g_pPictureBG6:SetPoint
{
          ADD_SIZE_X = 330,

	"LEFT_TOP		= D3DXVECTOR2(35,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG7= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG7)

g_pPictureBG7:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background7"  )
g_pPictureBG7:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(365,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_New_Texture04.tga", "Imebox2_left"  )
g_pPictureBG8:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(109,73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_New_Texture04.tga", "Imebox2_center"  )
g_pPictureBG8:SetPoint
{

	ADD_SIZE_X = 190,
	"LEFT_TOP		= D3DXVECTOR2(119,73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_New_Texture04.tga", "Imebox2_Right"  )
g_pPictureBG8:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(310,73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}













-----------------글자----------------------

g_pPictureMaking_Group_Title= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureMaking_Group_Title)

g_pPictureMaking_Group_Title:SetTex( "DLG_Common_New_Texture04.tga", "GROUPMOVE_TITLE"  )
g_pPictureMaking_Group_Title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(11,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMaking_Group_Text= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureMaking_Group_Text)

g_pPictureMaking_Group_Text:SetTex( "DLG_Common_New_Texture04.tga", "GROUPMOVE_font"  )
g_pPictureMaking_Group_Text:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(32,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








----------------버튼----------------------------------
 g_pButtonConfirm = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonConfirm )
g_pButtonConfirm:SetName( "confirmButton" )
g_pButtonConfirm:SetNormalTex( "DLG_Common_New_Texture04.tga", "Button_Confirm_Normal" )

g_pButtonConfirm:SetOverTex( "DLG_Common_New_Texture04.tga", "Button_Confirm_Over" )

g_pButtonConfirm:SetDownTex( "DLG_Common_New_Texture04.tga", "Button_Confirm_Over" )

g_pButtonConfirm:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(155,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonConfirm:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(155,119)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonConfirm:SetDownPoint
{
       ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(156,120)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonConfirm:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_MGR_GROUP_MOVE_OK"] )




g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "exitButton" )
g_pButtonX:SetNormalTex( "DLG_Common_Texture20.tga", "Button_X_Normal" )

g_pButtonX:SetOverTex( "DLG_Common_Texture20.tga", "Button_X_Over" )

g_pButtonX:SetDownTex( "DLG_Common_Texture20.tga", "Button_X_Normal" )

g_pButtonX:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(357,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(358,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_MGR_GROUP_MOVE_EXIT"] )



g_pComboBoxOption_Window_Graphic = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxOption_Window_Graphic )
g_pComboBoxOption_Window_Graphic:SetName( "Combo_Group_Name" )

--거꾸로 나오게 할것인가?
g_pComboBoxOption_Window_Graphic:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBoxOption_Window_Graphic:SetDropHeight( 50 )
				   
g_pComboBoxOption_Window_Graphic:SetString
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBoxOption_Window_Graphic:SetTextTex( "DLG_Common_Button00.tga", "invisible" )


g_pComboBoxOption_Window_Graphic:SetButtonTex ( "DLG_Common_New_Texture04.tga", "ComboBox_Button_Normal" )


g_pComboBoxOption_Window_Graphic:SetButtonMouseOverTex( "DLG_Common_New_Texture04.tga", "ComboBox_Button_Over" )


g_pComboBoxOption_Window_Graphic:SetButtonMouseDownTex ( "DLG_Common_New_Texture04.tga", "ComboBox_Button_Down" )


g_pComboBoxOption_Window_Graphic:SetDropdownTex ( "DLG_Common_New_Texture11.tga", "Messenger_1Pix_Grey" )


g_pComboBoxOption_Window_Graphic:SetDropdownTextTex ( "DLG_Common_Texture09.tga", "Black" )







g_pComboBoxOption_Window_Graphic:SetScollBarUpButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Over" )

g_pComboBoxOption_Window_Graphic:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Normal" )

g_pComboBoxOption_Window_Graphic:SetScollBarDownButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Over" )

g_pComboBoxOption_Window_Graphic:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Normal" )

g_pComboBoxOption_Window_Graphic:SetScollBarThumbTex( "DLG_Common_New_Texture02.dds", "Scroll" )

g_pComboBoxOption_Window_Graphic:SetScollBarTrackTex( "DLG_Common_New_Texture11.tga", "Messenger_1Pix_Deepgrey" )












g_pComboBoxOption_Window_Graphic:InitScrollBar()



--자동으로 만들 때
--g_pComboBoxOption_Window_Graphic:SetPos( 200, 129 )
--g_pComboBoxOption_Window_Graphic:SetSize( 100, 50 )

--수동으로 만들 때
g_pComboBoxOption_Window_Graphic:SetTextPos( 115, 78)
g_pComboBoxOption_Window_Graphic:SetTextSize( 200, 25)
--텍스트 시작 포인트
g_pComboBoxOption_Window_Graphic:SetTextStringOffsetPos( 64, 6 )
g_pComboBoxOption_Window_Graphic:SetButtonPos( 325, 76)
g_pComboBoxOption_Window_Graphic:SetButtonSize( 26, 26)







