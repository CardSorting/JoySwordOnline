-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Student_List_Window" )
g_pUIDialog:SetPos( 100, 100 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_CLOSE_STUDENT_CANDIDATE_LIST"] )
g_pStaticStudent_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStudent_Window )
g_pStaticStudent_Window:SetName( "g_pStaticStudent_Window" )




--------------밑판1-------------------
g_pPictureStudent_Window_BG1= g_pUIDialog:CreatePicture()
g_pStaticStudent_Window:AddPicture( g_pPictureStudent_Window_BG1)

g_pPictureStudent_Window_BG1:SetTex( "DLG_student1.tga", "window1"  )

g_pPictureStudent_Window_BG1:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(0+100,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureStudent_Window_BG2= g_pUIDialog:CreatePicture()
g_pStaticStudent_Window:AddPicture( g_pPictureStudent_Window_BG2)

g_pPictureStudent_Window_BG2:SetTex( "DLG_student2.tga", "window2"  )

g_pPictureStudent_Window_BG2:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(512+100,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureStudent_Window_BG3= g_pUIDialog:CreatePicture()
g_pStaticStudent_Window:AddPicture( g_pPictureStudent_Window_BG3)

g_pPictureStudent_Window_BG3:SetTex( "DLG_student2.tga", "window3"  )

g_pPictureStudent_Window_BG3:SetPoint
{
ADD_SIZE_X = 0.5,
    
	"LEFT_TOP		= D3DXVECTOR2(0+100,510)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureStudent_Window_BG4= g_pUIDialog:CreatePicture()
g_pStaticStudent_Window:AddPicture( g_pPictureStudent_Window_BG4)

g_pPictureStudent_Window_BG4:SetTex( "DLG_student2.tga", "window4"  )

g_pPictureStudent_Window_BG4:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(378+100,510)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureStudent_Window_BG5= g_pUIDialog:CreatePicture()
g_pStaticStudent_Window:AddPicture( g_pPictureStudent_Window_BG5)

g_pPictureStudent_Window_BG5:SetTex( "DLG_student2.tga", "npc"  )

g_pPictureStudent_Window_BG5:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(-13,-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureStudent_Window_BG6= g_pUIDialog:CreatePicture()
g_pStaticStudent_Window:AddPicture( g_pPictureStudent_Window_BG6)

g_pPictureStudent_Window_BG6:SetTex( "DLG_Common_New_Texture48.tga", "student_comment"  )

g_pPictureStudent_Window_BG6:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(120,336)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Student_Window_X" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetNormalPoint
{
	ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(674,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(672,22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(674,24)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_CLOSE_STUDENT_CANDIDATE_LIST"] )









g_pButton_Reflash = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Reflash )
g_pButton_Reflash:SetName( "Student_Window_Reflash" )
g_pButton_Reflash:SetNormalTex( "DLG_Common_New_Texture52.tga", "reflash_normal" )

g_pButton_Reflash:SetOverTex( "DLG_Common_New_Texture52.tga", "reflash_over" )

g_pButton_Reflash:SetDownTex( "DLG_Common_New_Texture52.tga", "reflash_over" )

g_pButton_Reflash:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(593,452)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Reflash:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(593,450)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Reflash:SetDownPoint
{
	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(594,451)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Reflash:SetCustomMsgMouseUp( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_REFRESH_STUDENT_CANDIDATE_LIST"] )













g_pButton_student_button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_student_button )
g_pButton_student_button:SetName( "student_button" )
g_pButton_student_button:SetNormalTex( "DLG_Common_New_Texture52.tga", "student_button_normal" )

g_pButton_student_button:SetOverTex( "DLG_Common_New_Texture52.tga", "student_button_over" )

g_pButton_student_button:SetDownTex( "DLG_Common_New_Texture52.tga", "student_button_over" )

g_pButton_student_button:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(463,486)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_student_button:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(463,486)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_student_button:SetDownPoint
{
	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(464,487)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_student_button:SetCustomMsgMouseUp( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_REQUEST_STUDENT"] )






-------------라디오 버튼
g_pRadioButton_Student_List1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Student_List1 )

g_pRadioButton_Student_List1:SetFixOverByCheck( true )
g_pRadioButton_Student_List1:SetShowOffBGByCheck( true )

g_pRadioButton_Student_List1:SetName( "Student_List1" )

g_pRadioButton_Student_List1:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButton_Student_List1:SetOverTex( "DLG_Common_New_Texture48.TGA", "student_radiobutton_over" )


g_pRadioButton_Student_List1:SetCheckedTex( "DLG_Common_New_Texture48.TGA", "student_radiobutton_down" )


g_pRadioButton_Student_List1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(357,250)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(357+333,250+39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Student_List1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(357,250)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List1:SetGroupID( 1 )
g_pRadioButton_Student_List1:SetCustomMsgChecked( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_STUDENT_CANDIDATE_1"] ) 









g_pRadioButton_Student_List2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Student_List2 )

g_pRadioButton_Student_List2:SetFixOverByCheck( true )
g_pRadioButton_Student_List2:SetShowOffBGByCheck( true )

g_pRadioButton_Student_List2:SetName( "Student_List2" )

g_pRadioButton_Student_List2:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButton_Student_List2:SetOverTex( "DLG_Common_New_Texture48.TGA", "student_radiobutton_over" )


g_pRadioButton_Student_List2:SetCheckedTex( "DLG_Common_New_Texture48.TGA", "student_radiobutton_down" )


g_pRadioButton_Student_List2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357,250+39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(357,250+39)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(357+333,250+39+39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Student_List2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(357,250+39)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List2:SetGroupID( 1 )
g_pRadioButton_Student_List2:SetCustomMsgChecked( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_STUDENT_CANDIDATE_2"] ) 




g_pRadioButton_Student_List3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Student_List3 )

g_pRadioButton_Student_List3:SetFixOverByCheck( true )
g_pRadioButton_Student_List3:SetShowOffBGByCheck( true )

g_pRadioButton_Student_List3:SetName( "Student_List3" )

g_pRadioButton_Student_List3:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButton_Student_List3:SetOverTex( "DLG_Common_New_Texture48.TGA", "student_radiobutton_over" )


g_pRadioButton_Student_List3:SetCheckedTex( "DLG_Common_New_Texture48.TGA", "student_radiobutton_down" )


g_pRadioButton_Student_List3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357,250+39+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(357,250+39+40)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(357+333,250+39+39+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Student_List3:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(357,250+39+40)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List3:SetGroupID( 1 )
g_pRadioButton_Student_List3:SetCustomMsgChecked( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_STUDENT_CANDIDATE_3"] ) 



g_pRadioButton_Student_List4 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Student_List4 )

g_pRadioButton_Student_List4:SetFixOverByCheck( true )
g_pRadioButton_Student_List4:SetShowOffBGByCheck( true )

g_pRadioButton_Student_List4:SetName( "Student_List4" )

g_pRadioButton_Student_List4:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButton_Student_List4:SetOverTex( "DLG_Common_New_Texture48.TGA", "student_radiobutton_over" )


g_pRadioButton_Student_List4:SetCheckedTex( "DLG_Common_New_Texture48.TGA", "student_radiobutton_down" )


g_pRadioButton_Student_List4:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List4:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357,250+39+40+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List4:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(357,250+39+40+40)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(357+333,250+39+39+40+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Student_List4:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(357,250+39+40+40)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List4:SetGroupID( 1 )
g_pRadioButton_Student_List4:SetCustomMsgChecked( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_STUDENT_CANDIDATE_4"] ) 






g_pRadioButton_Student_List5 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Student_List5 )

g_pRadioButton_Student_List5:SetFixOverByCheck( true )
g_pRadioButton_Student_List5:SetShowOffBGByCheck( true )

g_pRadioButton_Student_List5:SetName( "Student_List5" )

g_pRadioButton_Student_List5:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButton_Student_List5:SetOverTex( "DLG_Common_New_Texture48.TGA", "student_radiobutton_over" )


g_pRadioButton_Student_List5:SetCheckedTex( "DLG_Common_New_Texture48.TGA", "student_radiobutton_down" )


g_pRadioButton_Student_List5:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List5:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357,250+39+40+40+38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List5:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(357,250+39+40+40+38)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(357+333,250+39+39+40+40+38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Student_List5:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(357,250+39+40+40+38)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Student_List5:SetGroupID( 1 )
g_pRadioButton_Student_List5:SetCustomMsgChecked( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_STUDENT_CANDIDATE_5"] ) 









g_pButtonStudent_Window_Left_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonStudent_Window_Left_Triangle )
g_pButtonStudent_Window_Left_Triangle:SetName( "Student_Window_Left_Triangle" )
g_pButtonStudent_Window_Left_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonStudent_Window_Left_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonStudent_Window_Left_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonStudent_Window_Left_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902-500,101+353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonStudent_Window_Left_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(900-500,99+353)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonStudent_Window_Left_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902-500,101+353)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonStudent_Window_Left_Triangle:SetCustomMsgMouseUp( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_PREV_PAGE_STUDENT_CANDIDATE_LIST"] )





g_pButtonStudent_Window_Right_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonStudent_Window_Right_Triangle )
g_pButtonStudent_Window_Right_Triangle:SetName( "Student_Window_Right_Triangle" )
g_pButtonStudent_Window_Right_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonStudent_Window_Right_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonStudent_Window_Right_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonStudent_Window_Right_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966-460,101+353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonStudent_Window_Right_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964-460,99+353)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonStudent_Window_Right_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966-460,101+353)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonStudent_Window_Right_Triangle:SetCustomMsgMouseUp( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_NEXT_PAGE_STUDENT_CANDIDATE_LIST"] )





	g_pStaticPage_Font = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticPage_Font )
	g_pStaticPage_Font:SetName( "g_pStaticPage_Font" )

	g_pStaticPage_Font:AddString
	{
		-- MSG 			= "1/9",
				 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-480-4,104+353-1)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
	
	
	
	g_pStaticNicName1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticNicName1 )
	g_pStaticNicName1:SetName( "g_pStaticNicName1" )

	g_pStaticNicName1:AddString
	{
		-- MSG 			= "WWWWWWWWWWWW",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-530,104+160)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	g_pStaticNicName2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticNicName2 )
	g_pStaticNicName2:SetName( "g_pStaticNicName2" )

	g_pStaticNicName2:AddString
	{
		-- MSG 			= "WWWWWWWWWWWW",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-530,104+160+39)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	g_pStaticNicName3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticNicName3 )
	g_pStaticNicName3:SetName( "g_pStaticNicName3" )

	g_pStaticNicName3:AddString
	{
		-- MSG 			= "WWWWWWWWWWWW",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-530,104+160+79)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	g_pStaticNicName4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticNicName4 )
	g_pStaticNicName4:SetName( "g_pStaticNicName4" )

	g_pStaticNicName4:AddString
	{
		-- MSG 			= "WWWWWWWWWWWW",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-530,104+160+119)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	g_pStaticNicName5 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticNicName5 )
	g_pStaticNicName5:SetName( "g_pStaticNicName5" )

	g_pStaticNicName5:AddString
	{
		-- MSG 			= "WWWWWWWWWWWW",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-530,104+160+156)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	
	
	
	
		g_pStaticLV_1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticLV_1 )
	g_pStaticLV_1:SetName( "g_pStaticLV_1" )

	g_pStaticLV_1:AddString
	{
		-- MSG 			= "12",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-374,104+160)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	g_pStaticLV_2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticLV_2 )
	g_pStaticLV_2:SetName( "g_pStaticLV_2" )

	g_pStaticLV_2:AddString
	{
		-- MSG 			= "12",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-374,104+160+39)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	g_pStaticLV_3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticLV_3 )
	g_pStaticLV_3:SetName( "g_pStaticLV_3" )

	g_pStaticLV_3:AddString
	{
		-- MSG 			= "12",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-374,104+160+79)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	g_pStaticLV_4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticLV_4 )
	g_pStaticLV_4:SetName( "g_pStaticLV_4" )

	g_pStaticLV_4:AddString
	{
		-- MSG 			= "12",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-374,104+160+119)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	g_pStaticLV_5 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticLV_5 )
	g_pStaticLV_5:SetName( "g_pStaticLV_5" )

	g_pStaticLV_5:AddString
	{
		-- MSG 			= "12",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(933-374,104+160+156)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	
	
		g_pStaticState1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticState1 )
	g_pStaticState1:SetName( "g_pStaticState1" )

	g_pStaticState1:AddString
	{
		MSG 			= STR_ID_1172,
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(933-292,104+160)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	g_pStaticState2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticState2 )
	g_pStaticState2:SetName( "g_pStaticState2" )

	g_pStaticState2:AddString
	{
		MSG 			= STR_ID_1172,
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(933-292,104+160+39)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	g_pStaticState3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticState3 )
	g_pStaticState3:SetName( "g_pStaticState3" )

	g_pStaticState3:AddString
	{
		MSG 			= STR_ID_1172,
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(933-292,104+160+79)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	g_pStaticState4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticState4 )
	g_pStaticState4:SetName( "g_pStaticState4" )

	g_pStaticState4:AddString
	{
		MSG 			= STR_ID_1172,
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(933-292,104+160+119)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	g_pStaticState5 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticState5 )
	g_pStaticState5:SetName( "g_pStaticState5" )

	g_pStaticState5:AddString
	{
		MSG 			= STR_ID_1172,
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(933-292,104+160+156)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	
	
	
	
	
	
		------------------(채크 박스)
	
	
	g_pCheckBoxClose_Window = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxClose_Window:SetName( "g_pCheckBoxClose_Window" )
	g_pUIDialog:AddControl( g_pCheckBoxClose_Window )

	g_pCheckBoxClose_Window:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxClose_Window:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "Check" )


g_pCheckBoxClose_Window:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(126,515)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(139,527)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxClose_Window:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(122,511)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxClose_Window:SetCustomMsgChecked( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_VIEW_CANDIDATE_AFTER_A_WEEK"] )
g_pCheckBoxClose_Window:SetCustomMsgUnChecked( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_VIEW_CANDIDATE_AFTER_A_WEEK"] )
























	 
	 
	 















