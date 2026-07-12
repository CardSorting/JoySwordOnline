-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

----------------------캐릭터 SLOT

-------------------------------------   1


g_pButtonslot1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonslot1 )
g_pButtonslot1:SetName( "character1" )
g_pButtonslot1:SetNormalTex( "DLG_UI_Button08_TEST.tga", "charac_slot_normal" )

g_pButtonslot1:SetOverTex( "DLG_UI_Button08_TEST.tga", "charac_slot_over" )

g_pButtonslot1:SetDownTex( "DLG_UI_Button08_TEST.tga", "charac_slot_over" )

g_pButtonslot1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonslot1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.2,
}
g_pButtonslot1:SetDownPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(0+1,0+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.1,
}


g_pButtonslot1:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_UNIT_BUTTON_UP"] )
g_pButtonslot1:SetCustomMsgMouseOver( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_UNIT_BUTTON_OVER"] )
g_pButtonslot1:SetCustomMsgMouseDblClk( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_UNIT_BUTTON_UP"] )



---------------------캐릭터 PVP랭크


g_pStaticpvp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpvp )
g_pStaticpvp:SetName( "UnitEmblem" )


g_pPicture_rank1 = g_pUIDialog:CreatePicture()
g_pStaticpvp:AddPicture( g_pPicture_rank1 )

g_pPicture_rank1:SetTex( "DLG_UI_Common_Texture02.TGA", "charac_area" )

g_pPicture_rank1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,272)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------------lv


g_pStaticlv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticlv )
g_pStaticlv:SetName( "lv" )


g_pPicture_lv1 = g_pUIDialog:CreatePicture()
g_pStaticlv:AddPicture( g_pPicture_lv1 )

g_pPicture_lv1:SetTex( "DLG_UI_Title01.TGA", "lv" )

g_pPicture_lv1:SetPoint
{
    ADD_SIZE_Y = 3,
	"LEFT_TOP		= D3DXVECTOR2(35,275)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----------------------------캐릭터레벨



g_pStatic_level1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_level1 )
g_pStatic_level1:SetName( "StaticUnitSelectStringLVNum" )

g_pStatic_level1:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(55,275)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




-------------------------------캐릭터 닉네임


g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "StaticUnitSelectStringID" )

g_pStatic_name1:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,274)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




----------------- 닉네임변경대기

g_pStaticChangeNick = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChangeNick )
g_pStaticChangeNick:SetName( "ChangeNick" )


g_pPicture_Change = g_pUIDialog:CreatePicture()
g_pStaticChangeNick:AddPicture( g_pPicture_Change )

g_pPicture_Change:SetTex( "DLG_UI_Common_Texture09.TGA", "change" )

g_pPicture_Change:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(4,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticChangeNick = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChangeNick )
g_pStaticChangeNick:SetName( "standby" )

g_pStaticChangeNick:AddString
{
	MSG 			= STR_ID_1252,
	FONT_INDEX		= XUF_DODUM_15_BOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(60,11)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
