-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
--g_pUIDialog:SetFront( true )


----------------------캐릭터 SLOT

-------------------------------------   1


g_pButtonslot1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonslot1 )
g_pButtonslot1:SetName( "character2" )
g_pButtonslot1:SetNormalTex( "DLG_UI_BUTTON08.tga", "charac_slot_normal" )

g_pButtonslot1:SetOverTex( "DLG_UI_BUTTON08.tga", "charac_slot_over" )

g_pButtonslot1:SetDownTex( "DLG_UI_BUTTON08.tga", "charac_slot_over" )

g_pButtonslot1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonslot1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonslot1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(0+1,0+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonslot1:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_CREATE_UNIT"] )



--------------------캐릭터 CREATE



g_pStaticcreate = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticcreate )
g_pStaticcreate:SetName( "create" )


g_pPicture_charac1 = g_pUIDialog:CreatePicture()
g_pStaticcreate:AddPicture( g_pPicture_charac1 )

g_pPicture_charac1:SetTex( "DLG_UI_Common_Texture07.TGA", "charac_create" )

g_pPicture_charac1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(53,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_new1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_new1 )
g_pStatic_new1:SetName( "new1" )

g_pStatic_new1:AddString
{
	MSG 			= STR_ID_1251,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(51,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


