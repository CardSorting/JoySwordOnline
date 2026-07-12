-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Recommend" )
g_pUIDialog:SetPos( 92, 160 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_RECOMMEND_NEXT"] )


-----------(방 리스트)

g_pStaticAdd_Nominator = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAdd_Nominator )
g_pStaticAdd_Nominator:SetName( "g_pStaticAdd_Nominator" )



g_pPicturePresent_Niminator_Window1 = g_pUIDialog:CreatePicture()
g_pStaticAdd_Nominator:AddPicture(g_pPicturePresent_Niminator_Window1)

g_pPicturePresent_Niminator_Window1:SetTex( "DLG_Nominate1_ver2.tga", "back1" )

g_pPicturePresent_Niminator_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePresent_Niminator_Window2 = g_pUIDialog:CreatePicture()
g_pStaticAdd_Nominator:AddPicture(g_pPicturePresent_Niminator_Window2)

g_pPicturePresent_Niminator_Window2:SetTex( "DLG_Nominate2_ver2.tga", "back2" )

g_pPicturePresent_Niminator_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(510,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------------- 추천인 등록


g_pButtonNominator_Input = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNominator_Input )
g_pButtonNominator_Input:SetName( "Button_Nominator_Input" )
g_pButtonNominator_Input:SetNormalTex( "DLG_UI_Button21_NEW.tga", "Bt_Nominator_Input" )

g_pButtonNominator_Input:SetOverTex( "DLG_UI_Button21_NEW.tga", "Bt_Nominator_Input_Over" )

g_pButtonNominator_Input:SetDownTex( "DLG_UI_Button21_NEW.tga", "Bt_Nominator_Input_Over" )


g_pButtonNominator_Input:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(309,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNominator_Input:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(309,378)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNominator_Input:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(309+1,378+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonNominator_Input:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_RECOMMEND_OK"] )

--------------------- 다음 기회에 등록


g_pButtonNextTime = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNextTime )
g_pButtonNextTime:SetName( "Button_NextTime" )
g_pButtonNextTime:SetNormalTex( "DLG_UI_Button21_NEW.tga", "Bt_NextTime" )

g_pButtonNextTime:SetOverTex( "DLG_UI_Button21_NEW.tga", "Bt_NextTime_Over" )

g_pButtonNextTime:SetDownTex( "DLG_UI_Button21_NEW.tga", "Bt_NextTime_Over" )


g_pButtonNextTime:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(309+95,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextTime:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(309+95,378)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextTime:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(309+1+95,378+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonNextTime:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_RECOMMEND_NEXT"] )
--------------------- 보지 않기


g_pButtonDontSee = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDontSee )
g_pButtonDontSee:SetName( "Button_DontSee" )
g_pButtonDontSee:SetNormalTex( "DLG_UI_Button21_NEW.tga", "Bt_DontSee" )

g_pButtonDontSee:SetOverTex( "DLG_UI_Button21_NEW.tga", "Bt_DontSee_Over" )

g_pButtonDontSee:SetDownTex( "DLG_UI_Button21_NEW.tga", "Bt_DontSee_Over" )


g_pButtonDontSee:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(309+95*2,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDontSee:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(309+95*2,378)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDontSee:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(309+1+95*2,378+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonDontSee:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_RECOMMEND_CANCEL"] )



--나가기 버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "X" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetNormalPoint
{
	ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(359+335,13+17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357+335,11+17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(358+335,12+17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_RECOMMEND_NEXT"] )




	
	

	
	
	
	
	
	
	
g_pIMEEditBoxName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxName )
g_pIMEEditBoxName:SetName( "g_pIMEEditBoxName" )
g_pIMEEditBoxName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(368,180)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(566,201)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxName:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxName:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxName:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )




