-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticRuben = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRuben )
g_pStaticRuben:SetName( "Ruben" )



g_pPictureBackGround_Ruben1 = g_pUIDialog:CreatePicture()
g_pStaticRuben:AddPicture( g_pPictureBackGround_Ruben1 )

g_pPictureBackGround_Ruben1:SetTex( "DLG_New_Ruben_Background00.dds", "Ruben_Background00" )

g_pPictureBackGround_Ruben1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround_Ruben2 = g_pUIDialog:CreatePicture()
g_pStaticRuben:AddPicture( g_pPictureBackGround_Ruben2 )

g_pPictureBackGround_Ruben2:SetTex( "DLG_New_Ruben_Background01.dds", "Ruben_Background01" )

g_pPictureBackGround_Ruben2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBackGround_Ruben3 = g_pUIDialog:CreatePicture()
g_pStaticRuben:AddPicture( g_pPictureBackGround_Ruben3 )

g_pPictureBackGround_Ruben3:SetTex( "DLG_New_Ruben_Background02.dds", "Ruben_Background02" )

g_pPictureBackGround_Ruben3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround_Ruben4 = g_pUIDialog:CreatePicture()
g_pStaticRuben:AddPicture( g_pPictureBackGround_Ruben4 )

g_pPictureBackGround_Ruben4:SetTex( "DLG_New_Ruben_Background02.dds", "Ruben_Background03" )

g_pPictureBackGround_Ruben4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureRuben_Title1 = g_pUIDialog:CreatePicture()
g_pStaticRuben:AddPicture( g_pPictureRuben_Title1)

g_pPictureRuben_Title1:SetTex( "DLG_Common_Texture00.tga", "Ruben3" )

g_pPictureRuben_Title1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureRuben_Title2 = g_pUIDialog:CreatePicture()
g_pStaticRuben:AddPicture( g_pPictureRuben_Title2 )

g_pPictureRuben_Title2:SetTex( "DLG_Common_Texture00.tga", "Village2" )

g_pPictureRuben_Title2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(85,8)",
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















IncludeLua( "DLG_Map_Village_Ruben_House_Button.lua" ) 



