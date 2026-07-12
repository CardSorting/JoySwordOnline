-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Inventory_Window" )
g_pUIDialog:SetPos( 0, 40 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_SlotPosY = -22

----------------------------------------------------------------------------------------------------
-- 인벤토리 슬롯 관련
----------------------------------------------------------------------------------------------------

slotID = 0
tempX = 0
tempY = 0

for i = 0, 3 do

	for j = 0, 5 do

		if ( i == 5 ) and ( j == 5 ) then
		
		else
		
			pItemSlot = g_pCX2SlotManager:CreateItemSlot()
			g_pShopInventory:AddSlot( pItemSlot )
			
			tempX = 488 + (j * 83)
			tempY = 202 + (i * 82)
			
			pItemSlot:SetSlotData
			{
				ENABLE		= TRUE,
				SHOW		= TRUE,
				
				SLOT_TYPE	= SLOT_TYPE["ST_INVENTORY"],
				
				SORT_TYPE	= 0,
				SLOT_ID		= slotID,
				
				FASHION		= FALSE,
				EQUIP_POS	= EQIP_POSITION["EP_NONE"],
				
				"POS		= D3DXVECTOR2( tempX, tempY + g_SlotPosY )",
				"SIZE		= D3DXVECTOR2( 77, 77 )",
			}

			slotID = slotID + 1
		
		end

	end
	
end

----------------------------------------------------------------------------------------------------
-- 다이얼로그 관련
----------------------------------------------------------------------------------------------------

g_pStaticUser_Inventory_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Inventory_Window )
g_pStaticUser_Inventory_Window:SetName( "Inventory_Window" )


g_pPictureUser_Inventory_Window1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Window1 )

g_pPictureUser_Inventory_Window1:SetTex( "DLG_Inventory_Window.TGA", "Category_Tap1" )

g_pPictureUser_Inventory_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(479,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_Inventory_Window2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Window2 )

g_pPictureUser_Inventory_Window2:SetTex( "DLG_Inventory_Window.TGA", "Category_Tap2" )

g_pPictureUser_Inventory_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(873,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0
}


g_pPictureUser_Inventory_Window3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Window3 )

g_pPictureUser_Inventory_Window3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Window1" )

g_pPictureUser_Inventory_Window3:SetPoint
{
     USE_TEXTURE_SIZE	= FALSE,
     
	"LEFT_TOP		= D3DXVECTOR2(479,116)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(489,648)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Window4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Window4 )

g_pPictureUser_Inventory_Window4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Window2" )

g_pPictureUser_Inventory_Window4:SetPoint
{
     USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(977,116)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(992,648)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Window5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Window5 )

g_pPictureUser_Inventory_Window5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Window3" )

g_pPictureUser_Inventory_Window5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(479,648)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Window6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Window6 )

g_pPictureUser_Inventory_Window6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Window4" )

g_pPictureUser_Inventory_Window6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(977,648)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Window7 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Window7 )

g_pPictureUser_Inventory_Window7:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Window5" )

g_pPictureUser_Inventory_Window7:SetPoint
{
      USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(489,648)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(977,656)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Window8 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Window8 )

g_pPictureUser_Inventory_Window8:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Window6" )

g_pPictureUser_Inventory_Window8:SetPoint
{
      USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(483,116)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(977,648)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------Inventory Menu-------------
g_pRadioButtonUnit_Inventory_Accessory = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_Inventory_Accessory )

g_pRadioButtonUnit_Inventory_Accessory:SetFixOverByCheck( true )
g_pRadioButtonUnit_Inventory_Accessory:SetShowOffBGByCheck( true )

g_pRadioButtonUnit_Inventory_Accessory:SetName( "RadioButtonUnit_Inventory_Accessory" )

g_pRadioButtonUnit_Inventory_Accessory:SetNormalTex( "DLG_Inventory_Window.TGA", "Accessory_Normal" )


