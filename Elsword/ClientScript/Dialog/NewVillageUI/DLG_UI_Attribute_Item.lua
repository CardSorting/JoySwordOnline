-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Attribute_Item" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_OPTION"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_EXIT"] )


g_pStatic_item_attribute = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_attribute )
g_pStatic_item_attribute:SetName( "g_pStatic_item_attribute" )

-----------bg

g_pPictureWindow1 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow1 )

g_pPictureWindow1:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg1_top" )

g_pPictureWindow1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow2 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow2 )

g_pPictureWindow2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg1_middle" )

g_pPictureWindow2:SetPoint
{

	ADD_SIZE_Y = 460,
	"LEFT_TOP		= D3DXVECTOR2(0,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}







g_pStatic_DoNotSeeWhenArmor = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_DoNotSeeWhenArmor )
g_pStatic_DoNotSeeWhenArmor:SetName( "g_pStatic_DoNotSeeWhenArmor" )



------ 방어구일 경우 안보이게 할 부분-----
g_pPictureWindow2_1 = g_pUIDialog:CreatePicture()
g_pStatic_DoNotSeeWhenArmor:AddPicture( g_pPictureWindow2_1 )

g_pPictureWindow2_1:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg1_middle" )

g_pPictureWindow2_1:SetPoint
{

	ADD_SIZE_Y = 48,
	"LEFT_TOP		= D3DXVECTOR2(0,471)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------ 방어구가 아닐경우 찍는 아랫 부분-----
g_pPictureWindow3_1 = g_pUIDialog:CreatePicture()
g_pStatic_DoNotSeeWhenArmor:AddPicture( g_pPictureWindow3_1 )

g_pPictureWindow3_1:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg1_bottom" )

g_pPictureWindow3_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,520)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}







g_pStatic_SeeWhenArmor = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SeeWhenArmor )
g_pStatic_SeeWhenArmor:SetName( "g_pStatic_SeeWhenArmor" )

------- 방어구일 경우 찍는 아랫 부분------------
g_pPictureWindow3 = g_pUIDialog:CreatePicture()
g_pStatic_SeeWhenArmor:AddPicture( g_pPictureWindow3 )

g_pPictureWindow3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg1_bottom" )

g_pPictureWindow3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,471)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




--------슬롯이 세줄일 경우 나오는 부분-----
g_pStatic_ExtraSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ExtraSlot )
g_pStatic_ExtraSlot:SetName( "g_pStatic_ExtraSlot" )

------ 중간 부분-----
g_pPictureWindow2_1 = g_pUIDialog:CreatePicture()
g_pStatic_ExtraSlot:AddPicture( g_pPictureWindow2_1 )

g_pPictureWindow2_1:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg1_middle" )

g_pPictureWindow2_1:SetPoint
{

	ADD_SIZE_Y = 48,
	"LEFT_TOP		= D3DXVECTOR2(0,471+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------ 아랫 부분-----
g_pPictureWindow3_1 = g_pUIDialog:CreatePicture()
g_pStatic_ExtraSlot:AddPicture( g_pPictureWindow3_1 )

g_pPictureWindow3_1:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg1_bottom" )

g_pPictureWindow3_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,520+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow_slot4 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow_slot4 )

g_pPictureWindow_slot4:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_top" )

g_pPictureWindow_slot4:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(13,69)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow_slot4 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow_slot4 )

g_pPictureWindow_slot4:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_middle" )

g_pPictureWindow_slot4:SetPoint
{

     ADD_SIZE_Y = 57,
	"LEFT_TOP		= D3DXVECTOR2(13,78)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow4 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow4 )

g_pPictureWindow4:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_bottom" )

g_pPictureWindow4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,136)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow5 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow5 )

g_pPictureWindow5:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_top" )

g_pPictureWindow5:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,148)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow5 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow5 )

g_pPictureWindow5:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_middle")

g_pPictureWindow5:SetPoint
{

	ADD_SIZE_Y = 249,
	"LEFT_TOP		= D3DXVECTOR2(13,157)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow5 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow5 )

g_pPictureWindow5:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_bottom" )

g_pPictureWindow5:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,407)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureWindow6 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow6 )

