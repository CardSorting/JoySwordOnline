-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

----{{ 대화상자 정의
	g_pUIDialog:SetName( "DLG_Departure_Prevention_Frame" )
	g_pUIDialog:SetPos( 305, 130 )
	g_pUIDialog:SetModal( false )
	g_pUIDialog:SetFront( true )
	g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
	--g_pUIDialog:SetCloseCustomUIEventID( STATE_DEPARTURE_PREVENTION_UI_CUSTOM_MSG["SDPRUCM_DEPARTURE_PREVENTION_REWARD_EXIT"] )
----}}

----{{ BackGround
	local pStatic_BackGround = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_BackGround )
	pStatic_BackGround:SetName( "DeparturePreventionFrame" )
	local pPicture_BackGround1 = g_pUIDialog:CreatePicture()
	pStatic_BackGround:AddPicture( pPicture_BackGround1 )
	pPicture_BackGround1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )
	pPicture_BackGround1:SetPoint
	{
		ADD_SIZE_X = -8,
		ADD_SIZE_Y = 0,
		"LEFT_TOP		= D3DXVECTOR2(0,0)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	local pPicture_BackGround2 = g_pUIDialog:CreatePicture()
	pStatic_BackGround:AddPicture( pPicture_BackGround2 )
	pPicture_BackGround2:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )
	pPicture_BackGround2:SetPoint
	{
		ADD_SIZE_X = -8,
		ADD_SIZE_Y = 0+395,
		"LEFT_TOP		= D3DXVECTOR2(0,0+19)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	local pPicture_BackGround3 = g_pUIDialog:CreatePicture()
	pStatic_BackGround:AddPicture( pPicture_BackGround3 )
	pPicture_BackGround3:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )
	pPicture_BackGround3:SetPoint
	{
		ADD_SIZE_X = -8,
		ADD_SIZE_Y = 0,
		"LEFT_TOP		= D3DXVECTOR2(0,0+420)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
----}}

----{{ 상단 타이틀
	local pStatic_Title = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_Title )
	pStatic_Title:SetName( "Departure_Prevention_Title" )
	pStatic_Title:AddString
	{ 
		--MSG    = "축하합니다. 고객님! 이벤트에 당첨 되셨습니다!",
		MSG    		= STR_ID_13686,
		FONT_INDEX	= XUF_DODUM_15_BOLD,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_LEFT"],
		"POS		= D3DXVECTOR2(0+43,15)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,1.0,0.5)",
	}

	local pPicture_Title = g_pUIDialog:CreatePicture()
	pStatic_Title:AddPicture( pPicture_Title )
	pPicture_Title:SetTex( "DLG_UI_Common_Texture58.TGA", "titlebox-up" )
	pPicture_Title:SetPoint
	{
		ADD_SIZE_X = -30,
		ADD_SIZE_Y = 0,	
		"LEFT_TOP		= D3DXVECTOR2(0+10,0+10)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
----}}

----{{ 아리엘 및 배경 이미지
	local pStatic_Ariel_Image = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_Ariel_Image )
	pStatic_Ariel_Image:SetName( "Ariel_Image" )
	pStatic_Ariel_Image:AddString
	{ 	
		"POS    = D3DXVECTOR2(0+27,60)",
		"COLOR   = D3DXCOLOR(0.0,0.0,0.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	}

	local pPicture_Ariel1 = g_pUIDialog:CreatePicture()
	pStatic_Ariel_Image:AddPicture( pPicture_Ariel1 )
	pPicture_Ariel1:SetTex( "DLG_UI_Common_Texture58.TGA", "popup-big-img" )
	pPicture_Ariel1:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+10,0+40)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
----}}

