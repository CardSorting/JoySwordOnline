-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Option_Window" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )




g_pStaticSell_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSell_Window )
g_pStaticSell_Window:SetName( "Option_Window" )




g_pPictureQuest_Window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG1 )

g_pPictureQuest_Window_BG1:SetTex( "DLG_Quest_Window.TGA", "TalkBox1" )

g_pPictureQuest_Window_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(37,77)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureQuest_Window_BG2 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG2 )

g_pPictureQuest_Window_BG2:SetTex( "DLG_Quest_Window.TGA", "TalkBox2" )

g_pPictureQuest_Window_BG2:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(51,77)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(461,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_BG3 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG3 )

g_pPictureQuest_Window_BG3:SetTex( "DLG_Quest_Window.TGA", "TalkBox3" )

g_pPictureQuest_Window_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(461,77)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_BG4 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG4 )

g_pPictureQuest_Window_BG4:SetTex( "DLG_Quest_Window.TGA", "TalkBox4" )

g_pPictureQuest_Window_BG4:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(37,91)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(51,242)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_BG5 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG5 )

g_pPictureQuest_Window_BG5:SetTex( "DLG_Quest_Window.TGA", "TalkBox8" )

g_pPictureQuest_Window_BG5:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(461,91)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(475,242)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_BG6 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG6 )

g_pPictureQuest_Window_BG6:SetTex( "DLG_Quest_Window.TGA", "TalkBox6" )

g_pPictureQuest_Window_BG6:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(37,242)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_BG7 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG7 )

g_pPictureQuest_Window_BG7:SetTex( "DLG_Quest_Window.TGA", "TalkBox9" )

g_pPictureQuest_Window_BG7:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(51,242)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(461,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureQuest_Window_BG8 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG8 )

g_pPictureQuest_Window_BG8:SetTex( "DLG_Quest_Window.TGA", "TalkBox7" )

g_pPictureQuest_Window_BG8:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(461,242)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_BG9 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG9 )

g_pPictureQuest_Window_BG9:SetTex( "DLG_Quest_Window.TGA", "TalkBox5" )

g_pPictureQuest_Window_BG9:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(50,82)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(462,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_BG10 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG10 )

g_pPictureQuest_Window_BG10:SetTex( "DLG_Quest_Window.TGA", "TalkBox10" )

g_pPictureQuest_Window_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(230,252)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_BG11 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG11 )

g_pPictureQuest_Window_BG11:SetTex( "DLG_Inventory_Window.TGA", "Title_Line1" )

g_pPictureQuest_Window_BG11:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(37,77)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_BG12 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG12 )

g_pPictureQuest_Window_BG12:SetTex( "DLG_Inventory_Window.TGA", "Title_Line2" )

g_pPictureQuest_Window_BG12:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(452,77)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_BG13 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_BG13 )

g_pPictureQuest_Window_BG13:SetTex( "DLG_Inventory_Window.TGA", "Title_Line3" )

g_pPictureQuest_Window_BG13:SetPoint
{

 USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(50,77)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(453,119)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------------------------------------------------------------------------------


g_pPictureQuest_Window_Title = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_Title )

g_pPictureQuest_Window_Title:SetTex( "DLG_Inventory_Window.TGA", "Talk" )

g_pPictureQuest_Window_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(123,82)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureQuest_Window_X = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_X )

g_pPictureQuest_Window_X:SetTex( "DLG_Inventory_Window.TGA", "X" )

g_pPictureQuest_Window_X:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(250,150)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 수량 백 이미지
g_pPictureQuest_Window_Sell_Window1 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_Sell_Window1 )

g_pPictureQuest_Window_Sell_Window1:SetTex( "DLG_Inventory_Window.TGA", "Sell_Window1" )

g_pPictureQuest_Window_Sell_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(282,142)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 금액 백 이미지
g_pPictureQuest_Window_Sell_Window2 = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_Sell_Window2 )

g_pPictureQuest_Window_Sell_Window2:SetTex( "DLG_Inventory_Window.TGA", "Sell_Window2" )

g_pPictureQuest_Window_Sell_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(60,210)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 판매 미리보기
g_pPictureQuest_Window_ItemSlot = g_pUIDialog:CreatePicture()
g_pStaticSell_Window:AddPicture( g_pPictureQuest_Window_ItemSlot )

g_pPictureQuest_Window_ItemSlot:SetTex( "DLG_First_Loading2.TGA", "Popup_Quest_Window7" )

