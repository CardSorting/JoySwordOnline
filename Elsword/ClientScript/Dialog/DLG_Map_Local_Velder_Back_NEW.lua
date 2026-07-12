-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticVelder_Local = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_Local )
g_pStaticVelder_Local:SetName( "Velder_Local" )



g_pPictureVelder_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local:AddPicture( g_pPictureVelder_Bg1 )

g_pPictureVelder_Bg1:SetTex( "DLG_New_Region_Velder_Capital01.dds", "Region_Velder_Capital01" )

g_pPictureVelder_Bg1:SetPoint
{
	ADD_SIZE_X = 62,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--[[
	g_pPictureBesma_Title = g_pUIDialog:CreatePicture()
	g_pStaticVelder_Local:AddPicture( g_pPictureBesma_Title )

	g_pPictureBesma_Title:SetTex( "DLG_Common_New_Texture14.tga", "Velder_South_Local" )

	g_pPictureBesma_Title:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(18,8)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]

IncludeLua("DLG_Map_Local_Velder_Icon_NEW.lua")

IncludeLua("DLG_Map_Local_Velder_Icon_Info_NEW.lua")
