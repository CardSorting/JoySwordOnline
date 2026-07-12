-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pButton_List_BTN01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_List_BTN01 )
g_pButton_List_BTN01:SetName( "ListControl_Button" )
	
g_pButton_List_BTN01:SetNormalTex( "DLG_UI_BUTTON01.tga", "list_NORMAL" )
g_pButton_List_BTN01:SetOverTex( "DLG_UI_BUTTON09.tga", "Line_Bt" )
g_pButton_List_BTN01:SetDownTex( "DLG_UI_BUTTON09.tga", "Line_Bt" )
	
g_pButton_List_BTN01:SetNormalPoint
	{
	     ADD_SIZE_X = -182,
	     ADD_SIZE_Y = 3,	
	    "LEFT_TOP		= D3DXVECTOR2(-83,-4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_List_BTN01:SetOverPoint
	{
	     ADD_SIZE_X = 15,
	     ADD_SIZE_Y = -23,	
		"LEFT_TOP		= D3DXVECTOR2(-83,-4)",
	
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_List_BTN01:SetDownPoint
	{
	     ADD_SIZE_X = 15-2,
	     ADD_SIZE_Y = -23-2,	
	 	"LEFT_TOP		= D3DXVECTOR2(-83+1,-4+1)",
	
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_List_BTN01:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_WARP_DEST_SELECT"] )
g_pButton_List_BTN01:SetCustomMsgMouseDblClk( STATE_MENU_UI_CUSTOM_MSG["SMUCM_WARP_DEST"] )


