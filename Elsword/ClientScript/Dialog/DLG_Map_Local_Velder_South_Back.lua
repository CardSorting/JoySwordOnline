-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticBesma_Local = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBesma_Local )
g_pStaticBesma_Local:SetName( "Besma_Local" )



g_pPictureVelder_Besma_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local:AddPicture( g_pPictureVelder_Besma_Bg1 )

g_pPictureVelder_Besma_Bg1:SetTex( "DLG_New_Region_Velder_Besma01.dds", "Region_Velder_Besma01" )

g_pPictureVelder_Besma_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureVelder_Besma_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local:AddPicture( g_pPictureVelder_Besma_Bg2 )

g_pPictureVelder_Besma_Bg2:SetTex( "DLG_New_Region_Velder_Besma02.dds", "Region_Velder_Besma02" )

g_pPictureVelder_Besma_Bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureVelder_Besma_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local:AddPicture( g_pPictureVelder_Besma_Bg3 )

g_pPictureVelder_Besma_Bg3:SetTex( "DLG_New_Region_Velder_Besma03.dds", "Region_Velder_Besma04" )

g_pPictureVelder_Besma_Bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureVelder_Besma_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local:AddPicture( g_pPictureVelder_Besma_Bg4 )

g_pPictureVelder_Besma_Bg4:SetTex( "DLG_New_Region_Velder_Besma03.dds", "Region_Velder_Besma03" )

g_pPictureVelder_Besma_Bg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
	g_pPictureBesma_Title = g_pUIDialog:CreatePicture()
	g_pStaticBesma_Local:AddPicture( g_pPictureBesma_Title )

	g_pPictureBesma_Title:SetTex( "DLG_Common_New_Texture14.tga", "Velder_South_Local" )

	g_pPictureBesma_Title:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(18,8)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]

IncludeLua("DLG_Map_Local_Velder_South_Icon.lua")

IncludeLua("DLG_Map_Local_Velder_South_Icon_Info.lua")
