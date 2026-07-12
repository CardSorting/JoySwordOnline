-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



---------------------------------                                  광고                      ---------------------------------



g_pStaticad = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticad )
g_pStaticad:SetName( "ad" )

---------------BG


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticad:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture08.TGA", "ad_bg1_left" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14+5,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticad:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture08.TGA", "ad_bg1_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 979-10,
	"LEFT_TOP		= D3DXVECTOR2(23+5,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticad:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture08.TGA", "ad_bg1_right" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(1003-5,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticad:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "ad_bg2_left" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(29+5,504)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticad:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "ad_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = 949-10,
	"LEFT_TOP		= D3DXVECTOR2(37+5,504)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticad:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "ad_bg2_right" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(987-5,504)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----------BG3   -------------->>  광고 들어감

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticad:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Ad.DDS", "ad_left" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(36+3,509+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticad:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Ad.DDS", "ad_right" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(36+512+3,509+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