g_pPictureQuest_Window_ItemSlot:SetPoint
{

   	"LEFT_TOP		= D3DXVECTOR2(161,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 상점 미리보기 슬롯
g_SellQuestionSlotID = 1001
g_pUIDialog:AddDummyInt( g_SellQuestionSlotID )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pShopInventory:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= g_SellQuestionSlotID,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2( 166, 128 )",
	"SIZE		= D3DXVECTOR2( 66, 66 )",
}

-- 되파는 물건 총액
g_pStaticSell_Window:AddString
{
	-- MSG 			= "0 ED",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2( 270, 220 )",
	"COLOR			= D3DXCOLOR(0.0, 0.0, 0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- 수량 에디트 박스
g_pIMEEditBox_Sell1 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBox_Sell1 )
g_pIMEEditBox_Sell1:SetName( "IMEEditBox_Sell1" )
g_pIMEEditBox_Sell1:SetTextPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(305,146)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(335,176)",
	"COLOR			= D3DXCOLOR(1,0,0,1)",
	CHANGE_TIME     = 0.0,
}
g_pIMEEditBox_Sell1:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBox_Sell1:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_Sell1:SetSelectedTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBox_Sell1:SetSelectedBackColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_Sell1:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_Sell1:RequestFocus()
g_pIMEEditBox_Sell1:SetDefTextAlign( DRAW_TEXT["DT_CENTER"] + DRAW_TEXT["DT_VCENTER"] )
g_pIMEEditBox_Sell1:SetText( "00" )
g_pIMEEditBox_Sell1:SetOnlyNumMode( true )
g_pIMEEditBox_Sell1:SetLengthLimit( 2 )

----------------------------------------------------------------------------------

-- 판매 버튼
g_pButton_Quest_Window_Sell = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Quest_Window_Sell )
g_pButton_Quest_Window_Sell:SetName( "Quest_Window_Sell" )
g_pButton_Quest_Window_Sell:SetNormalTex( "DLG_Inventory_Window.TGA", "Sell_Normal" )

g_pButton_Quest_Window_Sell:SetOverTex( "DLG_Inventory_Window.TGA", "Sell_Over" )

g_pButton_Quest_Window_Sell:SetDownTex( "DLG_Inventory_Window.TGA", "Sell_Over" )

g_pButton_Quest_Window_Sell:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(350,204)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Quest_Window_Sell:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,203)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Quest_Window_Sell:SetDownPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(343,204)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Quest_Window_Sell:SetCustomMsgMouseUp( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_SELL_ITEM"] )

-- 수량 증가 버튼
g_pButton_Quest_Window_Up_Arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Quest_Window_Up_Arrow )
g_pButton_Quest_Window_Up_Arrow:SetName( "Shop_Window_Sell_Inc" )
g_pButton_Quest_Window_Up_Arrow:SetNormalTex( "DLG_Inventory_Window.TGA", "Up_Arrow_Normal" )

g_pButton_Quest_Window_Up_Arrow:SetOverTex( "DLG_Inventory_Window.TGA", "Up_Arrow_Over" )

g_pButton_Quest_Window_Up_Arrow:SetDownTex( "DLG_Inventory_Window.TGA", "Up_Arrow_Over" )

g_pButton_Quest_Window_Up_Arrow:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(363,133)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Quest_Window_Up_Arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(362,132)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Quest_Window_Up_Arrow:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(363,133)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Quest_Window_Up_Arrow:SetCustomMsgMouseUp( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_SELL_NUMBUTTON1_INC"] )

-- 수량 감소 버튼
g_pButton_Quest_Window_Down_Arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Quest_Window_Down_Arrow )
g_pButton_Quest_Window_Down_Arrow:SetName( "Shop_Window_Sell_Dec" )
g_pButton_Quest_Window_Down_Arrow:SetNormalTex( "DLG_Inventory_Window.TGA", "Down_Arrow_Normal" )

g_pButton_Quest_Window_Down_Arrow:SetOverTex( "DLG_Inventory_Window.TGA", "Down_Arrow_Over" )

g_pButton_Quest_Window_Down_Arrow:SetDownTex( "DLG_Inventory_Window.TGA", "Down_Arrow_Over" )

g_pButton_Quest_Window_Down_Arrow:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(363,163)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Quest_Window_Down_Arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(362,162)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Quest_Window_Down_Arrow:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(363,163)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Quest_Window_Down_Arrow:SetCustomMsgMouseUp( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_SELL_NUMBUTTON1_DEC"] )
