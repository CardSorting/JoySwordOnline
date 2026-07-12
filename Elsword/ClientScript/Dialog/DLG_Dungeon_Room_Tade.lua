-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

 g_pStaticTrade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTrade )
g_pStaticTrade:SetName( "StaticTrade" )


g_pPictureTrade1= g_pUIDialog:CreatePicture()
g_pStaticTrade:AddPicture( g_pPictureTrade1)

g_pPictureTrade1:SetTex( "DLG_Common_New_Texture36.tga", "Trade_Ing" )

g_pPictureTrade1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(126-14-7,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureTrade2= g_pUIDialog:CreatePicture()
g_pStaticTrade:AddPicture( g_pPictureTrade2)

g_pPictureTrade2:SetTex( "DLG_Common_New_Texture36.tga", "Trade_Ing" )

g_pPictureTrade2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(373-31-7,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPictureTrade3= g_pUIDialog:CreatePicture()
g_pStaticTrade:AddPicture( g_pPictureTrade3)

g_pPictureTrade3:SetTex( "DLG_Common_New_Texture36.tga", "Trade_Ing" )

g_pPictureTrade3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(612-45-7,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureTrade4= g_pUIDialog:CreatePicture()
g_pStaticTrade:AddPicture( g_pPictureTrade4)

g_pPictureTrade4:SetTex( "DLG_Common_New_Texture36.tga", "Trade_Ing" )

g_pPictureTrade4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(829-35-7,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
