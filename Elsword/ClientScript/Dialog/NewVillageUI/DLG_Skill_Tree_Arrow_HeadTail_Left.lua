-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticSkill_Arrow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Arrow )
g_pStaticSkill_Arrow:SetName( "StaticSkill_Arrow_Head_H" )


g_pPicture_Arrow_R = g_pUIDialog:CreatePicture()
g_pStaticSkill_Arrow:AddPicture( g_pPicture_Arrow_R )

g_pPicture_Arrow_R:SetTex( "DLG_UI_Common_Texture09.TGA", "Arrow_Head_R" )

g_pPicture_Arrow_R:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(66,38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticSkill_Arrow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Arrow )
g_pStaticSkill_Arrow:SetName( "StaticSkill_Arrow_End_H" )



g_pPicture_Body2_L = g_pUIDialog:CreatePicture()
g_pStaticSkill_Arrow:AddPicture( g_pPicture_Body2_L )

g_pPicture_Body2_L:SetTex( "DLG_UI_Common_Texture09.TGA", "Arrow_body2" )

g_pPicture_Body2_L:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(0,43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
