-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_PVP_Lobby_Front" )
g_pUIDialog:SetPos( 0,-3 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )



IncludeLua( "DLG_PVP_Lobby_Button.lua" )

IncludeLua( "DLG_PVP_Lobby_Channel.lua" )






-------------------(대련장 타이틀과 그외 글자 텍스쳐)--------------------------



g_pStaticPVP_Lobby_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Lobby_Title )
g_pStaticPVP_Lobby_Title:SetName( "Background" )


g_pPicturePVP_Lobby_Title = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_Title:AddPicture( g_pPicturePVP_Lobby_Title )

g_pPicturePVP_Lobby_Title:SetTex( "DLG_Common_Texture00.TGA", "PVP" )

g_pPicturePVP_Lobby_Title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(20,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





















---------------------------(화살표)


g_pButtonLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle )
g_pButtonLeft_Triangle:SetName( "ButtonLeft_Triangle" )
g_pButtonLeft_Triangle:SetNormalTex( "DLG_Common_New_Texture13.tga", "Arrow_Normal2" )

g_pButtonLeft_Triangle:SetOverTex(  "DLG_Common_New_Texture13.tga", "Arrow_Over2" )

g_pButtonLeft_Triangle:SetDownTex( "DLG_Common_New_Texture13.tga", "Arrow_Over2" )

g_pButtonLeft_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(240+41,667)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(240+41,667)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(242+41,668)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_ROOM_BACK_PAGE"] )




g_pButtonRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle )
g_pButtonRight_Triangle:SetName( "ButtonRight_Triangle" )
g_pButtonRight_Triangle:SetNormalTex( "DLG_Common_New_Texture13.tga", "Arrow_Normal" )

g_pButtonRight_Triangle:SetOverTex( "DLG_Common_New_Texture13.tga", "Arrow_Over" )

g_pButtonRight_Triangle:SetDownTex( "DLG_Common_New_Texture13.tga", "Arrow_Over" )

g_pButtonRight_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(302+41,667)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(302+41,667)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(304+41,668)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonRight_Triangle:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_ROOM_NEXT_PAGE"] )



