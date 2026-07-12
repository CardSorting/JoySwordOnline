-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( false )


g_pStaticbuy = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticbuy )
g_pStaticbuy:SetName( "g_pStaticbuy" )

-----BG


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticbuy:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "how_much_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticbuy:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "how_much_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 56,
	"LEFT_TOP		= D3DXVECTOR2(0,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticbuy:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "how_much_bottom" )

g_pPicture_BG1:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0,69)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticbuy:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "price_left" )

g_pPicture_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticbuy:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "price_middle" )

g_pPicture_BG2:SetPoint
{
    ADD_SIZE_X = 90,
	"LEFT_TOP		= D3DXVECTOR2(36,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticbuy:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "price_right" )

g_pPicture_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(127,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----------------------------     -      +    커서      ---------------------


g_pButton_minus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_minus )
g_pButton_minus:SetName( "minus" )
g_pButton_minus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "minus_NORMAL" )

g_pButton_minus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(12,14)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(12+1,14+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButton_plus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_plus )
g_pButton_plus:SetName( "plus" )
g_pButton_plus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "plus_NORMAL" )

g_pButton_plus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(135,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(134,14)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(134+1,14+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------확인 취소 버튼   --------------------



g_pButton_check = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_check )
g_pButton_check:SetName( "check" )
g_pButton_check:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "check_NORMAL" )

g_pButton_check:SetOverTex( "DLG_UI_BUTTON03_A.tga", "check_OVER" )

g_pButton_check:SetDownTex( "DLG_UI_BUTTON03_A.tga", "check_OVER" )

g_pButton_check:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(32,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_check:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_check:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(30+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButton_cancle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_cancle )
g_pButton_cancle:SetName( "cancle" )
g_pButton_cancle:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "cancle_NORMAL" )

g_pButton_cancle:SetOverTex( "DLG_UI_BUTTON03_A.tga", "cancle_OVER" )

g_pButton_cancle:SetDownTex( "DLG_UI_BUTTON03_A.tga", "cancle_OVER" )

g_pButton_cancle:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(83,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_cancle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_cancle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(81+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------  가격

g_pStatic_price9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_price9 )
g_pStatic_price9:SetName( "price9" )

g_pStatic_price9:AddString
{
	-- MSG 			= "9,999,999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
   
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(113 ,19)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