g_pPictureWindow6:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_left" )

g_pPictureWindow6:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(17,73)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow6 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow6 )

g_pPictureWindow6:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_middle")

g_pPictureWindow6:SetPoint
{

	ADD_SIZE_X = 309,
	"LEFT_TOP		= D3DXVECTOR2(25,73)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow6 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow6 )

g_pPictureWindow6:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_right" )

g_pPictureWindow6:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(335,73)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}






-----속성인첸트 타이틀

g_pPictureWindow_title = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow_title )

g_pPictureWindow_title:SetTex( "DLG_UI_Title01.tga", "attribute2" )

g_pPictureWindow_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow_title = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow_title )

g_pPictureWindow_title:SetTex( "DLG_UI_Title01.tga", "enchant" )

g_pPictureWindow_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(58+25,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}






-----슬롯버튼


-- 무속성 
g_pButton_El_Slot_Big = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_El_Slot_Big )
g_pButton_El_Slot_Big:SetName( "Button_El_0" )

g_pButton_El_Slot_Big:SetNormalTex( "DLG_UI_Button05.tga", "rendom_normal" )

g_pButton_El_Slot_Big:SetOverTex( "DLG_UI_Button05.tga", "rendom_over" )

g_pButton_El_Slot_Big:SetDownTex( "DLG_UI_Button05.tga", "rendom_over" )

g_pButton_El_Slot_Big:SetDisableTex( "DLG_UI_Button05.tga", "rendom_normal" )
g_pButton_El_Slot_Big:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(16,150)",
	"COLOR			= D3DXCOLOR(0.6,0.6,0.6,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot_Big:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(16,150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot_Big:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(15,149)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot_Big:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(15+1,149+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot_Big:AddDummyInt( ENCHANT_TYPE["ET_RANDOM"] )
g_pButton_El_Slot_Big:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_SELECT"] )




-- 레드 
g_pButton_El_Slot1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_El_Slot1 )
g_pButton_El_Slot1:SetName( "Button_El_1" )

g_pButton_El_Slot1:SetNormalTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )

g_pButton_El_Slot1:SetOverTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot1:SetDownTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot1:SetDisableTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )
g_pButton_El_Slot1:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(16,215)",
	"COLOR			= D3DXCOLOR(0.6,0.6,0.6,0.8)",
	CHANGE_TIME		= 0.0,
}

g_pButton_El_Slot1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(16,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,215)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(16+1,215+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_El_Slot1:AddDummyInt( ENCHANT_TYPE["ET_BLAZE"] )
g_pButton_El_Slot1:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_SELECT"] )




-- 블루 
g_pButton_El_Slot2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_El_Slot2 )
g_pButton_El_Slot2:SetName( "Button_El_2" )

g_pButton_El_Slot2:SetNormalTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )

g_pButton_El_Slot2:SetOverTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot2:SetDownTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot2:SetDisableTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )
g_pButton_El_Slot2:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(16,280)",
	"COLOR			= D3DXCOLOR(0.6,0.6,0.6,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pButton_El_Slot2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(16,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,280)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(16+1,280+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot2:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_SELECT"] )
g_pButton_El_Slot2:AddDummyInt(ENCHANT_TYPE["ET_WATER"] )








g_pButton_El_Slot3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_El_Slot3 )
g_pButton_El_Slot3:SetName( "Button_El_3" )

g_pButton_El_Slot3:SetNormalTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )

g_pButton_El_Slot3:SetOverTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot3:SetDownTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot3:SetDisableTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )
g_pButton_El_Slot3:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(16,345)",
	"COLOR			= D3DXCOLOR(0.6,0.6,0.6,0.8)",
	CHANGE_TIME		= 0.0,
}

g_pButton_El_Slot3:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(16,345)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,345)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot3:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(16+1,345+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot3:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_SELECT"] )
g_pButton_El_Slot3:AddDummyInt( ENCHANT_TYPE["ET_NATURE"] )





g_pButton_El_Slot4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_El_Slot4 )
g_pButton_El_Slot4:SetName( "Button_El_4" )

g_pButton_El_Slot4:SetNormalTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )

