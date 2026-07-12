-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_UI_CUSTOM_MSG["SUCM_PC_BANG_GUIDE_OK"] )

g_pStaticopen = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticopen )
g_pStaticopen:SetName( "open" )

g_pUIDialog:SetPos(325,200) 
---------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
--g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_LEFT" )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_LEFT_3" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
--g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_CENTER" )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_CENTER_3" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X=228,   
	"LEFT_TOP		= D3DXVECTOR2(40,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
--g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_RIGHT" )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_RIGHT_3" )
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(270,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------------------TITLE

g_pStatic_TITLE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TITLE )
g_pStatic_TITLE:SetName( "Static_Personal_Shop_Name_Up" )

g_pStatic_TITLE:AddString
{
	MSG 			= STR_ID_17819, --"[PC방 프리미엄 혜택]",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(170,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
}
g_pStatic_TITLE:AddString
{
	MSG 			= STR_ID_17820, --"   근성도 무제한, 경험치 120% \nPC방 전용 아바타 지급, PC방 칭호 지급   \n헤니르의 시공(일반), 비밀 던전 자유 입장",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(175,88)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

--[[
	g_pStatic_TITLE:AddString
	{
		MSG 			= STR_ID_17817, --"[여름방학 추가 PC방 프리미엄 혜택]",
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		"POS 			= D3DXVECTOR2(178,58+97)",
		"COLOR			= D3DXCOLOR(1.0,0.3,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	}
	g_pStatic_TITLE:AddString
	{
		MSG 			= STR_ID_17821, --"경험치 130%(기존 120%), 펫 친밀도 130%\n접속 후 30분 마다 근성 포션 1개 우편 지급\nPC방전용 레어 아바타 지급\n 천사의 깃털 획득 확률 100%",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(178,88+97)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
--]]
g_pButtonesc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonesc )
g_pButtonesc:SetName( "Inventory_arrow" )
g_pButtonesc:SetNormalTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_normal" )
g_pButtonesc:SetOverTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_over" )
g_pButtonesc:SetDownTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_over" )
g_pButtonesc:SetNormalPoint
{	
    --"LEFT_TOP		= D3DXVECTOR2(138,265)",
	"LEFT_TOP		= D3DXVECTOR2(138,149)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonesc:SetOverPoint
{
	--"LEFT_TOP		= D3DXVECTOR2(138-3,265-3)",
	"LEFT_TOP		= D3DXVECTOR2(138-3,149-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonesc:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	--"LEFT_TOP		= D3DXVECTOR2(138-2,265-2)",
	"LEFT_TOP		= D3DXVECTOR2(138-2,149-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonesc:SetCustomMsgMouseUp( STATE_UI_CUSTOM_MSG["SUCM_PC_BANG_GUIDE_OK"] )