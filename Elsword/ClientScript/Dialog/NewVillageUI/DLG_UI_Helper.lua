-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStatichelper = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatichelper )
g_pStatichelper:SetName( "helper" )
g_pUIDialog:SetFront( true )

---------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatichelper:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "helper_bg1_top" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(314,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatichelper:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "helper_bg1_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 288,
	"LEFT_TOP		= D3DXVECTOR2(314,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatichelper:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "helper_bg1_bottom" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(314,303)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------------  title

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatichelper:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "helper" )

g_pPicture_title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(328,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------BG

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatichelper:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "helper_bg2_top" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(327,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatichelper:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "helper_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 232,
	"LEFT_TOP		= D3DXVECTOR2(327,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatichelper:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "helper_bg2_bottom" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(327,290)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_shop = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_shop )
g_pStatic_shop:SetName( "shop" )

g_pStatic_shop:AddString
{
	MSG 			= STR_ID_1279,
	FONT_INDEX		=  XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(335,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_detail = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_detail )
g_pStatic_detail:SetName( "detail1" )

g_pStatic_detail:AddString
{
	MSG 			= STR_ID_1280,
	FONT_INDEX		=  XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(336,80)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_detail = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_detail )
g_pStatic_detail:SetName( "detail2" )

g_pStatic_detail:AddString
{
	MSG 			= STR_ID_1281,
	FONT_INDEX		=  XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(335,106)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_detail = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_detail )
g_pStatic_detail:SetName( "detail3" )

g_pStatic_detail:AddString
{
	MSG 			= STR_ID_1282,
	FONT_INDEX		=  XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(335,175)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_detail = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_detail )
g_pStatic_detail:SetName( "detail4" )

g_pStatic_detail:AddString
{
	MSG 			= STR_ID_1283,
	FONT_INDEX		=  XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(335,219)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_detail = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_detail )
g_pStatic_detail:SetName( "detail5" )

g_pStatic_detail:AddString
{
	MSG 			= STR_ID_1284,
	FONT_INDEX		=  XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(335,260)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



---------------------------------EXIT


g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(627,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(623,14)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(623+1,14+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_SELL_HELPTOGGLE"] )
