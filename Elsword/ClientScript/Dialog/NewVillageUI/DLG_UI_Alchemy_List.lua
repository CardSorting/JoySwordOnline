-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticmake = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticmake )
g_pStaticmake:SetName( "g_pStaticmake" )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_MANUFACTURE_CUSTOM_MSG["UMCM_EXIT"] )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 417, 511, 0 ) ) -- Size

-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "alchemy_bg1_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "alchemy_bg1_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 488,
	"LEFT_TOP		= D3DXVECTOR2(0,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "alchemy_bg1_bottom" )

g_pPicture_BG1:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0,500)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------title

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "make" )

g_pPicture_title:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(15,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_list = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_list )

g_pPicture_list:SetTex( "DLG_UI_Title01.TGA", "list" )

g_pPicture_list:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(61-6,13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------------bg2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "alchemy_bg2_TOP" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "alchemy_bg2_middle" )

g_pPicture_bg2:SetPoint
{
     ADD_SIZE_Y = 433,
	"LEFT_TOP		= D3DXVECTOR2(14,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "alchemy_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(14,487)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------bg3


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "alchemy_bg3_TOP" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "alchemy_bg3_middle" )

g_pPicture_bg3:SetPoint
{
     ADD_SIZE_Y = 389,
	"LEFT_TOP		= D3DXVECTOR2(19,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "alchemy_bg3_bottom" )

g_pPicture_bg3:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(19,483)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------------bg4


g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "alchemy_bg4_left" )

g_pPicture_bg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(29,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "alchemy_bg4_middle" )

