-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Subpage" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )



g_pStaticCashshop_Sub_Window_Hotitem = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashshop_Sub_Window_Hotitem )
g_pStaticCashshop_Sub_Window_Hotitem:SetName( "g_pStaticCashshop_Sub_Window_Hotitem" )


g_pPictureCashshop_Sub_Window_Hotitem_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window_Hotitem:AddPicture( g_pPictureCashshop_Sub_Window_Hotitem_BG1 )

g_pPictureCashshop_Sub_Window_Hotitem_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "window1" )

g_pPictureCashshop_Sub_Window_Hotitem_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashshop_Sub_Window_Hotitem_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window_Hotitem:AddPicture( g_pPictureCashshop_Sub_Window_Hotitem_BG2 )

g_pPictureCashshop_Sub_Window_Hotitem_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "window2" )

g_pPictureCashshop_Sub_Window_Hotitem_BG2:SetPoint
{
	 ADD_SIZE_X = 102,
	"LEFT_TOP		= D3DXVECTOR2(375,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_Sub_Window_Hotitem_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window_Hotitem:AddPicture( g_pPictureCashshop_Sub_Window_Hotitem_BG3 )

g_pPictureCashshop_Sub_Window_Hotitem_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "window3" )

g_pPictureCashshop_Sub_Window_Hotitem_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(478,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_Hotitem_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window_Hotitem:AddPicture( g_pPictureCashshop_Sub_Window_Hotitem_BG4 )

g_pPictureCashshop_Sub_Window_Hotitem_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "window4" )

g_pPictureCashshop_Sub_Window_Hotitem_BG4:SetPoint
{
	 ADD_SIZE_Y = 457+5,
	"LEFT_TOP		= D3DXVECTOR2(364,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashshop_Sub_Window_Hotitem_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window_Hotitem:AddPicture( g_pPictureCashshop_Sub_Window_Hotitem_BG5 )

g_pPictureCashshop_Sub_Window_Hotitem_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "window5" )

g_pPictureCashshop_Sub_Window_Hotitem_BG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364,551+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_Sub_Window_Hotitem_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window_Hotitem:AddPicture( g_pPictureCashshop_Sub_Window_Hotitem_BG6 )

g_pPictureCashshop_Sub_Window_Hotitem_BG6:SetTex( "DLG_Common_New_Texture52.TGA", "window6" )

g_pPictureCashshop_Sub_Window_Hotitem_BG6:SetPoint
{
	 ADD_SIZE_X = 102,
	"LEFT_TOP		= D3DXVECTOR2(375,551+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_Hotitem_BG7 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window_Hotitem:AddPicture( g_pPictureCashshop_Sub_Window_Hotitem_BG7 )

g_pPictureCashshop_Sub_Window_Hotitem_BG7:SetTex( "DLG_Common_New_Texture52.TGA", "window7" )

g_pPictureCashshop_Sub_Window_Hotitem_BG7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(478,551+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_Hotitem_BG8 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window_Hotitem:AddPicture( g_pPictureCashshop_Sub_Window_Hotitem_BG8 )

g_pPictureCashshop_Sub_Window_Hotitem_BG8:SetTex( "DLG_Common_New_Texture52.TGA", "window8" )

g_pPictureCashshop_Sub_Window_Hotitem_BG8:SetPoint
{
	 ADD_SIZE_Y = 457+5,
	"LEFT_TOP		= D3DXVECTOR2(479,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_Sub_Window_Hotitem_BG9 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window_Hotitem:AddPicture( g_pPictureCashshop_Sub_Window_Hotitem_BG9 )

g_pPictureCashshop_Sub_Window_Hotitem_BG9:SetTex( "DLG_Common_New_Texture52.TGA", "window9" )

g_pPictureCashshop_Sub_Window_Hotitem_BG9:SetPoint
{
	 ADD_SIZE_X = 110,
	 ADD_SIZE_Y = 467,
	"LEFT_TOP		= D3DXVECTOR2(370,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureCashshop_Sub_Window_Hotitem_Title = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window_Hotitem:AddPicture( g_pPictureCashshop_Sub_Window_Hotitem_Title )

g_pPictureCashshop_Sub_Window_Hotitem_Title:SetTex( "DLG_Common_New_Texture51.TGA", "HOT_ITEM" )

g_pPictureCashshop_Sub_Window_Hotitem_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(377,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








































-----------------------------------------
g_pStaticCashshop_Sub_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashshop_Sub_Window )
g_pStaticCashshop_Sub_Window:SetName( "g_pStaticCashshop_Sub_Window" )


g_pPictureCashshop_Sub_Window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG1 )

g_pPictureCashshop_Sub_Window_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "window1" )

g_pPictureCashshop_Sub_Window_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(493,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashshop_Sub_Window_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG2 )

g_pPictureCashshop_Sub_Window_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "window2" )

g_pPictureCashshop_Sub_Window_BG2:SetPoint
{
	 ADD_SIZE_X = 488,
	"LEFT_TOP		= D3DXVECTOR2(504,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_Sub_Window_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG3 )

g_pPictureCashshop_Sub_Window_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "window3" )

g_pPictureCashshop_Sub_Window_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(993,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG4 )

g_pPictureCashshop_Sub_Window_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "window4" )

