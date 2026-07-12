-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pStaticGuide_Dungeon_Play = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_Dungeon_Play )
g_pStaticGuide_Dungeon_Play:SetName( "Guide_Dungeon_Play" )


g_pPictureDungeon_Play01 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Dungeon_Play:AddPicture( g_pPictureDungeon_Play01 )

g_pPictureDungeon_Play01:SetTex( "DLG_UI_Guide_Dungeon_Play01.TGA", "Dungeon_Play01" )

g_pPictureDungeon_Play01:SetPoint
{
    ADD_SIZE_Y = 62,
	"LEFT_TOP		= D3DXVECTOR2(80,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page1" )

g_pStaticNum:AddString
{
	-- MSG 			= "3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureDungeon_Play02 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Dungeon_Play:AddPicture( g_pPictureDungeon_Play02 )

g_pPictureDungeon_Play02:SetTex( "DLG_UI_Guide_Dungeon_Play02.TGA", "Dungeon_Play02" )

g_pPictureDungeon_Play02:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(556,51+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page2" )

g_pStaticNum:AddString
{
	-- MSG 			= "4",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(930,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--[[
-----------파티 버튼

g_pButtonParty= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonParty)
g_pButtonParty:SetName( "Btn_Party" )
g_pButtonParty:SetNormalTex( "DLG_UI_BUTTON15.tga", "btn_Party_normal" )

g_pButtonParty:SetOverTex( "DLG_UI_BUTTON15.tga", "btn_Party_over" )

g_pButtonParty:SetDownTex( "DLG_UI_BUTTON15.tga", "btn_Party_over" )

g_pButtonParty:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(556+2+13,269+78+158)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonParty:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(556+2+13,269+78+158)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonParty:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(556+1+2+13,269+1+78+158)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonParty:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonParty:AddDummyInt(20)
]]--