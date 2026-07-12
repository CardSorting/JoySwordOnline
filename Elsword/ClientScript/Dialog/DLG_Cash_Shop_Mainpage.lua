-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Mainpage" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticCashShop_Newitem = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_Newitem )
g_pStaticCashShop_Newitem:SetName( "g_pStaticCashShop_Newitem" )


g_pPictureCashShop_Newitem_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Newitem:AddPicture( g_pPictureCashShop_Newitem_BG1 )

g_pPictureCashShop_Newitem_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "main_back1" )

g_pPictureCashShop_Newitem_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(366,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashShop_Newitem_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Newitem:AddPicture( g_pPictureCashShop_Newitem_BG2 )

g_pPictureCashShop_Newitem_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "main_back2" )

g_pPictureCashShop_Newitem_BG2:SetPoint
{
	ADD_SIZE_X = 605,
	"LEFT_TOP		= D3DXVECTOR2(380,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashShop_Newitem_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Newitem:AddPicture( g_pPictureCashShop_Newitem_BG3 )

g_pPictureCashShop_Newitem_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "main_back3" )

g_pPictureCashShop_Newitem_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(986,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashShop_Newitem_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Newitem:AddPicture( g_pPictureCashShop_Newitem_BG4 )

g_pPictureCashShop_Newitem_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "newitem_bar1" )

g_pPictureCashShop_Newitem_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(366+3,85+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashShop_Newitem_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Newitem:AddPicture( g_pPictureCashShop_Newitem_BG5 )

g_pPictureCashShop_Newitem_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "newitem_bar2" )

g_pPictureCashShop_Newitem_BG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(879,85+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--[[
g_pPictureCashShop_Newitem_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Newitem:AddPicture( g_pPictureCashShop_Newitem_BG6 )

g_pPictureCashShop_Newitem_BG6:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashShop_Newitem_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(373,138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashShop_Newitem_BG7 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Newitem:AddPicture( g_pPictureCashShop_Newitem_BG7 )

g_pPictureCashShop_Newitem_BG7:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashShop_Newitem_BG7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashShop_Newitem_BG8 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Newitem:AddPicture( g_pPictureCashShop_Newitem_BG8 )

g_pPictureCashShop_Newitem_BG8:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashShop_Newitem_BG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(797,138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]


g_pButtonNewitem_Left_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNewitem_Left_Triangle )
g_pButtonNewitem_Left_Triangle:SetName( "Newitem_Left_Triangle" )
g_pButtonNewitem_Left_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonNewitem_Left_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonNewitem_Left_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonNewitem_Left_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNewitem_Left_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(900,99)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNewitem_Left_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902,101)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNewitem_Left_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_MAIN_NEW_PREV_PAGE"] )

g_pButtonNewitem_Right_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNewitem_Right_Triangle )
g_pButtonNewitem_Right_Triangle:SetName( "Newitem_Right_Triangle" )
g_pButtonNewitem_Right_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonNewitem_Right_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonNewitem_Right_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonNewitem_Right_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNewitem_Right_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964,99)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNewitem_Right_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,101)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNewitem_Right_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_MAIN_NEW_NEXT_PAGE"] )

	g_pStaticNewitem_Font = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticNewitem_Font )
	g_pStaticNewitem_Font:SetName( "g_pStaticNewitem_Font" )

	g_pStaticNewitem_Font:AddString
	{
		-- -- MSG 			= "1/9",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(942,103)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}











------------------------------------------------



g_pStaticCashShop_Hotitem = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_Hotitem )
g_pStaticCashShop_Hotitem:SetName( "g_pStaticCashShop_Hotitem" )





g_pPictureCashShop_Hotitem_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Hotitem:AddPicture( g_pPictureCashShop_Hotitem_BG1 )

g_pPictureCashShop_Hotitem_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "main_back1" )

g_pPictureCashShop_Hotitem_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(366,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashShop_Hotitem_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Hotitem:AddPicture( g_pPictureCashShop_Hotitem_BG2 )

g_pPictureCashShop_Hotitem_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "main_back2" )

