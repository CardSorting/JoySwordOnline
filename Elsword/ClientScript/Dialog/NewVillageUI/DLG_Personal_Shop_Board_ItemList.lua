-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--[[
g_pStatic_List= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_List )
g_pStatic_List:SetName( "StaticSlot" )

g_pPicture_Box = g_pUIDialog:CreatePicture()
g_pStatic_List:AddPicture( g_pPicture_Box )

g_pPicture_Box:SetTex( "DLG_UI_Common_Texture26.TGA", "BOX" )

g_pPicture_Box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(6,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]
-----------------    
g_pStatic_Item = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Item )
g_pStatic_Item:SetName( "StaticItemName" )

g_pStatic_Item:AddString
{
	--MSG 			= STR_ID_4852,
	MSG 			= "엘소드",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(52,17)",
	"COLOR			= D3DXCOLOR(1.0,0.8,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  


g_pStatic_Num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Num )
g_pStatic_Num:SetName( "StaticNum" )

g_pStatic_Num:AddString
{
	--MSG 			= STR_ID_4852,
	MSG 			= "99개",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(265+64,17)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  


g_pStatic_ED = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ED )
g_pStatic_ED:SetName( "StaticED" )

g_pStatic_ED:AddString
{
	--MSG 			= STR_ID_4852,
	MSG 			= "9,999,999 ED",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(427+58,17)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  


g_pStatic_User = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User )
g_pStatic_User:SetName( "g_pStatic_User" )

g_pStatic_User:AddString
{
	--MSG 			= STR_ID_4852,
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(465+50,17)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  



--- 버튼






g_pButtonBuyItem = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBuyItem )
g_pButtonBuyItem:SetName( "ButtonBuyItem" )
g_pButtonBuyItem:SetNormalTex( "DLG_UI_BUTTON16.tga", "btn_Normal" )

g_pButtonBuyItem:SetOverTex( "DLG_UI_BUTTON16.tga", "btn_Over" )

g_pButtonBuyItem:SetDownTex( "DLG_UI_BUTTON16.tga", "btn_Over" )

g_pButtonBuyItem:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(646+4-5,3+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuyItem:SetOverPoint
{
ADD_SIZE_X = 2,
ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(646-1-5,3-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuyItem:SetDownPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(646-5,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuyItem:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_BUY_ITEM"] )


g_pStatic_BUTTON = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BUTTON )
g_pStatic_BUTTON:SetName( "g_pStatic_BUTTON" )

g_pStatic_BUTTON:AddString
{
	MSG 			= STR_ID_4938,
	--MSG 			= "상점열기",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(662+2-5,14+2)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

g_pStatic_BUTTON:AddString
{
	MSG 			= STR_ID_4938,
	--MSG 			= "상점열기",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(662-5,14)",
	"COLOR			= D3DXCOLOR(0.0,0.9,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  
