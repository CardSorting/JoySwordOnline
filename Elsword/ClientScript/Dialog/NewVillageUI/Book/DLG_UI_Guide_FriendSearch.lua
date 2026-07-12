-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticGuide_FriendSearch = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_FriendSearch )
g_pStaticGuide_FriendSearch:SetName( "Guide_FriendSearch" )


g_pPictureFriendSearch01 = g_pUIDialog:CreatePicture()
g_pStaticGuide_FriendSearch:AddPicture( g_pPictureFriendSearch01 )

g_pPictureFriendSearch01:SetTex( "DLG_UI_Guide_FriendSearch_01.TGA", "FriendSearch_01" )

g_pPictureFriendSearch01:SetPoint
{
    ADD_SIZE_Y = 62,
	"LEFT_TOP		= D3DXVECTOR2(80-10,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page28" )

g_pStaticNum:AddString
{
	-- MSG 			= "3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79-10,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureFriendSearch02 = g_pUIDialog:CreatePicture()
g_pStaticGuide_FriendSearch:AddPicture( g_pPictureFriendSearch02 )

g_pPictureFriendSearch02:SetTex( "DLG_UI_Guide_FriendSearch_02.TGA", "FriendSearch_02" )

g_pPictureFriendSearch02:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(556-10,51+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page29" )

g_pStaticNum:AddString
{
	-- MSG 			= "4",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(930-10,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

