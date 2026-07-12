-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "StudentPopup" )
g_pUIDialog:SetPos( 250, 200 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )







g_pStaticStudent_Popup = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStudent_Popup )
g_pStaticStudent_Popup:SetName( "g_pStaticStudent_Popup" )


g_pPictureStudent_Popup_BG1 = g_pUIDialog:CreatePicture()
g_pStaticStudent_Popup:AddPicture( g_pPictureStudent_Popup_BG1 )

g_pPictureStudent_Popup_BG1:SetTex( "DLG_Common_New_Texture37.TGA", "popup_window2" )

g_pPictureStudent_Popup_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureStudent_Popup_BG2 = g_pUIDialog:CreatePicture()
g_pStaticStudent_Popup:AddPicture( g_pPictureStudent_Popup_BG2 )

g_pPictureStudent_Popup_BG2:SetTex( "DLG_Common_New_Texture37.TGA", "popup_window3" )

g_pPictureStudent_Popup_BG2:SetPoint
{
	ADD_SIZE_Y = 50-10,
	"LEFT_TOP		= D3DXVECTOR2(0,208)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureStudent_Popup_BG3 = g_pUIDialog:CreatePicture()
g_pStaticStudent_Popup:AddPicture( g_pPictureStudent_Popup_BG3 )

g_pPictureStudent_Popup_BG3:SetTex( "DLG_Common_New_Texture37.TGA", "popup_window4" )

g_pPictureStudent_Popup_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,258-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureStudent_Popup_BG4 = g_pUIDialog:CreatePicture()
g_pStaticStudent_Popup:AddPicture( g_pPictureStudent_Popup_BG4 )

g_pPictureStudent_Popup_BG4:SetTex( "DLG_Common_New_Texture54.TGA", "student_title" )

g_pPictureStudent_Popup_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureStudent_Popup_BG5 = g_pUIDialog:CreatePicture()
g_pStaticStudent_Popup:AddPicture( g_pPictureStudent_Popup_BG5 )

g_pPictureStudent_Popup_BG5:SetTex( "DLG_Common_New_Texture54.TGA", "student_comment" )

g_pPictureStudent_Popup_BG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(38,97-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureStudent_Popup_BG6 = g_pUIDialog:CreatePicture()
g_pStaticStudent_Popup:AddPicture( g_pPictureStudent_Popup_BG6 )

g_pPictureStudent_Popup_BG6:SetTex( "DLG_Common_New_Texture54.TGA", "check_comment" )

g_pPictureStudent_Popup_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(112,248-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Student_Popup_Exit" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetNormalPoint
{
	ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(359+45,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357+45,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(358+45,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_ACCEPT_TUTOR_NO"] )






g_pButtonOK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOK )
g_pButtonOK:SetName( "Student_Popup_OK" )
g_pButtonOK:SetNormalTex( "DLG_Common_New_Texture54.tga", "student_button_normal" )

g_pButtonOK:SetOverTex( "DLG_Common_New_Texture54.tga", "student_button_over" )

g_pButtonOK:SetDownTex( "DLG_Common_New_Texture54.tga", "student_button_over" )

g_pButtonOK:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(78+82,223-20-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(78+82,223-20-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(79+82,224-20-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetCustomMsgMouseUp( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_ACCEPT_TUTOR_YES"] )





g_pStaticUser_ID = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticUser_ID )
	g_pStaticUser_ID:SetName( "g_pStatic_Item_ID_1Line" )

	g_pStaticUser_ID:AddString
	{
		-- MSG 			= "[WWWWWWWWWWWW]",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(160,60-5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	g_pStaticComment = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticComment )
	g_pStaticComment:SetName( "g_pStaticComment" )

	g_pStaticComment:AddString
	{
		MSG 			= STR_ID_1173,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(177,60-5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	g_pStaticComment2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticComment2 )
	g_pStaticComment2:SetName( "g_pStaticComment2" )

	g_pStaticComment2:AddString
	{
		MSG 			= STR_ID_1174,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(100,156-5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
			------------------(채크 박스)
	
	
	g_pCheckBoxCashShop_BuyWindow_Slot = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxCashShop_BuyWindow_Slot:SetName( "g_pCheckBoxCashShop_BuyWindow_Slot" )
	g_pUIDialog:AddControl( g_pCheckBoxCashShop_BuyWindow_Slot )

	g_pCheckBoxCashShop_BuyWindow_Slot:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxCashShop_BuyWindow_Slot:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "Check" )


g_pCheckBoxCashShop_BuyWindow_Slot:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(114,250-10)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(125,260-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxCashShop_BuyWindow_Slot:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(109,245-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxCashShop_BuyWindow_Slot:SetCustomMsgChecked( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_REFUSE_TUTOR_REQUEST_FOR_A_WEEK"] )
g_pCheckBoxCashShop_BuyWindow_Slot:SetCustomMsgUnChecked( TUTOR_SYSTEM_UI_CUSTOM_MSG["TSUCM_REFUSE_TUTOR_REQUEST_FOR_A_WEEK"] )