----{{ 아리엘 말풍선(하나의 말 풍선에 여러 가지 문자열이 들어갈 수 있다.)
	local pStatic_Ariel_TalkBox = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_Ariel_TalkBox )
	pStatic_Ariel_TalkBox:SetName( "Ariel_TalkBox" )
	
	pStatic_Ariel_TalkBox:AddString
	{ 
		--MSG    		= "축하합니다! 고객님.",
		MSG			= STR_ID_13689,
		FONT_INDEX  = XUF_DODUM_15_BOLD,
		FONT_STYLE  = FONT_STYLE["FS_SHELL"],
		SORT_FLAG  	= DRAW_TEXT["DT_LEFT"],
		"POS    = D3DXVECTOR2(0+27,60)",
		"COLOR   = D3DXCOLOR(0.0,0.0,0.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	}
	
	pStatic_Ariel_TalkBox:AddString
	{ 
		--MSG    = " 특별 서포트 여행자로 당첨되신 것을 축하합니다!. \n 이런 행운을 받으시는 여행자분들은 흔치 않답니다 \n 지금 아래 서포트 물품을 받으실 수 있습니다. \n 마음에 드시는 것으로 선택하세요.",
		MSG			= STR_ID_13687,
		FONT_INDEX  = XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_LEFT"],
		"POS    = D3DXVECTOR2(0+23,81)",
		"COLOR   = D3DXCOLOR(0.0,0.0,0.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	}
----}}

----{{ 아이템 받기 슬롯 이미지 1
	local pStatic_Slot1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_Slot1 )
	pStatic_Slot1:SetName( "Item_Slot1" )
	pStatic_Slot1:AddString
	{ 
		--MSG			= "나소드 메가폰",
		FONT_INDEX	= XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_CENTER"],
		"POS		= D3DXVECTOR2(0+49,350)",
		"COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	}
	pStatic_Slot1:AddString
	{ 
		--MSG			= "나소드 메가폰",
		FONT_INDEX	= XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_RIGHT"],
		"POS		= D3DXVECTOR2(0+65,335)",
		"COLOR   = D3DXCOLOR(1.0,1.0,1.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.8)",
	}
	local pPicture_Slot1 = g_pUIDialog:CreatePicture()
	pStatic_Slot1:AddPicture( pPicture_Slot1 )
	pPicture_Slot1:SetTex( "DLG_UI_Button20.TGA", "item-tap-btn" )
	pPicture_Slot1:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+10,0+280)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	local pPicture_Slot1_1 = g_pUIDialog:CreatePicture()
	pStatic_Slot1:AddPicture( pPicture_Slot1_1 )
	pPicture_Slot1_1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )
	pPicture_Slot1_1:SetPoint
	{
		ADD_SIZE_X	= 13,
		ADD_SIZE_Y	= 13,
		"LEFT_TOP	= D3DXVECTOR2(0+10+9,0+280+9)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}

----}}
----{{ 아이템 받기 버튼 1
	local pButton_GetItem1 = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( pButton_GetItem1 )
	pButton_GetItem1:SetName( "Get_Item_Btn1" )
	pButton_GetItem1:SetNormalTex( "DLG_ui_button12.tga", "Get_itemS_normal" )
	pButton_GetItem1:SetOverTex( "DLG_ui_button12.tga", "Get_itemS_over" )
	pButton_GetItem1:SetDownTex( "DLG_ui_button12.tga", "Get_itemS_over" )
	pButton_GetItem1:SetNormalPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+26,0+377)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem1:SetOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+24,0+375)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem1:SetDownPoint
	{
		ADD_SIZE_X = -3,
		ADD_SIZE_Y = -3,
		"LEFT_TOP		= D3DXVECTOR2(0+26,0+377)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem1:SetCustomMsgMouseUp( STATE_DEPARTURE_PREVENTION_UI_CUSTOM_MSG["SDPRUCM_DEPARTURE_PREVENTION_REWARD_ONE"] )
----}}