g_pRadioButtonUnit_Inventory_Accessory:SetOverTex( "DLG_Inventory_Window.TGA", "Accessory_Over" )


g_pRadioButtonUnit_Inventory_Accessory:SetCheckedTex( "DLG_Inventory_Window.TGA", "Accessory_Down" )


g_pRadioButtonUnit_Inventory_Accessory:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(567-11,130 - 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Accessory:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(565-11,128 - 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Accessory:SetRBPoint
{


    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(562,123 - 46)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(616,160 - 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Accessory:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(548,109 - 46)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Accessory:SetGroupID( 1 )
g_pRadioButtonUnit_Inventory_Accessory:SetCustomMsgChecked( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_INVENTORY_TAB_CHANGED"] )

g_pRadioButtonUnit_Inventory_Equip = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_Inventory_Equip )

g_pRadioButtonUnit_Inventory_Equip:SetFixOverByCheck( true )
g_pRadioButtonUnit_Inventory_Equip:SetShowOffBGByCheck( true )

g_pRadioButtonUnit_Inventory_Equip:SetName( "RadioButtonUnit_Inventory_Equip" )

g_pRadioButtonUnit_Inventory_Equip:SetNormalTex( "DLG_Inventory_Window.TGA", "Equip_Normal" )


g_pRadioButtonUnit_Inventory_Equip:SetOverTex( "DLG_Inventory_Window.TGA", "Equip_Over" )


g_pRadioButtonUnit_Inventory_Equip:SetCheckedTex( "DLG_Inventory_Window.TGA", "Equip_Down" )


g_pRadioButtonUnit_Inventory_Equip:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(496,130- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Equip:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(494,128- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Equip:SetRBPoint
{


    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(493,123- 46)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(544,160- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Equip:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(479,109- 46)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Equip:SetGroupID( 1 )
g_pRadioButtonUnit_Inventory_Equip:SetCustomMsgChecked( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_INVENTORY_TAB_CHANGED"] )





g_pRadioButtonUnit_Inventory_UseItem = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_Inventory_UseItem )

g_pRadioButtonUnit_Inventory_UseItem:SetFixOverByCheck( true )
g_pRadioButtonUnit_Inventory_UseItem:SetShowOffBGByCheck( true )

g_pRadioButtonUnit_Inventory_UseItem:SetName( "RadioButtonUnit_Inventory_UseItem" )

g_pRadioButtonUnit_Inventory_UseItem:SetNormalTex( "DLG_Inventory_Window.TGA", "UseItem_Normal" )


g_pRadioButtonUnit_Inventory_UseItem:SetOverTex( "DLG_Inventory_Window.TGA", "UseItem_Over" )


g_pRadioButtonUnit_Inventory_UseItem:SetCheckedTex( "DLG_Inventory_Window.TGA", "UseItem_Down" )


g_pRadioButtonUnit_Inventory_UseItem:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(639,130- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_UseItem:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(637,128- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_UseItem:SetRBPoint
{



    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(635,123- 46)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(688,160- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_UseItem:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(620,109- 46)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_UseItem:SetGroupID( 1 )
g_pRadioButtonUnit_Inventory_UseItem:SetCustomMsgChecked( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_INVENTORY_TAB_CHANGED"] )



g_pRadioButtonUnit_Inventory_Material = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_Inventory_Material )

g_pRadioButtonUnit_Inventory_Material:SetFixOverByCheck( true )
g_pRadioButtonUnit_Inventory_Material:SetShowOffBGByCheck( true )

g_pRadioButtonUnit_Inventory_Material:SetName( "RadioButtonUnit_Inventory_Material" )

g_pRadioButtonUnit_Inventory_Material:SetNormalTex( "DLG_Inventory_Window.TGA", "Material_Normal" )


g_pRadioButtonUnit_Inventory_Material:SetOverTex( "DLG_Inventory_Window.TGA", "Material_Over" )


g_pRadioButtonUnit_Inventory_Material:SetCheckedTex( "DLG_Inventory_Window.TGA", "Material_Down" )


g_pRadioButtonUnit_Inventory_Material:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(711,130- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Material:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709,128- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Material:SetRBPoint
{


    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(706,123- 46)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(759,160- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Material:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(692,109- 46)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Material:SetGroupID( 1 )
g_pRadioButtonUnit_Inventory_Material:SetCustomMsgChecked( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_INVENTORY_TAB_CHANGED"] )



g_pRadioButtonUnit_Inventory_Card = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_Inventory_Card )

g_pRadioButtonUnit_Inventory_Card:SetFixOverByCheck( true )
g_pRadioButtonUnit_Inventory_Card:SetShowOffBGByCheck( true )

g_pRadioButtonUnit_Inventory_Card:SetName( "RadioButtonUnit_Inventory_Card" )

g_pRadioButtonUnit_Inventory_Card:SetNormalTex( "DLG_Inventory_Window.TGA", "Card_Normal" )


g_pRadioButtonUnit_Inventory_Card:SetOverTex( "DLG_Inventory_Window.TGA", "Card_Over" )


g_pRadioButtonUnit_Inventory_Card:SetCheckedTex( "DLG_Inventory_Window.TGA", "Card_Down" )


g_pRadioButtonUnit_Inventory_Card:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(782,130- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Card:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(780,128- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Card:SetRBPoint
{

    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(778,123- 46)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(831,160- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Card:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(763,109- 46)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Card:SetGroupID( 1 )
g_pRadioButtonUnit_Inventory_Card:SetCustomMsgChecked( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_INVENTORY_TAB_CHANGED"] )




g_pRadioButtonUnit_Inventory_Special = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_Inventory_Special )

g_pRadioButtonUnit_Inventory_Special:SetFixOverByCheck( true )
g_pRadioButtonUnit_Inventory_Special:SetShowOffBGByCheck( true )

g_pRadioButtonUnit_Inventory_Special:SetName( "RadioButtonUnit_Inventory_Special" )

g_pRadioButtonUnit_Inventory_Special:SetNormalTex( "DLG_Inventory_Window.TGA", "Special_Normal" )


g_pRadioButtonUnit_Inventory_Special:SetOverTex( "DLG_Inventory_Window.TGA", "Special_Over" )


g_pRadioButtonUnit_Inventory_Special:SetCheckedTex( "DLG_Inventory_Window.TGA", "Special_Down" )


g_pRadioButtonUnit_Inventory_Special:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(858,130- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Special:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(856,128- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Special:SetRBPoint
{
   USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(849,123- 46)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(903,160- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Special:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(835,109- 46)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Special:SetGroupID( 1 )
g_pRadioButtonUnit_Inventory_Special:SetCustomMsgChecked( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_INVENTORY_TAB_CHANGED"] )



g_pRadioButtonUnit_Inventory_Avatar = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_Inventory_Avatar )

g_pRadioButtonUnit_Inventory_Avatar:SetFixOverByCheck( true )
g_pRadioButtonUnit_Inventory_Avatar:SetShowOffBGByCheck( true )

g_pRadioButtonUnit_Inventory_Avatar:SetName( "RadioButtonUnit_Inventory_Avatar" )

g_pRadioButtonUnit_Inventory_Avatar:SetNormalTex( "DLG_Inventory_Window.TGA", "Avatar_Normal" )


g_pRadioButtonUnit_Inventory_Avatar:SetOverTex( "DLG_Inventory_Window.TGA", "Avatar_Over" )


g_pRadioButtonUnit_Inventory_Avatar:SetCheckedTex( "DLG_Inventory_Window.TGA", "Avatar_Down" )


g_pRadioButtonUnit_Inventory_Avatar:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(929,131- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Avatar:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(925,130- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Avatar:SetRBPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(918,123- 46)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(980,160- 46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Avatar:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(902,109- 46)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_Inventory_Avatar:SetGroupID( 1 )
g_pRadioButtonUnit_Inventory_Avatar:SetCustomMsgChecked( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_INVENTORY_TAB_CHANGED"] )






--------SLOT-----------------------


g_pPictureUser_Inventory_Slot1_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_1 )

g_pPictureUser_Inventory_Slot1_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot1_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot1_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_2 )

g_pPictureUser_Inventory_Slot1_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot1_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot1_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_3 )

g_pPictureUser_Inventory_Slot1_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot1_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot1_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_4 )

g_pPictureUser_Inventory_Slot1_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot1_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot1_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_5 )

g_pPictureUser_Inventory_Slot1_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot1_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot1_6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_6 )

g_pPictureUser_Inventory_Slot1_6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot1_6:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(903,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Slot2_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_1 )

g_pPictureUser_Inventory_Slot2_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot2_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot2_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_2 )

g_pPictureUser_Inventory_Slot2_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot2_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot2_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_3 )

g_pPictureUser_Inventory_Slot2_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot2_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot2_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_4 )

g_pPictureUser_Inventory_Slot2_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot2_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot2_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_5 )

g_pPictureUser_Inventory_Slot2_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot2_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot2_6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_6 )

g_pPictureUser_Inventory_Slot2_6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot2_6:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(903,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_1 )

g_pPictureUser_Inventory_Slot3_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot3_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_2 )

g_pPictureUser_Inventory_Slot3_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot3_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_3 )

g_pPictureUser_Inventory_Slot3_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot3_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_4 )

g_pPictureUser_Inventory_Slot3_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot3_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_5 )

g_pPictureUser_Inventory_Slot3_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot3_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_6 )

g_pPictureUser_Inventory_Slot3_6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot3_6:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(903,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Slot4_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_1 )

g_pPictureUser_Inventory_Slot4_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot4_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot4_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_2 )

g_pPictureUser_Inventory_Slot4_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot4_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot4_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_3 )

g_pPictureUser_Inventory_Slot4_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot4_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot4_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_4 )

g_pPictureUser_Inventory_Slot4_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot4_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot4_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_5 )

g_pPictureUser_Inventory_Slot4_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot4_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot4_6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_6 )

g_pPictureUser_Inventory_Slot4_6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot4_6:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(903,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Slot5_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_1 )

g_pPictureUser_Inventory_Slot5_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot5_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot5_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_2 )

g_pPictureUser_Inventory_Slot5_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot5_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot5_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_3 )

g_pPictureUser_Inventory_Slot5_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot5_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot5_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_4 )

g_pPictureUser_Inventory_Slot5_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot5_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot5_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_5 )

g_pPictureUser_Inventory_Slot5_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot5_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot5_6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_6 )

g_pPictureUser_Inventory_Slot5_6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot5_6:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(903,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Slot6_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot6_1 )

g_pPictureUser_Inventory_Slot6_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot6_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,573 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot6_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot6_2 )

