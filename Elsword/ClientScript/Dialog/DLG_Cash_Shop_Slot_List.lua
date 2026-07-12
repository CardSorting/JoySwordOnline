-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_MAIN_NEW"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= 0,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2(373 + 6,138 + 7)",
	"SIZE		= D3DXVECTOR2( 71, 71 )",

}
pItemSlot:SetClickable( false )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_MAIN_NEW"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= 1,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2(582 + 6,138 + 7)",
	"SIZE		= D3DXVECTOR2( 71, 71 )",
}
pItemSlot:SetClickable( false )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_MAIN_NEW"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= 2,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2(797 + 6,138 + 7)",
	"SIZE		= D3DXVECTOR2( 71, 71 )",
}
pItemSlot:SetClickable( false )



---------------------------------------------------------------------------------------------------


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_MAIN_HOT"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= 0,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2(373 + 6,303 + 7)",
	"SIZE		= D3DXVECTOR2( 71, 71 )",

}
pItemSlot:SetClickable( false )


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_MAIN_HOT"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= 1,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2(582 + 6,303 + 7)",
	"SIZE		= D3DXVECTOR2( 71, 71 )",
}
pItemSlot:SetClickable( false )


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_MAIN_HOT"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= 2,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2(797 + 6,303 + 7)",
	"SIZE		= D3DXVECTOR2( 71, 71 )",
}
pItemSlot:SetClickable( false )


---------------------------------------------------------------------------------------------------



pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_MAIN_RECOMMEND"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= 0,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2(373 + 6,469 + 7)",
	"SIZE		= D3DXVECTOR2( 71, 71 )",

}
pItemSlot:SetClickable( false )


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_MAIN_RECOMMEND"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= 1,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2(582 + 6,469 + 7)",
	"SIZE		= D3DXVECTOR2( 71, 71 )",
}
pItemSlot:SetClickable( false )


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_MAIN_RECOMMEND"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= 2,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2(797 + 6,469 + 7)",
	"SIZE		= D3DXVECTOR2( 71, 71 )",
}
pItemSlot:SetClickable( false )

slotID = 0
for i = 0, 1 do

	for j = 0, 7 do
		
			pItemSlot = g_pCX2SlotManager:CreateItemSlot()
			g_pCX2SlotManager:AddSlot( pItemSlot )
			
			tempX = 359 + (j * 43)
			tempY = 614 + (i * 43)
			
			pItemSlot:SetSlotData
			{
				ENABLE		= TRUE,
				SHOW		= TRUE,
				
				SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_DEPOSIT"],
				
				SORT_TYPE	= 0,
				SLOT_ID		= slotID,
				
				FASHION		= FALSE,
				EQUIP_POS	= EQIP_POSITION["EP_NONE"],
				
				"POS		= D3DXVECTOR2( tempX ,tempY )",
				"SIZE		= D3DXVECTOR2( 42, 42 )",
			}
			pItemSlot:SetClickable( false )

			slotID = slotID + 1

	end
	
end


slotID = 0
for i = 0, 1 do

	for j = 0, 4 do
		
			pItemSlot = g_pCX2SlotManager:CreateItemSlot()
			g_pCX2SlotManager:AddSlot( pItemSlot )
			
			tempX = 500 + 6 + (i * 250)
			tempY = 115 + 6 + (j * 89)
			
			pItemSlot:SetSlotData
			{
				ENABLE		= TRUE,
				SHOW		= TRUE,
				
				SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_SUB"],
				
				SORT_TYPE	= 0,
				SLOT_ID		= slotID,
				
				FASHION		= FALSE,
				EQUIP_POS	= EQIP_POSITION["EP_NONE"],
				
				"POS		= D3DXVECTOR2( tempX ,tempY )",
				"SIZE		= D3DXVECTOR2( 71, 71 )",
			}
			pItemSlot:SetClickable( false )

			slotID = slotID + 1

	end
	
end



slotID = 0


for j = 0, 9 do

	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )
	
	tempX = 370 + 66
	tempY = 141 + 4 + (j * 85)
	
	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,
		
		SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_SUB_SPECIAL"],
		
		SORT_TYPE	= 0,
		SLOT_ID		= slotID,
		
		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_NONE"],
		
		"POS		= D3DXVECTOR2( tempX ,tempY )",
		"SIZE		= D3DXVECTOR2( 41, 41 )",
	}
	pItemSlot:SetClickable( false )

	slotID = slotID + 1