----{{ 아이템 받기 슬롯 이미지 2
	local pStatic_Slot2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_Slot2 )
	pStatic_Slot2:SetName( "Item_Slot2" )
	pStatic_Slot2:AddString
	{ 
		--MSG    = "나소드 메가폰",
		FONT_INDEX	= XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_CENTER"],
		"POS		= D3DXVECTOR2(0+49+85,350)",
		"COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	}
	pStatic_Slot2:AddString
	{ 
		--MSG    = "나소드 메가폰",
		FONT_INDEX	= XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_RIGHT"],
		"POS		= D3DXVECTOR2(0+65+85,335)",
		"COLOR   = D3DXCOLOR(1.0,1.0,1.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.8)",
	}
	local pPicture_Slot2 = g_pUIDialog:CreatePicture()
	pStatic_Slot2:AddPicture( pPicture_Slot2 )
	pPicture_Slot2:SetTex( "DLG_UI_Button20.TGA", "item-tap-btn" )
	pPicture_Slot2:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+10+85,0+280)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	local pPicture_Slot2_1 = g_pUIDialog:CreatePicture()
	pStatic_Slot2:AddPicture( pPicture_Slot2_1 )
	pPicture_Slot2_1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )
	pPicture_Slot2_1:SetPoint
	{
		ADD_SIZE_X	= 12,
		ADD_SIZE_Y	= 12,
		"LEFT_TOP	= D3DXVECTOR2(0+10+85+9,0+280+9)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
----}}
----{{ 아이템 받기 버튼 2
	local pButton_GetItem2 = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( pButton_GetItem2 )
	pButton_GetItem2:SetName( "Get_Item_Btn2" )
	pButton_GetItem2:SetNormalTex( "DLG_ui_button12.tga", "Get_itemS_normal" )
	pButton_GetItem2:SetOverTex( "DLG_ui_button12.tga", "Get_itemS_over" )
	pButton_GetItem2:SetDownTex( "DLG_ui_button12.tga", "Get_itemS_over" )
	pButton_GetItem2:SetNormalPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+26+85,0+377)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem2:SetOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+24+85,0+375)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem2:SetDownPoint
	{
		ADD_SIZE_X = -3,
		ADD_SIZE_Y = -3,
		"LEFT_TOP		= D3DXVECTOR2(0+26+85,0+377)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem2:SetCustomMsgMouseUp( STATE_DEPARTURE_PREVENTION_UI_CUSTOM_MSG["SDPRUCM_DEPARTURE_PREVENTION_REWARD_TWO"] )
----}}

----{{ 아이템 받기 슬롯 이미지 3
	local pStatic_Slot3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_Slot3 )
	pStatic_Slot3:SetName( "Item_Slot3" )
	pStatic_Slot3:AddString
	{ 
		--MSG    = "부활석",
		FONT_INDEX	= XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_CENTER"],
		"POS		= D3DXVECTOR2(0+49+85+85,350)",
		"COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	}
	pStatic_Slot3:AddString
	{ 
		--MSG    = "부활석",
		FONT_INDEX	= XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_RIGHT"],
		"POS		= D3DXVECTOR2(0+65+85+85,335)",
		"COLOR   = D3DXCOLOR(1.0,1.0,1.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.8)",
	}
	local pPicture_Slot3 = g_pUIDialog:CreatePicture()
	pStatic_Slot3:AddPicture( pPicture_Slot3 )
	pPicture_Slot3:SetTex( "DLG_UI_Button20.TGA", "item-tap-btn" )
	pPicture_Slot3:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+10+85+85,0+280)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	local pPicture_Slot3_1 = g_pUIDialog:CreatePicture()
	pStatic_Slot3:AddPicture( pPicture_Slot3_1 )
	pPicture_Slot3_1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )
	pPicture_Slot3_1:SetPoint
	{
		ADD_SIZE_X	= 12,
		ADD_SIZE_Y	= 12,
		"LEFT_TOP	= D3DXVECTOR2(0+10+85+85+9,0+280+9)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
----}}
----{{ 아이템 받기 버튼 3
	local pButton_GetItem3 = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( pButton_GetItem3 )
	pButton_GetItem3:SetName( "Get_Item_Btn3" )
	pButton_GetItem3:SetNormalTex( "DLG_ui_button12.tga", "Get_itemS_normal" )
	pButton_GetItem3:SetOverTex( "DLG_ui_button12.tga", "Get_itemS_over" )
	pButton_GetItem3:SetDownTex( "DLG_ui_button12.tga", "Get_itemS_over" )
	pButton_GetItem3:SetNormalPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+26+85+85,0+377)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem3:SetOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+24+85+85,0+375)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem3:SetDownPoint
	{
		ADD_SIZE_X = -3,
		ADD_SIZE_Y = -3,
		"LEFT_TOP		= D3DXVECTOR2(0+26+85+85,0+377)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem3:SetCustomMsgMouseUp( STATE_DEPARTURE_PREVENTION_UI_CUSTOM_MSG["SDPRUCM_DEPARTURE_PREVENTION_REWARD_THREE"] )
----}}

