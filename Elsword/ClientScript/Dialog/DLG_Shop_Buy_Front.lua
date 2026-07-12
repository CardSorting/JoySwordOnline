-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Shop_Buy_Window" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )




	
g_pUIDialog:AddDummyInt(10)								-- 한 페이지에 보이는 buy item slot 개수 
g_pUIDialog:AddDummyInt(527)							-- 왼쪽에 있는 buy item slot list X 위치
g_pUIDialog:AddDummyInt(762)							-- 오른쪽에 있는 buy item slot list X 위치
g_pUIDialog:AddDummyInt(273)							-- buy item slot list Y 위치 
g_pUIDialog:AddDummyInt(80)								-- buy item slot 높이




g_pStaticUser_Shop_Info_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Shop_Info_Window )
g_pStaticUser_Shop_Info_Window:SetName( "Shop_Info_Window" )





----(인벤토리 정보)



g_pPicture_Shop_Window2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPicture_Shop_Window2 )

g_pPicture_Shop_Window2:SetTex( "DLG_Common_Texture01.TGA", "Box" )

g_pPicture_Shop_Window2:SetPoint
{
    ADD_SIZE_X = 467,
    ADD_SIZE_Y = 497,
	"LEFT_TOP		= D3DXVECTOR2(524,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureShop_MainBar1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_MainBar1 )

g_pPictureShop_MainBar1:SetTex( "DLG_Common_Texture01.TGA", "Main_Bar_Left" )

g_pPictureShop_MainBar1:SetPoint
{
ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(524,62+139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShop_MainBar2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_MainBar2 )

g_pPictureShop_MainBar2:SetTex( "DLG_Common_Texture01.TGA", "Main_Bar_Center" )

g_pPictureShop_MainBar2:SetPoint
{
	ADD_SIZE_X = 454,
	ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(530,62+139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_MainBar3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_MainBar3 )

g_pPictureShop_MainBar3:SetTex( "DLG_Common_Texture01.TGA", "Main_Bar_Right" )

g_pPictureShop_MainBar3:SetPoint
{
     ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(985,62+139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureShop_Window1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_Window1 )

g_pPictureShop_Window1:SetTex( "DLG_Common_Texture01.TGA", "Round_Window1" )

g_pPictureShop_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(519,58+139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShop_Window2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_Window2 )

g_pPictureShop_Window2:SetTex( "DLG_Common_Texture01.TGA", "Round_Window2" )

g_pPictureShop_Window2:SetPoint
{
    ADD_SIZE_X = 459,
	"LEFT_TOP		= D3DXVECTOR2(528,58+139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Window3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_Window3 )

g_pPictureShop_Window3:SetTex( "DLG_Common_Texture01.TGA", "Round_Window3" )

g_pPictureShop_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(988,58+139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Window4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_Window4 )

g_pPictureShop_Window4:SetTex( "DLG_Common_Texture01.TGA", "Round_Window4" )

g_pPictureShop_Window4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(519,705)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Window5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_Window5 )

g_pPictureShop_Window5:SetTex( "DLG_Common_Texture01.TGA", "Round_Window5" )

g_pPictureShop_Window5:SetPoint
{
    ADD_SIZE_X = 459,
	"LEFT_TOP		= D3DXVECTOR2(528,705)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Window6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_Window6 )

g_pPictureShop_Window6:SetTex( "DLG_Common_Texture01.TGA", "Round_Window6" )

g_pPictureShop_Window6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(988,705)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Window7 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_Window7 )

g_pPictureShop_Window7:SetTex( "DLG_Common_Texture01.TGA", "Round_Window7" )

g_pPictureShop_Window7:SetPoint
{
    ADD_SIZE_Y = 499,
	"LEFT_TOP		= D3DXVECTOR2(519,66+139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShop_Window8 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPictureShop_Window8 )

g_pPictureShop_Window8:SetTex( "DLG_Common_Texture01.TGA", "Round_Window8" )

g_pPictureShop_Window8:SetPoint
{
    ADD_SIZE_Y = 499,
	"LEFT_TOP		= D3DXVECTOR2(988,66+139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pPicture_Shop_Window_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPicture_Shop_Window_Line2 )

g_pPicture_Shop_Window_Line2:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box1" )

g_pPicture_Shop_Window_Line2:SetPoint
{
    ADD_SIZE_X = 46,
    ADD_SIZE_Y = 19,

	"LEFT_TOP		= D3DXVECTOR2(910,681)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Shop_Window_Check = g_pUIDialog:CreatePicture()
g_pStaticUser_Shop_Info_Window:AddPicture( g_pPicture_Shop_Window_Check )

g_pPicture_Shop_Window_Check:SetTex( "DLG_Common_Texture00.TGA", "Shop_Check" )

g_pPicture_Shop_Window_Check:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(528,247)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pStatic_Shop_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Shop_Window )
g_pStatic_Shop_Window:SetName( "Shop_Buy_Window" )



---------------------------------------------------------------------------
-- 현재 아이템 리스트 페이지 번호
---------------------------------------------------------------------------

g_pStatic_Shop_Window:AddString
{
	-- MSG 			= "2",
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(933,685)",
	"COLOR			= D3DXCOLOR(0.35,0.4,0.35,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


	--------------------(채크 박스)--------
	
	
g_pCheckBoxShop = g_pUIDialog:CreateCheckBox()
g_pCheckBoxShop:SetName( "CheckBoxAllShow" )
g_pUIDialog:AddControl( g_pCheckBoxShop )

g_pCheckBoxShop:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )



g_pCheckBoxShop:SetCheckedTex( "DLG_Common_Texture01.TGA", "Chack_Point" )


g_pCheckBoxShop:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(530,249)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(549,266)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxShop:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(534,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxShop:SetChecked( true )

g_pCheckBoxShop:SetCustomMsgChecked( SHOP_UI_CUSTOM_MSG["SUCM_BUY_SHOW_ALLITEM_ENABLE"] )
g_pCheckBoxShop:SetCustomMsgUnChecked( SHOP_UI_CUSTOM_MSG["SUCM_BUY_SHOW_ALLITEM_DISABLE"] )
























------(화살표 버튼)

g_pButtonLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle )
g_pButtonLeft_Triangle:SetName( "ButtonLeft_Arrow" )
g_pButtonLeft_Triangle:SetNormalTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Normal" )

g_pButtonLeft_Triangle:SetOverTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Over" )

g_pButtonLeft_Triangle:SetDownTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Down" )

g_pButtonLeft_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(878,672)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(878,672)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(879,673)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetCustomMsgMouseUp( SHOP_UI_CUSTOM_MSG["SUCM_BUY_PREV_PAGE"] )



g_pButtonRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle )
g_pButtonRight_Triangle:SetName( "ButtonRight_Arrow" )
g_pButtonRight_Triangle:SetNormalTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Normal" )

g_pButtonRight_Triangle:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

g_pButtonRight_Triangle:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonRight_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(962,672)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(962,672)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(963,673)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight_Triangle:SetCustomMsgMouseUp( SHOP_UI_CUSTOM_MSG["SUCM_BUY_NEXT_PAGE"] )

















