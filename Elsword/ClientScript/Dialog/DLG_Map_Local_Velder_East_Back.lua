-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticVelder_East = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_East )
g_pStaticVelder_East:SetName( "Velder_East" )





g_pPictureVelder_East_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Bg1 )

g_pPictureVelder_East_Bg1:SetTex( "DLG_New_Region_Velder_East01.dds", "Region_Velder_East01" )

g_pPictureVelder_East_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureVelder_East_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Bg2 )

g_pPictureVelder_East_Bg2:SetTex( "DLG_New_Region_Velder_East02.dds", "Region_Velder_East02" )

g_pPictureVelder_East_Bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureVelder_East_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Bg3 )

g_pPictureVelder_East_Bg3:SetTex( "DLG_New_Region_Velder_East03.dds", "Region_Velder_East04" )

g_pPictureVelder_East_Bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureVelder_East_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Bg4 )

g_pPictureVelder_East_Bg4:SetTex( "DLG_New_Region_Velder_East03.dds", "Region_Velder_East03" )

g_pPictureVelder_East_Bg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










IncludeLua("DLG_Map_Local_Velder_East_Icon.lua")

IncludeLua("DLG_Map_Local_Velder_East_Icon_Info.lua")

--IncludeLua("DLG_Map_Local_Velder_East_Forest_Route.lua")


