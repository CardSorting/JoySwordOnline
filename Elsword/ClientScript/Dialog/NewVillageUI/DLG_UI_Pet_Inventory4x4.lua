-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_4"] )
g_pUIDialog:SetCloseCustomUIEventID( PET_INVENTORY_UI_CUSTOM_MSG["PIUCM_EXIT"] )

--------------- Static
g_pStatic_Pat_Inven = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Inven )
g_pStatic_Pat_Inven:SetName( "g_pStatic_Pat_Inven" )

------- 슬롯 갯수에 따른 인벤크기 인지

numOfLineInPetInven	= g_pCX2SlotManager:GetDummyValue()

sizeYForBG						= 299 	- ( 4 - numOfLineInPetInven ) * 50
posForBGLeftTopOfBottom			= 620	- ( 4 - numOfLineInPetInven ) * 50

sizeYForBlackBox				= 239	- ( 4 - numOfLineInPetInven ) * 50
posForBlackBoxLeftTopOfBottom	= 604	- ( 4 - numOfLineInPetInven ) * 50

sizeYForWin						= 231	- ( 4 - numOfLineInPetInven ) * 50
posForWinLeftTopOfBottom		= 600	- ( 4 - numOfLineInPetInven ) * 50



--------------- BG
g_pPicture_Pat_Inven_BG_top = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Inven:AddPicture( g_pPicture_Pat_Inven_BG_top )
g_pPicture_Pat_Inven_BG_top:SetTex( "DLG_UI_Common_Texture39.TGA", "Pat_Inven_BG_TOP" )
g_pPicture_Pat_Inven_BG_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(292,300)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Pat_Inven_BG_middle = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Inven:AddPicture( g_pPicture_Pat_Inven_BG_middle )

