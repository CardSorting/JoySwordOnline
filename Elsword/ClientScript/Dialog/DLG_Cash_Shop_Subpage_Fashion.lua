-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Subpage_Fashion" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )



g_pRadioSub_Tab_Total = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Total )

g_pRadioSub_Tab_Total:SetFixOverByCheck( true )
g_pRadioSub_Tab_Total:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Total:SetName( "Totalitem" )
g_pRadioSub_Tab_Total:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_ALL"] )

g_pRadioSub_Tab_Total:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "total_normal" )


g_pRadioSub_Tab_Total:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "total_Over" )


g_pRadioSub_Tab_Total:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "total_Over" )


g_pRadioSub_Tab_Total:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(372,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Total:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367-7,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Total:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(372-7,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(372+36-7,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Total:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(367-7,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Total:SetGroupID( 1 )
g_pRadioSub_Tab_Total:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 


g_pRadioSub_Tab_Wapon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Wapon )

g_pRadioSub_Tab_Wapon:SetFixOverByCheck( true )
g_pRadioSub_Tab_Wapon:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Wapon:SetName( "Tab_Wapon" )
g_pRadioSub_Tab_Wapon:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_FASHION_WEAPON"] )

g_pRadioSub_Tab_Wapon:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "wapon_normal" )


g_pRadioSub_Tab_Wapon:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "wapon_Over" )


g_pRadioSub_Tab_Wapon:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "wapon_Over" )


g_pRadioSub_Tab_Wapon:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(418,52-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Wapon:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(414-8,52-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Wapon:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(418-8,52-7)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(459-8+10,52+26-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Wapon:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(414-8,52-7)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Wapon:SetGroupID( 1 )
g_pRadioSub_Tab_Wapon:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 


g_pRadioSub_Tab_Hood1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Hood1 )

g_pRadioSub_Tab_Hood1:SetFixOverByCheck( true )
g_pRadioSub_Tab_Hood1:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Hood1:SetName( "Tab_Hood1" )
g_pRadioSub_Tab_Hood1:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_FASHION_BODY"] )

g_pRadioSub_Tab_Hood1:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "hood1_normal" )


g_pRadioSub_Tab_Hood1:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "hood1_Over" )


g_pRadioSub_Tab_Hood1:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "hood1_Over" )


g_pRadioSub_Tab_Hood1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513+25-50,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)", 
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(508-9+25-50,52-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(508+25-50,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(553+25+50-50,51+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Hood1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(508+20-4-50,51-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood1:SetGroupID( 1 )
g_pRadioSub_Tab_Hood1:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 

g_pRadioSub_Tab_Hood2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Hood2 )

g_pRadioSub_Tab_Hood2:SetFixOverByCheck( true )
g_pRadioSub_Tab_Hood2:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Hood2:SetName( "Tab_Hood2" )
g_pRadioSub_Tab_Hood2:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_FASHION_LEG"] )

g_pRadioSub_Tab_Hood2:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "hood2_normal" )


g_pRadioSub_Tab_Hood2:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "hood2_Over" )


g_pRadioSub_Tab_Hood2:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "hood2_Over" )


g_pRadioSub_Tab_Hood2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(560+90-40 - 40,52-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(555-10+90-40 - 40,52-5-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(555-10+90-40 - 40,51-5-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(600-10+90+50-40 - 40,51+26-5-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Hood2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(555-10+90-40 - 40,52-5-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood2:SetGroupID( 1 )
g_pRadioSub_Tab_Hood2:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 


g_pRadioSub_Tab_Hair = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Hair )

g_pRadioSub_Tab_Hair:SetFixOverByCheck( true )
g_pRadioSub_Tab_Hair:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Hair:SetName( "Tab_Hair" )
g_pRadioSub_Tab_Hair:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_FASHION_HAIR"] )


g_pRadioSub_Tab_Hair:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "HAIR_NORMAL" )


g_pRadioSub_Tab_Hair:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "HAIR_OVER" )


g_pRadioSub_Tab_Hair:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "HAIR_OVER" )


g_pRadioSub_Tab_Hair:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 670 ,51 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hair:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 655+3 ,46 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hair:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2( 655+3 ,45 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 695+3 ,71 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Hair:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2( 655+3 ,46 )",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hair:SetGroupID( 1 )
g_pRadioSub_Tab_Hair:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 



g_pRadioSub_Tab_Glove = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Glove )

g_pRadioSub_Tab_Glove:SetFixOverByCheck( true )
g_pRadioSub_Tab_Glove:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Glove:SetName( "Tab_Glove" )
g_pRadioSub_Tab_Glove:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_FASHION_HAND"] )

g_pRadioSub_Tab_Glove:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "glove_normal" )


g_pRadioSub_Tab_Glove:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "glove_Over" )


g_pRadioSub_Tab_Glove:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "glove_Over" )


g_pRadioSub_Tab_Glove:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(606+175 - 61,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Glove:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(602+175-6 - 61,52-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Glove:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(606+175-6 - 61,51-6)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(606+47+175-6,51+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Glove:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(602+175-6 - 61,52-6)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Glove:SetGroupID( 1 )
g_pRadioSub_Tab_Glove:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 


g_pRadioSub_Tab_Shoes = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Shoes )

g_pRadioSub_Tab_Shoes:SetFixOverByCheck( true )
g_pRadioSub_Tab_Shoes:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Shoes:SetName( "Tab_Shoes" )
g_pRadioSub_Tab_Shoes:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_FASHION_FOOT"] )

g_pRadioSub_Tab_Shoes:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "shoes_normal" )


g_pRadioSub_Tab_Shoes:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "shoes_Over" )


g_pRadioSub_Tab_Shoes:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "shoes_Over" )


g_pRadioSub_Tab_Shoes:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(653+200-70,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Shoes:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(649+200-5-70,51-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Shoes:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(653+200-5-70,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(653+47+200-5-70,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Shoes:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(649+200-5-70,51-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Shoes:SetGroupID( 1 )
g_pRadioSub_Tab_Shoes:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 


g_pRadioSub_Tab_OnePiece = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_OnePiece )

g_pRadioSub_Tab_OnePiece:SetFixOverByCheck( true )
g_pRadioSub_Tab_OnePiece:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_OnePiece:SetName( "Tab_OnePiece" )
g_pRadioSub_Tab_OnePiece:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_FASHION_ONE_PIECE"] )

g_pRadioSub_Tab_OnePiece:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "ONEPIECE_NORMAL" )


g_pRadioSub_Tab_OnePiece:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "ONEPIECE_OVER" )


g_pRadioSub_Tab_OnePiece:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "ONEPIECE_OVER" )


g_pRadioSub_Tab_OnePiece:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(701+140+13,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_OnePiece:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(701+140,51-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_OnePiece:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(701+140,51-3)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(701+100+130,51+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_OnePiece:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(701+140,52-3)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_OnePiece:SetGroupID( 1 )
g_pRadioSub_Tab_OnePiece:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 