g_pButton_El_Slot4:SetOverTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot4:SetDownTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot4:SetDisableTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )
g_pButton_El_Slot4:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(179,215)",
	"COLOR			= D3DXCOLOR(0.6,0.6,0.6,0.8)",
	CHANGE_TIME		= 0.0,
}

g_pButton_El_Slot4:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(179,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot4:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(179,215)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot4:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(179+1,215+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot4:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_SELECT"] )
g_pButton_El_Slot4:AddDummyInt( ENCHANT_TYPE["ET_WIND"] )



g_pButton_El_Slot5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_El_Slot5 )
g_pButton_El_Slot5:SetName( "Button_El_5" )

g_pButton_El_Slot5:SetNormalTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )

g_pButton_El_Slot5:SetOverTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot5:SetDownTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot5:SetDisableTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )
g_pButton_El_Slot5:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(179,280)",
	"COLOR			= D3DXCOLOR(0.6,0.6,0.6,0.8)",
	CHANGE_TIME		= 0.0,
}

g_pButton_El_Slot5:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(179,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot5:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(179,280)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot5:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(179+1,280+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot5:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_SELECT"] )
g_pButton_El_Slot5:AddDummyInt( ENCHANT_TYPE["ET_LIGHT"] )


g_pButton_El_Slot6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_El_Slot6 )
g_pButton_El_Slot6:SetName( "Button_El_6" )

g_pButton_El_Slot6:SetNormalTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )

g_pButton_El_Slot6:SetOverTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot6:SetDownTex( "DLG_UI_Button05.tga", "SLOT_OVER" )

g_pButton_El_Slot6:SetDisableTex( "DLG_UI_Button05.tga", "SLOT_NORMAL" )
g_pButton_El_Slot6:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(179,345)",
	"COLOR			= D3DXCOLOR(0.6,0.6,0.6,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pButton_El_Slot6:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(179,345)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot6:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(179,345)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot6:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(179+1,345+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_El_Slot6:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_SELECT"] )
g_pButton_El_Slot6:AddDummyInt( ENCHANT_TYPE["ET_DARK"] )







g_pPicturemark = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPicturemark )

g_pPicturemark:SetTex( "DLG_UI_Common_Texture02.tga", "feel" )

g_pPicturemark:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(17,48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



----- 하단 속성아이콘
--[[
g_pPicturenormal_stone = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPicturenormal_stone )

g_pPicturenormal_stone:SetTex( "DLG_Common_New_Texture34.tga", "magic_STONE" )

g_pPicturenormal_stone:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(75,188)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturehigh_stone = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPicturehigh_stone )

g_pPicturehigh_stone:SetTex( "DLG_Common_New_Texture34.tga", "HIGH_STONE" )

g_pPicturehigh_stone:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(245,188)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--]]



-----아이템 슬롯

g_pStatic_item_attribute = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_attribute )
g_pStatic_item_attribute:SetName( "g_pStatic_item_Slot_Image" )


g_pPictureWindow_slot1 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow_slot1 )

g_pPictureWindow_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureWindow_slot1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(25,82)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow_slot2 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureWindow_slot2 )

g_pPictureWindow_slot2:SetTex( "DLG_Icon_Sealed_Item.tga", "Sealed_Item" )