g_pPicture_Pat_Inven_BG_middle:SetTex( "DLG_UI_Common_Texture39.TGA", "Pat_Inven_BG_MIDDLE" )
g_pPicture_Pat_Inven_BG_middle:SetPoint
{
--   ADD_SIZE_Y = 299,
	ADD_SIZE_Y = sizeYForBG,
	"LEFT_TOP		= D3DXVECTOR2(292,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Inven_BG_bottom= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Inven:AddPicture( g_pPicture_Pat_Inven_BG_bottom)

g_pPicture_Pat_Inven_BG_bottom:SetTex( "DLG_UI_Common_Texture39.TGA", "Pat_Inven_BG_BOTTOM" )
g_pPicture_Pat_Inven_BG_bottom:SetPoint
{

--	"LEFT_TOP		= D3DXVECTOR2(292,620)",
	"LEFT_TOP		= D3DXVECTOR2(292, posForBGLeftTopOfBottom)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--------------- bg_b

g_pPicture_Pat_Inven_balck_box_top= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Inven:AddPicture( g_pPicture_Pat_Inven_balck_box_top )
g_pPicture_Pat_Inven_balck_box_top:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_INVEN_GRAY_TOP" )

g_pPicture_Pat_Inven_balck_box_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,351)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Inven_balck_box_middle= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Inven:AddPicture( g_pPicture_Pat_Inven_balck_box_middle )
g_pPicture_Pat_Inven_balck_box_middle:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_INVEN_GRAY_MIDDLE" )

g_pPicture_Pat_Inven_balck_box_middle:SetPoint
{
--     ADD_SIZE_Y = 239,
     ADD_SIZE_Y = sizeYForBlackBox,
	"LEFT_TOP		= D3DXVECTOR2(310+1,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Inven_balck_box_bottom= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Inven:AddPicture( g_pPicture_Pat_Inven_balck_box_bottom )
g_pPicture_Pat_Inven_balck_box_bottom:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_INVEN_GRAY_BOTTOM" )

g_pPicture_Pat_Inven_balck_box_bottom:SetPoint
{

--	"LEFT_TOP		= D3DXVECTOR2(310,604)",
	"LEFT_TOP		= D3DXVECTOR2(310, posForBlackBoxLeftTopOfBottom)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------- 펫 인벤 창

g_pPicture_Pat_Inven_win_top= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Inven:AddPicture( g_pPicture_Pat_Inven_win_top )

g_pPicture_Pat_Inven_win_top:SetTex( "DLG_UI_Common_Texture39.TGA", "Pat_Inven_win_top" )
g_pPicture_Pat_Inven_win_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(312,354)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Inven_win_middle= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Inven:AddPicture( g_pPicture_Pat_Inven_win_middle )
g_pPicture_Pat_Inven_win_middle:SetTex( "DLG_UI_Common_Texture39.TGA", "Pat_Inven_win_middle" )

g_pPicture_Pat_Inven_win_middle:SetPoint
{
--    ADD_SIZE_Y = 231,
    ADD_SIZE_Y = sizeYForWin,
	"LEFT_TOP		= D3DXVECTOR2(312+1,367)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Inven_win_bottom= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Inven:AddPicture( g_pPicture_Pat_Inven_win_bottom )

g_pPicture_Pat_Inven_win_bottom:SetTex( "DLG_UI_Common_Texture39.TGA", "Pat_Inven_win_bottom" )

g_pPicture_Pat_Inven_win_bottom:SetPoint
{
    
--	"LEFT_TOP		= D3DXVECTOR2(312+2,600)",
	"LEFT_TOP		= D3DXVECTOR2(312+2, posForWinLeftTopOfBottom)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------- EXIT 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )

g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(515,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(515-4,316)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(515+1-4,316+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PET_INVENTORY_UI_CUSTOM_MSG["PIUCM_EXIT"] )

--------------- 타이틀

g_pPicture_Pat_Inven_title= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Inven:AddPicture( g_pPicture_Pat_Inven_title)

g_pPicture_Pat_Inven_title:SetTex( "DLG_UI_TITLE03.TGA", "PAT_INVENTORY_TITLE" )

g_pPicture_Pat_Inven_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(310,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

if numOfLineInPetInven >= 1 then

	--------------- 인벤 슬롯 1번째 줄

	g_pStatic_Pat_Inven_Slot = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Pat_Inven_Slot )
	g_pStatic_Pat_Inven_Slot:SetName( "g_pStatic_Pat_InvenSlot1" )


	g_pPicture_Pat_Inven_Slot1= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot1 )

	g_pPicture_Pat_Inven_Slot1:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot1:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(324,395)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 0,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 324 + 1 ,395 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}


	g_pPicture_Pat_Inven_Slot2= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot2)

	g_pPicture_Pat_Inven_Slot2:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot2:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(375,395)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 1,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 375 + 1 ,395 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}


	g_pPicture_Pat_Inven_Slot3= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot3)

	g_pPicture_Pat_Inven_Slot3:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot3:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(426,395)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 2,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 426 + 1 ,395 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}


	g_pPicture_Pat_Inven_Slot4= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot4)

	g_pPicture_Pat_Inven_Slot4:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot4:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(477,395)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 3,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 477 + 1 ,395 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}
		
end		

if numOfLineInPetInven >= 2 then

	--------------- 인벤 슬롯 2번째 줄

	g_pStatic_Pat_Inven_Slot = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Pat_Inven_Slot )
	g_pStatic_Pat_Inven_Slot:SetName( "g_pStatic_Pat_InvenSlot2" )



	g_pPicture_Pat_Inven_Slot5= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot5 )

	g_pPicture_Pat_Inven_Slot5:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot5:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(324,446)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 4,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 324 + 1 ,446 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}



	g_pPicture_Pat_Inven_Slot6= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot6)

	g_pPicture_Pat_Inven_Slot6:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot6:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(375,446)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 5,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 375 + 1 ,446 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}



	g_pPicture_Pat_Inven_Slot7= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot7 )

	g_pPicture_Pat_Inven_Slot7:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot7:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(426,446)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 6,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 426 + 1 ,446 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}




	g_pPicture_Pat_Inven_Slot8= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot8)

	g_pPicture_Pat_Inven_Slot8:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot8:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(477,446)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 7,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 477 + 1 ,446 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}

end

