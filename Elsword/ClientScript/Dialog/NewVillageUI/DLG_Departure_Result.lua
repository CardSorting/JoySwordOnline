-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

----{{ 대화상자 정의
	g_pUIDialog:SetName( "DLG_Departure_Result_Frame" )
	g_pUIDialog:SetPos( 305, 230 )
	g_pUIDialog:SetModal( false )
	g_pUIDialog:SetFront( true )
	g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
----}}

----{{ BG
	local pStatic_BackGround = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_BackGround )
	pStatic_BackGround:SetName( "BackGroundFrame" )

	local pPicture_Top = g_pUIDialog:CreatePicture()
	pStatic_BackGround:AddPicture( pPicture_Top )
	pPicture_Top:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )
	pPicture_Top:SetPoint
	{
		ADD_SIZE_X	= -8,
		ADD_SIZE_Y	= 0,
		"LEFT_TOP	= D3DXVECTOR2(0,0)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	local pPicture_Middle = g_pUIDialog:CreatePicture()
	pStatic_BackGround:AddPicture( pPicture_Middle )
	pPicture_Middle:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )
	pPicture_Middle:SetPoint
	{
		ADD_SIZE_X	= -8,
		ADD_SIZE_Y	= 0+218,
		"LEFT_TOP	= D3DXVECTOR2(0,0+19)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	local pPicture_Bottom = g_pUIDialog:CreatePicture()
	pStatic_BackGround:AddPicture( pPicture_Bottom )
	pPicture_Bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )
	pPicture_Bottom:SetPoint
	{
		ADD_SIZE_X	= -8,
		ADD_SIZE_Y	= 0,
		"LEFT_TOP	= D3DXVECTOR2(0,0+243)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
----}}

----{{ 타이틀
	local pStatic_Title = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_Title )
	pStatic_Title:SetName( "Title_Bar" )
	pStatic_Title:AddString
	{ 
		-- MSG    = "코보 서포트 여행자 특별 이벤트",
		MSG			= STR_ID_13690,
		FONT_INDEX	= XUF_DODUM_15_BOLD,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_LEFT"],
		"POS	= D3DXVECTOR2(0+56,20)",
		"COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,1.0,0.5)",
	}
	local pPicture_Title = g_pUIDialog:CreatePicture()
	pStatic_Title:AddPicture( pPicture_Title )
	pPicture_Title:SetTex( "DLG_UI_Common_Texture58.TGA", "titlebox-up" )
	pPicture_Title:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+10,0+15)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	local pPicture_Ariel = g_pUIDialog:CreatePicture()
	pStatic_Title:AddPicture( pPicture_Ariel )
	pPicture_Ariel:SetTex( "DLG_UI_Common_Texture58.TGA", "popup-small-img" )
	pPicture_Ariel:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+10,0+10)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
----}}

----{{ 말풍선 스트링
	local pStatic_TalkBox = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_TalkBox )
	pStatic_TalkBox:SetName( "TalkBox" )
	pStatic_TalkBox:AddString
	{ 
		--MSG    = "얼음 조각상 가열기를 받으셨습니다.",
		FONT_INDEX	= XUF_DODUM_13_SEMIBOLD,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_LEFT"],
		"POS	= D3DXVECTOR2(0+30,150)",
		"COLOR	= D3DXCOLOR(0.0,0.0,1.0,0.5)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.2)",
	}
	pStatic_TalkBox:AddString
	{ 
		--MSG    = "인벤토리에서 확인하세요.",
		FONT_INDEX	= XUF_DODUM_13_SEMIBOLD,
		FONT_STYLE  = FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_LEFT"],
		"POS	= D3DXVECTOR2(0+30,170)",
		"COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.5)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	}

----{{ 확인 버튼
	local Button_OK = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( Button_OK )
	Button_OK:SetName( "OK_Btn" )
	Button_OK:SetNormalTex( "DLG_ui_button03.tga", "CHECK_NORMAL" )
	Button_OK:SetOverTex( "DLG_ui_button03.tga", "CHECK_over" )
	Button_OK:SetDownTex( "DLG_ui_button03.tga", "CHECK_over" )
	Button_OK:SetNormalPoint
	{
 		"LEFT_TOP		= D3DXVECTOR2(0+200,0+220+4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	Button_OK:SetOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+200-2,0+220-2+4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	Button_OK:SetDownPoint
	{
		ADD_SIZE_X = -3,
		ADD_SIZE_Y = -3,
		"LEFT_TOP		= D3DXVECTOR2(0+200,0+220+4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	Button_OK:SetCustomMsgMouseUp( STATE_DEPARTURE_PREVENTION_UI_CUSTOM_MSG["SDPRUCM_DEPARTURE_PREVENTION_RESULT_OK"] )
	
----{{ 블랭크
	local pPicture_Shadow = g_pUIDialog:CreatePicture()
	pStatic_TalkBox:AddPicture( pPicture_Shadow )
	pPicture_Shadow:SetTex( "DLG_ui_button20.tga", "blank" )
	pPicture_Shadow:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+200-5,0+220-4+4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
----}}