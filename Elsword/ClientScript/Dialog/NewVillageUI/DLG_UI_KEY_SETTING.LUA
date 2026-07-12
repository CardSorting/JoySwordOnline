-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStatic_KEY = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_KEY )
g_pStatic_KEY:SetName( "g_pStatic_KEY" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

-----BG
----상단
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_TOP" )
g_pPicture_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(115+44-83,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_TOP" )
g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X	= 632+166,
	"LEFT_TOP		= D3DXVECTOR2(115+30+44-83,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_TOP" )
g_pPicture_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(115+680+46+83,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

----중단
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_MIDDLE" )
g_pPicture_BG1:SetPoint
{
	ADD_SIZE_Y	= 335 + 37,
	"LEFT_TOP		= D3DXVECTOR2(115+44-83,90+46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_MIDDLE" )
g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X	= 642+166,
	ADD_SIZE_Y	= 335 + 37,
	"LEFT_TOP		= D3DXVECTOR2(115+30+44-83,90+46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_MIDDLE" )
g_pPicture_BG1:SetPoint
{
	ADD_SIZE_Y	= 335 + 37,
	"LEFT_TOP		= D3DXVECTOR2(115+680+46+83,90+46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

----하단
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_BOTTOM" )
g_pPicture_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(115+44-83,90+46+345 + 37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_BOTTOM" )
g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X	= 632+166,
	"LEFT_TOP		= D3DXVECTOR2(115+30+44-83,90+46+345 + 37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_BOTTOM" )
g_pPicture_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(115+680+46+83,90+46+345 + 37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
----title
g_pPicture_TITLE = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_TITLE )
g_pPicture_TITLE:SetTex( "DLG_UI_KEYSETTING.TGA", "TITLE" )
g_pPicture_TITLE:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(436,94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

---키보드 배경
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG2 )
g_pPicture_BG2:SetTex( "DLG_UI_KEYSETTING.TGA", "KEY_BG_W_LEFT" )
g_pPicture_BG2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+45-83,90+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG2 )
g_pPicture_BG2:SetTex( "DLG_UI_KEYSETTING.TGA", "KEY_BG_W_CENTER" )
g_pPicture_BG2:SetPoint
{
	ADD_SIZE_X	= 680+166,
	"LEFT_TOP		= D3DXVECTOR2(115+17+45-83,90+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG2 )
g_pPicture_BG2:SetTex( "DLG_UI_KEYSETTING.TGA", "KEY_BG_W_RIGHT" )
g_pPicture_BG2:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(115+17+678+49+83,90+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

---빈슬롯 배경
g_pPicture_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG3 )
g_pPicture_BG3:SetTex( "DLG_UI_KEYSETTING.TGA", "KEY_BG_G_LEFT" )
g_pPicture_BG3:SetPoint
{
	ADD_SIZE_Y	= 37,
	"LEFT_TOP		= D3DXVECTOR2( 122 + 44-83, 404 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pPicture_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG3 )
g_pPicture_BG3:SetTex( "DLG_UI_KEYSETTING.TGA", "KEY_BG_G_CENTER" )
g_pPicture_BG3:SetPoint
{
	ADD_SIZE_X	= 679+166,
	ADD_SIZE_Y	= 37,
	"LEFT_TOP		= D3DXVECTOR2( 115 + 17 + 44-83, 404 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pPicture_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_BG3 )
g_pPicture_BG3:SetTex( "DLG_UI_KEYSETTING.TGA", "KEY_BG_G_RIGHT" )
g_pPicture_BG3:SetPoint
{
	ADD_SIZE_Y	= 37,
 	"LEFT_TOP		= D3DXVECTOR2( 115 + 17 + 678 + 47+83, 404 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_KEY = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_KEY )
g_pPicture_KEY:SetTex( "DLG_UI_KEY.TGA", "KEY_1" )
g_pPicture_KEY:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2( 174-83, 126 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pPicture_KEY = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_KEY )
g_pPicture_KEY:SetTex( "DLG_UI_KEY.TGA", "KEY_2" )
g_pPicture_KEY:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2( 174 + 507-83, 125 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pPicture_KEY = g_pUIDialog:CreatePicture()
g_pStatic_KEY:AddPicture( g_pPicture_KEY )
g_pPicture_KEY:SetTex( "DLG_UI_KEY.TGA", "KEY_3" )
g_pPicture_KEY:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2( 174 + 507+195-83, 125+54 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

local KeyInfo = 
{
	{ str = "Key_Grave", x = 92 + 37 * 0, y =  180 },
	{ str = "Key_1", x = 91 + 37 * 1, y =  180 },
	{ str = "Key_2", x = 91 + 37 * 2, y =  180 },
	{ str = "Key_3", x = 91 + 37 * 3, y =  180 },
	{ str = "Key_4", x = 91 + 37 * 4, y =  180 },
	{ str = "Key_5", x = 91 + 37 * 5, y =  180 },
	{ str = "Key_6", x = 91 + 37 * 6, y =  180 },
	{ str = "Key_7", x = 91 + 37 * 7, y =  180 },
	{ str = "Key_8", x = 91 + 37 * 8, y =  180 },
	{ str = "Key_9", x = 91 + 37 * 9, y =  180 },
	{ str = "Key_0", x = 91 + 37 * 10, y =  180 },
	{ str = "Key_MINUS", x = 91 + 37 * 11 , y =  180 },
	{ str = "Key_EQUAL", x = 91 + 37 * 12, y =  180 },
	{ str = "Key_BACKS", x = 91 + 37 * 13 + 18, y =  180 },
		
	{ str = "Key_TAB", x = 1024 + 92 + 7, y =  180 + 37 }, --사용하지 않는 항목
	{ str = "Key_Q", x = 91 + 37 * 1 + 19, y =  180 + 37 },
	{ str = "Key_W", x = 91 + 37 * 2 + 19, y =  180 + 37 },
	{ str = "Key_E", x = 91 + 37 * 3 + 19, y =  180 + 37 },
	{ str = "Key_R", x = 91 + 37 * 4 + 19, y =  180 + 37 },
	{ str = "Key_T", x = 91 + 37 * 5 + 19, y =  180 + 37 },
	{ str = "Key_Y", x = 91 + 37 * 6 + 19, y =  180 + 37 },
	{ str = "Key_U", x = 91 + 37 * 7 + 19, y =  180 + 37 },
	{ str = "Key_I", x = 91 + 37 * 8 + 19, y =  180 + 37 },
	{ str = "Key_O", x = 91 + 37 * 9 + 19, y =  180 + 37 },
	{ str = "Key_P", x = 91 + 37 * 10 + 19, y =  180 + 37 },
	{ str = "Key_LBRACKET", x = 91 + 37 * 11 + 19 , y =  180 + 37 },
	{ str = "Key_RBRACKET", x = 91 + 37 * 12 + 19, y =  180 + 37 },
	{ str = "Key_ROOT", x = 91 + 37 * 13  + 29, y =  180 + 37 },
		
	{ str = "Key_CAPS", x = 92 + 18, y =  180 + 37 * 2 },
	{ str = "Key_A", x = 91 + 37 * 2, y =  180 + 37 * 2 },
	{ str = "Key_S", x = 91 + 37 * 3, y =  180 + 37 * 2 },
	{ str = "Key_D", x = 91 + 37 * 4, y =  180 + 37 * 2 },
	{ str = "Key_F", x = 91 + 37 * 5, y =  180 + 37 * 2 },
	{ str = "Key_G", x = 91 + 37 * 6, y =  180 + 37 * 2 },
	{ str = "Key_H", x = 91 + 37 * 7, y =  180 + 37 * 2 },
	{ str = "Key_J", x = 91 + 37 * 8, y =  180 + 37 * 2 },
	{ str = "Key_K", x = 91 + 37 * 9, y =  180 + 37 * 2 },
	{ str = "Key_L", x = 91 + 37 * 10, y =  180 + 37 * 2 },
	{ str = "Key_SEMI", x = 91 + 37 * 11, y =  180 + 37 * 2 },
	{ str = "Key_APO", x = 91 + 37 * 12, y =  180 + 37 * 2 },
	{ str = "Key_ENTER", x = 1024 + 91 + 37 * 13 + 18, y =  180 + 37 * 2 }, --사용하지 않는 항목

	{ str = "Key_LSHIFT", x = 92 + 28, y =  180 + 37 * 3 - 2 },
	{ str = "Key_Z", x = 91 + 37 * 2 + 19, y =  180 + 37 * 3 - 2 },
	{ str = "Key_X", x = 91 + 37 * 3 + 19, y =  180 + 37 * 3 - 2 },
	{ str = "Key_C", x = 91 + 37 * 4 + 19, y =  180 + 37 * 3 - 2 },
	{ str = "Key_V", x = 91 + 37 * 5 + 19, y =  180 + 37 * 3 - 2 },
	{ str = "Key_B", x = 91 + 37 * 6 + 19, y =  180 + 37 * 3 - 2 },
	{ str = "Key_N", x = 91 + 37 * 7 + 19, y =  180 + 37 * 3 - 2 },
	{ str = "Key_M", x = 91 + 37 * 8 + 19, y =  180 + 37 * 3 - 2 },
	{ str = "Key_COMMA", x = 91 + 37 * 9 + 19, y =  180 + 37 * 3 - 2 },
	{ str = "Key_PERIOD", x = 91 + 37 * 10 + 19, y =  180 + 37 * 3 - 2 },
	{ str = "Key_SLASH", x = 91 + 37 * 11 + 19, y =  180 + 37 * 3 - 2 },
	{ str = "Key_RSHIFT", x = 91 + 37 * 13 + 10, y =  180 + 37 * 3 - 2 },
	{ str = "Key_UP", x = 92 + 37 * 16 + 18, y =  180 + 37 * 3 - 2 },
	
	{ str = "Key_LCTRL", x = 92, y =  180 + 37 * 4 - 2 },
	{ str = "Key_LALT", x = 91 + 37 * 2 + 16, y =  180 + 37 * 4 - 2 },
	{ str = "Key_SPACE", x = 91 + 37 * 7 + 3, y =  180 + 37 * 4 - 2 },
	{ str = "Key_RALT", x = 91 + 37 * 11 + 21, y =  180 + 37 * 4 - 2 },
	{ str = "Key_RCTRL", x = 91 + 37 * 14, y =  180 + 37 * 4 - 2 },
	{ str = "Key_LEFT", x = 91 + 37 * 15 + 19, y =  180 + 37 * 4 - 2 },
	{ str = "Key_DOWN", x = 92 + 37 * 16 + 18, y =  180 + 37 * 4 - 2 },
	{ str = "Key_RIGHT", x = 91 + 37 * 17 + 18, y =  180 + 37 * 4 - 2 },

	{ str = "Key_NUMLOCK", x = 110 + 37 * 18 + 18, y =  180 },
	{ str = "Key_NSLASH", x = 110 + 37 * 19 + 18, y =  180 },
	{ str = "Key_NMULTIPLY", x = 110 + 37 * 20 + 18, y =  180 },
	{ str = "Key_NMINUS", x = 110 + 37 * 21 + 18, y =  180 },
	{ str = "Key_NPLUS", x = 110 + 37 * 21 + 18, y =  180 + 37 + 18 },
	{ str = "Key_N0", x = 110 + 37 * 18 + 18 + 18, y =  180 + 37 * 4 - 1 },
	{ str = "Key_N1", x = 110 + 37 * 18 + 18, y =  180 + 37 * 3 - 1 },
	{ str = "Key_N2", x = 110 + 37 * 19 + 18, y =  180 + 37 * 3 - 1 },
	{ str = "Key_N3", x = 110 + 37 * 20 + 18, y =  180 + 37 * 3 - 1 },
	{ str = "Key_N4", x = 110 + 37 * 18 + 18, y =  180 + 37 * 2 },
	{ str = "Key_N5", x = 110 + 37 * 19 + 18, y =  180 + 37 * 2 },
	{ str = "Key_N6", x = 110 + 37 * 20 + 18, y =  180 + 37 * 2 },
	{ str = "Key_N7", x = 110 + 37 * 18 + 18, y =  180 + 37 },
	{ str = "Key_N8", x = 110 + 37 * 19 + 18, y =  180 + 37 },
	{ str = "Key_N9", x = 110 + 37 * 20 + 18, y =  180 + 37 },
	{ str = "Key_NDEL", x = 110 + 37 * 20 + 18, y =  180 + 37 * 4 - 1 },
	{ str = "Key_NENTER", x = 110 + 37 * 21 + 18, y =  180 + 37 * 3 + 18 - 1 },
}

---------- UseKeySlot ----------
for i = 1, 79 do
	g_pSlot = g_pUIDialog:CreateSlot()
	g_pUIDialog:AddControl( g_pSlot )
	g_pSlot:SetName( KeyInfo[i].str )
	g_pSlot:SetItemTex( "DLG_UI_KEYSETTING.TGA", "SLOT_EMPTY" )
	g_pSlot:SetMouseOverTex( "DLG_UI_KEYSETTING.TGA", "SLOT_EMPTY" )
	local str = string.format( "LEFT_TOP = D3DXVECTOR2( %i, %i )", KeyInfo[i].x, KeyInfo[i].y  )
	g_pSlot:SetPoint
	{
		str,
		"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
		CHANGE_TIME	= 0.0,
	}
	g_pSlot:SetMouseOverPoint
	{
		str,
		"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
		CHANGE_TIME	= 0.0,
	}
	
	str = string.format( "POS = D3DXVECTOR2( %i, %i )", KeyInfo[i].x + 4, KeyInfo[i].y + 1 )
	g_pSlot:SetString
	{
		--MSG = STR_ID_14,
		FONT_INDEX	= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		str,
		"COLOR			= D3DXCOLOR( 0.0, 0.5, 1.0, 1.0 )",
		"OUTLINE_COLOR	= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	}
	g_pSlot:SetDragable( true )
	g_pSlot:SetCustomMsgDropped( KEY_PAD_UI_MSG["KPUIM_USESLOT_DROPPED"] )
	g_pSlot:SetCustomMsgMouseOver( KEY_PAD_UI_MSG["KPUIM_USESLOT_MOUSEIN"] )
	g_pSlot:SetCustomMsgMouseOut( KEY_PAD_UI_MSG["KPUIM_USESLOT_MOUSEOUT"] )
end

--[[
------화살표 활성화
g_pPicture_LEFT = g_pUIDialog:CreatePicture()
g_pStatic_ALPHABET:AddPicture( g_pPicture_LEFT )
g_pPicture_LEFT:SetTex( "DLG_UI_KEYSETTING.TGA", "LEFT_OVER" )
g_pPicture_LEFT:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(750,329)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_RIGHT = g_pUIDialog:CreatePicture()
g_pStatic_ALPHABET:AddPicture( g_pPicture_RIGHT )
g_pPicture_RIGHT:SetTex( "DLG_UI_KEYSETTING.TGA", "RIGHT_OVER" )
g_pPicture_RIGHT:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(826,329)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_UP = g_pUIDialog:CreatePicture()
g_pStatic_ALPHABET:AddPicture( g_pPicture_UP )
g_pPicture_UP:SetTex( "DLG_UI_KEYSETTING.TGA", "UP_OVER" )
g_pPicture_UP:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(788,294)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_DOWN = g_pUIDialog:CreatePicture()
g_pStatic_ALPHABET:AddPicture( g_pPicture_DOWN )
g_pPicture_DOWN:SetTex( "DLG_UI_KEYSETTING.TGA", "DOWN_OVER" )
g_pPicture_DOWN:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(788,329)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}--]]

----아래쪽 회색 저장 슬롯 (60개)
for i = 0, 20 do
	posX = 180 - 83 + 40 * i 
	g_pSlot = g_pUIDialog:CreateSlot()
	g_pUIDialog:AddControl( g_pSlot )
	local str = string.format( "EmptySlot%i", i )
	g_pSlot:SetName( str )
	g_pSlot:SetItemTex( "DLG_UI_KEYSETTING.TGA", "SLOT_EMPTY" )
	g_pSlot:SetMouseOverTex( "DLG_UI_KEYSETTING.TGA", "SLOT_EMPTY" )
	g_pSlot:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(posX,411)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pSlot:SetMouseOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(posX,411)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pSlot:SetDragable( true )
	g_pSlot:SetCustomMsgDropped( KEY_PAD_UI_MSG["KPUIM_USESLOT_DROPPED"] )
	g_pSlot:SetCustomMsgMouseOver( KEY_PAD_UI_MSG["KPUIM_USESLOT_MOUSEIN"] )
	g_pSlot:SetCustomMsgMouseOut( KEY_PAD_UI_MSG["KPUIM_USESLOT_MOUSEOUT"] )
end

for i = 0, 20 do
	posX = 180 - 83 + 40 * i 
	g_pSlot = g_pUIDialog:CreateSlot()
	g_pUIDialog:AddControl( g_pSlot )
	local str = string.format( "EmptySlot%i", i + 21 )
	g_pSlot:SetName( str )
	g_pSlot:SetItemTex( "DLG_UI_KEYSETTING.TGA", "SLOT_EMPTY" )
	g_pSlot:SetMouseOverTex( "DLG_UI_KEYSETTING.TGA", "SLOT_EMPTY" )
	g_pSlot:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2( posX, 411 + 37 )",
		"COLOR			= D3DXCOLOR( 1.0, 1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pSlot:SetMouseOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2( posX, 411 + 37 )",
		"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
		CHANGE_TIME	= 0.0,
	}
	g_pSlot:SetDragable( true )
	g_pSlot:SetCustomMsgDropped( KEY_PAD_UI_MSG["KPUIM_USESLOT_DROPPED"] )
	g_pSlot:SetCustomMsgMouseOver( KEY_PAD_UI_MSG["KPUIM_USESLOT_MOUSEIN"] )
	g_pSlot:SetCustomMsgMouseOut( KEY_PAD_UI_MSG["KPUIM_USESLOT_MOUSEOUT"] )
end

for i = 0, 20 do
	posX = 180 - 83 + 40 * i 
	g_pSlot = g_pUIDialog:CreateSlot()
	g_pUIDialog:AddControl( g_pSlot )
	local str = string.format( "EmptySlot%i", i + 42 )
	g_pSlot:SetName( str )
	g_pSlot:SetItemTex( "DLG_UI_KEYSETTING.TGA", "SLOT_EMPTY" )
	g_pSlot:SetMouseOverTex( "DLG_UI_KEYSETTING.TGA", "SLOT_EMPTY" )
	g_pSlot:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2( posX, 411 + 37 * 2 )",
		"COLOR			= D3DXCOLOR( 1.0, 1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pSlot:SetMouseOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2( posX, 411 + 37 * 2 )",
		"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
		CHANGE_TIME	= 0.0,
	}
	g_pSlot:SetDragable( true )
	g_pSlot:SetCustomMsgDropped( KEY_PAD_UI_MSG["KPUIM_USESLOT_DROPPED"] )
	g_pSlot:SetCustomMsgMouseOver( KEY_PAD_UI_MSG["KPUIM_USESLOT_MOUSEIN"] )
	g_pSlot:SetCustomMsgMouseOut( KEY_PAD_UI_MSG["KPUIM_USESLOT_MOUSEOUT"] )
end

--------- Buttons ---------
g_pStatic_BTN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BTN )
g_pStatic_BTN:SetName( "g_pStatic_BTN" )

--ESC
g_pButton_ESC = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ESC )
g_pButton_ESC:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_ESC:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_ESC:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_ESC:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(175-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(175-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ESC:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(175-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(175-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ESC:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(175-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(175-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ESC:SetGuideDesc( STR_ID_24384 )
--F1
g_pButton_F1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F1 )
g_pButton_F1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F1:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F1:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F1:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F1:SetGuideDesc( STR_ID_24385 )
--F2
g_pButton_F2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F2 )
g_pButton_F2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F2:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83+37,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35+37,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F2:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83+37,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35+37,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F2:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83+37,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35+37,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F2:SetGuideDesc( STR_ID_24386 )
--F3
g_pButton_F3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F3 )
g_pButton_F3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F3:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F3:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F3:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83+37*2,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35+37*2,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F3:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83+37*2,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35+37*2,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F3:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83+37*2,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35+37*2,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F3:SetGuideDesc( STR_ID_24387 )
--F4
g_pButton_F4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F4 )
g_pButton_F4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F4:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F4:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F4:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83+37*3,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35+37*3,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F4:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83+37*3,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35+37*3,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F4:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(232-83+37*3,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(232-83+35+37*3,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F4:SetGuideDesc( STR_ID_24388 )
--F5
g_pButton_F5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F5 )
g_pButton_F5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F5:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F5:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F5:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(404-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(404-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F5:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(404-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(404-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F5:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(404-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(404-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F5:SetGuideDesc( STR_ID_24389 )
--F6
g_pButton_F6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F6 )
g_pButton_F6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F6:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F6:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F6:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(404-83+37*1,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(404-83+35+37*1,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F6:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(404-83+37*1,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(404-83+35+37*1,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F6:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(404-83+37*1,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(404-83+35+37*1,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F6:SetGuideDesc( STR_ID_24390 )
--F7 없음
--F8
g_pButton_F8 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F8 )
g_pButton_F8:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F8:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F8:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F8:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(404-83+37*3,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(404-83+35+37*3,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F8:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(404-83+37*3,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(404-83+35+37*3,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F8:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(404-83+37*3,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(404-83+35+37*3,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F8:SetGuideDesc( STR_ID_24391 )

--F9
g_pButton_F9 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F9 )
g_pButton_F9:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F9:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F9:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F9:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F9:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F9:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F9:SetGuideDesc( STR_ID_24392 )
--F10
g_pButton_F10 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F10 )
g_pButton_F10:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F10:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F10:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F10:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83+37*1,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35+37*1,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F10:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83+37*1,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35+37*1,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F10:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83+37*1,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35+37*1,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F10:SetGuideDesc( STR_ID_24393 )
--F11
g_pButton_F11 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F11 )
g_pButton_F11:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F11:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F11:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F11:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83+37*2,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35+37*2,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F11:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83+37*2,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35+37*2,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F11:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83+37*2,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35+37*2,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F11:SetGuideDesc( STR_ID_24394 )
--F12
g_pButton_F12 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_F12 )
g_pButton_F12:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F12:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F12:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_F12:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83+37*3,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35+37*3,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F12:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83+37*3,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35+37*3,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F12:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(577-83+37*3,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(577-83+35+37*3,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_F12:SetGuideDesc( STR_ID_24395 )

--PSC
g_pButton_PSC = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_PSC )
g_pButton_PSC:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_PSC:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_PSC:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_PSC:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(748-83+37*0,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(748-83+35+37*0,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PSC:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(748-83+37*0,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(748-83+35+37*0,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PSC:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(748-83+37*0,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(748-83+35+37*0,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PSC:SetGuideDesc( STR_ID_24396 )
--SLK
g_pButton_SLK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SLK )
g_pButton_SLK:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_SLK:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_SLK:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_SLK:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(748-83+37*1,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(748-83+35+37*1,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SLK:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(748-83+37*1,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(748-83+35+37*1,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SLK:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(748-83+37*1,128)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(748-83+35+37*1,128+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SLK:SetGuideDesc( STR_ID_24397 )
--DEL
g_pButton_DEL = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_DEL )
g_pButton_DEL:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_DEL:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_DEL:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_DEL:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(748-83+37*0,218)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(748-83+35+37*0,218+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_DEL:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(748-83+37*0,218)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(748-83+35+37*0,218+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_DEL:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(748-83+37*0,218)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(748-83+35+37*0,218+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_DEL:SetGuideDesc( STR_ID_24398 )

-------원래대로
g_pButton_REFRESH = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_REFRESH )
g_pButton_REFRESH:SetName( "KEY_PREV" )
g_pButton_REFRESH:SetNormalTex( "DLG_UI_KEYSETTING.tga", "REFRESH_NORMAL" )
g_pButton_REFRESH:SetOverTex( "DLG_UI_KEYSETTING.tga", "REFRESH_OVER" )
g_pButton_REFRESH:SetDownTex( "DLG_UI_KEYSETTING.tga", "REFRESH_OVER" )
g_pButton_REFRESH:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(175-83,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_REFRESH:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(175-83,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_REFRESH:SetDownPoint
{
	ADD_SIZE_X	=-2,
	ADD_SIZE_Y	=-2,
 	"LEFT_TOP		= D3DXVECTOR2(175+1-83,370+1)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_REFRESH:SetCustomMsgMouseUp( KEY_PAD_UI_MSG["KPUIM_PREV"] )
g_pButton_REFRESH:SetPrevTabControlName( "Key_Clear" )
g_pButton_REFRESH:SetTabControlName( "Key_Prev" )

----모두 없애기
g_pButton_DELETE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_DELETE )
g_pButton_DELETE:SetName( "KEY_DELETE" )
g_pButton_DELETE:SetNormalTex( "DLG_UI_KEYSETTING.tga", "ALL_DELL_NORMAL" )
g_pButton_DELETE:SetOverTex( "DLG_UI_KEYSETTING.tga", "ALL_DELL_OVER" )
g_pButton_DELETE:SetDownTex( "DLG_UI_KEYSETTING.tga", "ALL_DELL_OVER" )
g_pButton_DELETE:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(175+70-83,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_DELETE:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(175+70-83,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_DELETE:SetDownPoint
{
	ADD_SIZE_X	=-2,
	ADD_SIZE_Y	=-2,
 	"LEFT_TOP		= D3DXVECTOR2(175+1+70-83,370+1)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_DELETE:SetCustomMsgMouseUp( KEY_PAD_UI_MSG["KPUIM_CLEAR"] )
g_pButton_DELETE:SetPrevTabControlName( "Key_Default" )
g_pButton_DELETE:SetTabControlName( "Key_Clear" )

----초기화
g_pButton_DEFALUT = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_DEFALUT )
g_pButton_DEFALUT:SetName( "KEY_DEFAULT" )
g_pButton_DEFALUT:SetNormalTex( "DLG_UI_KEYSETTING.tga", "DEFAULT_NORMAL" )
g_pButton_DEFALUT:SetOverTex( "DLG_UI_KEYSETTING.tga", "DEFAULT_OVER" )
g_pButton_DEFALUT:SetDownTex( "DLG_UI_KEYSETTING.tga", "DEFAULT_OVER" )
g_pButton_DEFALUT:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 175 + 70 * 2-83, 370 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_DEFALUT:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 175 + 70*2-83, 370 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_DEFALUT:SetDownPoint
{
	ADD_SIZE_X	=-2,
	ADD_SIZE_Y	=-2,
 	"LEFT_TOP		= D3DXVECTOR2( 175+1+70*2-83, 370+1 )",
    "COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_DEFALUT:SetCustomMsgMouseUp( KEY_PAD_UI_MSG["KPUIM_DEFAULT"] )
g_pButton_DEFALUT:SetPrevTabControlName( "Key_Default" )
g_pButton_DEFALUT:SetTabControlName( "Key_Save" )

----저장
g_pButton_SAVE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SAVE )
g_pButton_SAVE:SetName( "KEY_SAVE" )
g_pButton_SAVE:SetNormalTex( "DLG_UI_KEYSETTING.tga", "SAVE_NORMAL" )
g_pButton_SAVE:SetOverTex( "DLG_UI_KEYSETTING.tga", "SAVE_OVER" )
g_pButton_SAVE:SetDownTex( "DLG_UI_KEYSETTING.tga", "SAVE_OVER" )
g_pButton_SAVE:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(175+70+475+83,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SAVE:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(175+70+475+83,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SAVE:SetDownPoint
{
	ADD_SIZE_X	=-2,
	ADD_SIZE_Y	=-2,
 	"LEFT_TOP		= D3DXVECTOR2(175+1+70+475+83,370+1)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SAVE:SetCustomMsgMouseUp( KEY_PAD_UI_MSG["KPUIM_SAVE"] )
g_pButton_SAVE:SetPrevTabControlName( "Key_Cancel" )
g_pButton_SAVE:SetTabControlName( "Key_Save" )


----취소
g_pButton_CANCEL = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_CANCEL )
g_pButton_CANCEL:SetName( "KEY_CANCEL" )
g_pButton_CANCEL:SetNormalTex( "DLG_UI_KEYSETTING.tga", "CANCEL_NORMAL" )
g_pButton_CANCEL:SetOverTex( "DLG_UI_KEYSETTING.tga", "CANCEL_OVER" )
g_pButton_CANCEL:SetDownTex( "DLG_UI_KEYSETTING.tga", "CANCEL_OVER" )
g_pButton_CANCEL:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(175+70+475+70+83,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_CANCEL:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(175+70+475+70+83,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_CANCEL:SetDownPoint
{
	ADD_SIZE_X	=-2,
	ADD_SIZE_Y	=-2,
 	"LEFT_TOP		= D3DXVECTOR2(175+1+70+475+70+83,370+1)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_CANCEL:SetCustomMsgMouseUp( KEY_PAD_UI_MSG["KPUIM_CANCEL"] )
g_pButton_CANCEL:SetPrevTabControlName( "Key_Exit" )
g_pButton_CANCEL:SetTabControlName( "Key_Cancel" )

----닫기 버튼
g_pButton_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_X )
g_pButton_X:SetName( "KEY_X" )
g_pButton_X:SetNormalTex( "DLG_UI_Button19_NEW.tga", "X_NORMAL" )
g_pButton_X:SetOverTex( "DLG_UI_Button19_NEW.tga", "X_OVER" )
g_pButton_X:SetDownTex( "DLG_UI_Button19_NEW.tga", "X_OVER" )
g_pButton_X:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(848+83,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_X:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(848+83,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_X:SetDownPoint
{
	ADD_SIZE_X	=-2,
	ADD_SIZE_Y	=-2,
    "LEFT_TOP		= D3DXVECTOR2(848+1+83,96+1)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_X:SetCustomMsgMouseUp( KEY_PAD_UI_MSG["KPUIM_EXIT"] )
g_pButton_X:SetPrevTabControlName( "Key_Prev" )
g_pButton_X:SetTabControlName( "Key_Exit" )

