-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticVelder_North = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_North )
g_pStaticVelder_North:SetName( "Velder_North_BG" )

----제일 밑 바탕-------------------
g_pPictureVelder_North_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticVelder_North:AddPicture( g_pPictureVelder_North_Bg1 )

g_pPictureVelder_North_Bg1:SetTex( "DLG_New_Region_Ruben01.dds", "Region_Velder_North01" )

g_pPictureVelder_North_Bg1:SetPoint
{
	ADD_SIZE_X = 62,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

IncludeLua("DLG_Map_Local_Velder_North_Icon_NEW.lua") 
-- IncludeLua("DLG_Map_Local_Velder_North_Route.lua")
IncludeLua("DLG_Map_Local_Velder_North_Icon_Info_NEW.lua")
 
 

