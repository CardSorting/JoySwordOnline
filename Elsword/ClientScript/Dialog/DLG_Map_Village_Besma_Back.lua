-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticBesma = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBesma )
g_pStaticBesma:SetName( "Besma" )



g_pPictureBackGround_Besma1 = g_pUIDialog:CreatePicture()
g_pStaticBesma:AddPicture( g_pPictureBackGround_Besma1 )

g_pPictureBackGround_Besma1:SetTex( "DLG_New_Besma_Background00.dds", "Besma_Background00" )

g_pPictureBackGround_Besma1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround_Besma2 = g_pUIDialog:CreatePicture()
g_pStaticBesma:AddPicture( g_pPictureBackGround_Besma2 )

g_pPictureBackGround_Besma2:SetTex( "DLG_New_Besma_Background01.dds", "Besma_Background01" )

g_pPictureBackGround_Besma2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBackGround_Besma3 = g_pUIDialog:CreatePicture()
g_pStaticBesma:AddPicture( g_pPictureBackGround_Besma3 )

g_pPictureBackGround_Besma3:SetTex( "DLG_New_Besma_Background02.dds", "Besma_Background02" )

g_pPictureBackGround_Besma3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround_Besma4 = g_pUIDialog:CreatePicture()
g_pStaticBesma:AddPicture( g_pPictureBackGround_Besma4 )

g_pPictureBackGround_Besma4:SetTex( "DLG_New_Besma_Background02.dds", "Besma_Background03" )

g_pPictureBackGround_Besma4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPictureTitle = g_pUIDialog:CreatePicture()
g_pStaticBesma:AddPicture( g_pPictureTitle )

g_pPictureTitle:SetTex( "DLG_Common_New_Texture14.tga", "Besma_Village_Title" )

g_pPictureTitle:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,8)",
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

IncludeLua( "DLG_Map_Village_Besma_House_Button.lua" ) 
