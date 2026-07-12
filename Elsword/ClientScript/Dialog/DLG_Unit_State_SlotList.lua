-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

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
	
	"POS		= D3DXVECTOR2(37 - 7,216 - 12 - 55 - 3)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_959,
}









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
	
	"POS		= D3DXVECTOR2(37 - 7,216 - 12)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_960,
}




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_BODY"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_BODY"],
	
	"POS		= D3DXVECTOR2(97 - 9,216 - 12)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_1161,
}


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
	
	"POS		= D3DXVECTOR2(37 - 7,216 - 12 + 55 + 3)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_961,
}



pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_LEG"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_LEG"],
	
	"POS		= D3DXVECTOR2(97 - 9,216 - 12 + 55 + 3)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_1162,
}



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
	
	"POS		= D3DXVECTOR2(37 - 7,216 - 12 + 110 + 6)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_962,
}






pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_HAND"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_HAND"],
	
	"POS		= D3DXVECTOR2(97 - 9,216 - 12 + 110 + 6)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_1163,
}





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
	
	"POS		= D3DXVECTOR2(37 - 7,216 - 12 + 165 + 9 )",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_963,
}




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_FOOT"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_FOOT"],
	
	"POS		= D3DXVECTOR2(97 - 9,216 - 12 + 165 + 9 )",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_1164,
}






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
	
	"POS		= D3DXVECTOR2(353 + 37,156 + 39 - 49)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_965,
}







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
	
	"POS		= D3DXVECTOR2(355,146)",
	"SIZE		= D3DXVECTOR2( 32, 32 )",
	
	SLOT_DESC	= STR_ID_1165,
}

	


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_WEAPON_HAND"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_WEAPON_HAND"],
	
	"POS		= D3DXVECTOR2(413 + 35,156 + 39 - 49)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_1166,
}



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
	
	"POS		= D3DXVECTOR2(353 + 37, 216 - 56 + 61)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_966,
}

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
	
	"POS		= D3DXVECTOR2(413 + 35, 216 - 56 + 61)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_967,
}


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
	
	"POS		= D3DXVECTOR2(353 + 37, 216 - 56 + 55 + 61 + 3)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_968,
}

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
	
	"POS		= D3DXVECTOR2(413 + 35, 216 - 56 + 55 + 61 + 3)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_969,
}

	
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
	
	"POS		= D3DXVECTOR2(353 + 37, 216 - 56 + 110 + 61 + 6)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_970,
}
			

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
	
	"POS		= D3DXVECTOR2(413 + 35, 216 - 56 + 110 + 61 + 6)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_971,
}


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
	
	
	"POS		= D3DXVECTOR2(353 + 37,  216 - 56 + 165 + 61 + 9)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_972,
}


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
	
	"POS		= D3DXVECTOR2(413 + 35, 216 - 56 + 165 + 61 + 9)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",

	SLOT_DESC	= STR_ID_973,
}
	




--[[
	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )
				
	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,
		
		SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
		
		SORT_TYPE	= SORT_TYPE["ST_E_SKILL"],
		SLOT_ID		= NOW_SKILL_SLOT_ID["NSSI_SKILL_1"],
		
		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_SKILL_1"],
		
		"POS		= D3DXVECTOR2(114,460)",
		"SIZE		= D3DXVECTOR2( 54, 54 )",
		
		SLOT_DESC	= STR_ID_1224,
	}


	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )
				
	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,
		
		SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
		
		SORT_TYPE	= SORT_TYPE["ST_E_SKILL"],
		SLOT_ID		= NOW_SKILL_SLOT_ID["NSSI_SKILL_2"],
		
		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_SKILL_2"],
		
		"POS		= D3DXVECTOR2(174,460)",
		"SIZE		= D3DXVECTOR2( 54, 54 )",
		
		SLOT_DESC	= STR_ID_1224,
	}


	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )
				
	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,
		
		SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
		
		SORT_TYPE	= SORT_TYPE["ST_E_SKILL"],
		SLOT_ID		= NOW_SKILL_SLOT_ID["NSSI_SKILL_3"],
		
		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_SKILL_3"],
		
		"POS		= D3DXVECTOR2(234,460)",
		"SIZE		= D3DXVECTOR2( 54, 54 )",
		
		SLOT_DESC	= STR_ID_1224,
	}
--]]







pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
	SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_1"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],
	
	"POS		= D3DXVECTOR2(174 + 212 - 6 - 55,520 + 75 - 2)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_981,
}


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
	SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_2"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],
	
	"POS		= D3DXVECTOR2(174 + 212 - 3,520 + 75 - 2)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_981,
}


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
	
	SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
	SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_3"],
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],
	
	"POS		= D3DXVECTOR2(174 + 212 + 55, 520 + 75 - 2)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_981,
}


--[[
	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )
				
	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,
		
		SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
		
		SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
		SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_4"],
		
		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],
		
		"POS		= D3DXVECTOR2(294,520)",
		"SIZE		= D3DXVECTOR2( 54, 54 )",
		
		SLOT_DESC	= STR_ID_981,
	}





	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )
				
	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,
		
		SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
		
		SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
		SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_5"],
		
		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],
		
		"POS		= D3DXVECTOR2(354,520)",
		"SIZE		= D3DXVECTOR2( 54, 54 )",
		
		SLOT_DESC	= STR_ID_981,
	}

	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )
				
	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,
		
		SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],
		
		SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
		SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_6"],
		
		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],
		
		"POS		= D3DXVECTOR2(414,520)",
		"SIZE		= D3DXVECTOR2( 54, 54 )",
		
		SLOT_DESC	= STR_ID_981,
	}
--]]

