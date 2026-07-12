-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Choiced_Menu_Window" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )
g_pUIDialog:SetCloseCustomUIEventID( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CHOICED_CLOSE"] )

----------------------------------------맨 윗부분

g_pStatic_Cash_Menu_Window_Back = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Cash_Menu_Window_Back )
g_pStatic_Cash_Menu_Window_Back:SetName( "g_pStatic_Cash_Menu_Window_Back" )
g_pStatic_Cash_Menu_Window_Back:SetEnable( true )

g_pPicture_Cash_Menu_Window_Back_Upper = g_pUIDialog:CreatePicture()
g_pStatic_Cash_Menu_Window_Back:AddPicture( g_pPicture_Cash_Menu_Window_Back_Upper )

g_pPicture_Cash_Menu_Window_Back_Upper:SetTex( "DLG_Common_New_Texture55.tga", "user_window1-1"  )
g_pPicture_Cash_Menu_Window_Back_Upper:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------------------------------중간부분

g_pPicture_Cash_Menu_Window_Back_Middle = g_pUIDialog:CreatePicture()
g_pStatic_Cash_Menu_Window_Back:AddPicture( g_pPicture_Cash_Menu_Window_Back_Middle )

g_pPicture_Cash_Menu_Window_Back_Middle:SetTex( "DLG_Common_New_Texture53.tga", "user_window2"  )
g_pPicture_Cash_Menu_Window_Back_Middle:SetPoint
{
    ADD_SIZE_Y = 169-169,
	
	"LEFT_TOP		= D3DXVECTOR2( 0,30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------------------------------끝부분


g_pPicture_Cash_Menu_Window_Back_Bottom = g_pUIDialog:CreatePicture()
g_pStatic_Cash_Menu_Window_Back:AddPicture( g_pPicture_Cash_Menu_Window_Back_Bottom )

g_pPicture_Cash_Menu_Window_Back_Bottom:SetTex( "DLG_Common_New_Texture53.tga", "user_window3"  )
g_pPicture_Cash_Menu_Window_Back_Bottom:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 0,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------------------------------------------------메뉴


g_pStatic_Cash_Menu_Window_Contents = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Cash_Menu_Window_Contents )
g_pStatic_Cash_Menu_Window_Contents:SetName( "g_pStatic_Cash_Menu_Window_Contents" )


g_pPicture_Cash_Menu_Window_Contents_BG= g_pUIDialog:CreatePicture()
g_pStatic_Cash_Menu_Window_Contents:AddPicture( g_pPicture_Cash_Menu_Window_Contents_BG)

g_pPicture_Cash_Menu_Window_Contents_BG:SetTex( "DLG_Common_New_Texture53.tga", "user_window2"  )
g_pPicture_Cash_Menu_Window_Contents_BG:SetPoint
{
    ADD_SIZE_Y = 18+27+27+13,
	
	"LEFT_TOP		= D3DXVECTOR2( 0,80-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---구입하기

g_pButtonBuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBuy )
g_pButtonBuy:SetName( "Buy" )
g_pButtonBuy:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "Buy_Normal" )

g_pButtonBuy:SetOverTex( "DLG_Common_New_Texture54.TGA", "Buy_Over" )

g_pButtonBuy:SetDownTex( "DLG_Common_New_Texture54.TGA", "Buy_Over" )

g_pButtonBuy:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(67+20,91-63-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,82-63)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,83-63)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CHOICED_BUY"] )



---선물하기

g_pButtonGift = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGift )
g_pButtonGift:SetName( "Gift" )
g_pButtonGift:SetDisableTex( "DLG_Common_New_Texture54_A.TGA", "Gift_Normal" )
g_pButtonGift:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "Gift_Normal" )
g_pButtonGift:SetOverTex( "DLG_Common_New_Texture54.TGA", "Gift_Over" )
g_pButtonGift:SetDownTex( "DLG_Common_New_Texture54.TGA", "Gift_Over" )

g_pButtonGift:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(67-1+5 + 14,91-63+27-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGift:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(67-1+5 + 14,91-63+27-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGift:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5+14,82-63+27-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGift:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(5+14+1,83-63+27-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonGift:SetGuideDesc( STR_ID_2749 )
g_pButtonGift:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CHOICED_PRESENT"] )

--[[

---찜하기

g_pButtonCheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCheck )
g_pButtonCheck:SetName( "Check" )
g_pButtonCheck:SetNormalTex( "DLG_Common_New_Texture54.TGA", "Check_Normal" )

g_pButtonCheck:SetOverTex( "DLG_Common_New_Texture54.TGA", "Check_Over" )

g_pButtonCheck:SetDownTex( "DLG_Common_New_Texture54.TGA", "Check_Over" )

g_pButtonCheck:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(67,91-63+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,82-63+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19,83-63+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]


---입어보기

g_pButtonEquip = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonEquip )
g_pButtonEquip:SetName( "Equip" )
g_pButtonEquip:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "Equip_Normal" )

g_pButtonEquip:SetOverTex( "DLG_Common_New_Texture54.TGA", "Equip_Over" )

g_pButtonEquip:SetDownTex( "DLG_Common_New_Texture54.TGA", "Equip_Over" )

g_pButtonEquip:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(67+7+5 + 4,91-63+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEquip:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,82-63+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEquip:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,83-63+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEquip:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CHOICED_PRE_EQUIPPING"] )




---리스트에서 빼기

g_pButtonList = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonList )
g_pButtonList:SetName( "RemoveList" )
g_pButtonList:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "List_Normal" )

g_pButtonList:SetOverTex( "DLG_Common_New_Texture54.TGA", "List_Over" )

g_pButtonList:SetDownTex( "DLG_Common_New_Texture54.TGA", "List_Over" )

g_pButtonList:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(67-21+10 + 22,91-63+27+27+27-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonList:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,82-63+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonList:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,83-63+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonList:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CHOICED_REMOVE_IN_LIST"] )