g_pPictureUser_Inventory_Slot6_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot6_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,573 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot6_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot6_3 )

g_pPictureUser_Inventory_Slot6_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot6_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,573 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot6_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot6_4 )

g_pPictureUser_Inventory_Slot6_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot6_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,573 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot6_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot6_5 )

g_pPictureUser_Inventory_Slot6_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot2" )

g_pPictureUser_Inventory_Slot6_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,573 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



























g_pPictureUser_Inventory_Slot1_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_1 )

g_pPictureUser_Inventory_Slot1_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot1_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot1_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_2 )

g_pPictureUser_Inventory_Slot1_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot1_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot1_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_3 )

g_pPictureUser_Inventory_Slot1_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot1_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot1_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_4 )

g_pPictureUser_Inventory_Slot1_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot1_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot1_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_5 )

g_pPictureUser_Inventory_Slot1_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot1_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot1_6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot1_6 )

g_pPictureUser_Inventory_Slot1_6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot1_6:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(903,162 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Slot2_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_1 )

g_pPictureUser_Inventory_Slot2_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot2_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot2_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_2 )

g_pPictureUser_Inventory_Slot2_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot2_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot2_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_3 )

g_pPictureUser_Inventory_Slot2_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot2_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot2_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_4 )

