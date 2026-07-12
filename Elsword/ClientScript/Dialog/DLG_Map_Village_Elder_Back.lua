-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticElder = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticElder )
g_pStaticElder:SetName( "Elder" )



g_pPictureBackGround_Elder1 = g_pUIDialog:CreatePicture()
g_pStaticElder:AddPicture( g_pPictureBackGround_Elder1 )

g_pPictureBackGround_Elder1:SetTex( "DLG_New_Elder_Background00.dds", "Elder_Background00" )

g_pPictureBackGround_Elder1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround_Elder2 = g_pUIDialog:CreatePicture()
g_pStaticElder:AddPicture( g_pPictureBackGround_Elder2 )

g_pPictureBackGround_Elder2:SetTex( "DLG_New_Elder_Background01.dds", "Elder_Background01" )

g_pPictureBackGround_Elder2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBackGround_Elder3 = g_pUIDialog:CreatePicture()
g_pStaticElder:AddPicture( g_pPictureBackGround_Elder3 )

g_pPictureBackGround_Elder3:SetTex( "DLG_New_Elder_Background02.dds", "Elder_Background03" )

g_pPictureBackGround_Elder3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround_Elder4 = g_pUIDialog:CreatePicture()
g_pStaticElder:AddPicture( g_pPictureBackGround_Elder4 )

g_pPictureBackGround_Elder4:SetTex( "DLG_New_Elder_Background02.dds", "Elder_Background02" )

g_pPictureBackGround_Elder4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureElder_Title1 = g_pUIDialog:CreatePicture()
g_pStaticElder:AddPicture( g_pPictureElder_Title1 )

g_pPictureElder_Title1:SetTex( "DLG_Common_Texture00.tga", "Elder2" )

g_pPictureElder_Title1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureElder_Title2 = g_pUIDialog:CreatePicture()
g_pStaticElder:AddPicture( g_pPictureElder_Title2 )

g_pPictureElder_Title2:SetTex( "DLG_Common_Texture00.tga", "Village2" )

g_pPictureElder_Title2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,8)",
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



IncludeLua( "DLG_Map_Village_Elder_House_Button.lua" )






