-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticshop = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticshop )
g_pStaticshop:SetName( "g_pStaticshop" )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_SHOP_CUSTOM_MSG["USCM_EXIT"] )
g_pUIDialog:AddDummyInt(8)			-- 슬롯 몇개임? 
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 3, 1, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 463, 471, 0 ) ) -- Size 


-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "inven_BG_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(3,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "inven_BG_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 454,
	"LEFT_TOP		= D3DXVECTOR2(3,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_BG1)

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "inven_BG_bottom" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(3,472)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------상점 타이틀

g_pPicture_shop = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_shop )

g_pPicture_shop:SetTex( "DLG_UI_Title01.TGA", "shop" )

g_pPicture_shop:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(18,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----gray_bg


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg2= g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

g_pPicture_bg2:SetPoint
{
     ADD_SIZE_Y = 389,
	"LEFT_TOP		= D3DXVECTOR2(17,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg2= g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----shop 창

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "inven_win_top" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "inven_win_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 294,
	"LEFT_TOP		= D3DXVECTOR2(22,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "inven_win_bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---메뉴 버튼



---무기

g_pRadioButtonweapon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonweapon )

g_pRadioButtonweapon:SetFixOverByCheck( true )
g_pRadioButtonweapon:SetShowOffBGByCheck( true )

g_pRadioButtonweapon:SetName( "RadioButton_Weapon" )

g_pRadioButtonweapon:SetNormalTex( "DLG_UI_Button01.tga", "weapon_normal" )


g_pRadioButtonweapon:SetOverTex( "DLG_UI_Button01.tga", "weapon_over" )


g_pRadioButtonweapon:SetCheckedTex( "DLG_UI_Button01.tga", "weapon_down" )


g_pRadioButtonweapon:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonweapon:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonweapon:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(77,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonweapon:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(28,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonweapon:SetGroupID( 1 )
g_pRadioButtonweapon:SetCustomMsgChecked( UI_SHOP_CUSTOM_MSG["USCM_CATEGORY_WEAPON"] )
g_pRadioButtonweapon:AddDummyInt( 52 )		-- 버튼간 간격 
--------  가로  = 59 px



---상의

g_pRadioButtoncoat = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtoncoat )

g_pRadioButtoncoat:SetFixOverByCheck( true )
g_pRadioButtoncoat:SetShowOffBGByCheck( true )

g_pRadioButtoncoat:SetName( "RadioButton_Coat" )

g_pRadioButtoncoat:SetNormalTex( "DLG_UI_Button01.tga", "coat_normal" )


g_pRadioButtoncoat:SetOverTex( "DLG_UI_Button01.tga", "coat_over" )


g_pRadioButtoncoat:SetCheckedTex( "DLG_UI_Button01.tga", "coat_down" )


g_pRadioButtoncoat:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoncoat:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoncoat:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(77,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoncoat:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(28,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtoncoat:SetGroupID( 1 )
g_pRadioButtoncoat:SetCustomMsgChecked( UI_SHOP_CUSTOM_MSG["USCM_CATEGORY_COAT"] )
g_pRadioButtoncoat:AddDummyInt( 52 )		-- 버튼간 간격
--------  가로  = 59 px

---하의

g_pRadioButtonpants = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonpants )

g_pRadioButtonpants:SetFixOverByCheck( true )
g_pRadioButtonpants:SetShowOffBGByCheck( true )

g_pRadioButtonpants:SetName( "RadioButton_Pants" )

g_pRadioButtonpants:SetNormalTex( "DLG_UI_Button01.tga", "pants_normal" )


g_pRadioButtonpants:SetOverTex( "DLG_UI_Button01.tga", "pants_over" )


g_pRadioButtonpants:SetCheckedTex( "DLG_UI_Button01.tga", "pants_down" )


g_pRadioButtonpants:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonpants:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonpants:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(77,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonpants:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(28,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonpants:SetGroupID( 1 )
g_pRadioButtonpants:SetCustomMsgChecked( UI_SHOP_CUSTOM_MSG["USCM_CATEGORY_PANTS"] )
g_pRadioButtonpants:AddDummyInt( 52 )		-- 버튼간 간격
--------  가로  = 59 px

---장갑

g_pRadioButtonglover = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonglover )

g_pRadioButtonglover:SetFixOverByCheck( true )
g_pRadioButtonglover:SetShowOffBGByCheck( true )

g_pRadioButtonglover:SetName( "RadioButton_Glove" )

g_pRadioButtonglover:SetNormalTex( "DLG_UI_Button01.tga", "glover_normal" )


g_pRadioButtonglover:SetOverTex( "DLG_UI_Button01.tga", "glover_over" )


g_pRadioButtonglover:SetCheckedTex( "DLG_UI_Button01.tga", "glover_down" )


g_pRadioButtonglover:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonglover:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonglover:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(77,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonglover:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(28,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonglover:SetGroupID( 1 )
g_pRadioButtonglover:SetCustomMsgChecked( UI_SHOP_CUSTOM_MSG["USCM_CATEGORY_GLOVE"] )
g_pRadioButtonglover:AddDummyInt( 52 )		-- 버튼간 간격
--------  가로  = 59 px

---신발


g_pRadioButtonshose = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonshose )

g_pRadioButtonshose:SetFixOverByCheck( true )
g_pRadioButtonshose:SetShowOffBGByCheck( true )

g_pRadioButtonshose:SetName( "RadioButton_Shoes" )

g_pRadioButtonshose:SetNormalTex( "DLG_UI_Button01.tga", "shose_normal" )


g_pRadioButtonshose:SetOverTex( "DLG_UI_Button01.tga", "shose_over" )


g_pRadioButtonshose:SetCheckedTex( "DLG_UI_Button01.tga", "shose_down" )


g_pRadioButtonshose:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonshose:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonshose:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(77,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonshose:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(28,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonshose:SetGroupID( 1 )
g_pRadioButtonshose:SetCustomMsgChecked( UI_SHOP_CUSTOM_MSG["USCM_CATEGORY_SHOES"] )
g_pRadioButtonshose:AddDummyInt( 52 )		-- 버튼간 간격
--------  가로  = 59 px

--특수

g_pRadioButtonspecial = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonspecial )

g_pRadioButtonspecial:SetFixOverByCheck( true )
g_pRadioButtonspecial:SetShowOffBGByCheck( true )

g_pRadioButtonspecial:SetName( "RadioButton_Special" )

g_pRadioButtonspecial:SetNormalTex( "DLG_UI_Button01.tga", "bt_special_normal" )


g_pRadioButtonspecial:SetOverTex( "DLG_UI_Button01.tga", "bt_special_over" )


g_pRadioButtonspecial:SetCheckedTex( "DLG_UI_Button01.tga", "bt_special_down" )


g_pRadioButtonspecial:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspecial:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspecial:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(77,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspecial:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(28,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonspecial:SetGroupID( 1 )
g_pRadioButtonspecial:SetCustomMsgChecked( UI_SHOP_CUSTOM_MSG["USCM_CATEGORY_SPECIAL"] )
g_pRadioButtonspecial:AddDummyInt( 52 )		-- 버튼간 간격
--------  가로  = 59 px


-- 소비

g_pRadioButtonspend = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonspend )

g_pRadioButtonspend:SetFixOverByCheck( true )
g_pRadioButtonspend:SetShowOffBGByCheck( true )

g_pRadioButtonspend:SetName( "RadioButton_QuickSlot" )

g_pRadioButtonspend:SetNormalTex( "DLG_UI_Button07.tga", "spend_normal" )


g_pRadioButtonspend:SetOverTex( "DLG_UI_Button07.tga", "spend_over" )


g_pRadioButtonspend:SetCheckedTex( "DLG_UI_Button07.tga", "spend_down" )


g_pRadioButtonspend:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspend:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspend:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(77,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspend:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(28-1,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pRadioButtonspend:SetGroupID( 1 )
g_pRadioButtonspend:SetCustomMsgChecked( UI_SHOP_CUSTOM_MSG["USCM_CATEGORY_QUICKSLOT"] )
g_pRadioButtonspend:AddDummyInt( 52 )












------악세서리

g_pRadioButtonaccessori = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonaccessori )

g_pRadioButtonaccessori:SetFixOverByCheck( true )
g_pRadioButtonaccessori:SetShowOffBGByCheck( true )

g_pRadioButtonaccessori:SetName( "RadioButton_Accessory" )

g_pRadioButtonaccessori:SetNormalTex( "DLG_UI_Button01.tga", "bt_accessori_normal" )


g_pRadioButtonaccessori:SetOverTex( "DLG_UI_Button01.tga", "bt_accessori_over" )


g_pRadioButtonaccessori:SetCheckedTex( "DLG_UI_Button01.tga", "bt_accessori_down" )


g_pRadioButtonaccessori:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonaccessori:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonaccessori:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(25,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(77,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonaccessori:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(28,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonaccessori:SetGroupID( 1 )
g_pRadioButtonaccessori:SetCustomMsgChecked( UI_SHOP_CUSTOM_MSG["USCM_CATEGORY_ACCESSORY"] )
g_pRadioButtonaccessori:AddDummyInt( 52 )		-- 버튼간 간격
--------  가로  = 59 px
---------------------각 버튼 간격 = 52 px





g_pStaticshop2= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticshop2 )
g_pStaticshop2:SetName( "g_pStaticshop2" )



-------체크박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticshop2:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(34,95)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----체크 표시
	g_pCheckBoxshop2 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxshop2:SetName( "CheckBox_ShowAll" )
	g_pUIDialog:AddControl( g_pCheckBoxshop2 )

	g_pCheckBoxshop2:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxshop2:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxshop2:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(34,95)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(49,110)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxshop2:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(32,94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxshop2:SetCustomMsgChecked( UI_SHOP_CUSTOM_MSG["USCM_SHOW_OTHER_CHARACTER_EQUIP_ON"] )
g_pCheckBoxshop2:SetCustomMsgUnChecked( UI_SHOP_CUSTOM_MSG["USCM_SHOW_OTHER_CHARACTER_EQUIP_OFF"] )



------- 다른캐릭터 창보기

g_pPictureview = g_pUIDialog:CreatePicture()
g_pStaticshop2:AddPicture( g_pPictureview )

g_pPictureview:SetTex( "DLG_UI_Title01_A.TGA", "euqip_view" )

g_pPictureview:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(55,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------슬롯


g_pPicture_slot1 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_slot1 )

g_pPicture_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot2 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_slot2 )

g_pPicture_slot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot3 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_slot3 )

g_pPicture_slot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot4 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_slot4 )

g_pPicture_slot4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,306)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot5 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_slot5 )

g_pPicture_slot5:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(238,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot6 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_slot6 )

g_pPicture_slot6:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(238,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot7 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_slot7 )

g_pPicture_slot7:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(238,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot8 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_slot8 )

g_pPicture_slot8:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(238,306)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------bar

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 410,
	"LEFT_TOP		= D3DXVECTOR2(28,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 203,
	"LEFT_TOP		= D3DXVECTOR2(28,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 203,
	"LEFT_TOP		= D3DXVECTOR2(236,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 203,
	"LEFT_TOP		= D3DXVECTOR2(28,238)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 203,
	"LEFT_TOP		= D3DXVECTOR2(236,238)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 203,
	"LEFT_TOP		= D3DXVECTOR2(28,299)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_X = 203,
	"LEFT_TOP		= D3DXVECTOR2(236,299)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line8:SetPoint
{
     ADD_SIZE_X = 410,
	"LEFT_TOP		= D3DXVECTOR2(28,360)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line9 = g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_line9 )

g_pPicture_line9:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line9:SetPoint
{
     ADD_SIZE_Y = 243,
	"LEFT_TOP		= D3DXVECTOR2(233,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line10= g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_line10 )

g_pPicture_line10:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line10:SetPoint
{
     ADD_SIZE_Y = 48,
	"LEFT_TOP		= D3DXVECTOR2(352,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




-----------------------------------------------------------------
-- 판매 슬롯 리스트
-----------------------------------------------------------------
-- 기준점 : 제일 왼쪽 위 슬롯의 슬롯 그림 왼쪽 위 위치 
LEFT_TOP_X = 31
LEFT_TOP_Y = 123

DISTANCE_X = 207
DISTANCE_Y = 61
 
ListID = 0
tempX = 0
tempY = 0

for i = 0, 3 do

	for j = 0, 1 do 
	
		tempX = LEFT_TOP_X + (j * DISTANCE_X)
		tempY = LEFT_TOP_Y + (i * DISTANCE_Y)
		
		-- 구매 버튼 ( 이름 : Button_Buy0, 1, 2.. ) 
		
		g_pButton_buy1 = g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButton_buy1 )
		ButtonName = string.format( "Button_Buy%d", ListID )
		g_pButton_buy1:SetName( ButtonName )
		
		g_pButton_buy1:SetNormalTex( "DLG_UI_BUTTON01.tga", "buy_NORMAL" )
		
		g_pButton_buy1:SetOverTex( "DLG_UI_BUTTON01.tga", "buy_OVER" )
		
		g_pButton_buy1:SetDownTex( "DLG_UI_BUTTON01.tga", "buy_OVER" )
		
		g_pButton_buy1:SetNormalPoint
		{
			
		    "LEFT_TOP		= D3DXVECTOR2(tempX + 159, tempY + 26)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_buy1:SetOverPoint
		{
		
			"LEFT_TOP		= D3DXVECTOR2(tempX + 157, tempY + 24)",
		
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_buy1:SetDownPoint
		{
		      ADD_SIZE_X = -2,
		     ADD_SIZE_Y = -2,
		 	"LEFT_TOP		= D3DXVECTOR2(tempX + 158, tempY + 25)",
		
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		
		g_pButton_buy1:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_BUY"] )
		-- 인덱스용 더미 인트를 넣어둔다
		g_pButton_buy1:AddDummyInt( ListID )
		
		-- ED 스태틱을 만들자 ( 이름은 Static_List_EDOnly0, 1, 2.. ) 
		g_pStatic_list = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStatic_list )
		StaticName = string.format( "Static_List_EDOnly%d", ListID )
		g_pStatic_list:SetName( StaticName ) 
		
		-- ED Box ( Picture0 )
		g_pPicture_ed1 = g_pUIDialog:CreatePicture()
		g_pStatic_list:AddPicture( g_pPicture_ed1 )
		
		g_pPicture_ed1:SetTex( "DLG_UI_Common_Texture02.TGA", "ed_box" )
		
		g_pPicture_ed1:SetPoint
		{
		
			"LEFT_TOP		= D3DXVECTOR2(tempX + 51, tempY + 26)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		
		-- 이름 String0 
		g_pStatic_list:AddString
		{
			-- MSG 			= "엘리트 다마스커스 소드",
			FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		
			SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
			"POS 			= D3DXVECTOR2(tempX + 52, tempY + 1 - 3)",
			"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.00)",
			"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		}

     	-- 가격 for ED Only String1 
     	
		g_pStatic_list:AddString
		{
			-- MSG 			= "99,999,999",
			FONT_INDEX		= XUF_DODUM_11_NORMAL,
			FONT_STYLE      = FONT_STYLE["FS_SHELL"],
			SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
			"POS 			= D3DXVECTOR2(tempX + 141, tempY + 30)",
			"COLOR			= D3DXCOLOR(0.9,1.0,0.1,1.0)",
			"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		}

		
		-- ED+VP 스태틱을 만들자 ( 이름은 Static_List_EDVP0, 1, 2.. ) 
		g_pStatic_list2 = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStatic_list2 )
		StaticName = string.format( "Static_List_EDVP%d", ListID )
		g_pStatic_list2:SetName( StaticName ) 
		
		-- ED_VP BOX( Picture0 )
        g_pPicture_ed3 = g_pUIDialog:CreatePicture()
		g_pStatic_list2:AddPicture( g_pPicture_ed3 )

		g_pPicture_ed3:SetTex( "DLG_UI_Common_Texture02.TGA", "ed_vp_box" )

		g_pPicture_ed3:SetPoint
		{
		
			"LEFT_TOP		= D3DXVECTOR2(tempX + 51, tempY + 15)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
     
		-- ED Mark ( for ED_VP BOX, Picture1 ) 
		g_pPicture_ed = g_pUIDialog:CreatePicture()
		g_pStatic_list2:AddPicture( g_pPicture_ed )
		
		g_pPicture_ed:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )
		
		g_pPicture_ed:SetPoint
		{
		
			"LEFT_TOP		= D3DXVECTOR2(tempX + 53, tempY + 17)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		
		-- VP Mark ( for ED_VP Box, Picture2 ) 
		g_pPicture_vp = g_pUIDialog:CreatePicture()
		g_pStatic_list2:AddPicture( g_pPicture_vp )
		
		g_pPicture_vp:SetTex( "DLG_UI_Common_Texture02.TGA", "vp" )
		
		g_pPicture_vp:SetPoint
		{
		
			"LEFT_TOP		= D3DXVECTOR2(tempX + 55, tempY + 33)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		-- 이름 String0 
		g_pStatic_list2:AddString
		{
			-- MSG 			= "엘리트 다마스커스 소드",
			FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		
			SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
			"POS 			= D3DXVECTOR2(tempX + 51, tempY + 1 - 3)",
			"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.00)",
			"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		}

		-- 가격 String1 
		g_pStatic_list2:AddString
		{
			-- MSG 			= "99,999,999\n99,999,999",
			FONT_INDEX		= XUF_DODUM_11_NORMAL,
			FONT_STYLE      = FONT_STYLE["FS_SHELL"],
			SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
			"POS 			= D3DXVECTOR2(tempX + 141, tempY + 19)",
			"COLOR			= D3DXCOLOR(0.9,1.0,0.1,1.0)",
			"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		}
		
		-- 슬롯
		
		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_SHOP_BUY"],

			SORT_TYPE	= 0,
			SLOT_ID		= ListID,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( tempX+1 ,tempY+1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}
 
		 
		
		ListID = ListID + 1
	end
end
		



--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Button_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(427,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(423,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(423+1,12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_EXIT"] )

--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Button_Larrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(338,368)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(338,367)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(338+1,367+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_PREV_PAGE"] )


--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Button_Rarrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(415,368)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(414,367)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(414+1,367+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_NEXT_PAGE"] )

-----페이지
g_pPicture_page= g_pUIDialog:CreatePicture()
g_pStaticshop:AddPicture( g_pPicture_page)

g_pPicture_page:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicture_page:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355,366)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------페이지 번호


g_pStatic_number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_number )
g_pStatic_number:SetName( "Static_PageNumber" )

g_pStatic_number:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(383,372)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}





--[[

---------- (하단 버튼 비활성) --------


g_pStaticnoactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnoactive )
g_pStaticnoactive:SetName( "noactive" )




g_pPicture_sell = g_pUIDialog:CreatePicture()
g_pStaticnoactive:AddPicture( g_pPicture_sell )

g_pPicture_sell:SetTex( "DLG_UI_Common_Texture09.TGA", "item_sell_noactive" )

g_pPicture_sell:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_each_repair = g_pUIDialog:CreatePicture()
g_pStaticnoactive:AddPicture( g_pPicture_each_repair )

g_pPicture_each_repair:SetTex( "DLG_UI_Common_Texture09.TGA", "item_each_repair_noactive" )

g_pPicture_each_repair:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(264,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_all_repair = g_pUIDialog:CreatePicture()
g_pStaticnoactive:AddPicture( g_pPicture_all_repair )

g_pPicture_all_repair:SetTex( "DLG_UI_Common_Texture09.TGA", "item_all_repair_noactive" )

g_pPicture_all_repair:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(184,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_upgrade = g_pUIDialog:CreatePicture()
g_pStaticnoactive:AddPicture( g_pPicture_upgrade )

g_pPicture_upgrade:SetTex( "DLG_UI_Common_Texture09.TGA", "item_upgrade_noactive" )

g_pPicture_upgrade:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_attribute = g_pUIDialog:CreatePicture()
g_pStaticnoactive:AddPicture( g_pPicture_attribute )

g_pPicture_attribute:SetTex( "DLG_UI_Common_Texture09.TGA", "item_attribute_noactive" )

g_pPicture_attribute:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--]]






-------------하단 버튼


---------------------매각


g_pButton_sell = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_sell )
g_pButton_sell:SetName( "Button_Sell" )
g_pButton_sell:SetNormalTex( "DLG_UI_BUTTON09.tga", "item_sell_normal" )

g_pButton_sell:SetOverTex( "DLG_UI_BUTTON09.tga", "item_sell_over" )

g_pButton_sell:SetDownTex( "DLG_UI_BUTTON09.tga", "item_sell_over" )

g_pButton_sell:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(367,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sell:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367-3,403-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sell:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(367+1-3,403+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sell:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CHANGE_SELL_MOUSE_CURSOR"] )
g_pButton_sell:SetGuideDesc( STR_ID_2707 )



----------- 개별수리

g_pButton_repair = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_repair )
g_pButton_repair:SetName( "Button_Repair" )
g_pButton_repair:SetNormalTex( "DLG_UI_BUTTON09.tga", "item_each_repair_normal" )

g_pButton_repair:SetOverTex( "DLG_UI_BUTTON09.tga", "item_each_repair_over" )

g_pButton_repair:SetDownTex( "DLG_UI_BUTTON09.tga", "item_each_repair_over" )

g_pButton_repair:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(264,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_repair:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(264-3,403-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_repair:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(264+1-3,403+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_repair:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CHANGE_REPAIR_MOUSE_CURSOR"] )
g_pButton_repair:SetGuideDesc( STR_ID_2708 )

----전체 수리

g_pButton_all_repair = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_all_repair )
g_pButton_all_repair:SetName( "Button_RepairAll" )
g_pButton_all_repair:SetNormalTex( "DLG_UI_BUTTON09.tga", "item_all_repair_normal" )

g_pButton_all_repair:SetOverTex( "DLG_UI_BUTTON09.tga", "item_all_repair_over" )

g_pButton_all_repair:SetDownTex( "DLG_UI_BUTTON09.tga", "item_all_repair_over" )

g_pButton_all_repair:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(184,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_all_repair:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(184-3,403-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_all_repair:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(184+1-3,403+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_all_repair:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_REPAIR_ITEM_ALL"] )
g_pButton_all_repair:SetGuideDesc( STR_ID_2709 )

-------강화

g_pButton_strangth = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_strangth )
g_pButton_strangth:SetName( "Button_Enchant" )
g_pButton_strangth:SetNormalTex( "DLG_UI_BUTTON09.tga", "item_upgrade_normal" )

g_pButton_strangth:SetOverTex( "DLG_UI_BUTTON09.tga", "item_upgrade_over" )

g_pButton_strangth:SetDownTex( "DLG_UI_BUTTON09.tga", "item_upgrade_over" )

g_pButton_strangth:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(24,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_strangth:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24-3,403-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_strangth:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(24+1-3,403+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_strangth:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CHANGE_ENCHANT_MOUSE_CURSOR"] )
g_pButton_strangth:SetGuideDesc( STR_ID_2710 )


------인챈트 속성


g_pButton_attribute = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_attribute )
g_pButton_attribute:SetName( "Button_EnchantAttribute" )
g_pButton_attribute:SetNormalTex( "DLG_UI_BUTTON09.tga", "item_attribute_normal" )

g_pButton_attribute:SetOverTex( "DLG_UI_BUTTON09.tga", "item_attribute_over" )

g_pButton_attribute:SetDownTex( "DLG_UI_BUTTON09.tga", "item_attribute_over" )

g_pButton_attribute:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(24,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_attribute:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24-3,403-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_attribute:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(24+1-3,403+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_attribute:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CHANGE_ATTRIB_ENCHANT_MOUSE_CURSOR"] )
g_pButton_attribute:SetGuideDesc( STR_ID_2711 )