g_pPictureCashshop_Sub_Window_BG4:SetPoint
{
	 ADD_SIZE_Y = 457+5,
	"LEFT_TOP		= D3DXVECTOR2(493,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashshop_Sub_Window_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG5 )

g_pPictureCashshop_Sub_Window_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "window5" )

g_pPictureCashshop_Sub_Window_BG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(493,551+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_Sub_Window_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG6 )

g_pPictureCashshop_Sub_Window_BG6:SetTex( "DLG_Common_New_Texture52.TGA", "window6" )

g_pPictureCashshop_Sub_Window_BG6:SetPoint
{
	 ADD_SIZE_X = 488,
	"LEFT_TOP		= D3DXVECTOR2(504,551+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG7 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG7 )

g_pPictureCashshop_Sub_Window_BG7:SetTex( "DLG_Common_New_Texture52.TGA", "window7" )

g_pPictureCashshop_Sub_Window_BG7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(993,551+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG8 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG8 )

g_pPictureCashshop_Sub_Window_BG8:SetTex( "DLG_Common_New_Texture52.TGA", "window8" )

g_pPictureCashshop_Sub_Window_BG8:SetPoint
{
	 ADD_SIZE_Y = 457+5,
	"LEFT_TOP		= D3DXVECTOR2(994,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_Sub_Window_BG9 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG9 )

g_pPictureCashshop_Sub_Window_BG9:SetTex( "DLG_Common_New_Texture52.TGA", "window9" )

g_pPictureCashshop_Sub_Window_BG9:SetPoint
{
	 ADD_SIZE_X = 494,
	 ADD_SIZE_Y = 457+5,
	"LEFT_TOP		= D3DXVECTOR2(500,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture37.TGA", "check_comment" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(500,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
-----------빈 아이템 슬롯
g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(500,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(500,115+89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(500,115+89+89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(500,115+89+89+89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(500,115+89+89+89+89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-----------빈 아이템 슬롯
g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(750,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(750,115+89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(750,115+89+89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(750,115+89+89+89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_Sub_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Sub_Window:AddPicture( g_pPictureCashshop_Sub_Window_BG10 )

g_pPictureCashshop_Sub_Window_BG10:SetTex( "DLG_Common_New_Texture55.TGA", "emptyslot" )

g_pPictureCashshop_Sub_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(750,115+89+89+89+89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--]]







g_pButtonCashshop_Sub_Window_Left_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCashshop_Sub_Window_Left_Triangle )
g_pButtonCashshop_Sub_Window_Left_Triangle:SetName( "g_pButtonCashshop_Sub_Window_Left_Triangle" )
g_pButtonCashshop_Sub_Window_Left_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonCashshop_Sub_Window_Left_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonCashshop_Sub_Window_Left_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonCashshop_Sub_Window_Left_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902,101-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Sub_Window_Left_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(900,99-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Sub_Window_Left_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902,101-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Sub_Window_Left_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_PREV_PAGE"] )


g_pButtonCashshop_Sub_Window_Right_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCashshop_Sub_Window_Right_Triangle )
g_pButtonCashshop_Sub_Window_Right_Triangle:SetName( "g_pButtonCashshop_Sub_Window_Right_Triangle" )
g_pButtonCashshop_Sub_Window_Right_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonCashshop_Sub_Window_Right_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonCashshop_Sub_Window_Right_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonCashshop_Sub_Window_Right_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,101-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Sub_Window_Right_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964,99-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Sub_Window_Right_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,101-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Sub_Window_Right_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_NEXT_PAGE"] )

	g_pStaticCashshop_Sub_Window_TriangleFont = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticCashshop_Sub_Window_TriangleFont )
	g_pStaticCashshop_Sub_Window_TriangleFont:SetName( "g_pStaticCashshop_Sub_Window_TriangleFont" )

	g_pStaticCashshop_Sub_Window_TriangleFont:AddString
	{
		-- MSG 			= "1/9",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(942,103-15)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}










		------------------(채크 박스)
	
	
	g_pCheckBoxCashshop_Sub_Window_Slot = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxCashshop_Sub_Window_Slot:SetName( "g_pCheckBoxCashshop_Sub_Window_Slot" )
	g_pUIDialog:AddControl( g_pCheckBoxCashshop_Sub_Window_Slot )

	g_pCheckBoxCashshop_Sub_Window_Slot:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxCashshop_Sub_Window_Slot:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "Check" )


g_pCheckBoxCashshop_Sub_Window_Slot:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(501,91)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(513,103)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxCashshop_Sub_Window_Slot:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(498,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxCashshop_Sub_Window_Slot:SetChecked( false )
g_pCheckBoxCashshop_Sub_Window_Slot:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_SEE_ALL_ITEM_OPTION_CHANGE"] )
g_pCheckBoxCashshop_Sub_Window_Slot:SetCustomMsgUnChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_SEE_ALL_ITEM_OPTION_CHANGE"] )












--[[

--------------------------------콤보박스

g_pComboBoxCashshop_Sub_Window = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxCashshop_Sub_Window )
g_pComboBoxCashshop_Sub_Window:SetName( "Option_Resolution" )

--거꾸로 나오게 할것인가?
--g_pComboBoxCashshop_Sub_Window:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBoxCashshop_Sub_Window:SetDropHeight( 20 )
				   
g_pComboBoxCashshop_Sub_Window:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBoxCashshop_Sub_Window:SetTextTex( "DLG_Common_New_Texture51.tga", "COMBOBOX_BG" )


g_pComboBoxCashshop_Sub_Window:SetButtonTex ( "DLG_Common_New_Texture53.TGA", "ARROW_DOWN1" )


g_pComboBoxCashshop_Sub_Window:SetButtonMouseOverTex( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )


g_pComboBoxCashshop_Sub_Window:SetButtonMouseDownTex ( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )


g_pComboBoxCashshop_Sub_Window:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )


g_pComboBoxCashshop_Sub_Window:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )




--자동으로 만들 때
--g_pComboBoxCashshop_Sub_Window:SetPos( 200, 129 )
--g_pComboBoxCashshop_Sub_Window:SetSize( 100, 50 )

--수동으로 만들 때
g_pComboBoxCashshop_Sub_Window:SetTextPos( 890, 54)
g_pComboBoxCashshop_Sub_Window:SetTextSize( 86, 21)
--텍스트 시작 포인트
g_pComboBoxCashshop_Sub_Window:SetTextStringOffsetPos( 3, 4 )
g_pComboBoxCashshop_Sub_Window:SetButtonPos( 976, 54)
g_pComboBoxCashshop_Sub_Window:SetButtonSize( 22, 22)



g_pComboBoxCashshop_Sub_Window:AddItem( "기본 정렬 순" )

g_pComboBoxCashshop_Sub_Window:AddItem( "최신 일자 순" )

g_pComboBoxCashshop_Sub_Window:AddItem( "높은 가격 순" )

g_pComboBoxCashshop_Sub_Window:AddItem( "낮은 가격 순" )




--]]
