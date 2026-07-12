-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "GameLoadingTip" )
g_pUIDialog:SetPos( 43, 134 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )


----- 던전별 로딩창 한줄팁을 위한 스트링. 기본적으로는 SetShow(false) 해 둔다.     524px
g_pStatic_OneLineTip = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_OneLineTip )
g_pStatic_OneLineTip:SetName( "Static_OneLineTip" )

g_pStatic_OneLineTip:AddString
{
	MSG 			= STR_ID_996,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(113, 434)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_OneLineTip:SetShow(false)
g_pStatic_OneLineTip:AddDummyInt(500)					-- 글자 들어가는 부분 너비. px단위
