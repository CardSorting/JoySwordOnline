-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticPeita_Local = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPeita_Local )
g_pStaticPeita_Local:SetName( "Peita_Local" )



g_pPicturePeita_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local:AddPicture( g_pPicturePeita_Bg1 )

g_pPicturePeita_Bg1:SetTex( "DLG_New_Region_Peita01.dds", "Region_Peita01" )

g_pPicturePeita_Bg1:SetPoint
{
	ADD_SIZE_X = 62,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







IncludeLua("DLG_UI_Local_Peita_Icon_NEW.lua")

IncludeLua("DLG_UI_Local_Peita_Icon_Info_NEW.lua")
