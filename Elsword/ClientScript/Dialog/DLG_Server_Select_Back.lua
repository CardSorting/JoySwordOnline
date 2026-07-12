-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Server_Select_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )























-----------------------------------솔레스 서버 normal----------------------------------





g_pStaticSever_Select_Slot1_Normal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSever_Select_Slot1_Normal )
g_pStaticSever_Select_Slot1_Normal:SetName( "StaticSever_Select_Slot1_Normal" )

g_pPictureWhite_Slot1_Window_Normal1 = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Slot1_Normal:AddPicture( g_pPictureWhite_Slot1_Window_Normal1 )

g_pPictureWhite_Slot1_Window_Normal1:SetTex( "DLG_Common_Texture05.tga", "Server_Window_Normal1" )

g_pPictureWhite_Slot1_Window_Normal1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(58-47,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureWhite_Slot1_Window_Normal2 = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Slot1_Normal:AddPicture( g_pPictureWhite_Slot1_Window_Normal2 )

g_pPictureWhite_Slot1_Window_Normal2:SetTex( "DLG_Common_Texture05.tga", "Server_Window_Normal2" )

g_pPictureWhite_Slot1_Window_Normal2:SetPoint
{
    ADD_SIZE_X = 300,
	"LEFT_TOP		= D3DXVECTOR2(71-47,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Slot1_Window_Normal3 = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Slot1_Normal:AddPicture( g_pPictureWhite_Slot1_Window_Normal3 )

g_pPictureWhite_Slot1_Window_Normal3:SetTex( "DLG_Common_Texture05.tga", "Server_Window_Normal3" )

g_pPictureWhite_Slot1_Window_Normal3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(372-47,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








---------------------------솔레스 서버 over-------------------------------------









g_pStaticSever_Select_Slot1_Over = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSever_Select_Slot1_Over )
g_pStaticSever_Select_Slot1_Over:SetName( "StaticSever_Select_Slot1_Over" )



g_pPictureWhite_Slot1_Window_Over1 = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Slot1_Over:AddPicture( g_pPictureWhite_Slot1_Window_Over1 )

g_pPictureWhite_Slot1_Window_Over1:SetTex( "DLG_Common_Texture05.tga", "Server_Window_Over1" )

g_pPictureWhite_Slot1_Window_Over1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(58-47,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureWhite_Slot1_Window_Over2 = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Slot1_Over:AddPicture( g_pPictureWhite_Slot1_Window_Over2 )

g_pPictureWhite_Slot1_Window_Over2:SetTex( "DLG_Common_Texture05.tga", "Server_Window_Over2" )

g_pPictureWhite_Slot1_Window_Over2:SetPoint
{
    ADD_SIZE_X = 300,
	"LEFT_TOP		= D3DXVECTOR2(71-47,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Slot1_Window_Over3 = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Slot1_Over:AddPicture( g_pPictureWhite_Slot1_Window_Over3 )

g_pPictureWhite_Slot1_Window_Over3:SetTex( "DLG_Common_Texture05.tga", "Server_Window_Over3" )

g_pPictureWhite_Slot1_Window_Over3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(372-47,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------------------솔레스 서버 Down-------------------------------------









g_pStaticSever_Select_Slot1_Down = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSever_Select_Slot1_Down )
g_pStaticSever_Select_Slot1_Down:SetName( "StaticSever_Select_Slot1_Down" )



g_pPictureWhite_Slot1_Window_Down = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Slot1_Down:AddPicture( g_pPictureWhite_Slot1_Window_Down )

g_pPictureWhite_Slot1_Window_Down:SetTex( "DLG_Common_Texture05.tga", "Server_Window_Over1" )

g_pPictureWhite_Slot1_Window_Down:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(58-47,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureWhite_Slot1_Window_Over2 = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Slot1_Down:AddPicture( g_pPictureWhite_Slot1_Window_Over2 )

g_pPictureWhite_Slot1_Window_Over2:SetTex( "DLG_Common_Texture05.tga", "Server_Window_Over2" )

g_pPictureWhite_Slot1_Window_Over2:SetPoint
{
    ADD_SIZE_X = 300,
	"LEFT_TOP		= D3DXVECTOR2(71-47,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Slot1_Window_Over3 = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Slot1_Down:AddPicture( g_pPictureWhite_Slot1_Window_Over3 )

g_pPictureWhite_Slot1_Window_Over3:SetTex( "DLG_Common_Texture05.tga", "Server_Window_Over3" )

g_pPictureWhite_Slot1_Window_Over3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(372-47,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











---------------------버튼-------------------------------------------------------

g_pButtonQuest_Button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonQuest_Button )
g_pButtonQuest_Button:SetName( "ServerSelect" )
--g_pButtonQuest_Button:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

--g_pButtonQuest_Button:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

g_pButtonQuest_Button:SetNormalStatic( g_pStaticSever_Select_Slot1_Normal )
g_pButtonQuest_Button:SetOverStatic( g_pStaticSever_Select_Slot1_Over )
g_pButtonQuest_Button:SetDownStatic( g_pStaticSever_Select_Slot1_Down )

--g_pButtonQuest_Button:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonQuest_Button:SetNormalPoint
{
	IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(58-47,85)",
	"RIGHT_TOP		= D3DXVECTOR2(384-47,85)",
	"LEFT_BOTTOM		= D3DXVECTOR2(58-47,159)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(384-47,159)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Button:SetOverPoint
{
    IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(58-47,85)",
	"RIGHT_TOP		= D3DXVECTOR2(384-47,85)",
	"LEFT_BOTTOM		= D3DXVECTOR2(58-47,159)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(384-47,159)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Button:SetDownPoint
{
     IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(58-47,85)",
	"RIGHT_TOP		= D3DXVECTOR2(384-47,85)",
	"LEFT_BOTTOM		= D3DXVECTOR2(58-47,159)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(384-47,159)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Button:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )






































------------------------------텍스쳐----------------------------------------------
g_pStaticSever_Select_Tex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSever_Select_Tex )
g_pStaticSever_Select_Tex:SetName( "StaticSever_Select_Tex" )






g_pPictureSoles = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Tex:AddPicture( g_pPictureSoles )

g_pPictureSoles:SetTex( "DLG_Common_Texture07.tga", "Sol" )

g_pPictureSoles:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(167-47,94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSever = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Tex:AddPicture( g_pPictureSever )

g_pPictureSever:SetTex( "DLG_Common_Texture07.tga", "Sever" )

g_pPictureSever:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(248-47,105)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureSever_Title = g_pUIDialog:CreatePicture()
g_pStaticSever_Select_Tex:AddPicture( g_pPictureSever_Title )

g_pPictureSever_Title:SetTex( "DLG_Common_Texture07.tga", "Sever_Select" )

g_pPictureSever_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------솔레스 서버 게이지---------------


g_pStaticSever_Soless_Server_Gauge = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSever_Soless_Server_Gauge )
g_pStaticSever_Soless_Server_Gauge:SetName( "Sever_Soless_Server_Gauge" )


g_pStaticSever_Soless_Server_Gauge:AddString
{
	-- MSG    		 = " 원활 ",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],

	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS            = D3DXVECTOR2(353-47,136)",
	"COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pPictureSever_Soless1 = g_pUIDialog:CreatePicture()
g_pStaticSever_Soless_Server_Gauge:AddPicture( g_pPictureSever_Soless1 )

g_pPictureSever_Soless1:SetTex( "DLG_Common_Texture05.tga", "Server_Gauge_Bar1" )

g_pPictureSever_Soless1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(64-47,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSever_Soless2 = g_pUIDialog:CreatePicture()
g_pStaticSever_Soless_Server_Gauge:AddPicture( g_pPictureSever_Soless2 )

g_pPictureSever_Soless2:SetTex( "DLG_Common_Texture05.tga", "Server_Gauge_Bar2" )

g_pPictureSever_Soless2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(95-47,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSever_Soless3 = g_pUIDialog:CreatePicture()
g_pStaticSever_Soless_Server_Gauge:AddPicture( g_pPictureSever_Soless3 )

g_pPictureSever_Soless3:SetTex( "DLG_Common_Texture05.tga", "Server_Gauge_Bar3" )

g_pPictureSever_Soless3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(125-47,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSever_Soless4 = g_pUIDialog:CreatePicture()
g_pStaticSever_Soless_Server_Gauge:AddPicture( g_pPictureSever_Soless4 )

g_pPictureSever_Soless4:SetTex( "DLG_Common_Texture05.tga", "Server_Gauge_Bar4" )

g_pPictureSever_Soless4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(157-47,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSever_Soless5 = g_pUIDialog:CreatePicture()
g_pStaticSever_Soless_Server_Gauge:AddPicture( g_pPictureSever_Soless5 )

g_pPictureSever_Soless5:SetTex( "DLG_Common_Texture05.tga", "Server_Gauge_Bar5" )

g_pPictureSever_Soless5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(188-47,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSever_Soless6 = g_pUIDialog:CreatePicture()
g_pStaticSever_Soless_Server_Gauge:AddPicture( g_pPictureSever_Soless6 )

g_pPictureSever_Soless6:SetTex( "DLG_Common_Texture05.tga", "Server_Gauge_Bar6" )

g_pPictureSever_Soless6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(220-47,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSever_Soless7 = g_pUIDialog:CreatePicture()
g_pStaticSever_Soless_Server_Gauge:AddPicture( g_pPictureSever_Soless7 )

g_pPictureSever_Soless7:SetTex( "DLG_Common_Texture05.tga", "Server_Gauge_Bar7" )

g_pPictureSever_Soless7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(242-47,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSever_Soless8 = g_pUIDialog:CreatePicture()
g_pStaticSever_Soless_Server_Gauge:AddPicture( g_pPictureSever_Soless8 )

g_pPictureSever_Soless8:SetTex( "DLG_Common_Texture05.tga", "Server_Gauge_Bar8" )

g_pPictureSever_Soless8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(274-47,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSever_Soless9 = g_pUIDialog:CreatePicture()
g_pStaticSever_Soless_Server_Gauge:AddPicture( g_pPictureSever_Soless9 )

g_pPictureSever_Soless9:SetTex( "DLG_Common_Texture05.tga", "Server_Gauge_Bar9" )

g_pPictureSever_Soless9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(306-47,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSever_Soless10 = g_pUIDialog:CreatePicture()
g_pStaticSever_Soless_Server_Gauge:AddPicture( g_pPictureSever_Soless10 )

g_pPictureSever_Soless10:SetTex( "DLG_Common_Texture05.tga", "Server_Gauge_Bar10" )

g_pPictureSever_Soless10:SetPoint
{
    ADD_SIZE_X = 8,
	"LEFT_TOP		= D3DXVECTOR2(338-47,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----------------------------------------------------------------







-- 클라이언트 버전 표시
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Client_Version" )

g_pStatic:AddString
{
	MSG 			= STR_ID_1,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2( 1000, 740 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	









