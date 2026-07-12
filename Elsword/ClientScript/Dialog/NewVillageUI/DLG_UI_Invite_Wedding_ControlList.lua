-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--

g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME" )
g_pStatic_MAP_NAME:AddString
{
--	MSG 			= STR_ID_4620, --"희망의 다리",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(40,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
g_pStatic_MAP_NAME:SetShow ( false )



-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(6,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_box1:SetShow ( false )


g_pStatic_Location = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Location )
g_pStatic_Location:SetName( "location" )
g_pStatic_Location:AddString
{
--	MSG 			= STR_ID_4620, --"희망의 다리",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(145,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
g_pStatic_Location:SetShow ( false )


g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "Map_CheckBox" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(6,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(6,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_MAP_CHECK"] )
g_pCheckBox_CHECK1:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_MAP_CHECK"] )
g_pCheckBox_CHECK1:SetShow ( false )

----------- 버튼
g_pButton_List_BTN01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_List_BTN01 )
g_pButton_List_BTN01:SetName( "ListControl_Button" )
	
g_pButton_List_BTN01:SetNormalTex( "DLG_UI_BUTTON09.tga", "Line_Bt" )
g_pButton_List_BTN01:SetOverTex( "DLG_UI_BUTTON09.tga", "Line_Bt" )
g_pButton_List_BTN01:SetDownTex( "DLG_UI_BUTTON09.tga", "Line_Bt" )
	
g_pButton_List_BTN01:SetNormalPoint
	{
	     ADD_SIZE_X = -77,
	     ADD_SIZE_Y = -25,	
	    "LEFT_TOP		= D3DXVECTOR2(25+8,-4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",		
		CHANGE_TIME		= 0.0,
	}
g_pButton_List_BTN01:SetOverPoint
	{
	     ADD_SIZE_X = -77,
	     ADD_SIZE_Y = -25,	
		"LEFT_TOP		= D3DXVECTOR2(25+8,-4)",
	
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_List_BTN01:SetDownPoint
	{
	     ADD_SIZE_X = -77-2,
	     ADD_SIZE_Y = -25-2,	
	 	"LEFT_TOP		= D3DXVECTOR2(25+1+8,-4+1)",
	
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
g_pButton_List_BTN01:SetShow ( false )
g_pButton_List_BTN01:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_MAP_SELECT"] )
--g_pButton_List_BTN01:SetCustomMsgMouseDblClk( UI_INVENTORY_MSG["UIM_WARP_DEST"] )


