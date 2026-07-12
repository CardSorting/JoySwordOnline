-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )

g_pStatic_HELP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HELP )
g_pStatic_HELP:SetName( "g_pStatic_HELP" )

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStatic_HELP:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "GUID_BG" )

g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,608)", --x값은 코드에서 수정됨 -- INT_WIDE_BAR 국내 628
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_HELP:AddString
{ 
    MSG 			= "스킬창을 열어 획득한 스킬 포인트를 투자할 수 있습니다.",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(508,613)",	-- INT_WIDE_BAR 국내 633
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.0,1.0)",
}



