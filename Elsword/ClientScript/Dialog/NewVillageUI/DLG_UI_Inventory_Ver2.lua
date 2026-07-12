-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticInven = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInven )
g_pStaticInven:SetName( "g_pStaticInven" )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_EXIT"] )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 552, 305, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 463, 392, 0 ) ) -- Size 




-----BG
g_pPictureInven_BG_top = g_pUIDialog:CreatePicture()
g_pStaticInven:AddPicture( g_pPictureInven_BG_top )

g_pPictureInven_BG_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_TOP" )

g_pPictureInven_BG_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(552,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_BG_middle = g_pUIDialog:CreatePicture()
g_pStaticInven:AddPicture( g_pPictureInven_BG_middle )

g_pPictureInven_BG_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_middle" )

g_pPictureInven_BG_middle:SetPoint
{
     ADD_SIZE_Y = 375+16,
	"LEFT_TOP		= D3DXVECTOR2(552,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInven_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticInven:AddPicture( g_pPictureInven_BG_bottom)

g_pPictureInven_BG_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_bottom" )

g_pPictureInven_BG_bottom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(552,697+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----bg_b


g_pPictureInven_black_box_top= g_pUIDialog:CreatePicture()
g_pStaticInven:AddPicture( g_pPictureInven_black_box_top)

g_pPictureInven_black_box_top:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

g_pPictureInven_black_box_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(566,350)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInven_balck_box_middle= g_pUIDialog:CreatePicture()
g_pStaticInven:AddPicture( g_pPictureInven_balck_box_middle)

g_pPictureInven_balck_box_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

g_pPictureInven_balck_box_middle:SetPoint
{
     ADD_SIZE_Y = 318,
	"LEFT_TOP		= D3DXVECTOR2(566,360)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInven_balck_box_bottom= g_pUIDialog:CreatePicture()
g_pStaticInven:AddPicture( g_pPictureInven_balck_box_bottom)

g_pPictureInven_balck_box_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

g_pPictureInven_balck_box_bottom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(566,680)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----인벤 창

g_pPictureInven_win_top= g_pUIDialog:CreatePicture()
g_pStaticInven:AddPicture( g_pPictureInven_win_top)

g_pPictureInven_win_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

g_pPictureInven_win_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(572,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_win_middle= g_pUIDialog:CreatePicture()
g_pStaticInven:AddPicture( g_pPictureInven_win_middle)

g_pPictureInven_win_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

g_pPictureInven_win_middle:SetPoint
{
    ADD_SIZE_Y = 225,
	"LEFT_TOP		= D3DXVECTOR2(572,397)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInven_win_bottom= g_pUIDialog:CreatePicture()
g_pStaticInven:AddPicture( g_pPictureInven_win_bottom)

g_pPictureInven_win_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

g_pPictureInven_win_bottom:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(572,624)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






---메뉴 버튼





----PC방

g_pRadioButtonPC_Room = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonPC_Room )

g_pRadioButtonPC_Room:SetFixOverByCheck( true )
g_pRadioButtonPC_Room:SetShowOffBGByCheck( true )

g_pRadioButtonPC_Room:SetName( "Inventory_Menu_PC" )

--101025 김정협피시방 버튼 임시 막음
g_pRadioButtonPC_Room:SetShowEnable( false, false )
--101025 김정협피시방 버튼 임시 막음

g_pRadioButtonPC_Room:SetNormalTex( "DLG_UI_Button14.tga", "btn_PC_normal" )


g_pRadioButtonPC_Room:SetOverTex( "DLG_UI_Button14.tga", "btn_PC_over" )


g_pRadioButtonPC_Room:SetCheckedTex( "DLG_UI_Button14.tga", "btn_PC_over" )


g_pRadioButtonPC_Room:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(894,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPC_Room:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(894-6,320-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPC_Room:SetRBPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(894,320)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(895+79,320+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPC_Room:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(894-6,320-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonPC_Room:SetGroupID( 1 )
g_pRadioButtonPC_Room:SetCustomMsgChecked( UI_INVENTORY_MSG["UIM_PC_BANG"] ) 



-----펫 
g_pButtonPet = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPet )
g_pButtonPet:SetName( "PetInventory" )
g_pButtonPet:SetNormalTex( "DLG_UI_BUTTON16_A.tga", "BTN_PET_GRAY" )
g_pButtonPet:SetOverTex( "DLG_UI_BUTTON16_A.tga", "BTN_PET_over" )
g_pButtonPet:SetDownTex( "DLG_UI_BUTTON16_A.tga", "BTN_PET_over" )
g_pButtonPet:SetDisableTex( "DLG_UI_BUTTON16.tga", "BTN_PET_NOACTIVE" )

g_pButtonPet:SetNormalPoint
{
 
    "LEFT_TOP  = D3DXVECTOR2(813,320-1)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButtonPet:SetOverPoint
{

	"LEFT_TOP  = D3DXVECTOR2(813-4,320-5-1)",

	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButtonPet:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP  = D3DXVECTOR2(813-5+2,320-6+2-1)",

	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButtonPet:SetDisablePoint
{
 
    "LEFT_TOP  = D3DXVECTOR2(813,320)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}


g_pButtonPet:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_PET_INVENTORY_OPEN"] ) 

----장비

g_pRadioButtoneuqip = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtoneuqip )

g_pRadioButtoneuqip:SetFixOverByCheck( true )
g_pRadioButtoneuqip:SetShowOffBGByCheck( true )

g_pRadioButtoneuqip:SetName( "Inventory_Menu_Equip" )

g_pRadioButtoneuqip:SetNormalTex( "DLG_UI_Button01.tga", "bt_euqip_normal" )


g_pRadioButtoneuqip:SetOverTex( "DLG_UI_Button01.tga", "bt_euqip_over" )


g_pRadioButtoneuqip:SetCheckedTex( "DLG_UI_Button01.tga", "bt_euqip_down" )


g_pRadioButtoneuqip:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(574,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoneuqip:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(574,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoneuqip:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(574,356)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(628,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoneuqip:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(577,353)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtoneuqip:SetGroupID( 1 )
g_pRadioButtoneuqip:SetCustomMsgChecked( UI_INVENTORY_MSG["UIM_EQUIP"] ) 



--- 액세서리

g_pRadioButtonaccessori = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonaccessori )

g_pRadioButtonaccessori:SetFixOverByCheck( true )
g_pRadioButtonaccessori:SetShowOffBGByCheck( true )

g_pRadioButtonaccessori:SetName( "Inventory_Menu_Accessory" )

g_pRadioButtonaccessori:SetNormalTex( "DLG_UI_Button01.tga", "bt_accessori_normal" )


g_pRadioButtonaccessori:SetOverTex( "DLG_UI_Button01.tga", "bt_accessori_over" )


g_pRadioButtonaccessori:SetCheckedTex( "DLG_UI_Button01.tga", "bt_accessori_down" )


g_pRadioButtonaccessori:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(626,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonaccessori:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(626,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonaccessori:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(626,356)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(696,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonaccessori:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(629,354)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonaccessori:SetGroupID( 1 )
g_pRadioButtonaccessori:SetCustomMsgChecked( UI_INVENTORY_MSG["UIM_ACCESSORY"] )


---소비


g_pRadioButtonspend = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonspend )

g_pRadioButtonspend:SetFixOverByCheck( true )
g_pRadioButtonspend:SetShowOffBGByCheck( true )

g_pRadioButtonspend:SetName( "Inventory_Menu_QuickSlot" )

g_pRadioButtonspend:SetNormalTex( "DLG_UI_Button01.tga", "bt_spend_normal" )


g_pRadioButtonspend:SetOverTex( "DLG_UI_Button01.tga", "bt_spend_over" )


g_pRadioButtonspend:SetCheckedTex( "DLG_UI_Button01.tga", "bt_spend_down" )


g_pRadioButtonspend:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(694,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspend:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(694,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspend:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(694,356)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(748,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspend:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(697,353)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonspend:SetGroupID( 1 )
g_pRadioButtonspend:SetCustomMsgChecked( UI_INVENTORY_MSG["UIM_QUICK_SLOT"] )


--재료


g_pRadioButtonmaterial = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonmaterial )

g_pRadioButtonmaterial:SetFixOverByCheck( true )
g_pRadioButtonmaterial:SetShowOffBGByCheck( true )

g_pRadioButtonmaterial:SetName( "Inventory_Menu_Material" )

g_pRadioButtonmaterial:SetNormalTex( "DLG_UI_Button01.tga", "bt_material_normal" )


g_pRadioButtonmaterial:SetOverTex( "DLG_UI_Button01.tga", "bt_material_over" )


g_pRadioButtonmaterial:SetCheckedTex( "DLG_UI_Button01.tga", "bt_material_down" )


g_pRadioButtonmaterial:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(746,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmaterial:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(746,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmaterial:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(746,356)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(800,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmaterial:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(749,353)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonmaterial:SetGroupID( 1 )
g_pRadioButtonmaterial:SetCustomMsgChecked( UI_INVENTORY_MSG["UIM_MATERIAL"] )



--퀘스트
g_pRadioButtonqust = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonqust )

g_pRadioButtonqust:SetFixOverByCheck( true )
g_pRadioButtonqust:SetShowOffBGByCheck( true )

g_pRadioButtonqust:SetName( "Inventory_Menu_Quest" )

g_pRadioButtonqust:SetNormalTex( "DLG_UI_Button01.tga", "bt_qust_normal" )


g_pRadioButtonqust:SetOverTex( "DLG_UI_Button01.tga", "bt_qust_over" )


g_pRadioButtonqust:SetCheckedTex( "DLG_UI_Button01.tga", "bt_qust_down" )


g_pRadioButtonqust:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(799,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonqust:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(799,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonqust:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(799,356)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(868,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonqust:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(801,353)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonqust:SetGroupID( 1 )
g_pRadioButtonqust:SetCustomMsgChecked( UI_INVENTORY_MSG["UIM_QUEST"] )


---특수

g_pRadioButtonspecial = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonspecial )

g_pRadioButtonspecial:SetFixOverByCheck( true )
g_pRadioButtonspecial:SetShowOffBGByCheck( true )

g_pRadioButtonspecial:SetName( "Inventory_Menu_Special" )

g_pRadioButtonspecial:SetNormalTex( "DLG_UI_Button01.tga", "bt_special_normal" )


g_pRadioButtonspecial:SetOverTex( "DLG_UI_Button01.tga", "bt_special_over" )


g_pRadioButtonspecial:SetCheckedTex( "DLG_UI_Button01.tga", "bt_special_down" )


g_pRadioButtonspecial:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(866,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspecial:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(867,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspecial:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(866,356)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(920,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonspecial:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(869,353)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonspecial:SetGroupID( 1 )
g_pRadioButtonspecial:SetCustomMsgChecked( UI_INVENTORY_MSG["UIM_SPECIAL"] )


--avata

g_pRadioButtonavata = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonavata )

g_pRadioButtonavata:SetFixOverByCheck( true )
g_pRadioButtonavata:SetShowOffBGByCheck( true )

g_pRadioButtonavata:SetName( "Inventory_Menu_Avatar" )

g_pRadioButtonavata:SetNormalTex( "DLG_UI_Button01.tga", "bt_avata_normal" )


g_pRadioButtonavata:SetOverTex( "DLG_UI_Button01.tga", "bt_avata_over" )


g_pRadioButtonavata:SetCheckedTex( "DLG_UI_Button01.tga", "bt_avata_down" )


g_pRadioButtonavata:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(918,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonavata:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(918,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonavata:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(918,356)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(990,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonavata:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(921,353)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonavata:SetGroupID( 1 )
g_pRadioButtonavata:SetCustomMsgChecked( UI_INVENTORY_MSG["UIM_AVATAR"] )


-----EXIT  버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(976,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(972,316)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(972+1,316+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_EXIT"] )


-------------------타이틀

g_pPictureInven_title= g_pUIDialog:CreatePicture()
g_pStaticInven:AddPicture( g_pPictureInven_title)

g_pPictureInven_title:SetTex( "DLG_UI_TITLE01.TGA", "Inventory" )

g_pPictureInven_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(565,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----인벤 슬롯
g_pStaticInven_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInven_Slot )
g_pStaticInven_Slot:SetName( "g_pStaticInvenSlot1" )



g_pPictureInven_slot1= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot1)

g_pPictureInven_slot1:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(580,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot2= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot2)

g_pPictureInven_slot2:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(631,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot3= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot3)

g_pPictureInven_slot3:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(682,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot4= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot4)

g_pPictureInven_slot4:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(733,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot5= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot5)

g_pPictureInven_slot5:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(784,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot6= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot6)

g_pPictureInven_slot6:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(835,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot7= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot7)

g_pPictureInven_slot7:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(886,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot8= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot8)

g_pPictureInven_slot8:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(937,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------------------------------------------------

g_pStaticInven_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInven_Slot )
g_pStaticInven_Slot:SetName( "g_pStaticInvenSlot2" )



g_pPictureInven_slot9= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot9)

g_pPictureInven_slot9:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(580,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot10= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot10)

g_pPictureInven_slot10:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(631,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot11= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot11)

g_pPictureInven_slot11:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(682,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot12= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot12)

g_pPictureInven_slot12:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(733,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot13= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot13)

g_pPictureInven_slot13:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot13:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(784,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot14= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot14)

g_pPictureInven_slot14:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot14:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(835,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot15= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot15)

g_pPictureInven_slot15:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot15:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(886,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot16= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot16)

g_pPictureInven_slot16:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot16:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(937,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------------------------------------------------
g_pStaticInven_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInven_Slot )
g_pStaticInven_Slot:SetName( "g_pStaticInvenSlot3" )


g_pPictureInven_slot17= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot17)

g_pPictureInven_slot17:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot17:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(580,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot18= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot18)

g_pPictureInven_slot18:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot18:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(631,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot19= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot19)

g_pPictureInven_slot19:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot19:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(682,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot20= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot20)

g_pPictureInven_slot20:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot20:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(733,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot21= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot21)

g_pPictureInven_slot21:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot21:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(784,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot22= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot22)

g_pPictureInven_slot22:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot22:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(835,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot23= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot23)

g_pPictureInven_slot23:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot23:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(886,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot24= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot24)

g_pPictureInven_slot24:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot24:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(937,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------

g_pStaticInven_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInven_Slot )
g_pStaticInven_Slot:SetName( "g_pStaticInvenSlot4" )


g_pPictureInven_slot25= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot25)

g_pPictureInven_slot25:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot25:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(580,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot26= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot26)

g_pPictureInven_slot26:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot26:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(631,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot27= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot27)

g_pPictureInven_slot27:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot27:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(682,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot28= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot28)

g_pPictureInven_slot28:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot28:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(733,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot29= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot29)

g_pPictureInven_slot29:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot29:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(784,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot30= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot30)

g_pPictureInven_slot30:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot30:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(835,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot31= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot31)

g_pPictureInven_slot31:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot31:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(886,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot32= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot32)

g_pPictureInven_slot32:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot32:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(937,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrowL" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(886-22-26,603)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(886-22-26,602)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(886+1-22-26,602+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_PREV_PAGE"] )


--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrowR" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(965-22-26,603)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964-22-26,602)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(964+1-22-26,602+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_NEXT_PAGE"] )

-----페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPicturepage)

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(904-22-26,601)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----페이지 번호

g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "Inventory_Page_Num" )

g_pStaticnumber:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(932-22-26,606)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




g_pStaticNoactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNoactive )
g_pStaticNoactive:SetName( "Noactive" )

-------------------------------(인벤토리 정렬 버튼)

g_pButtonSort = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSort )
g_pButtonSort:SetName( "sort" )

g_pButtonSort:SetNormalTex( "DLG_UI_Button16_A.tga", "BTN_SORT_NORMAL" )
g_pButtonSort:SetOverTex( "DLG_UI_Button16_A.tga", "BTN_SORT_OVER" )
g_pButtonSort:SetDownTex( "DLG_UI_Button16_A.tga", "BTN_SORT_OVER" )

g_pButtonSort:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(670+292,601)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSort:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(670+292,601)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSort:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(670+292+1,601+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSort:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SORT_CATEGORY_ITEM"] ) 
g_pButtonSort:SetGuideDesc( STR_ID_16219 )


-----(아이템분해)
g_pPictureitem_resolve= g_pUIDialog:CreatePicture()
g_pStaticNoactive:AddPicture( g_pPictureitem_resolve)

g_pPictureitem_resolve:SetTex( "DLG_UI_Button16.TGA", "item_resolve_noactive" )

g_pPictureitem_resolve:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(580,601)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----(아이템소켓)
g_pPictureitem_soket= g_pUIDialog:CreatePicture()
g_pStaticNoactive:AddPicture( g_pPictureitem_soket)

g_pPictureitem_soket:SetTex( "DLG_UI_COMMON_TEXTURE09.TGA", "item_soket_noactive" )

g_pPictureitem_soket:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(833,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----(상점개설)
g_pPictureshop_open= g_pUIDialog:CreatePicture()
g_pStaticNoactive:AddPicture( g_pPictureshop_open )

g_pPictureshop_open:SetTex( "DLG_UI_COMMON_TEXTURE09.TGA", "shop_open_noactive" )

g_pPictureshop_open:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(914,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------아이템 분해 버튼


g_pButtonresolve = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonresolve )
g_pButtonresolve:SetName( "resolve" )

g_pButtonresolve:SetNormalTex( "DLG_UI_BUTTON16.tga", "item_resolve_normal" )
g_pButtonresolve:SetOverTex( "DLG_UI_BUTTON16.tga", "item_resolve_over" )
g_pButtonresolve:SetDownTex( "DLG_UI_BUTTON16.tga", "item_resolve_over" )

g_pButtonresolve:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(580,601)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonresolve:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(580-3,601-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonresolve:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(580+1-3,601+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonresolve:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CHANGE_DECOMPOSITION_MOUSE_CURSOR"] )
g_pButtonresolve:SetGuideDesc( STR_ID_2712 )




-- 아이템 소캣 버튼

g_pButtonsoket = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonsoket )
g_pButtonsoket:SetName( "soket" )
g_pButtonsoket:SetNormalTex( "DLG_UI_BUTTON09.tga", "item_soket_normal" )

g_pButtonsoket:SetOverTex( "DLG_UI_BUTTON09.tga", "item_soket_over" )

g_pButtonsoket:SetDownTex( "DLG_UI_BUTTON09.tga", "item_soket_over" )

g_pButtonsoket:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(833,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsoket:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(833-3,637-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsoket:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(833+1-3,637+1-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsoket:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CHANGE_SOCKET_MOUSE_CURSOR"] )
g_pButtonsoket:SetGuideDesc( STR_ID_2713 )



-- 상점 개설 버튼

g_pButtonshop_open = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonshop_open )
g_pButtonshop_open:SetName( "shop_open" )

g_pButtonshop_open:SetNormalTex( "DLG_UI_BUTTON09.tga", "shop_open_normal" )
g_pButtonshop_open:SetOverTex( "DLG_UI_BUTTON09.tga", "shop_open_over" )
g_pButtonshop_open:SetDownTex( "DLG_UI_BUTTON09.tga", "shop_open_over" )

g_pButtonshop_open:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(914,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonshop_open:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(914-3,637-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonshop_open:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(914+1-3,637+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonshop_open:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_CREATE_PERSONAL_SHOP"] )

--{{ kimhc -- 실시간 엘소드 중 실시간 아이템 버리기

----------아이템 버리기----------
g_pButtonTrash = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTrash )
g_pButtonTrash:SetName( "trash" )

g_pButtonTrash:SetNormalTex( "DLG_UI_BUTTON16.tga", "trash_normal" )
g_pButtonTrash:SetOverTex( "DLG_UI_BUTTON16.tga", "trash_over" )
g_pButtonTrash:SetDownTex( "DLG_UI_BUTTON16.tga", "trash_over" )
g_pButtonTrash:SetDisableTex( "DLG_UI_BUTTON16.tga", "trash_gray" )

g_pButtonTrash:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(670,601)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTrash:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(670-3,601-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTrash:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(670+1-3,601+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTrash:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(670,601)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonTrash:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_DELETE_ITEM"] )

--}} kimhc -- 실시간 엘소드 중 실시간 아이템 버리기

-----체크박스
	--[[
	g_pPicture_box = g_pUIDialog:CreatePicture()
	g_pStaticInven:AddPicture( g_pPicture_box )

	g_pPicture_box:SetTex(  )

	g_pPicture_box:SetPoint
	{
	   
		"LEFT_TOP		= D3DXVECTOR2(582,607)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	--]]

-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "CheckBox_Auth" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )

g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(672,320-50)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(687,335-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(670,318-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxsecret:SetShow(false)



-- 개발자용 싹쓸이 버튼

g_pButtonComplete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonComplete )
g_pButtonComplete:SetName( "Admin_SellAll" )
g_pButtonComplete:SetNormalTex( "DLG_UI_BUTTON07.tga", "sell_out_normal" )

g_pButtonComplete:SetOverTex( "DLG_UI_BUTTON07.tga", "sell_out_over" )

g_pButtonComplete:SetDownTex( "DLG_UI_BUTTON07.tga", "sell_out_over" )

g_pButtonComplete:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(695,320-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComplete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(693,318-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComplete:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(693+1,318+1-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComplete:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SELL_CATEGORY_ALL"] )
g_pButtonComplete:SetShow(false)



-- 개발자용 버리기 버튼

g_pButtonDelete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDelete )
g_pButtonDelete:SetName( "Admin_Delete" )
g_pButtonDelete:SetNormalTex( "DLG_UI_BUTTON07.tga", "sell_out_normal" )

g_pButtonDelete:SetOverTex( "DLG_UI_BUTTON07.tga", "sell_out_over" )

g_pButtonDelete:SetDownTex( "DLG_UI_BUTTON07.tga", "sell_out_over" )

g_pButtonDelete:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(695+55,320-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(693+55,318-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(693+1+55,318+1-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete:SetString
{
	MSG 			= STR_ID_1285,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(695+55+3,320+3)",
	"COLOR			= D3DXCOLOR(0.0, 0.0, 0.0, 1.0)",	
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pButtonDelete:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_DELETE_ITEM"] )
g_pButtonDelete:SetShow(false)

-----------------------------------------------------
-- 인벤토리 슬롯 관련
-----------------------------------------------------
slotID = 0
tempX = 0
tempY = 0

for i = 0, 3 do

	for j = 0, 7 do

			pItemSlot = g_pCX2SlotManager:CreateItemSlot()
			g_pCX2SlotManager:AddSlot( pItemSlot )

			tempX = 581 + (j * 51)
			tempY = 396 + (i * 51)

			pItemSlot:SetSlotData
			{
				ENABLE		= TRUE,
				SHOW		= TRUE,

				SLOT_TYPE	= SLOT_TYPE["ST_INVENTORY"],

				SORT_TYPE	= 0,
				SLOT_ID		= slotID,

				FASHION		= FALSE,
				EQUIP_POS	= EQIP_POSITION["EP_NONE"],

				"POS		= D3DXVECTOR2( tempX ,tempY )",
				"SIZE		= D3DXVECTOR2( 47, 47 )",
			}

			slotID = slotID + 1

	end

end




-----(기술의노트)
g_pPicture_Note= g_pUIDialog:CreatePicture()
g_pStaticNoactive:AddPicture( g_pPicture_Note)

g_pPicture_Note:SetTex( "DLG_UI_Button16.TGA", "Note_Gray" )

g_pPicture_Note:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(574,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Note:SetIndex(1)


g_pButton_Note = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Note )
g_pButton_Note:SetName( "_Note" )

g_pButton_Note:SetNormalTex( "DLG_UI_Button16.TGA", "Note_normal" )
g_pButton_Note:SetOverTex( "DLG_UI_Button16.TGA", "Note_over" )
g_pButton_Note:SetDownTex( "DLG_UI_Button16.TGA", "Note_over" )
g_pButton_Note:SetDisableTex( "DLG_UI_Button16.TGA", "Note_Gray" )

g_pButton_Note:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(574,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Note:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(574-3,637-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Note:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(574+1-3,637+1-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Note:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(574,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Note:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SKILL_NOTE"] )
g_pButton_Note:SetGuideDesc( STR_ID_13696 )

-----(먹이주기)
g_pPicture_Food_Give = g_pUIDialog:CreatePicture()
g_pStaticNoactive:AddPicture( g_pPicture_Food_Give )

g_pPicture_Food_Give:SetTex( "DLG_UI_Button16.TGA", "BTN_FOOD_GIVE_GRAY" )

g_pPicture_Food_Give:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(655,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Food_Give:SetIndex(2)


g_pButton_Food_Give = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Food_Give )
g_pButton_Food_Give:SetName( "_Food" )

g_pButton_Food_Give:SetNormalTex( "DLG_UI_Button16.TGA", "BTN_FOOD_GIVE_NORMAL" )
g_pButton_Food_Give:SetOverTex( "DLG_UI_Button16.TGA", "BTN_FOOD_GIVE_OVER" )
g_pButton_Food_Give:SetDownTex( "DLG_UI_Button16.TGA", "BTN_FOOD_GIVE_OVER" )
g_pButton_Food_Give:SetDisableTex( "DLG_UI_Button16.TGA", "BTN_FOOD_GIVE_GRAY" )

g_pButton_Food_Give:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(655,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Food_Give:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(655-4,637-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Food_Give:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(655+1-4,637+1-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Food_Give:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(655,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Food_Give:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_PET_FOOD"] )


--ED
 
g_pStatic_ED = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ED )
g_pStatic_ED:SetName( "Static_ED" )
g_pStatic_ED:SetShow(true)
g_pStatic_ED:SetOffsetPos(730-32,694-63)

-------------------ED 박스
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_ED:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_left" )
g_pPicture_box:SetPoint
{     
	"LEFT_TOP		= D3DXVECTOR2(31,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_ED:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_middle" )
g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 122,
	"LEFT_TOP		= D3DXVECTOR2(37,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_ED:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_right" )
g_pPicture_box:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(160,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------ED 아이콘
g_pPicture_icon = g_pUIDialog:CreatePicture()
g_pStatic_ED:AddPicture( g_pPicture_icon )
g_pPicture_icon:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )
g_pPicture_icon:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(36,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- ed수치
g_pStatic_ED:AddString
{ 
	-- MSG 			= "9,999,999,999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(145,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--AP
 
g_pStatic_AP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_AP )
g_pStatic_AP:SetName( "Static_AP" )
g_pStatic_AP:SetShow(true)
g_pStatic_AP:SetOffsetPos(730-32+138,694-63)

-------------------AP 박스
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_AP:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_left" )
g_pPicture_box:SetPoint
{     
	"LEFT_TOP		= D3DXVECTOR2(31,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_AP:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_middle" )
g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 122,
	"LEFT_TOP		= D3DXVECTOR2(37,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_AP:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_right" )
g_pPicture_box:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(160,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------VP 아이콘
g_pPicture_icon = g_pUIDialog:CreatePicture()
g_pStatic_AP:AddPicture( g_pPicture_icon )
g_pPicture_icon:SetTex( "DLG_UI_Common_Texture02.TGA", "VP" )
g_pPicture_icon:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(36,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- VP수치
g_pStatic_AP:AddString
{ 
	-- MSG 			= "9,999,999,999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(145,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}