end
	











































-- 장착슬롯들

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_HAIR_FASHION"],
	
	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_HAIR"],
	
	"POS		= D3DXVECTOR2(7,134)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_959,
}
pItemSlot:SetClickable( false )




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_BODY_FASHION"],
	
	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_BODY"],
	
	"POS		= D3DXVECTOR2(7,177)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_960,
}
pItemSlot:SetClickable( false )






pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_LEG_FASHION"],
	
	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_LEG"],
	
	"POS		= D3DXVECTOR2(7,220)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_961,
}
pItemSlot:SetClickable( false )




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_HAND_FASHION"],
	
	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_HAND"],
	
	"POS		= D3DXVECTOR2(7,263)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_962,
}
pItemSlot:SetClickable( false )









pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_FOOT_FASHION"],
	
	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_FOOT"],
	
	"POS		= D3DXVECTOR2(7,306)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_963,
}
pItemSlot:SetClickable( false )







-- WEAPON_ACCESSARY_TEST
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_WEAPON"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_WEAPON"],
	
	"POS		= D3DXVECTOR2(50,90)",
	"SIZE		= D3DXVECTOR2( 32,32 )",
	
	SLOT_DESC	= STR_ID_964,
}
pItemSlot:SetClickable( false )





pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_WEAPON_HAND_FASHION"],
	
	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_WEAPON_HAND"],
	
	"POS		= D3DXVECTOR2(7,91)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_965,
}
pItemSlot:SetClickable( false )

-- SERV_NEW_ONE_PIECE_AVATAR_SLOT
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
 	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_ONEPIECE_FASHION"],
	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_ONEPIECE_FASHION"],
	"POS		= D3DXVECTOR2( 10,56 )",
	"SIZE		= D3DXVECTOR2( 33,33 )",
	SLOT_DESC	= STR_ID_28361,
}
pItemSlot:SetClickable( false )

	
	
	


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_FACE1"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_FACE1"],
	
	"POS		= D3DXVECTOR2(298,48)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_966,
}
pItemSlot:SetClickable( false )



pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_BODY"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_BODY"],
	
	"POS		= D3DXVECTOR2(298,177)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_967,
}
pItemSlot:SetClickable( false )



pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_FACE2"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_FACE2"],
	
	"POS		= D3DXVECTOR2(298,91)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_968,
}
pItemSlot:SetClickable( false )



pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_LEG"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_LEG"],
	
	"POS		= D3DXVECTOR2(298,220)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_969,
}
pItemSlot:SetClickable( false )


	
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_FACE3"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_FACE3"],
	
	"POS		= D3DXVECTOR2(298,134)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_970,
}
pItemSlot:SetClickable( false )		

	

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_ARM"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_ARM"],
	
	"POS		= D3DXVECTOR2(298,263)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_971,
}
pItemSlot:SetClickable( false )



pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_RING"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_RING"],
	
	
	"POS		= D3DXVECTOR2(298,306)",
	"SIZE		= D3DXVECTOR2( 41,41 )",
	
	SLOT_DESC	= STR_ID_972,
}
pItemSlot:SetClickable( false )


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_NECKLESS"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_NECKLESS"],
	
	"POS		= D3DXVECTOR2(298,349)",
	"SIZE		= D3DXVECTOR2( 41,41 )",

	SLOT_DESC	= STR_ID_973,
}
pItemSlot:SetClickable( false )




--24, 502

slotID = 0
tempX = 0
tempY = 0

for i = 0, 2 do

	for j = 0, 6 do
		
			pItemSlot = g_pCX2SlotManager:CreateItemSlot()
			g_pCX2SlotManager:AddSlot( pItemSlot )
			
			tempX = 24 +  (j * 43)
			tempY = 502 + (i * 43)
			
			pItemSlot:SetSlotData
			{
				ENABLE		= TRUE,
				SHOW		= TRUE,
				
				SLOT_TYPE	= SLOT_TYPE["ST_CASH_SHOP_CHOICED"],
				
				SORT_TYPE	= 0,
				SLOT_ID		= slotID,
				
				FASHION		= FALSE,
				EQUIP_POS	= EQIP_POSITION["EP_NONE"],

				
				"POS		= D3DXVECTOR2( tempX ,tempY )",
				"SIZE		= D3DXVECTOR2( 41, 41 )",
			}
			pItemSlot:SetClickable( false )

			slotID = slotID + 1

	end
	
end


	