g_pPictureCashShop_Hotitem_BG2:SetPoint
{
	ADD_SIZE_X = 605,
	"LEFT_TOP		= D3DXVECTOR2(380,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashShop_Hotitem_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Hotitem:AddPicture( g_pPictureCashShop_Hotitem_BG3 )

g_pPictureCashShop_Hotitem_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "main_back3" )

g_pPictureCashShop_Hotitem_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(986,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashShop_Hotitem_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Hotitem:AddPicture( g_pPictureCashShop_Hotitem_BG4 )

g_pPictureCashShop_Hotitem_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "hotitem_bar1" )

g_pPictureCashShop_Hotitem_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(366+3,250+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashShop_Hotitem_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Hotitem:AddPicture( g_pPictureCashShop_Hotitem_BG5 )

g_pPictureCashShop_Hotitem_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "hotitem_bar2" )

g_pPictureCashShop_Hotitem_BG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(879,250+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPictureCashShop_Hotitem_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Hotitem:AddPicture( g_pPictureCashShop_Hotitem_BG6 )

g_pPictureCashShop_Hotitem_BG6:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashShop_Hotitem_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(373,303)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashShop_Hotitem_BG7 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Hotitem:AddPicture( g_pPictureCashShop_Hotitem_BG7 )

g_pPictureCashShop_Hotitem_BG7:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashShop_Hotitem_BG7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,303)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashShop_Hotitem_BG8 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Hotitem:AddPicture( g_pPictureCashShop_Hotitem_BG8 )

g_pPictureCashShop_Hotitem_BG8:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashShop_Hotitem_BG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(797,303)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]


g_pButtonHotitem_Left_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHotitem_Left_Triangle )
g_pButtonHotitem_Left_Triangle:SetName( "Hotitem_Left_Triangle" )
g_pButtonHotitem_Left_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonHotitem_Left_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonHotitem_Left_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonHotitem_Left_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902,101+165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHotitem_Left_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(900,99+165)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHotitem_Left_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902,101+165)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHotitem_Left_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_MAIN_HOT_PREV_PAGE"] )

g_pButtonHotitem_Right_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHotitem_Right_Triangle )
g_pButtonHotitem_Right_Triangle:SetName( "Hotitem_Right_Triangle" )
g_pButtonHotitem_Right_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonHotitem_Right_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonHotitem_Right_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonHotitem_Right_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,101+165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHotitem_Right_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964,99+165)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHotitem_Right_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,101+165)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHotitem_Right_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_MAIN_HOT_NEXT_PAGE"] )

	g_pStaticHotitem_Font = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticHotitem_Font )
	g_pStaticHotitem_Font:SetName( "g_pStaticHotitem_Font" )

	g_pStaticHotitem_Font:AddString
	{
		-- -- MSG 			= "1/9",
		 FONT_INDEX      = XUF_DODUM_15_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(942,104+164)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}





------------------------------------------------------


g_pStaticCashShop_Bestitem = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_Bestitem )
g_pStaticCashShop_Bestitem:SetName( "g_pStaticCashShop_Bestitem" )





g_pPictureCashShop_Bestitem_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Bestitem:AddPicture( g_pPictureCashShop_Bestitem_BG1 )

g_pPictureCashShop_Bestitem_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "main_back1" )

g_pPictureCashShop_Bestitem_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(366,415)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashShop_Bestitem_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Bestitem:AddPicture( g_pPictureCashShop_Bestitem_BG2 )

g_pPictureCashShop_Bestitem_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "main_back2" )

g_pPictureCashShop_Bestitem_BG2:SetPoint
{
	ADD_SIZE_X = 605,
	"LEFT_TOP		= D3DXVECTOR2(380,415)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashShop_Bestitem_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Bestitem:AddPicture( g_pPictureCashShop_Bestitem_BG3 )

g_pPictureCashShop_Bestitem_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "main_back3" )

