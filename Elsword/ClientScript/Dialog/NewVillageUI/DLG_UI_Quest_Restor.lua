-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetPos( 763, 150 + 25 + 23)
--g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )




g_pStaticrestor = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticrestor )
g_pStaticrestor:SetName( "Static_QuickQuest" )



g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticrestor:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_BUTTON01.TGA", "qust_restor" )

g_pPicture_bg1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticrestor:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_restor_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 126,
	"LEFT_TOP		= D3DXVECTOR2(0,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticrestor:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_restor_bottom" )

g_pPicture_bg1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,147)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStaticrestor:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPicture_bar:SetPoint
{
   ADD_SIZE_Y = -1,
   ADD_SIZE_X = 254,
	"LEFT_TOP		= D3DXVECTOR2(0,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}




--------최소화 버튼 BACK

g_pStaticrestorBack = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticrestorBack )
g_pStaticrestorBack:SetName( "Static_QuickQuest_ButtonBack" )

g_pPictureMini_back = g_pUIDialog:CreatePicture()
g_pStaticrestorBack:AddPicture( g_pPictureMini_back )

g_pPictureMini_back:SetTex( "DLG_UI_BUTTON01.TGA", "Mini_bt_back" )

g_pPictureMini_back:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(236,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------------------최소화 버튼


g_pButtonMini = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMini )
g_pButtonMini:SetName( "Button_QuickQuest" )
g_pButtonMini:SetNormalTex( "DLG_UI_BUTTON01.tga", "mini_bt" )

g_pButtonMini:SetOverTex( "DLG_UI_BUTTON01.tga", "mini_bt" )

g_pButtonMini:SetDownTex( "DLG_UI_BUTTON01.tga", "mini_bt" )

g_pButtonMini:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(236,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMini:SetOverPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(236-1,3-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMini:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(236,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMini:SetCustomMsgMouseUp( QUEST_UI_CUSTOM_MESSAGE["QUCM_QUICK_QUEST_SIZE_BUTTON"] )




--[[
	g_pStaticQuest = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticQuest )
	g_pStaticQuest:SetName( "Quest1" )
--]]

g_pStaticrestor:AddString
{
	-- MSG 			= "＋엘의나무",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(14,25)",
	--"COLOR			= D3DXCOLOR(0.14,0.69,0.12,1.00)",
	"COLOR			= D3DXCOLOR(1.0, 1.0, 1.0, 1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}












--[[
	g_pStaticQuest = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticQuest )
	g_pStaticQuest:SetName( "Quest2" )

	g_pStaticQuest:AddString
	{
		-- MSG 			= "＋어둠의 숲",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(14,42)",
		"COLOR			= D3DXCOLOR(0.14,0.69,0.12,1.00)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	g_pStaticQuest = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticQuest )
	g_pStaticQuest:SetName( "Quest3" )

	g_pStaticQuest:AddString
	{
		-- MSG 			= "＋월리의 성",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(14,59)",
		"COLOR			= D3DXCOLOR(0.14,0.69,0.12,1.00)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	g_pStaticQuest = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticQuest )
	g_pStaticQuest:SetName( "Quest4" )

	g_pStaticQuest:AddString
	{
		-- MSG 			= "－알테라코어",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(14,76)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.00)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	g_pStaticQuest = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticQuest )
	g_pStaticQuest:SetName( "Quest_Sub1" )

	g_pStaticQuest:AddString
	{
		-- MSG 			= "●나소드 때려잡기 100/100",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(29,96)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.00)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	g_pStaticQuest = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticQuest )
	g_pStaticQuest:SetName( "Quest_Sub1" )

	g_pStaticQuest:AddString
	{
		-- MSG 			= "●나소드 가드 부수기 100/100",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(29,110)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.00)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	g_pStaticQuest = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticQuest )
	g_pStaticQuest:SetName( "Quest_Sub1" )

	g_pStaticQuest:AddString
	{
		-- MSG 			= "●나소드 힐러 꼬시기 100/100",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(29,125)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.00)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
--]]
