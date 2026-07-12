-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_INPUT_UI" )
--g_pUIDialog:SetPos( 646, 580 )
g_pUIDialog:SetPos( 0, -50 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )






g_pStatic_Key_Guide = g_pUIDialog:CreateStatic()
g_pStatic_Key_Guide:SetName( "Static_Key_Guide" )
g_pUIDialog:AddControl( g_pStatic_Key_Guide )


g_pPicture_Key_Guide = g_pUIDialog:CreatePicture()
g_pStatic_Key_Guide:AddPicture( g_pPicture_Key_Guide )
g_pPicture_Key_Guide:SetTex( "DLG_UI_Common_Texture05.tga", "Command_Guide" )
g_pPicture_Key_Guide:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(450,-1+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




-- STATIC, skill tree list,   FOLD
g_pStatic_Skill_List_Fold = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Skill_List_Fold )
g_pStatic_Skill_List_Fold:SetName( "Static_Skill_List_Fold" )



g_pPictureTutorial_Tab_Key = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Fold:AddPicture( g_pPictureTutorial_Tab_Key )

g_pPictureTutorial_Tab_Key:SetTex( "DLG_Keyboard.tga", "Tab_Key" )

g_pPictureTutorial_Tab_Key:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(961,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureTutorial_Skill_List = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Fold:AddPicture( g_pPictureTutorial_Skill_List )

g_pPictureTutorial_Skill_List:SetTex( "DLG_Keyboard.tga", "Command_List" )

g_pPictureTutorial_Skill_List:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(905,269)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}













-- STATIC, skill tree list,  UNFOLD
g_pStatic_Skill_List_Unfold = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Skill_List_Unfold )
g_pStatic_Skill_List_Unfold:SetName( "Static_Skill_List_Unfold" )
g_pStatic_Skill_List_Unfold:SetShow( false )




g_pPictureTutorial_Tab_Key = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Tab_Key )

g_pPictureTutorial_Tab_Key:SetTex( "DLG_Keyboard.tga", "Tab_Key" )

g_pPictureTutorial_Tab_Key:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(961,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureTutorial_Skill_List = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List )

g_pPictureTutorial_Skill_List:SetTex( "DLG_Keyboard.tga", "Command_List" )

g_pPictureTutorial_Skill_List:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(905,269)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}




g_pPictureTutorial_Skill_List1 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List1 )

g_pPictureTutorial_Skill_List1:SetTex( "DLG_Keyboard.tga", "Win1" )

g_pPictureTutorial_Skill_List1:SetPoint
{
	ADD_SIZE_X = 1,
   	"LEFT_TOP		= D3DXVECTOR2(754,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Skill_List2 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List2 )

g_pPictureTutorial_Skill_List2:SetTex( "DLG_Keyboard.tga", "Win2" )

g_pPictureTutorial_Skill_List2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(1006,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Skill_List3 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List3 )

g_pPictureTutorial_Skill_List3:SetTex( "DLG_Keyboard.tga", "Win3" )

g_pPictureTutorial_Skill_List3:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(754,619)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Skill_List4 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List4 )

g_pPictureTutorial_Skill_List4:SetTex( "DLG_Keyboard.tga", "Win4" )

g_pPictureTutorial_Skill_List4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(1006,619)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Skill_List5 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List5 )

g_pPictureTutorial_Skill_List5:SetTex( "DLG_Keyboard.tga", "Win5" )

g_pPictureTutorial_Skill_List5:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(761,296)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1006,626)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureTutorial_Skill_List6 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List6 )

g_pPictureTutorial_Skill_List6:SetTex( "DLG_Keyboard.tga", "Win5" )

g_pPictureTutorial_Skill_List6:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(754,303)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(761,619)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureTutorial_Skill_List7 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List7 )

g_pPictureTutorial_Skill_List7:SetTex( "DLG_Keyboard.tga", "Win5" )

g_pPictureTutorial_Skill_List7:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(1006,303)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1014,619)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pStatic_Skill_List_Unfold:AddString
{
	-- MSG 				= "",
	FONT_INDEX			= XUF_DODUM_20_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(760,300)",
	"COLOR				= D3DXCOLOR(1, 1, 1, 1)",
	"OUTLINE_COLOR		= D3DXCOLOR(1, 1, 1, 1)",
}



g_pStatic_Skill_List_Unfold = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Skill_List_Unfold )
g_pStatic_Skill_List_Unfold:SetName( "Static_Skill_List" )




g_pPictureTutorial_Tab_Key = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Tab_Key )

g_pPictureTutorial_Tab_Key:SetTex( "DLG_Keyboard.tga", "Tab_Key" )

g_pPictureTutorial_Tab_Key:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(961,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureTutorial_Skill_List = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List )

g_pPictureTutorial_Skill_List:SetTex( "DLG_Keyboard.tga", "Command_List" )

g_pPictureTutorial_Skill_List:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(905,269)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}



