-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticAltera = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera )
g_pStaticAltera:SetName( "Altera" )



g_pPictureBackGround_Altera1 = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureBackGround_Altera1 )

g_pPictureBackGround_Altera1:SetTex( "DLG_New_Altera_Background00.dds", "Altera_Background00" )

g_pPictureBackGround_Altera1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround_Altera2 = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureBackGround_Altera2 )

g_pPictureBackGround_Altera2:SetTex( "DLG_New_Altera_Background01.dds", "Altera_Background01" )

g_pPictureBackGround_Altera2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBackGround_Altera3 = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureBackGround_Altera3 )

g_pPictureBackGround_Altera3:SetTex( "DLG_New_Altera_Background02.dds", "Altera_Background03" )

g_pPictureBackGround_Altera3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround_Altera4 = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureBackGround_Altera4 )

g_pPictureBackGround_Altera4:SetTex( "DLG_New_Altera_Background02.dds", "Altera_Background02" )

g_pPictureBackGround_Altera4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTitle = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureTitle )

g_pPictureTitle:SetTex( "DLG_Common_New_Texture47.tga", "Altera_Town_Title" )

g_pPictureTitle:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18-10,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "CommonBlackUpDownBG" )
--------------------(투명 라인)



g_pPictureBackGround_Line2 = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackGround_Line2 )

g_pPictureBackGround_Line2:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBackGround_Line2:SetPoint
{
    ADD_SIZE_X = 1024,
    ADD_SIZE_Y = 42,
	"LEFT_TOP		= D3DXVECTOR2(0,726)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}


IncludeLua( "DLG_Map_Village_Altera_House_Button.lua" ) 