g_pPictureCashShop_Bestitem_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(986,415)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashShop_Bestitem_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Bestitem:AddPicture( g_pPictureCashShop_Bestitem_BG4 )

g_pPictureCashShop_Bestitem_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "bestitem_bar1" )

g_pPictureCashShop_Bestitem_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(366+3,415+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashShop_Bestitem_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Bestitem:AddPicture( g_pPictureCashShop_Bestitem_BG5 )

g_pPictureCashShop_Bestitem_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "bestitem_bar2" )

g_pPictureCashShop_Bestitem_BG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(879,415+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPictureCashShop_Bestitem_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Bestitem:AddPicture( g_pPictureCashShop_Bestitem_BG6 )

g_pPictureCashShop_Bestitem_BG6:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashShop_Bestitem_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(373,469)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashShop_Bestitem_BG7 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Bestitem:AddPicture( g_pPictureCashShop_Bestitem_BG7 )

g_pPictureCashShop_Bestitem_BG7:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashShop_Bestitem_BG7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,469)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashShop_Bestitem_BG8 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Bestitem:AddPicture( g_pPictureCashShop_Bestitem_BG8 )

g_pPictureCashShop_Bestitem_BG8:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashShop_Bestitem_BG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(797,469)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]
g_pButtonBestitem_Left_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBestitem_Left_Triangle )
g_pButtonBestitem_Left_Triangle:SetName( "Bestitem_Left_Triangle" )
g_pButtonBestitem_Left_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonBestitem_Left_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonBestitem_Left_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonBestitem_Left_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902,101+165+165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBestitem_Left_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(900,99+165+165)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBestitem_Left_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902,101+165+165)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBestitem_Left_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_MAIN_RECOMMEND_PREV_PAGE"] )

g_pButtonBestitem_Right_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBestitem_Right_Triangle )
g_pButtonBestitem_Right_Triangle:SetName( "Bestitem_Right_Triangle" )
g_pButtonBestitem_Right_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonBestitem_Right_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonBestitem_Right_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonBestitem_Right_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,101+165+165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBestitem_Right_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964,99+165+165)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBestitem_Right_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,101+165+165)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBestitem_Right_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_MAIN_RECOMMEND_NEXT_PAGE"] )

	g_pStaticBestitem_Font = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticBestitem_Font )
	g_pStaticBestitem_Font:SetName( "g_pStaticBestitem_Font" )

	g_pStaticBestitem_Font:AddString
	{
		-- -- MSG 			= "1/9",
		 FONT_INDEX      = XUF_DODUM_15_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(942,102+165+166)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}















-------------------------------------------------------------------

g_pStaticCashShop_Mark = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_Mark )
g_pStaticCashShop_Mark:SetName( "g_pStaticCashShop_Mark" )



g_pPictureCashShop_Mark = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Mark:AddPicture( g_pPictureCashShop_Mark )

g_pPictureCashShop_Mark:SetTex( "DLG_Common_New_Texture34.TGA", "mark1" )

g_pPictureCashShop_Mark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(373,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------------------------------------------------------------
g_pStatic_Main_Comment = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Main_Comment )
g_pStatic_Main_Comment:SetName( "g_pStatic_Main_Comment" )




g_pPictureMain_Comment = g_pUIDialog:CreatePicture()
g_pStatic_Main_Comment:AddPicture( g_pPictureMain_Comment )

g_pPictureMain_Comment:SetTex( "DLG_Common_New_Texture52.TGA", "comment1" )

g_pPictureMain_Comment:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------------- 모두 가져오기 버튼

g_pButtonPickUpAll = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPickUpAll )
g_pButtonPickUpAll:SetName( "PickUpAll" )
g_pButtonPickUpAll:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonPickUpAll:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonPickUpAll:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonPickUpAll:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902,101-20)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPickUpAll:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(900,99-20)",

	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPickUpAll:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902,101-20)",

	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPickUpAll:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PICKUP_ALL"] )
g_pButtonPickUpAll:SetShowEnable( false, false )