g_pPictureUser_Inventory_Slot2_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot2_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot2_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_5 )

g_pPictureUser_Inventory_Slot2_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot2_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot2_6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot2_6 )

g_pPictureUser_Inventory_Slot2_6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot2_6:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(903,244 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_1 )

g_pPictureUser_Inventory_Slot3_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot3_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_2 )

g_pPictureUser_Inventory_Slot3_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot3_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_3 )

g_pPictureUser_Inventory_Slot3_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot3_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_4 )

g_pPictureUser_Inventory_Slot3_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot3_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_5 )

g_pPictureUser_Inventory_Slot3_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot3_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot3_6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot3_6 )

g_pPictureUser_Inventory_Slot3_6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot3_6:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(903,326 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Slot4_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_1 )

g_pPictureUser_Inventory_Slot4_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot4_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot4_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_2 )

g_pPictureUser_Inventory_Slot4_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot4_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot4_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_3 )

g_pPictureUser_Inventory_Slot4_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot4_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot4_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_4 )

g_pPictureUser_Inventory_Slot4_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot4_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot4_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_5 )

g_pPictureUser_Inventory_Slot4_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot4_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot4_6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot4_6 )

g_pPictureUser_Inventory_Slot4_6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot4_6:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(903,409 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Slot5_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_1 )
g_pPictureUser_Inventory_Slot5_1:SetShow( false )

