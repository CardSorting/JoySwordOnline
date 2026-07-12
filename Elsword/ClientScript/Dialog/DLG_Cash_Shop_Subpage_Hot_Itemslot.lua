-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Subpage_Hot_Itemslot" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 370, 141, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 370, 141+85, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 370, 141+85+85, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 370, 141+85+85+85, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 370, 141+85+85+85+85, 0 ) )

g_pStaticHotitem_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHotitem_Slot )
g_pStaticHotitem_Slot:SetName( "g_pStaticHotitem_Slot" )


g_pPictureHotitem_Slot_BG1 = g_pUIDialog:CreatePicture()
g_pStaticHotitem_Slot:AddPicture( g_pPictureHotitem_Slot_BG1 )

g_pPictureHotitem_Slot_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "HOTITEM_slot" )

g_pPictureHotitem_Slot_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureHotitem_Slot_BG2 = g_pUIDialog:CreatePicture()
g_pStaticHotitem_Slot:AddPicture( g_pPictureHotitem_Slot_BG2 )

g_pPictureHotitem_Slot_BG2:SetTex( "DLG_Common_New_Texture50.TGA", "BLACK" )

g_pPictureHotitem_Slot_BG2:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(66,4)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(107,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureHotitem_Slot_BG3 = g_pUIDialog:CreatePicture()
g_pStaticHotitem_Slot:AddPicture( g_pPictureHotitem_Slot_BG3 )

g_pPictureHotitem_Slot_BG3:SetTex( "DLG_Common_New_Texture37.TGA", "coin_small" )

g_pPictureHotitem_Slot_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(9,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticHotitem_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHotitem_Slot )
g_pStaticHotitem_Slot:SetName( "g_pStaticHotitem_Slot_Num" )


g_pPictureHotitem_Slot_Num1 = g_pUIDialog:CreatePicture()
g_pStaticHotitem_Slot:AddPicture( g_pPictureHotitem_Slot_Num1 )

g_pPictureHotitem_Slot_Num1:SetTex( "DLG_Common_New_Texture37.TGA", "1" )

g_pPictureHotitem_Slot_Num1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureHotitem_Slot_Num2 = g_pUIDialog:CreatePicture()
g_pStaticHotitem_Slot:AddPicture( g_pPictureHotitem_Slot_Num2 )

g_pPictureHotitem_Slot_Num2:SetTex( "DLG_Common_New_Texture37.TGA", "2" )

g_pPictureHotitem_Slot_Num2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureHotitem_Slot_Num3 = g_pUIDialog:CreatePicture()
g_pStaticHotitem_Slot:AddPicture( g_pPictureHotitem_Slot_Num3 )

g_pPictureHotitem_Slot_Num3:SetTex( "DLG_Common_New_Texture37.TGA", "3" )

g_pPictureHotitem_Slot_Num3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureHotitem_Slot_Num4 = g_pUIDialog:CreatePicture()
g_pStaticHotitem_Slot:AddPicture( g_pPictureHotitem_Slot_Num4 )

g_pPictureHotitem_Slot_Num4:SetTex( "DLG_Common_New_Texture37.TGA", "4" )

g_pPictureHotitem_Slot_Num4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureHotitem_Slot_Num5 = g_pUIDialog:CreatePicture()
g_pStaticHotitem_Slot:AddPicture( g_pPictureHotitem_Slot_Num5 )

g_pPictureHotitem_Slot_Num5:SetTex( "DLG_Common_New_Texture37.TGA", "5" )

g_pPictureHotitem_Slot_Num5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pStatic_Item_ID_1Line = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Item_ID_1Line )
	g_pStatic_Item_ID_1Line:SetName( "g_pStaticItemName" )

	g_pStatic_Item_ID_1Line:AddString
	{
		MSG 			= STR_ID_974,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(10,48)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	g_pStatic_Gold = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Gold )
	g_pStatic_Gold:SetName( "g_pStaticCashNum" )

	g_pStatic_Gold:AddString
	{
		-- MSG 			= "999,999,999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(23,62)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}





