-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

g_pUIDialog:SetPos( 300, 200 )

g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_ATTRACTION_ITEM_RESULT_OK"] )

g_pStaticIce_Heater_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticIce_Heater_Result )
g_pStaticIce_Heater_Result:SetName( "g_pStaticIce_Heater_Result" )


-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticIce_Heater_Result:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture06.TGA", "bg_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-3,-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticIce_Heater_Result:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture06.TGA", "bg_center" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_X = 297,
	"LEFT_TOP		= D3DXVECTOR2(83,-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticIce_Heater_Result:AddPicture( g_pPicture_BG1)

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture06.TGA", "bg_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(381,-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------tltle


g_pStatic_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title )
g_pStatic_Title:SetName( "Static_Title" )


g_pPictureTitle = g_pUIDialog:CreatePicture()
g_pStatic_Title:AddPicture( g_pPictureTitle)

g_pPictureTitle:SetTex( "DLG_UI_Title02_B.TGA", "heater_title" )

g_pPictureTitle:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTitle = g_pUIDialog:CreatePicture()
g_pStatic_Title:AddPicture( g_pPictureTitle)

g_pPictureTitle:SetTex( "DLG_UI_Title01.TGA", "Result" )

g_pPictureTitle:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(227,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------도움말


g_pPicturePs = g_pUIDialog:CreatePicture()
g_pStaticIce_Heater_Result:AddPicture( g_pPicturePs)

g_pPicturePs:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicturePs:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(18,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticPs = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPs )
g_pStaticPs:SetName( "Ps" )

g_pStaticPs:AddString
{
	MSG 			= STR_ID_975,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,52)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}





-------------------  랜덤 아이템

g_pStatic_charm_item_result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_charm_item_result )
g_pStatic_charm_item_result:SetName( "Static_Item" )


g_pPictureRandom_Item = g_pUIDialog:CreatePicture()
g_pStatic_charm_item_result:AddPicture( g_pPictureRandom_Item)

g_pPictureRandom_Item:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureRandom_Item:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(26,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStatic_charm_item_result:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(87,102)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pPictureBar2 = g_pUIDialog:CreatePicture()
g_pStaticIce_Heater_Result:AddPicture( g_pPictureBar2)

g_pPictureBar2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPictureBar2:SetPoint
{
     ADD_SIZE_Y = 55,
	"LEFT_TOP		= D3DXVECTOR2(80,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------------  보너스 아이템

g_pStatic_charm_item_result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_charm_item_result )
g_pStatic_charm_item_result:SetName( "Static_Bonus" )



g_pStatic_charm_item_result:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(87,171-67)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




g_pStatic_Bonus_Item_Mark = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Bonus_Item_Mark )
g_pStatic_Bonus_Item_Mark:SetName( "Static_Bonus_Item_Mark" )

g_pPictureBonus_Image = g_pUIDialog:CreatePicture()
g_pStatic_Bonus_Item_Mark:AddPicture( g_pPictureBonus_Image)

g_pPictureBonus_Image:SetTex( "DLG_Common_New_Texture73.TGA", "bonus_item" )

g_pPictureBonus_Image:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(306,152-67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----------------확인 버튼

g_pButtonOK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOK )
g_pButtonOK:SetName( "OK_button" )
g_pButtonOK:SetNormalTex( "DLG_UI_Button05.tga", "ok_button_NORMAL" )

g_pButtonOK:SetOverTex( "DLG_UI_Button05.tga", "ok_button_OVER" )

g_pButtonOK:SetDownTex( "DLG_UI_Button05.tga", "ok_button_OVER" )

g_pButtonOK:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(159,223-71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(156,220-71)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(156+1,220-71+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_ATTRACTION_ITEM_RESULT_OK"] )
g_pButtonCencle:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )
g_pButtonOK:RequestFocus()
 
 
 
 

--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(370,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(367+1,11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_ATTRACTION_ITEM_RESULT_OK"] )