g_pPicture_bg4:SetPoint
{
     ADD_SIZE_X = 348,
	"LEFT_TOP		= D3DXVECTOR2(34,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "alchemy_bg4_right" )

g_pPicture_bg4:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(383,389)",
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

	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonweapon:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonweapon:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(78,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonweapon:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonweapon:SetGroupID( 1 )
g_pRadioButtonweapon:SetCustomMsgChecked( UI_MANUFACTURE_CUSTOM_MSG["UMCM_CATEGORY_WEAPON"] )
g_pRadioButtonweapon:AddDummyInt( 52 )		-- 버튼간 간격 


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

	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoncoat:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+1,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoncoat:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(78,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoncoat:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtoncoat:SetGroupID( 1 )
g_pRadioButtoncoat:SetCustomMsgChecked( UI_MANUFACTURE_CUSTOM_MSG["UMCM_CATEGORY_COAT"] )
g_pRadioButtoncoat:AddDummyInt( 52 )		-- 버튼간 간격 

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

	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonpants:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonpants:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(78,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonpants:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonpants:SetGroupID( 1 )
g_pRadioButtonpants:SetCustomMsgChecked( UI_MANUFACTURE_CUSTOM_MSG["UMCM_CATEGORY_PANTS"] )
g_pRadioButtonpants:AddDummyInt( 52 )		-- 버튼간 간격 


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

	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonglover:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonglover:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(78,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonglover:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonglover:SetGroupID( 1 )
g_pRadioButtonglover:SetCustomMsgChecked( UI_MANUFACTURE_CUSTOM_MSG["UMCM_CATEGORY_GLOVE"] )
g_pRadioButtonglover:AddDummyInt( 52 )		-- 버튼간 간격




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

	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonshose:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonshose:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(78,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonshose:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonshose:SetGroupID( 1 )
g_pRadioButtonshose:SetCustomMsgChecked( UI_MANUFACTURE_CUSTOM_MSG["UMCM_CATEGORY_SHOES"] )
g_pRadioButtonshose:AddDummyInt( 52 )		-- 버튼간 간격



--소비

g_pRadioButtonspecial = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonspecial )

g_pRadioButtonspecial:SetFixOverByCheck( true )
g_pRadioButtonspecial:SetShowOffBGByCheck( true )

g_pRadioButtonspecial:SetName( "RadioButton_QuickSlot" )

g_pRadioButtonspecial:SetNormalTex( "DLG_UI_Button01.tga", "bt_spend_normal" )


g_pRadioButtonspecial:SetOverTex( "DLG_UI_Button01.tga", "bt_spend_over" )


g_pRadioButtonspecial:SetCheckedTex( "DLG_UI_Button01.tga", "bt_spend_down" )


g_pRadioButtonspecial:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspecial:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23,51-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspecial:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(78,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspecial:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonspecial:SetGroupID( 1 )
g_pRadioButtonspecial:SetCustomMsgChecked( UI_MANUFACTURE_CUSTOM_MSG["UMCM_CATEGORY_QUICKSLOT"] )
g_pRadioButtonspecial:AddDummyInt( 52 )		-- 버튼간 간격

--기타

g_pRadioButtonavata = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonavata )

g_pRadioButtonavata:SetFixOverByCheck( true )
g_pRadioButtonavata:SetShowOffBGByCheck( true )

g_pRadioButtonavata:SetName( "RadioButton_Etc" )

g_pRadioButtonavata:SetNormalTex( "DLG_UI_Button04.tga", "bt_etc_normal" )


g_pRadioButtonavata:SetOverTex( "DLG_UI_Button04.tga", "bt_etc_over" )


g_pRadioButtonavata:SetCheckedTex( "DLG_UI_Button04.tga", "bt_etc_down" )


g_pRadioButtonavata:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+2,51-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonavata:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+1,51-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonavata:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(78,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonavata:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26-3,48+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonavata:SetGroupID( 1 )
g_pRadioButtonavata:SetCustomMsgChecked( UI_MANUFACTURE_CUSTOM_MSG["UMCM_CATEGORY_ETC"] )
g_pRadioButtonavata:AddDummyInt( 52 )		-- 버튼간 간격




g_pStaticlist = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticlist )
g_pStaticlist:SetName( "g_pStaticlist" )





-----체크박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticlist:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "CheckBox_ShowAll" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )

g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )

g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,94)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(46,109)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(29,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxsecret:SetCustomMsgChecked( UI_MANUFACTURE_CUSTOM_MSG["UMCM_SHOW_OTHER_CHARACTER_EQUIP_ON"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( UI_MANUFACTURE_CUSTOM_MSG["UMCM_SHOW_OTHER_CHARACTER_EQUIP_OFF"] )

------- 다른캐릭터 창보기

g_pPictureview = g_pUIDialog:CreatePicture()
g_pStaticlist:AddPicture( g_pPictureview )

g_pPictureview:SetTex( "DLG_UI_Title01_A.TGA", "euqip_view" )

g_pPictureview:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(52,95)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(295,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(295,89)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(295+1,89+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( UI_MANUFACTURE_CUSTOM_MSG["UMCM_PREV_PAGE"] )


--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(372,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(371,89)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(371+1,89+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( UI_MANUFACTURE_CUSTOM_MSG["UMCM_NEXT_PAGE"] )

-----페이지
g_pPicture_page= g_pUIDialog:CreatePicture()
g_pStaticlist:AddPicture( g_pPicture_page)

g_pPicture_page:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicture_page:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(312,88)",
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
	"POS 			= D3DXVECTOR2(340,93)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


-----------------  아이템  slot


g_pPictureitem_slot1 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureitem_slot1 )

g_pPictureitem_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureitem_slot1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(29,122)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureitem_slot2 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureitem_slot2 )

g_pPictureitem_slot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureitem_slot2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(29,122+61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureitem_slot3 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureitem_slot3 )

g_pPictureitem_slot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureitem_slot3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(29,122+61+61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureitem_slot4 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureitem_slot4 )

g_pPictureitem_slot4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureitem_slot4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(29,122+61+61+61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureitem_slot5 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureitem_slot5 )

g_pPictureitem_slot5:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureitem_slot5:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(29+185,122)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureitem_slot6 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureitem_slot6 )

g_pPictureitem_slot6:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureitem_slot6:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(29+185,122+61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureitem_slot7 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureitem_slot7 )

g_pPictureitem_slot7:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureitem_slot7:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(29+185,122+61+61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureitem_slot8 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureitem_slot8 )

g_pPictureitem_slot8:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureitem_slot8:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(29+185,122+61+61+61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





-------------bar

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 365,
	"LEFT_TOP		= D3DXVECTOR2(25,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 177,
	"LEFT_TOP		= D3DXVECTOR2(25,176)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 178,
	"LEFT_TOP		= D3DXVECTOR2(210,176)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 177,
	"LEFT_TOP		= D3DXVECTOR2(25,237)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 178,
	"LEFT_TOP		= D3DXVECTOR2(210,237)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 177,
	"LEFT_TOP		= D3DXVECTOR2(25,298)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_X = 178,
	"LEFT_TOP		= D3DXVECTOR2(210,298)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line8:SetPoint
{
     ADD_SIZE_X = 365,
	"LEFT_TOP		= D3DXVECTOR2(25,359)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line9 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicture_line9 )

g_pPicture_line9:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line9:SetPoint
{
     ADD_SIZE_Y = 242,
	"LEFT_TOP		= D3DXVECTOR2(206,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


----------------------------------------------------------------
-- 목록 리스트
-----------------------------------------------------------------
-- 기준점 : 제일 왼쪽 위 슬롯의 슬롯 그림 왼쪽 위 위치
LEFT_TOP_X = 29
LEFT_TOP_Y = 122

DISTANCE_X = 185
DISTANCE_Y = 61

ListID = 0
tempX = 0
tempY = 0

for i = 0, 3 do

	for j = 0, 1 do

		tempX = LEFT_TOP_X + (j * DISTANCE_X)
		tempY = LEFT_TOP_Y + (i * DISTANCE_Y)

		-------------------

		-- 이름 스태틱
		g_pStatic_list = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStatic_list )
		StaticName = string.format( "Static_Recipe%d", ListID )
		g_pStatic_list:SetName( StaticName )
		
        g_pStatic_list:AddString
		{
			-- MSG 			= "＋엘리트\n다마스커스 소드",
			FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
			SORT_FLAG		= DRAW_TEXT["DT_HVCENTER"],
			"POS 			= D3DXVECTOR2(tempX + 110, tempY + 11 + 15)",
			"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
			"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		}

		g_pButtonline_bt = g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButtonline_bt )
		ButtonName = string.format( "Button_Recipe%d", ListID )
		g_pButtonline_bt:SetName( ButtonName )
		g_pButtonline_bt:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )

		g_pButtonline_bt:SetOverTex( "DLG_UI_BUTTON09.tga", "line_bt" )

		g_pButtonline_bt:SetDownTex( "DLG_UI_BUTTON09.tga", "line_bt" )

		g_pButtonline_bt:SetNormalPoint
		{
			ADD_SIZE_X = 180,
			ADD_SIZE_Y = 57,
		    "LEFT_TOP		= D3DXVECTOR2(tempX - 4, tempY - 4)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButtonline_bt:SetOverPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(tempX - 4, tempY - 4)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButtonline_bt:SetDownPoint
		{
		      ADD_SIZE_X = -2,
		     ADD_SIZE_Y = -2,
		 	"LEFT_TOP		= D3DXVECTOR2(tempX - 3, tempY - 3)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButtonline_bt:SetCustomMsgMouseUp( UI_MANUFACTURE_CUSTOM_MSG["UMCM_SELECT_ITEM"] )
		g_pButtonline_bt:AddDummyInt(ListID)
		
		
		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_MAIN_NEW"],

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


-----------------------------    아이템 명  --------------------

--[[
g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "Static_Slot1" )

g_pStatic_name1:AddString
{
	-- MSG 			= "＋엘리트\n다마스커스 소드",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(139,133)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name2 )
g_pStatic_name2:SetName( "Static_Slot2" )

g_pStatic_name2:AddString
{
	-- MSG 			= "＋엘리트\n다마스커스 소드",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(139,133+60)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name3 )
g_pStatic_name3:SetName( "Static_Slot3" )

g_pStatic_name3:AddString
{
	-- MSG 			= "＋엘리트\n다마스커스 소드",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(139,133+60+60)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_name4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name4 )
g_pStatic_name4:SetName( "Static_Slot4" )

g_pStatic_name4:AddString
{
	-- MSG 			= "＋엘리트\n다마스커스 소드",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(139,133+60+60+60)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name5 )
g_pStatic_name5:SetName( "Static_Slot5" )

g_pStatic_name5:AddString
{
	-- MSG 			= "＋엘리트\n다마스커스 소드",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(139+185,133)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name6 )
g_pStatic_name6:SetName( "Static_Slot6" )

g_pStatic_name6:AddString
{
	-- MSG 			= "＋엘리트\n다마스커스 소드",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(139+185,133+60)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name7 )
g_pStatic_name7:SetName( "Static_Slot7" )

g_pStatic_name7:AddString
{
	-- MSG 			= "＋엘리트\n다마스커스 소드",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(139+185,133+60+60)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_name8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name8 )
g_pStatic_name8:SetName( "Static_Slot8" )

g_pStatic_name8:AddString
{
	-- MSG 			= "＋엘리트\n다마스커스 소드",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(139+185,133+60+60+60)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



--]]







g_pPicturemark = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicturemark )

g_pPicturemark:SetTex( "DLG_UI_Common_Texture02.tga", "feel" )

g_pPicturemark:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(31,369)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStatic_item = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item )
g_pStatic_item:SetName( "item" )

g_pStatic_item:AddString
{
	MSG 			= STR_ID_1230,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,371)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_price = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_price )
g_pStatic_price:SetName( "price" )

g_pStatic_price:AddString
{
	MSG 			= STR_ID_1231,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(31,456)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


---------------------재료   slot


g_pPictureWindow_slot1 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureWindow_slot1 )

g_pPictureWindow_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPictureWindow_slot1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(34,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




g_pPictureWindow_slot2 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureWindow_slot2 )

g_pPictureWindow_slot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPictureWindow_slot2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(34+44,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureWindow_slot3 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureWindow_slot3 )

g_pPictureWindow_slot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPictureWindow_slot3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(34+44+44,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow_slot4 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureWindow_slot4 )

g_pPictureWindow_slot4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPictureWindow_slot4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(34+44+44+44,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow_slot5 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureWindow_slot5 )

g_pPictureWindow_slot5:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPictureWindow_slot5:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(34+44+44+44+44,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow_slot6 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureWindow_slot6 )

g_pPictureWindow_slot6:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPictureWindow_slot6:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(34+44+44+44+44+44,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow_slot7 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureWindow_slot7 )

g_pPictureWindow_slot7:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPictureWindow_slot7:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(34+44+44+44+44+44+44,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureWindow_slot8 = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureWindow_slot8 )

g_pPictureWindow_slot8:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPictureWindow_slot8:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(34+44+44+44+44+44+44+44,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-----------------------------------
-- 재료 슬롯
-----------------------------------

-- 기준점 : 제일 왼쪽 위 슬롯의 슬롯 그림 왼쪽 위 위치
LEFT_TOP_X = 34
LEFT_TOP_Y = 394

DISTANCE_X = 44

ListID = 0
tempX = 0
tempY = 0

for i = 0, 7 do
	
	tempX = LEFT_TOP_X + (i * DISTANCE_X)
	tempY = LEFT_TOP_Y

	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )
	
	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,
	
		SLOT_TYPE	= SLOT_TYPE["ST_MATERIAL"],
	
		SORT_TYPE	= 0,
		SLOT_ID		= i,
	
		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
		"POS		= D3DXVECTOR2( tempX+1 ,tempY+1 )",
		"SIZE		= D3DXVECTOR2( 39, 39 )",
	}

end 






---------------수수료 박스


g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicturebox:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(104,452)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicturebox:SetPoint
{

    ADD_SIZE_X = 133,
	"LEFT_TOP		= D3DXVECTOR2(109,452)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_RIGHT" )

g_pPicturebox:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(243,452)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureed = g_pUIDialog:CreatePicture()
g_pStaticmake:AddPicture( g_pPictureed )

g_pPictureed:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )

g_pPictureed:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(109,455)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStatic_price2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_price2 )
g_pStatic_price2:SetName( "Static_Price" )

g_pStatic_price2:AddString
{
	-- MSG 			= "9,000,000,000",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(231,457)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}






----------------- 제조하기 비활성

g_pStatic_Create_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Create_Inactive )
g_pStatic_Create_Inactive:SetName( "Static_Make_Inactive" )

g_pPicturealchemy = g_pUIDialog:CreatePicture()
g_pStatic_Create_Inactive:AddPicture( g_pPicturealchemy )

g_pPicturealchemy:SetTex( "DLG_UI_Common_Texture02.TGA", "alchemy_noactive" )

g_pPicturealchemy:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(251,446)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



------------ 제조하기 버튼



g_pButtonalchemy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonalchemy )
g_pButtonalchemy:SetName( "Button_Make" )
g_pButtonalchemy:SetNormalTex( "DLG_UI_BUTTON05.tga", "alchemy_normal" )

g_pButtonalchemy:SetOverTex( "DLG_UI_BUTTON05.tga", "alchemy_over" )

g_pButtonalchemy:SetDownTex( "DLG_UI_BUTTON05.tga", "alchemy_over" )

g_pButtonalchemy:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(251,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalchemy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(248,443)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalchemy:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(248+1,443+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalchemy:SetCustomMsgMouseUp( UI_MANUFACTURE_CUSTOM_MSG["UMCM_MAKE"] )



---HELP 버튼


g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )

g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(377-26,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(377-26-4,15-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(377-26-4+1,15-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(150)

--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(377,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(373,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(373+1,11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_MANUFACTURE_CUSTOM_MSG["UMCM_EXIT"] )
