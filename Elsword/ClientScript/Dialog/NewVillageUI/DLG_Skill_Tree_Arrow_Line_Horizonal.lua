-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticSkill_Arrow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Arrow )
g_pStaticSkill_Arrow:SetName( "StaticSkill_Arrow_Line_H" )


g_pPicture_Body_Center = g_pUIDialog:CreatePicture()
g_pStaticSkill_Arrow:AddPicture( g_pPicture_Body_Center )

g_pPicture_Body_Center:SetTex( "DLG_UI_Common_Texture09.TGA", "ARROW_CENTER" )

g_pPicture_Body_Center:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(0,43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