if numOfLineInPetInven >= 3 then

	--------------- 인벤 슬롯 3번째 줄

	g_pStatic_Pat_Inven_Slot = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Pat_Inven_Slot )
	g_pStatic_Pat_Inven_Slot:SetName( "g_pStatic_Pat_InvenSlot3" )



	g_pPicture_Pat_Inven_Slot9= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot9 )

	g_pPicture_Pat_Inven_Slot9:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot9:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(324,497)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 8,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 324 + 1 ,497 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}


	g_pPicture_Pat_Inven_Slot10= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot10 )

	g_pPicture_Pat_Inven_Slot10:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot10:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(375,497)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 9,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 375 + 1 ,497 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}


	g_pPicture_Pat_Inven_Slot11= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot11 )

	g_pPicture_Pat_Inven_Slot11:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot11:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(426,497)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 10,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 426 + 1 ,497 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}



	g_pPicture_Pat_Inven_Slot12= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot12 )

	g_pPicture_Pat_Inven_Slot12:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot12:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(477,497)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 11,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 477 + 1 ,497 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}
end

if numOfLineInPetInven >= 4 then

	--------------- 인벤 슬롯 4번째 줄

	g_pStatic_Pat_Inven_Slot = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Pat_Inven_Slot )
	g_pStatic_Pat_Inven_Slot:SetName( "g_pStatic_Pat_InvenSlot4" )



	g_pPicture_Pat_Inven_Slot13= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot13 )

	g_pPicture_Pat_Inven_Slot13:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot13:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(324,548)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 12,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 324 + 1 ,548 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}


	g_pPicture_Pat_Inven_Slot14= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot14 )

	g_pPicture_Pat_Inven_Slot14:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot14:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(375,548)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 13,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 375 + 1 ,548 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}


	g_pPicture_Pat_Inven_Slot15= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot15 )

	g_pPicture_Pat_Inven_Slot15:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot15:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(426,548)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 14,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 426 + 1 ,548 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}


	g_pPicture_Pat_Inven_Slot16= g_pUIDialog:CreatePicture()
	g_pStatic_Pat_Inven_Slot:AddPicture( g_pPicture_Pat_Inven_Slot16 )

	g_pPicture_Pat_Inven_Slot16:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPicture_Pat_Inven_Slot16:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(477,548)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )

		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,

			SLOT_TYPE	= SLOT_TYPE["ST_PET"],

			SORT_TYPE	= 13,		-- SORT_TYPE::ST_PET
			SLOT_ID		= 15,

			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],

			"POS		= D3DXVECTOR2( 477 + 1 ,548 + 1 )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		}

end



--- 마우스 오버 툴팁을 위한 보이지 않는 버튼
g_pCheckBoxInvisible = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pCheckBoxInvisible )
g_pCheckBoxInvisible:SetName( "CheckBoxInvisible" )
g_pCheckBoxInvisible:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pCheckBoxInvisible:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pCheckBoxInvisible:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pCheckBoxInvisible:SetNormalPoint
{
ADD_SIZE_X = 50,
ADD_SIZE_Y = 22,
    	"LEFT_TOP		= D3DXVECTOR2(455,360)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInvisible:SetOverPoint
{
ADD_SIZE_X = 50,
ADD_SIZE_Y = 22,
   	"LEFT_TOP		= D3DXVECTOR2(455,360)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInvisible:SetDownPoint
{
ADD_SIZE_X = 50,
ADD_SIZE_Y = 22,
    	"LEFT_TOP		= D3DXVECTOR2(455,360)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxInvisible:SetCustomMsgMouseOver( PET_INVENTORY_UI_CUSTOM_MSG["PIUCM_AUTO_FEED_MOUSE_OVER"] ) 
g_pCheckBoxInvisible:SetCustomMsgMouseOut( PET_INVENTORY_UI_CUSTOM_MSG["PIUCM_AUTO_FEED_MOUSE_OUT"] ) 



--------------- 체크 박스 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "g_pCheckBoxAutoFeed" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )

g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxsecret:SetBGPoint
{
	--USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(455,370)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(260,33)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(453,368)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxsecret:SetChecked( false )
g_pCheckBoxsecret:SetCustomMsgChecked( PET_INVENTORY_UI_CUSTOM_MSG["PIUCM_CHECK_AUTO_FEED"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( PET_INVENTORY_UI_CUSTOM_MSG["PIUCM_CHECK_AUTO_FEED"] )


--------------- 자동 먹이 글자

g_pStatic_Auto_Food = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Auto_Food )
g_pStatic_Auto_Food:SetName( "Auto_Food" )

g_pStatic_Auto_Food:AddString
{
 MSG    		 = STR_ID_5605,
 --MSG    		 = "자동 먹이",
 FONT_INDEX      = XUF_DODUM_13_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(475,370)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

