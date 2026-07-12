-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticHamel_Local = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHamel_Local )
g_pStaticHamel_Local:SetName( "Hamel_Local" )
---
g_pPictureHamel_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local:AddPicture( g_pPictureHamel_Bg1 )
g_pPictureHamel_Bg1:SetTex( "DLG_New_Region_Hamel_Out01.dds", "HAMEL_BG1" )
g_pPictureHamel_Bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---
g_pPictureHamel_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local:AddPicture( g_pPictureHamel_Bg2 )
g_pPictureHamel_Bg2:SetTex( "DLG_New_Region_Hamel_Out02.dds", "HAMEL_BG2" )
g_pPictureHamel_Bg2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---
g_pPictureHamel_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local:AddPicture( g_pPictureHamel_Bg3 )
g_pPictureHamel_Bg3:SetTex( "DLG_New_Region_Hamel_Out03.dds", "HAMEL_BG3" )
g_pPictureHamel_Bg3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---
g_pPictureHamel_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local:AddPicture( g_pPictureHamel_Bg4 )
g_pPictureHamel_Bg4:SetTex( "DLG_New_Region_Hamel_Out03.dds", "HAMEL_BG4" )
g_pPictureHamel_Bg4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---

IncludeLua("DLG_Map_Local_Hamel_Icon.lua")

IncludeLua("DLG_Map_Local_Hamel_Icon_Info.lua")
