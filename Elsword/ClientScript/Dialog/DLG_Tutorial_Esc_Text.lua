-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Tutorial_ESC" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


g_pStaticESCMessage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticESCMessage )
g_pStaticESCMessage:SetName( "Static_Esc_Message" )

g_pStaticESCMessage:AddString
{
	MSG 				= STR_ID_1179,
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(575, 5)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
} 

