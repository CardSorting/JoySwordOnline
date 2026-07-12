-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-----------끝부분--------------
g_pStaticSkill_Icon_Set = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Icon_Set )
g_pStaticSkill_Icon_Set:SetName( "StaticSkill_Arrow_End" )

g_pPicture_Arrow = g_pUIDialog:CreatePicture()
g_pStaticSkill_Icon_Set:AddPicture( g_pPicture_Arrow )

g_pPicture_Arrow:SetTex( "DLG_UI_Common_Texture09.TGA", "arrow_tail" )

g_pPicture_Arrow:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(36,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------머리---------
g_pStaticSkill_Icon_Set = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Icon_Set )
g_pStaticSkill_Icon_Set:SetName( "StaticSkill_Arrow_Head" )

g_pPicture_Arrow = g_pUIDialog:CreatePicture()
g_pStaticSkill_Icon_Set:AddPicture( g_pPicture_Arrow )

g_pPicture_Arrow:SetTex( "DLG_UI_Common_Texture09.TGA", "arrow_head" )

g_pPicture_Arrow:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(31,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
