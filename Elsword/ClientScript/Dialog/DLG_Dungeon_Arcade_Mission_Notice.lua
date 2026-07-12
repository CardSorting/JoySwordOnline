-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Dungeon_Arcade_Mission_Notice" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )

--미션알림_바탕--



g_pStaticArcade_Notice_Mission = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Notice_Mission )
g_pStaticArcade_Notice_Mission:SetName( "Arcade_Notice_Mission" )


g_pPictureArcade_Notice_Mission_Bg = g_pUIDialog:CreatePicture()
g_pStaticArcade_Notice_Mission:AddPicture( g_pPictureArcade_Notice_Mission_Bg )

g_pPictureArcade_Notice_Mission_Bg:SetTex( "DLG_Dungeon_Arcade02.tga", "Notice_Mission_Bg" )

g_pPictureArcade_Notice_Mission_Bg:SetPoint
{
    ADD_SIZE_X = 100,
	"LEFT_TOP		= D3DXVECTOR2(194,250)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--미션 내용--

g_pStaticArcade_Notice_Mission_Message = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Notice_Mission_Message )
g_pStaticArcade_Notice_Mission_Message:SetName( "Arcade_Notice_Mission_Message" )

g_pStaticArcade_Notice_Mission_Message :AddString
	{
		-- MSG 			= "칼퇴하고 싶어라 ㅠㅠ잉잉잉잉",
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(502,343)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
	