g_pPictureWindow_slot2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(25+1,82+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





---------------------------------EXIT


g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(323,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(319,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(319+1,9+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_EXIT"] )

	
-----속성안내문----

	Static_comment = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_comment )
	Static_comment:SetName( "Static_comment" )

	Static_comment:AddString
	{
		MSG 			= STR_ID_1235,
		FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(36,50)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}




	
	
-----아이템이름
	Static_Item_Name = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_Item_Name )
	Static_Item_Name:SetName( "Static_Item_Name" )

	Static_Item_Name:AddString
	{
		-- MSG 			= "+0윈드레스 보우",
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(85,89)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
-----속성 장착현황	

	Static_Item_Attribute = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_Item_Attribute )
	Static_Item_Attribute:SetName( "Static_Item_Current_Attribute" )

	Static_Item_Attribute:AddString
	{
		MSG 			= STR_ID_118,
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(142,110)",
		"COLOR			= D3DXCOLOR(1.0,0.6,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	

----속성 업그레이드 안내

	g_pStatic_Attribute_Upgrade_Notice = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Attribute_Upgrade_Notice )
	g_pStatic_Attribute_Upgrade_Notice:SetName( "g_pStatic_Attribute_Upgrade_Notice" )

	
	g_pStatic_Attribute_Upgrade_Notice:AddString
	{
		-- MSG 			= "",		--듀얼속성
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(213,113)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
	g_pStatic_Attribute_Upgrade_Notice:AddString
	{
		MSG 			= STR_ID_1236,		--엘의 조각 60개 필요!
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(213,113)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	


------- 엘의조각 수량 박스

g_pStatic_item_soket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_soket )
g_pStatic_item_soket:SetName( "g_pStatic_item_soket" )



g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(247,186)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
	
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box1:SetPoint
{
    ADD_SIZE_X = 76,
	"LEFT_TOP		= D3DXVECTOR2(252,186)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	

g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(329,186)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(84,251)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
	
g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box2:SetPoint
{
    ADD_SIZE_X = 76,
	"LEFT_TOP		= D3DXVECTOR2(89,251)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	

g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(166,251)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(247,251)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
	
g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box3:SetPoint
{
    ADD_SIZE_X = 76,
	"LEFT_TOP		= D3DXVECTOR2(252,251)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	

g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(329,251)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box4 )

g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(84,316)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
	
g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box4 )

g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box4:SetPoint
{
    ADD_SIZE_X = 76,
	"LEFT_TOP		= D3DXVECTOR2(89,316)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	

g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box4 )

g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(166,316)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box5 )

g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(247,316)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
	
g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box5 )

g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box5:SetPoint
{
    ADD_SIZE_X = 76,
	"LEFT_TOP		= D3DXVECTOR2(252,316)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	

g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box5 )

g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(329,316)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box6 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box6 )

g_pPicture_box6:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(84,381)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
	
g_pPicture_box6 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box6 )

g_pPicture_box6:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box6:SetPoint
{
    ADD_SIZE_X = 76,
	"LEFT_TOP		= D3DXVECTOR2(89,381)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	

g_pPicture_box6 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box6 )

g_pPicture_box6:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(166,381)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box7 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box7 )

g_pPicture_box7:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(247,381)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
	
g_pPicture_box7 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box7 )

g_pPicture_box7:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box7:SetPoint
{
    ADD_SIZE_X = 76,
	"LEFT_TOP		= D3DXVECTOR2(252,381)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	

g_pPicture_box7 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box7 )