----{{ 아이템 받기 슬롯 이미지 4
	local pStatic_Slot4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_Slot4 )
	pStatic_Slot4:SetName( "Item_Slot4" )
	pStatic_Slot4:AddString
	{ 
		--MSG    = "엘의 나무열매",
		FONT_INDEX  = XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_CENTER"],
		"POS    = D3DXVECTOR2(0+49+85+85+85,350)",
		"COLOR   = D3DXCOLOR(0.0,0.0,0.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	}
	pStatic_Slot4:AddString
	{ 
		--MSG    = "엘의 나무열매",
		FONT_INDEX  = XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_RIGHT"],
		"POS    = D3DXVECTOR2(0+65+85+85+85,335)",
		"COLOR   = D3DXCOLOR(1.0,1.0,1.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.8)",
	}
	local pPicture_Slot4 = g_pUIDialog:CreatePicture()
	pStatic_Slot4:AddPicture( pPicture_Slot4 )
	pPicture_Slot4:SetTex( "DLG_UI_Button20.TGA", "item-tap-btn" )
	pPicture_Slot4:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+10+85+85+85,0+280)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	local pPicture_Slot4_1 = g_pUIDialog:CreatePicture()
	pStatic_Slot4:AddPicture( pPicture_Slot4_1 )
	pPicture_Slot4_1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )
	pPicture_Slot4_1:SetPoint
	{
		ADD_SIZE_X	= 12,
		ADD_SIZE_Y	= 12,
		"LEFT_TOP	= D3DXVECTOR2(0+10+85+85+85+9,0+280+9)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
----}}
----{{ 아이템 받기 버튼 4
	local pButton_GetItem4 = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( pButton_GetItem4 )
	pButton_GetItem4:SetName( "Get_Item_Btn4" )
	pButton_GetItem4:SetNormalTex( "DLG_ui_button12.tga", "Get_itemS_normal" )
	pButton_GetItem4:SetOverTex( "DLG_ui_button12.tga", "Get_itemS_over" )
	pButton_GetItem4:SetDownTex( "DLG_ui_button12.tga", "Get_itemS_over" )
	pButton_GetItem4:SetNormalPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+281,0+377)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem4:SetOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+279,0+375)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem4:SetDownPoint
	{
		ADD_SIZE_X = -3,
		ADD_SIZE_Y = -3,
		"LEFT_TOP		= D3DXVECTOR2(0+281,0+377)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem4:SetCustomMsgMouseUp( STATE_DEPARTURE_PREVENTION_UI_CUSTOM_MSG["SDPRUCM_DEPARTURE_PREVENTION_REWARD_FOUR"] )
----}}

