-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticAltera = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera )
g_pStaticAltera:SetName( "Altera" )





g_pPictureAlteraBg1 = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureAlteraBg1 )

g_pPictureAlteraBg1:SetTex( "DLG_New_Region_Altera01.dds", "Region_Altera01" )

g_pPictureAlteraBg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureAlteraBg2 = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureAlteraBg2 )

g_pPictureAlteraBg2:SetTex( "DLG_New_Region_Altera02.dds", "Region_Altera02" )

g_pPictureAlteraBg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAlteraBg3 = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureAlteraBg3 )

g_pPictureAlteraBg3:SetTex( "DLG_New_Region_Altera03.dds", "Region_Altera03" )

g_pPictureAlteraBg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAlteraBg4 = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureAlteraBg4 )

g_pPictureAlteraBg4:SetTex( "DLG_New_Region_Altera03.dds", "Region_Altera04" )

g_pPictureAlteraBg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






IncludeLua("DLG_Map_Local_Altera_Island_Icon.lua")

IncludeLua("DLG_Map_Local_Altera_Island_Icon_Info.lua")
