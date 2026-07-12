-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

-------static
g_pStatic_EXP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EXP )
g_pStatic_EXP:SetName( "EXP" )


--------메달 아이콘
g_pPicture_MARK = g_pUIDialog:CreatePicture()
g_pStatic_EXP:AddPicture( g_pPicture_MARK )
g_pPicture_MARK:SetTex( "DLG_Common_New_Texture14.TGA", "PREMIUM_MARK" )
g_pPicture_MARK:SetPoint
{
    ADD_SIZE_X=-3,
	ADD_SIZE_Y=-3,
	"LEFT_TOP		= D3DXVECTOR2(988,725)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