g_pPictureUser_Inventory_Slot5_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot5_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot5_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_2 )
g_pPictureUser_Inventory_Slot5_2:SetShow( false )

g_pPictureUser_Inventory_Slot5_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot5_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot5_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_3 )
g_pPictureUser_Inventory_Slot5_3:SetShow( false )

g_pPictureUser_Inventory_Slot5_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot5_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot5_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_4 )
g_pPictureUser_Inventory_Slot5_4:SetShow( false )

g_pPictureUser_Inventory_Slot5_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot5_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot5_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_5 )
g_pPictureUser_Inventory_Slot5_5:SetShow( false )

g_pPictureUser_Inventory_Slot5_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot5_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot5_6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot5_6 )
g_pPictureUser_Inventory_Slot5_6:SetShow( false )

g_pPictureUser_Inventory_Slot5_6:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot5_6:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(903,491 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Inventory_Slot6_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot6_1 )
g_pPictureUser_Inventory_Slot6_1:SetShow( false )

g_pPictureUser_Inventory_Slot6_1:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot6_1:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(488,573 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot6_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot6_2 )
g_pPictureUser_Inventory_Slot6_2:SetShow( false )


g_pPictureUser_Inventory_Slot6_2:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot6_2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(571,573 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot6_3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot6_3 )
g_pPictureUser_Inventory_Slot6_3:SetShow( false )

g_pPictureUser_Inventory_Slot6_3:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot6_3:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(654,573 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot6_4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot6_4 )
g_pPictureUser_Inventory_Slot6_4:SetShow( false )

g_pPictureUser_Inventory_Slot6_4:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot6_4:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(737,573 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Inventory_Slot6_5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Inventory_Window:AddPicture( g_pPictureUser_Inventory_Slot6_5 )
g_pPictureUser_Inventory_Slot6_5:SetShow( false )

g_pPictureUser_Inventory_Slot6_5:SetTex( "DLG_Inventory_Window.TGA", "Inventory_Slot1" )

g_pPictureUser_Inventory_Slot6_5:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(820,573 + g_SlotPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
