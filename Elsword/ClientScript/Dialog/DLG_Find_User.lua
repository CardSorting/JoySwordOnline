-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Find_User_Window" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_MENU_UI_CUSTOM_MSG["SMUCM_FIND_USER_CANCEL"] )

g_pStaticShadow_Line = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticShadow_Line )
g_pStaticShadow_Line:SetName( "Background" )



g_pPictureShadow_Line1 = g_pUIDialog:CreatePicture()
g_pStaticShadow_Line:AddPicture(g_pPictureShadow_Line1)

g_pPictureShadow_Line1:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line1" )

g_pPictureShadow_Line1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(332,431)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShadow_Line2 = g_pUIDialog:CreatePicture()
g_pStaticShadow_Line:AddPicture(g_pPictureShadow_Line2)

g_pPictureShadow_Line2:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line3" )

g_pPictureShadow_Line2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(687,431)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShadow_Line3 = g_pUIDialog:CreatePicture()
g_pStaticShadow_Line:AddPicture(g_pPictureShadow_Line3)

g_pPictureShadow_Line3:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line2" )

g_pPictureShadow_Line3:SetPoint
{
     ADD_SIZE_X = 342,
	"LEFT_TOP		= D3DXVECTOR2(344,431)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShadow_Line4 = g_pUIDialog:CreatePicture()
g_pStaticShadow_Line:AddPicture(g_pPictureShadow_Line4)

g_pPictureShadow_Line4:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line4" )

g_pPictureShadow_Line4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(687,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShadow_Line5 = g_pUIDialog:CreatePicture()
g_pStaticShadow_Line:AddPicture(g_pPictureShadow_Line5)

g_pPictureShadow_Line5:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line5" )

g_pPictureShadow_Line5:SetPoint
{
    ADD_SIZE_Y = 181,
	"LEFT_TOP		= D3DXVECTOR2(687,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}














g_pStaticUser_Search_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Search_Window )
g_pStaticUser_Search_Window:SetName( "User_Search_Window" )




--------------밑판1-------------------
g_pPictureBG1= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureBG1)

g_pPictureBG1:SetTex( "DLG_Common_Texture01.tga", "Black"  )

g_pPictureBG1:SetPoint
{
     ADD_SIZE_X = 361,
 	ADD_SIZE_Y = 207,
	"LEFT_TOP		= D3DXVECTOR2(332,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG2= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureBG2)

g_pPictureBG2:SetTex( "DLG_Common_Texture01.tga", "Color6"  )

g_pPictureBG2:SetPoint
{
     ADD_SIZE_X = 351,
 	ADD_SIZE_Y = 197,
	"LEFT_TOP		= D3DXVECTOR2(337,232)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG3= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureBG3)

g_pPictureBG3:SetTex( "DLG_Common_Texture01.tga", "Black"  )

g_pPictureBG3:SetPoint
{
     ADD_SIZE_X = 345,
 	ADD_SIZE_Y = 191,
	"LEFT_TOP		= D3DXVECTOR2(340,235)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureBG4= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureBG4)

g_pPictureBG4:SetTex( "DLG_Common_Texture01.tga", "Main_Bar1"  )

g_pPictureBG4:SetPoint
{
     ADD_SIZE_X = 341,
 	ADD_SIZE_Y = 37,
	"LEFT_TOP		= D3DXVECTOR2(342,237)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG5= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureBG5)

g_pPictureBG5:SetTex( "DLG_Common_Texture01.tga", "Box"  )

g_pPictureBG5:SetPoint
{
     ADD_SIZE_X = 341,
 	ADD_SIZE_Y = 150,
	"LEFT_TOP		= D3DXVECTOR2(342,274)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG6= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureBG6)

g_pPictureBG6:SetTex( "DLG_Common_Texture01.tga", "Color11"  )

g_pPictureBG6:SetPoint
{
     ADD_SIZE_X = 335,
 	ADD_SIZE_Y = 144,
	"LEFT_TOP		= D3DXVECTOR2(345,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG7= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureBG7)

g_pPictureBG7:SetTex( "DLG_Common_Texture01.tga", "Box_Button5"  )

g_pPictureBG7:SetPoint
{
     ADD_SIZE_X = 331,
 	ADD_SIZE_Y = 140,
	"LEFT_TOP		= D3DXVECTOR2(347,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_Texture09.tga", "Making_Window9"  )

g_pPictureBG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(442,302)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG9= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureBG9)

g_pPictureBG9:SetTex( "DLG_Common_Texture09.tga", "Making_Window9"  )

g_pPictureBG9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(442,351)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










g_pIMEEditBox = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBox )
g_pIMEEditBox:SetName( "IMEEditBox_NickName" )
g_pIMEEditBox:SetTextPoint
{
	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(452, 307)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(596, 322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}
g_pIMEEditBox:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBox:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox:SetTabControlName( "Button_Find" );
g_pIMEEditBox:SetCustomMsgEnter( STATE_MENU_UI_CUSTOM_MSG["SMUCM_FIND_USER_OK"] )
g_pIMEEditBox:RequestFocus()






g_pButtonCheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCheck )
g_pButtonCheck:SetName( "Button_Find" )
g_pButtonCheck:SetNormalTex( "DLG_Common_Texture03.tga", "Box_Normal" )

g_pButtonCheck:SetOverTex( "DLG_Common_Texture03.tga", "Box_Over" )

g_pButtonCheck:SetDownTex( "DLG_Common_Texture03.tga", "Box_Down" )

g_pButtonCheck:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(423,384)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(423,384)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(423,384)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_FIND_USER_OK"] )



g_pButtonCencle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCencle )
g_pButtonCencle:SetName( "ButtonCencle" )
g_pButtonCencle:SetNormalTex( "DLG_Common_Texture03.tga", "Box_Normal" )

g_pButtonCencle:SetOverTex( "DLG_Common_Texture03.tga", "Box_Over" )

g_pButtonCencle:SetDownTex( "DLG_Common_Texture03.tga", "Box_Down" )

g_pButtonCencle:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(517,384)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCencle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(517,384)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCencle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(517,384)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCencle:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_FIND_USER_CANCEL"] )






g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Button_Cancel" )
g_pButtonX:SetNormalTex( "DLG_Common_Button01.tga", "X_Icon_Normal" )

g_pButtonX:SetOverTex( "DLG_Common_Button01.tga", "X_Icon_Over" )

g_pButtonX:SetDownTex( "DLG_Common_Button01.tga", "X_Icon_Normal" )

g_pButtonX:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(652,241)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(652,241)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(652,241)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_FIND_USER_CANCEL"] )











g_pStaticUser_Search_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Search_Window )
g_pStaticUser_Search_Window:SetName( "User_Search_Window" )


g_pPictureUser_Search= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureUser_Search)

g_pPictureUser_Search:SetTex( "DLG_Common_Texture09.tga", "User_Search"  )

g_pPictureUser_Search:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(472,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureUser_Icon1= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureUser_Icon1)

g_pPictureUser_Icon1:SetTex( "DLG_Common_Texture09.tga", "Icon"  )

g_pPictureUser_Icon1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(377,283)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Icon2= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureUser_Icon2)

g_pPictureUser_Icon2:SetTex( "DLG_Common_Texture09.tga", "Icon"  )

g_pPictureUser_Icon2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(377,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCheck= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureCheck)

g_pPictureCheck:SetTex( "DLG_Common_Texture01.tga", "Quest_Enter"  )

g_pPictureCheck:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(452,393)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCencle= g_pUIDialog:CreatePicture()
g_pStaticUser_Search_Window:AddPicture( g_pPictureCencle)

g_pPictureCencle:SetTex( "DLG_Common_Texture09.tga", "Cancel"  )

g_pPictureCencle:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(546,393)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









---------------폰트


    g_pStaticNotice= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticNotice)
 	g_pStaticNotice:SetName( "Notice" )

     g_pStaticNotice:AddString
    {
 	 MSG    		 = STR_ID_2593,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(447,286)",
 	 "COLOR          = D3DXCOLOR(0.6,0.7,0.4,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 
	 g_pStaticFriend_Search= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticFriend_Search)
 	g_pStaticFriend_Search:SetName( "Friend_Search" )

     g_pStaticFriend_Search:AddString
    {
 	 MSG    		 = STR_ID_2594,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(447,336)",
 	 "COLOR          = D3DXCOLOR(0.6,0.7,0.4,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 
	 
	 
	 
	 
	 









g_pComboBoxUser_Search_Window = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxUser_Search_Window )
g_pComboBoxUser_Search_Window:SetName( "ComboBoxUser_Search_Window" )

