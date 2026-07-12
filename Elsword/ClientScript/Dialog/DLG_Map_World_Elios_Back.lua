-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticWorld_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Background )
g_pStaticWorld_Background:SetName( "Background" )





g_pPictureWorld_Background0 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Background:AddPicture( g_pPictureWorld_Background0 )

g_pPictureWorld_Background0:SetTex( "DLG_World_Map0.TGA", "World_BG0" )

g_pPictureWorld_Background0:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureWorld_Background1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Background:AddPicture( g_pPictureWorld_Background1 )

g_pPictureWorld_Background1:SetTex( "DLG_World_Map1.TGA", "World_BG1" )

g_pPictureWorld_Background1:SetPoint
{



	"LEFT_TOP		= D3DXVECTOR2(512,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWorld_Background2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Background:AddPicture( g_pPictureWorld_Background2 )

g_pPictureWorld_Background2:SetTex( "DLG_World_Map2.TGA", "World_BG2" )

g_pPictureWorld_Background2:SetPoint
{



	"LEFT_TOP		= D3DXVECTOR2(0,512)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureWorld_Background3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Background:AddPicture( g_pPictureWorld_Background3 )

g_pPictureWorld_Background3:SetTex( "DLG_World_Map2.TGA", "World_BG3" )

g_pPictureWorld_Background3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,512)",
   	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







--------------------(투명 라인)

g_pPictureBackGround_Line1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Background:AddPicture( g_pPictureBackGround_Line1 )

g_pPictureBackGround_Line1:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBackGround_Line1:SetPoint
{
    ADD_SIZE_X = 1024,
    ADD_SIZE_Y = 42,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround_Line2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Background:AddPicture( g_pPictureBackGround_Line2 )

g_pPictureBackGround_Line2:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBackGround_Line2:SetPoint
{
    ADD_SIZE_X = 1024,
    ADD_SIZE_Y = 42,
	"LEFT_TOP		= D3DXVECTOR2(0,726)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

























