-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Subpage_Accessory" )
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






g_pRadioSub_Tab_Weapon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Weapon )

g_pRadioSub_Tab_Weapon:SetFixOverByCheck( true )
g_pRadioSub_Tab_Weapon:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Weapon:SetName( "Tab_Weapon" )
g_pRadioSub_Tab_Weapon:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_ACCESSORY_WEAPON"] )


g_pRadioSub_Tab_Weapon:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "Wapon_normal" )


g_pRadioSub_Tab_Weapon:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "Wapon_Over" )


g_pRadioSub_Tab_Weapon:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "Wapon_Over" )


g_pRadioSub_Tab_Weapon:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(418,52-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Weapon:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(414-8,52-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Weapon:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(418-8,52-7)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(459-8+10,52+26-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Weapon:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(414-8,52-7)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Weapon:SetGroupID( 1 )
g_pRadioSub_Tab_Weapon:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 










g_pRadioSub_Tab_Face = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Face )

g_pRadioSub_Tab_Face:SetFixOverByCheck( true )
g_pRadioSub_Tab_Face:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Face:SetName( "Tab_Face" )
g_pRadioSub_Tab_Face:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_ACCESSORY_FACE"] )


g_pRadioSub_Tab_Face:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "face_normal" )


g_pRadioSub_Tab_Face:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "face_Over" )


g_pRadioSub_Tab_Face:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "face_Over" )


g_pRadioSub_Tab_Face:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(466+20,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Face:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(461-6+20,51-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}

g_pRadioSub_Tab_Face:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(461-6+20,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(506-6+20,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Face:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(461-6+20,51-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Face:SetGroupID( 1 )
g_pRadioSub_Tab_Face:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 



g_pRadioSub_Tab_Hood1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Hood1 )

g_pRadioSub_Tab_Hood1:SetFixOverByCheck( true )
g_pRadioSub_Tab_Hood1:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Hood1:SetName( "Tab_Hood1" )
g_pRadioSub_Tab_Hood1:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_ACCESSORY_BODY"] )

g_pRadioSub_Tab_Hood1:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "hood1_normal" )


g_pRadioSub_Tab_Hood1:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "hood1_Over" )


g_pRadioSub_Tab_Hood1:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "hood1_Over" )


g_pRadioSub_Tab_Hood1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513+25,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)", 
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(508-9+25,52-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(508+25,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(553+25+50,51+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Hood1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(508+20-4,51-5)",
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
g_pRadioSub_Tab_Hood2:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_ACCESSORY_LEG"] )

g_pRadioSub_Tab_Hood2:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "hood2_normal" )


g_pRadioSub_Tab_Hood2:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "hood2_Over" )


g_pRadioSub_Tab_Hood2:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "hood2_Over" )


g_pRadioSub_Tab_Hood2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(560+90 - 30,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(555-10+90 - 30,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(555-10+90 - 30,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(600-10+90+50 - 30,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Hood2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(555-10+90 - 30,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Hood2:SetGroupID( 1 )
g_pRadioSub_Tab_Hood2:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 





g_pRadioSub_Tab_Arm = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Arm )

g_pRadioSub_Tab_Arm:SetFixOverByCheck( true )
g_pRadioSub_Tab_Arm:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Arm:SetName( "Tab_Arm" )
g_pRadioSub_Tab_Arm:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_ACCESSORY_ARM"] )

g_pRadioSub_Tab_Arm:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "arm_normal" )


g_pRadioSub_Tab_Arm:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "arm_Over" )


g_pRadioSub_Tab_Arm:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "arm_Over" )


g_pRadioSub_Tab_Arm:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(613+150 - 45,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Arm:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(602+150 - 45,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Arm:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(602+150 - 45,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(647+150 - 45,51+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Arm:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(602+150 - 45,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Arm:SetGroupID( 1 )
g_pRadioSub_Tab_Arm:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 



g_pRadioSub_Tab_Ring = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Ring )

g_pRadioSub_Tab_Ring:SetFixOverByCheck( true )
g_pRadioSub_Tab_Ring:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Ring:SetName( "Tab_Ring" )
g_pRadioSub_Tab_Ring:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_ACCESSORY_RING"] )

g_pRadioSub_Tab_Ring:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "ring_normal" )


g_pRadioSub_Tab_Ring:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "ring_Over" )


g_pRadioSub_Tab_Ring:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "ring_Over" )


g_pRadioSub_Tab_Ring:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(654+155-42,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Ring:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(649+155-7-42,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Ring:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(649+155-7-42,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(694+155-7-42,51+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Ring:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(649+155-7-42,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Ring:SetGroupID( 1 )
g_pRadioSub_Tab_Ring:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 


g_pRadioSub_Tab_necklace = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_necklace )

g_pRadioSub_Tab_necklace:SetFixOverByCheck( true )
g_pRadioSub_Tab_necklace:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_necklace:SetName( "tab_necklace" )
g_pRadioSub_Tab_necklace:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_ACCESSORY_NECKLACE"] )

g_pRadioSub_Tab_necklace:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "necklace_normal" )


g_pRadioSub_Tab_necklace:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "necklace_Over" )


g_pRadioSub_Tab_necklace:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "necklace_Over" )


g_pRadioSub_Tab_necklace:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(700+160-39,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_necklace:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(696+160-8-39,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_necklace:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(696+160-8-39,52-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(752+160-8-39,52+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_necklace:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(696+160-8-39,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_necklace:SetGroupID( 1 )
g_pRadioSub_Tab_necklace:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 
