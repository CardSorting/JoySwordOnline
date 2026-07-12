-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_MsgBox" )
g_pUIDialog:SetPos( 250,300 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )










--------------밑판-------------------
g_pStaticGeneral_Popup_Window= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGeneral_Popup_Window)
g_pStaticGeneral_Popup_Window:SetName( "General_Popup_Window" )
g_pStaticGeneral_Popup_Window:SetOffsetPos( -334+44, -227 )




g_pPictureBG= g_pUIDialog:CreatePicture()
g_pStaticGeneral_Popup_Window:AddPicture( g_pPictureBG)

g_pPictureBG:SetTex( "DLG_Common_New_Texture62.tga", "General_Popup_Window"  )

g_pPictureBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(334,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pStaticGeneral_Popup_Window= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGeneral_Popup_Window)
g_pStaticGeneral_Popup_Window:SetName( "StaticMsgBoxBG" )
g_pStaticGeneral_Popup_Window:SetOffsetPos( -332+44, -227 )

g_pStaticGeneral_Popup_Window:AddString
{
	MSG 			= STR_ID_1132,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
    SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(220 + 419 - 91,30 + 223)",
	"COLOR			= D3DXCOLOR(0.9,0.9,0.9,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