--거꾸로 나오게 할것인가?
g_pComboBoxUser_Search_Window:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBoxUser_Search_Window:SetDropHeight( 50 )
				   
g_pComboBoxUser_Search_Window:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBoxUser_Search_Window:SetTextTex( "DLG_Common_Button00.tga", "invisible" )


g_pComboBoxUser_Search_Window:SetButtonTex ( "DLG_Common_Texture09.tga", "Arrow_Down_Normal" )


g_pComboBoxUser_Search_Window:SetButtonMouseOverTex( "DLG_Common_Texture09.tga", "Arrow_Down_Over" )


g_pComboBoxUser_Search_Window:SetButtonMouseDownTex ( "DLG_Common_Texture09.tga", "Arrow_Down_Over" )


g_pComboBoxUser_Search_Window:SetDropdownTex ( "DLG_Common_Texture01.tga", "White" )


g_pComboBoxUser_Search_Window:SetDropdownTextTex ( "DLG_Common_Texture09.tga", "Black" )


g_pComboBoxUser_Search_Window:SetScollBarUpButtonTex( "DLG_Common_Texture09.tga", "Arrow_Up_Normal" )

g_pComboBoxUser_Search_Window:SetScollBarUpButtonDownTex( "DLG_Common_Texture09.tga", "Arrow_Up_Over" )

g_pComboBoxUser_Search_Window:SetScollBarDownButtonTex( "DLG_Common_Texture09.tga", "Arrow_Down_Normal" )

g_pComboBoxUser_Search_Window:SetScollBarDownButtonDownTex( "DLG_Common_Texture09.tga", "Arrow_Down_Over" )

g_pComboBoxUser_Search_Window:SetScollBarThumbTex( "DLG_Common_Texture09.tga", "List_Bar" )

g_pComboBoxUser_Search_Window:SetScollBarTrackTex( "DLG_Common_Texture09.tga", "Black" )


g_pComboBoxUser_Search_Window:InitScrollBar()


--자동으로 만들 때
--g_pComboBoxUser_Search_Window:SetPos( 200, 129 )
--g_pComboBoxUser_Search_Window:SetSize( 100, 50 )

--수동으로 만들 때
g_pComboBoxUser_Search_Window:SetTextPos( 450, 352)
g_pComboBoxUser_Search_Window:SetTextSize( 150, 25)
--텍스트 시작 포인트
g_pComboBoxUser_Search_Window:SetTextStringOffsetPos( 39, 6 )
g_pComboBoxUser_Search_Window:SetButtonPos( 610, 352)
g_pComboBoxUser_Search_Window:SetButtonSize( 23, 23)


g_pComboBoxUser_Search_Window:SetCustomMsgSelectionChanged( STATE_MENU_UI_CUSTOM_MSG["SMUCM_FIND_USER_SELECT"] )