g_pPicture_box7:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(329,381)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------엘의조각 종류

	g_pStatic_El_Stone_type = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_El_Stone_type )
	g_pStatic_El_Stone_type:SetName( "g_pStatic_El_Stone_type" )

	g_pStatic_El_Stone_type:AddString
	{
		MSG 			= STR_ID_1237,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(292-5,171)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}



	g_pStatic_El_Stone_type:AddString
	{
		MSG 			= STR_ID_1238,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(128,237)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	g_pStatic_El_Stone_type:AddString
	{
		MSG 			= STR_ID_1239,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		
		SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(128,302)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	g_pStatic_El_Stone_type:AddString
	{
		MSG 			= STR_ID_1240,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		
		SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(128,367)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	g_pStatic_El_Stone_type:AddString
	{
		MSG 			= STR_ID_1241,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		
		SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(292,237)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}




	g_pStatic_El_Stone_type:AddString
	{
		MSG 			= STR_ID_1242,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		
		SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(292,302)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	g_pStatic_El_Stone_type:AddString
	{
		MSG 			= STR_ID_1243,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		
		SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(292,367)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
	
	
--------    곱하기	
	
	g_pStatic_double = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_double )
	g_pStatic_double:SetName( "g_pStatic_double" )

	g_pStatic_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(255,190)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
		g_pStatic_double = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_double )
	g_pStatic_double:SetName( "g_pStatic_double" )

	g_pStatic_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(91,255)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
			g_pStatic_double = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_double )
	g_pStatic_double:SetName( "g_pStatic_double" )

	g_pStatic_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(91,255+65)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
				g_pStatic_double = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_double )
	g_pStatic_double:SetName( "g_pStatic_double" )

	g_pStatic_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(91,255+65+65)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
	
			g_pStatic_double = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_double )
	g_pStatic_double:SetName( "g_pStatic_double" )

	g_pStatic_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(91+163,255)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
			g_pStatic_double = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_double )
	g_pStatic_double:SetName( "g_pStatic_double" )

	g_pStatic_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(91+163,255+65)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
				g_pStatic_double = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_double )
	g_pStatic_double:SetName( "g_pStatic_double" )

	g_pStatic_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(91+163,255+65+65)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
	
	
	----------------엘의조각 수량

	g_pStatic_El_Stone_Num1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_El_Stone_Num1 )
	g_pStatic_El_Stone_Num1:SetName( "g_pStatic_El_Stone_Num" )

	-- 무속성 
	g_pStatic_El_Stone_Num1:AddString
	{
		-- MSG 			= "   200(20)",
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(317,190)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
	g_pStatic_El_Stone_Num1:AddString
	{
		-- MSG 			= "   200(20)",
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(155,256)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	g_pStatic_El_Stone_Num1:AddString
	{
		-- MSG 			= "   200(20)",
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(155,321)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	g_pStatic_El_Stone_Num1:AddString
	{
		-- MSG 			= "   200(20)",
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(155,386)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
	g_pStatic_El_Stone_Num1:AddString
	{
		-- MSG 			= "   200(20)",
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(318,256)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	                                                
	g_pStatic_El_Stone_Num1:AddString
	{
		-- MSG 			= "   200(20)",
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(318,321)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	                                           
   	g_pStatic_El_Stone_Num1:AddString
	{
		-- MSG 			= "   200(20)",
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
	
		SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(318,386)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
-----------회색창 

g_pStatic_Gray_Back_Slot3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Gray_Back_Slot3 )
g_pStatic_Gray_Back_Slot3:SetName( "g_pStatic_Gray_Back_Slot3" )



g_pPicture_gray_Window_slot3 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot3:AddPicture( g_pPicture_gray_Window_slot3 )

g_pPicture_gray_Window_slot3:SetTex( "DLG_UI_Common_Texture03.tga", "window1_1" )

g_pPicture_gray_Window_slot3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,426)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_gray_Window_slot3 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot3:AddPicture( g_pPicture_gray_Window_slot3 )

g_pPicture_gray_Window_slot3:SetTex( "DLG_UI_Common_Texture03.tga", "window1_2" )

g_pPicture_gray_Window_slot3:SetPoint
{

     ADD_SIZE_X = 182,
	"LEFT_TOP		= D3DXVECTOR2(21,426)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicture_gray_Window_slot3 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot3:AddPicture( g_pPicture_gray_Window_slot3 )

g_pPicture_gray_Window_slot3:SetTex( "DLG_UI_Common_Texture03.tga", "window1_3" )

g_pPicture_gray_Window_slot3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(204,426)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


---------------------방어구일 경우 안보일 부분 ----------------------------------

g_pStatic_Gray_Back_Slot4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Gray_Back_Slot4 )
g_pStatic_Gray_Back_Slot4:SetName( "g_pStatic_Gray_Back_Slot4" )



g_pPicture_gray_Window_slot4 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot4:AddPicture( g_pPicture_gray_Window_slot4 )

g_pPicture_gray_Window_slot4:SetTex( "DLG_UI_Common_Texture03.tga", "window1_1" )

g_pPicture_gray_Window_slot4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,473)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_gray_Window_slot4 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot4:AddPicture( g_pPicture_gray_Window_slot4 )

g_pPicture_gray_Window_slot4:SetTex( "DLG_UI_Common_Texture03.tga", "window1_2" )

g_pPicture_gray_Window_slot4:SetPoint
{

    ADD_SIZE_X = 182,
	"LEFT_TOP		= D3DXVECTOR2(21,473)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicture_gray_Window_slot4 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot4:AddPicture( g_pPicture_gray_Window_slot4 )

g_pPicture_gray_Window_slot4:SetTex( "DLG_UI_Common_Texture03.tga", "window1_3" )

g_pPicture_gray_Window_slot4:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(204,473)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
-----------------------방어구일 경우 안보일 부분 (여기까지)-----------------------------------------






---------------------슬롯이 세개일 경우 보일 부분 ----------------------------------

g_pStatic_Gray_Back_Slot5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Gray_Back_Slot5 )
g_pStatic_Gray_Back_Slot5:SetName( "g_pStatic_Gray_Back_Slot5" )



g_pPicture_gray_Window_slot5 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot5:AddPicture( g_pPicture_gray_Window_slot5 )

g_pPicture_gray_Window_slot5:SetTex( "DLG_UI_Common_Texture03.tga", "window1_1" )

g_pPicture_gray_Window_slot5:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,473+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_gray_Window_slot5 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot5:AddPicture( g_pPicture_gray_Window_slot5 )

g_pPicture_gray_Window_slot5:SetTex( "DLG_UI_Common_Texture03.tga", "window1_2" )

g_pPicture_gray_Window_slot5:SetPoint
{

    ADD_SIZE_X = 182,
	"LEFT_TOP		= D3DXVECTOR2(21,473+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicture_gray_Window_slot5 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot5:AddPicture( g_pPicture_gray_Window_slot5 )

g_pPicture_gray_Window_slot5:SetTex( "DLG_UI_Common_Texture03.tga", "window1_3" )

g_pPicture_gray_Window_slot5:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(204,473+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


--------------------파란색 바
g_pStatic_Bar = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Bar )
g_pStatic_Bar:SetName( "g_pStatic_Bar" )


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Bar:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 340,
	"LEFT_TOP		= D3DXVECTOR2(9,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStatic_Bar = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Bar )
g_pStatic_Bar:SetName( "g_pStatic_Bar" )


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Bar:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 340,
	"LEFT_TOP		= D3DXVECTOR2(9,420)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Bar:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 56,
	"LEFT_TOP		= D3DXVECTOR2(79,78)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Bar:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 54,
	"LEFT_TOP		= D3DXVECTOR2(78,155)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Bar:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 54,
	"LEFT_TOP		= D3DXVECTOR2(78,221)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Bar:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 54,
	"LEFT_TOP		= D3DXVECTOR2(241,221)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Bar:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 54,
	"LEFT_TOP		= D3DXVECTOR2(78,286)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Bar:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 54,
	"LEFT_TOP		= D3DXVECTOR2(241,286)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Bar:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 54,
	"LEFT_TOP		= D3DXVECTOR2(78,351)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Bar:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 54,
	"LEFT_TOP		= D3DXVECTOR2(241,351)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}






-- 첫번째 슬롯
------------------------EMPTY 

	g_pStatic_Empty_Slot = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Empty_Slot )
	g_pStatic_Empty_Slot:SetName( "g_pStatic_Empty_Slot1" )


	g_pStatic_Empty_Slot:AddString
	{
		MSG 			= STR_ID_2605,
		FONT_INDEX		= XUF_DODUM_20_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(82,434)",
		"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}



	g_pStatic_Empty_Slot:AddString
	{
		MSG 			= STR_ID_1244,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(51,453)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	
	


---------------------    적용된 속성  --------------------------
-------------------------------------------------------------------------	
	
g_pStatic_fire1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_fire1 )
g_pStatic_fire1:SetName( "g_pStatic_Enchant1" )

g_pStatic_fire1:AddString
{
	MSG 			= STR_ID_112,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(115,437)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	
		
	
-- 두번째 슬롯	

	g_pStatic_Empty_Slot = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Empty_Slot )
	g_pStatic_Empty_Slot:SetName( "g_pStatic_Empty_Slot2" )

	
	g_pStatic_Empty_Slot:AddString
	{
		MSG 			= STR_ID_2605,
		FONT_INDEX		= XUF_DODUM_20_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(82,480)",
		"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	g_pStatic_Empty_Slot:AddString
	{
		MSG 			= STR_ID_1244,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(51,499)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	


---------------------    적용된 속성  --------------------------
-------------------------------------------------------------------------	
	
g_pStatic_fire2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_fire2 )
g_pStatic_fire2:SetName( "g_pStatic_Enchant2" )

g_pStatic_fire2:AddString
{
	MSG 			= STR_ID_112,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(115,484)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	
	


-- 세번째 슬롯
------------------------슬롯이 세줄일 경우 보일 부분 EMPTY  

	g_pStatic_Empty_Slot3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Empty_Slot3 )
	g_pStatic_Empty_Slot3:SetName( "g_pStatic_Empty_Slot3" )
	
	
	
	g_pStatic_Empty_Slot3:AddString
	{
		MSG 			= STR_ID_2605,
		FONT_INDEX		= XUF_DODUM_20_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(82,480+46)",
		"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	g_pStatic_Empty_Slot3:AddString
	{
		MSG 			= STR_ID_1244,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(51,499+46)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}




---------------------    적용된 속성  --------------------------
-------------------------------------------------------------------------	
	
g_pStatic_fire3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_fire3 )
g_pStatic_fire3:SetName( "g_pStatic_Enchant3" )

g_pStatic_fire3:AddString
{
	MSG 			= STR_ID_112,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(115,484+46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	







----------------한줄 내용 : 속성이름

	g_pStatic_Attribute_Notice = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Attribute_Notice )
	g_pStatic_Attribute_Notice:SetName( "g_pStatic_First_Attribute_Notice" )

	-- 랜덤 속성

	g_pStatic_Attribute_Notice:AddString
	{
		MSG 			= STR_ID_933,
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(129+30,174 + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
	
	

	g_pStatic_Attribute_Notice:AddString
	{
		MSG 			= STR_ID_112,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(128,223)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
		g_pStatic_Attribute_Notice:AddString
	{
		MSG 			= STR_ID_113,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(127,288)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	

	g_pStatic_Attribute_Notice:AddString
	{
		MSG 			= STR_ID_114,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(127,353)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	g_pStatic_Attribute_Notice:AddString
	{
		MSG 			= STR_ID_115,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(291,223)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	g_pStatic_Attribute_Notice:AddString
	{
		MSG 			= STR_ID_116,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(293,288)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
		

	g_pStatic_Attribute_Notice:AddString
	{
		MSG 			= STR_ID_117,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(292,353)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	


	
g_pPictureDisable1 = g_pUIDialog:CreatePicture()
g_pStatic_item_attribute:AddPicture( g_pPictureDisable1 )

g_pPictureDisable1:SetTex( "DLG_UI_Common_Texture02.tga", "remove_noactive" )

g_pPictureDisable1:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(215,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}	


--------------------- 방어구일 경우 안보여야 하는 부분----------------------------
g_pStatic_remove_noactive2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_remove_noactive2 )
g_pStatic_remove_noactive2:SetName( "g_pStatic_remove_noactive2" )

g_pPictureDisable2 = g_pUIDialog:CreatePicture()
g_pStatic_remove_noactive2:AddPicture( g_pPictureDisable2 )

g_pPictureDisable2:SetTex( "DLG_UI_Common_Texture02.tga", "remove_noactive" )

g_pPictureDisable2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(215,474)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}







---------속성 제거  버튼

g_pButton_Remove_El_Slot1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Remove_El_Slot1 )
g_pButton_Remove_El_Slot1:SetName( "Button_Remove1" )
g_pButton_Remove_El_Slot1:SetNormalTex( "DLG_UI_BUTTON05.tga", "button_Remove_Normal" )

g_pButton_Remove_El_Slot1:SetOverTex( "DLG_UI_BUTTON05.tga", "button_Remove_over" )

g_pButton_Remove_El_Slot1:SetDownTex( "DLG_UI_BUTTON05.tga", "button_Remove_over" )

g_pButton_Remove_El_Slot1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(215,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_El_Slot1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(212,424)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_El_Slot1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(212+1,424+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Remove_El_Slot1:AddDummyInt(0)
g_pButton_Remove_El_Slot1:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_REMOVE"] )



g_pButton_Remove_El_Slot2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Remove_El_Slot2 )
g_pButton_Remove_El_Slot2:SetName( "Button_Remove2" )

g_pButton_Remove_El_Slot2:SetNormalTex( "DLG_UI_Button05.tga", "button_Remove_Normal" )

g_pButton_Remove_El_Slot2:SetOverTex( "DLG_UI_Button05.tga", "button_Remove_Over" )

g_pButton_Remove_El_Slot2:SetDownTex( "DLG_UI_Button05.tga", "button_Remove_Over" )



g_pButton_Remove_El_Slot2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(215,474)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_El_Slot2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(212,471)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_El_Slot2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(212+1,471+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_El_Slot2:AddDummyInt(1)
g_pButton_Remove_El_Slot2:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_REMOVE"] )








--------------------- 슬롯이 세줄일 경우 보이는 부분----------------------------
g_pStatic_Extra_Button = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Extra_Button )
g_pStatic_Extra_Button:SetName( "g_pStatic_Extra_Button" )

g_pPictureDisable2 = g_pUIDialog:CreatePicture()
g_pStatic_Extra_Button:AddPicture( g_pPictureDisable2 )

g_pPictureDisable2:SetTex( "DLG_UI_Common_Texture02.tga", "remove_noactive" )

g_pPictureDisable2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(215,474+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pButton_Remove_El_Slot3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Remove_El_Slot3 )
g_pButton_Remove_El_Slot3:SetName( "Button_Remove3" )

g_pButton_Remove_El_Slot3:SetNormalTex( "DLG_UI_Button05.tga", "button_Remove_Normal" )

g_pButton_Remove_El_Slot3:SetOverTex( "DLG_UI_Button05.tga", "button_Remove_Over" )

g_pButton_Remove_El_Slot3:SetDownTex( "DLG_UI_Button05.tga", "button_Remove_Over" )



g_pButton_Remove_El_Slot3:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(215,474+47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_El_Slot3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(212,471+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_El_Slot3:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(212+1,471+47+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_El_Slot3:AddDummyInt(2)
g_pButton_Remove_El_Slot3:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ATTRIBUTE_ITEM_REMOVE"] )

-------------------요기까지









-- 속성석 아이콘

g_pStatic_icon_attribute = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_icon_attribute )
g_pStatic_icon_attribute:SetName( "g_pStatic_icon_attribute" )

-----------랜덤

g_pPictureIcon1 = g_pUIDialog:CreatePicture()
g_pStatic_icon_attribute:AddPicture( g_pPictureIcon1 )

g_pPictureIcon1:SetTex( "DLG_Common_New_Texture66.tga", "RANDOM" )

g_pPictureIcon1:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(29,160)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


---화염

g_pPictureIcon2 = g_pUIDialog:CreatePicture()
g_pStatic_icon_attribute:AddPicture( g_pPictureIcon2 )

g_pPictureIcon2:SetTex( "DLG_Common_New_Texture66.tga", "FIRE" )

g_pPictureIcon2:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(21,225)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--바람

g_pPictureIcon3 = g_pUIDialog:CreatePicture()
g_pStatic_icon_attribute:AddPicture( g_pPictureIcon3 )

g_pPictureIcon3:SetTex( "DLG_Common_New_Texture66.tga", "WIND" )

g_pPictureIcon3:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(188,227)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--얼음

g_pPictureIcon4 = g_pUIDialog:CreatePicture()
g_pStatic_icon_attribute:AddPicture( g_pPictureIcon4 )

g_pPictureIcon4:SetTex( "DLG_Common_New_Texture66.tga", "ICE" )

g_pPictureIcon4:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(25,290)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--빛

g_pPictureIcon5 = g_pUIDialog:CreatePicture()
g_pStatic_icon_attribute:AddPicture( g_pPictureIcon5 )

g_pPictureIcon5:SetTex( "DLG_Common_New_Texture66.tga", "LIGHT" )

g_pPictureIcon5:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(188,289)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


--자연

g_pPictureIcon6 = g_pUIDialog:CreatePicture()
g_pStatic_icon_attribute:AddPicture( g_pPictureIcon6 )

g_pPictureIcon6:SetTex( "DLG_Common_New_Texture66.tga", "NATURE" )

g_pPictureIcon6:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(23,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--어둠

g_pPictureIcon7 = g_pUIDialog:CreatePicture()
g_pStatic_icon_attribute:AddPicture( g_pPictureIcon7 )

g_pPictureIcon7:SetTex( "DLG_Common_New_Texture66.tga", "DARK" )

g_pPictureIcon7:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(187,353)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}	





