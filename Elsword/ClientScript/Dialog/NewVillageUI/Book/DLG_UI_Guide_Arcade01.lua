-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetPos( 5,5 )

g_pStaticGuide_Arcade01= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_Arcade01)
g_pStaticGuide_Arcade01:SetName( "Guide_Arcade01" )


g_pPictureArcade01 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Arcade01:AddPicture( g_pPictureArcade01 )

g_pPictureArcade01:SetTex( "DLG_UI_Guide_Henir01.tga", "Henir01" )

g_pPictureArcade01:SetPoint
{
    ADD_SIZE_Y = 47,
	"LEFT_TOP		= D3DXVECTOR2(80,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page9" )

g_pStaticNum:AddString
{
	-- MSG 			= "9",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureArcade02 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Arcade01:AddPicture( g_pPictureArcade02 )

g_pPictureArcade02:SetTex( "DLG_UI_Guide_Henir02.tga", "Henir02" )

g_pPictureArcade02:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(556,65+82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page10" )

g_pStaticNum:AddString
{
	-- MSG 			= "10",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(930,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--[[
-------------파티 버튼



g_pButtonParty= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonParty)
g_pButtonParty:SetName( "Btn_Party" )
g_pButtonParty:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Party_normal" )

g_pButtonParty:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Party_over" )

g_pButtonParty:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Party_over" )

g_pButtonParty:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(555,253)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonParty:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(555,253)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonParty:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(555+1,253+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonParty:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonParty:AddDummyInt(20)



--]]



--[[

g_pStaticAfter = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAfter )
g_pStaticAfter:SetName( "After" )

g_pStaticAfter:AddString
{
	MSG 			= STR_ID_1403,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(382,356)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]