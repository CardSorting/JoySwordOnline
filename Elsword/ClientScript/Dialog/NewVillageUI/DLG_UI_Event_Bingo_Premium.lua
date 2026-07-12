-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-------------------------------------------------------------------------------------
--빙고 보상

g_pStatic_Premium = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Premium )
g_pStatic_Premium:SetName( "Bingo_Premium_Picture" )
g_pStatic_Premium:SetShow(true)

--=====================================================================================================
--배경 픽쳐
--=====================================================================================================
--0 (세로줄, 우측 일반 보상 첫번 째 슬롯)
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_RIGHT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440,344)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--1
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_RIGHT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440,344+53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--2
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_RIGHT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440,344+53*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--3
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_RIGHT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440,344+53*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--4
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_RIGHT" )
g_pPicture_bg1:SetPoint
{  

	"LEFT_TOP		= D3DXVECTOR2(440,344+53*4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--5 (세로줄, 좌측하단 일반 보상 첫번 째 슬롯 픽쳐)
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_DOWN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--6
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_DOWN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--7
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_DOWN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*2,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--8
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_DOWN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*3,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--9
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_DOWN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*4,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--10- (우측 상단 대각선 슬롯)
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_RIGHTDOWN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--11- (우측 하단 대각선 슬롯)
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_RIGHTUP" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--=====================================================================================================
--슬롯 객체
--=====================================================================================================

--0 (세로줄, 우측 일반 보상 첫번 째 슬롯)
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 508, 348)",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )
--1
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 508, 348+53)",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )
--2
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 508, 348+53*2)",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
--3
pItemSlot:SetClickable( false )
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 508, 348+53*3)",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )
--4
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 508, 348+53*4)",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )
--5 (세로줄, 좌측하단 일반 보상 첫번 째 슬롯 픽쳐)
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 219, 633 )",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )
--6
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 219 +53, 633 )",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )
--7
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 219 +53*2, 633 )",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )
--8
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 219 +53*3, 633 )",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )
--9
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 219 +53*4, 633 )",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )
--10- (우측 상단 대각선 슬롯)
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 502, 275 )",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )
--11- (우측 하단 대각선 슬롯)
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )			
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,	
	SLOT_TYPE	= SLOT_TYPE["ST_NONE"],	
	SLOT_ID		= 0,		
	"POS		= D3DXVECTOR2( 502, 633 )",
	"SIZE		= D3DXVECTOR2( 44, 44 )",
}
pItemSlot:SetClickable( false )

--=====================================================================================================
--슬롯 위 Win 픽쳐
--=====================================================================================================
g_pStatic_Premium_Win = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Premium_Win )
g_pStatic_Premium_Win:SetName( "Bingo_Premium_Win_Picture" )
g_pStatic_Premium_Win:SetShow(true)

--0  (세로줄, 우측 일반 보상 첫번 째 슬롯)
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440+14,344+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--1
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440+14,344+8+53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--2
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440+14,344+8+53*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--3
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440+14,344+8+53*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--4
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440+14,344+8+53*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--5 (세로줄, 좌측하단 일반 보상 첫번 째 슬롯 픽쳐)
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166,615+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--6
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53,615+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--7
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*2,615+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--8
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*3,615+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--9
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*4,615+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--10 (우측 상단 대각선 슬롯)
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440+8,615+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--11
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Premium:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ITEMSLOT_WIN" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(440+8,271+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}