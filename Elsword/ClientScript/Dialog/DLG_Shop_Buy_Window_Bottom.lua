-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Shop_Window2" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )




g_pButtonShop_Button1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonShop_Button1 )
g_pButtonShop_Button1:SetName( "Shop_Return" )
g_pButtonShop_Button1:SetNormalTex( "DLG_Common_Texture03.TGA", "Box_Normal" )

g_pButtonShop_Button1:SetOverTex( "DLG_Common_Texture03.TGA", "Box_Over" )

g_pButtonShop_Button1:SetDownTex( "DLG_Common_Texture03.TGA", "Box_Down" )

g_pButtonShop_Button1:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(172,572)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonShop_Button1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(172,572)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonShop_Button1:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(173,573)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonShop_Button1:SetCustomMsgMouseUp( SHOP_UI_CUSTOM_MSG["SUCM_BUY_EQUIP_REVERT"] )


g_pButtonShop_Button2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonShop_Button2 )
g_pButtonShop_Button2:SetName( "Shop_All_Buy" )
g_pButtonShop_Button2:SetNormalTex( "DLG_Common_Texture03.TGA", "Box_Normal" )

g_pButtonShop_Button2:SetOverTex( "DLG_Common_Texture03.TGA", "Box_Over" )

g_pButtonShop_Button2:SetDownTex( "DLG_Common_Texture03.TGA", "Box_Down" )

g_pButtonShop_Button2:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(269,572)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonShop_Button2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(269,572)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonShop_Button2:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(270,573)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonShop_Button2:SetCustomMsgMouseUp( SHOP_UI_CUSTOM_MSG["SUCM_BUY_EQUIP_APPLY"] )








----(인벤토리 정보)

g_pStaticUser_Shop_Info_Window_Button_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Shop_Info_Window_Button_Font )
g_pStaticUser_Shop_Info_Window_Button_Font:SetName( "Shop_Window" )


g_pPictureShop_All_Buy = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window_Button_Font:AddPicture( g_pPictureShop_All_Buy )

g_pPictureShop_All_Buy:SetTex( "DLG_Common_Texture00.TGA", "All_Buy" )

g_pPictureShop_All_Buy:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(286,580)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Cancel = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window_Button_Font:AddPicture( g_pPictureShop_Cancel )

g_pPictureShop_Cancel:SetTex( "DLG_Common_Texture00.TGA", "Shop_Cancel" )

g_pPictureShop_Cancel:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(189,580)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

