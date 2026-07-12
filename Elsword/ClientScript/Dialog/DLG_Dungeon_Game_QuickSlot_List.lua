-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




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
	
	"POS		= D3DXVECTOR2( 14, 700-10 )",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_981,
}
pItemSlot:SetClickable( false )

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
	
	"POS		= D3DXVECTOR2( 14 + 58, 700-10 )",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_981,
}
pItemSlot:SetClickable( false )



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
	
	"POS		= D3DXVECTOR2( 14 + 58 + 58, 700-10)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_981,
}
pItemSlot:SetClickable( false )


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
	
	"POS		= D3DXVECTOR2(194, 700)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_981,
}
pItemSlot:SetClickable( false )




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
	
	"POS		= D3DXVECTOR2(254,700)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_981,
}
pItemSlot:SetClickable( false )

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
	
	"POS		= D3DXVECTOR2(314,700)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
	
	SLOT_DESC	= STR_ID_981,
}
pItemSlot:SetClickable( false )