----{{ 아이템 받기 슬롯 이미지 5
	local pStatic_Slot5 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( pStatic_Slot5 )
	pStatic_Slot5:SetName( "Item_Slot5" )
	pStatic_Slot5:AddString
	{ 
		--MSG    = "나소드 메가폰",
		FONT_INDEX  = XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_CENTER"],
		"POS    = D3DXVECTOR2(0+49+85+85+85+85,350)",
		"COLOR   = D3DXCOLOR(0.0,0.0,0.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	}
	pStatic_Slot5:AddString
	{ 
		--MSG    = "나소드 메가폰",
		FONT_INDEX  = XUF_DODUM_11_NORMAL,
		FONT_STYLE	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG	= DRAW_TEXT["DT_RIGHT"],
		"POS    = D3DXVECTOR2(0+65+85+85+85+85,335)",
		"COLOR   = D3DXCOLOR(1.0,1.0,1.0,0.7)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.8)",
	}
	local pPicture_Slot4 = g_pUIDialog:CreatePicture()
	pStatic_Slot5:AddPicture( pPicture_Slot4 )
	pPicture_Slot4:SetTex( "DLG_UI_Button20.TGA", "item-tap-btn" )
	pPicture_Slot4:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+10+85+85+85+85,0+280)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	local pPicture_Slot5_1 = g_pUIDialog:CreatePicture()
	pStatic_Slot5:AddPicture( pPicture_Slot5_1 )
	pPicture_Slot5_1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )
	pPicture_Slot5_1:SetPoint
	{
		ADD_SIZE_X	= 12,
		ADD_SIZE_Y	= 12,
		"LEFT_TOP	= D3DXVECTOR2(0+10+85+85+85+85+9,0+280+9)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
----}}
----{{ 아이템 받기 버튼 5
	local pButton_GetItem5 = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( pButton_GetItem5 )
	pButton_GetItem5:SetName( "Get_Item_Btn5" )
	pButton_GetItem5:SetNormalTex( "DLG_ui_button12.tga", "Get_itemS_normal" )
	pButton_GetItem5:SetOverTex( "DLG_ui_button12.tga", "Get_itemS_over" )
	pButton_GetItem5:SetDownTex( "DLG_ui_button12.tga", "Get_itemS_over" )
	pButton_GetItem5:SetNormalPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+26+85+85+85+85,0+377)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem5:SetOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(0+24+85+85+85+85,0+375)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem5:SetDownPoint
	{
		ADD_SIZE_X = -3,
		ADD_SIZE_Y = -3,
		"LEFT_TOP		= D3DXVECTOR2(0+26+85+85+85+85,0+377)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_GetItem5:SetCustomMsgMouseUp( STATE_DEPARTURE_PREVENTION_UI_CUSTOM_MSG["SDPRUCM_DEPARTURE_PREVENTION_REWARD_FIVE"] )
----}}

----{{ 종료버튼(엑스 버튼)
	local pButton_Exit = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( pButton_Exit )
	pButton_Exit:SetName( "Button_exit" )
	pButton_Exit:SetNormalTex( "DLG_ui_button01.tga", "exit_normal" )
	pButton_Exit:SetOverTex( "DLG_ui_button01.tga", "exit_over" )
	pButton_Exit:SetDownTex( "DLG_ui_button01.tga", "exit_over" )
	pButton_Exit:SetNormalPoint
	{
		ADD_SIZE_X		= 2,
		ADD_SIZE_Y		= 2,
		"LEFT_TOP		= D3DXVECTOR2(0+400-61-210+2+53-1-1+224,0+11)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_Exit:SetOverPoint
	{
		ADD_SIZE_X		= 2,
		ADD_SIZE_Y		= 2,	
		"LEFT_TOP		= D3DXVECTOR2(0+400-4-61-210+2+53-1-1+224,0+7)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_Exit:SetDownPoint
	{
		ADD_SIZE_X		= -3+2,
		ADD_SIZE_Y		= -3+2,
		"LEFT_TOP		= D3DXVECTOR2(0+400-61-2-210+2+53-1-1+224,0+8)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	pButton_Exit:SetCustomMsgMouseUp( STATE_DEPARTURE_PREVENTION_UI_CUSTOM_MSG["SDPRUCM_DEPARTURE_PREVENTION_REWARD_EXIT"] )
----}}