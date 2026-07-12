-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "Shop_Buy_Item_Info" )
g_pUIDialog:SetPos( 50, 120  )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )








g_pStatic_Shop_Buy_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Shop_Buy_Slot )
g_pStatic_Shop_Buy_Slot:SetName( "Static_Shop_Buy_Item_Info" )



-- 배경 검은색
g_pPicture_Shop_Item_Picture = g_pUIDialog:CreatePicture()
g_pStatic_Shop_Buy_Slot:AddPicture( g_pPicture_Shop_Item_Picture )
g_pPicture_Shop_Item_Picture:SetTex2( "FadeInOut.dds" )
g_pPicture_Shop_Item_Picture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(160, 160)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}





-- 아이템 이름
g_pStatic_Shop_Buy_Slot:AddString
{
	MSG 				= STR_ID_1156,
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(10, 10)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}



-- 유닛 클래스
g_pStatic_Shop_Buy_Slot:AddString
{
	MSG 				= STR_ID_1157,
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(10, 40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}





-- 장착레벨
g_pStatic_Shop_Buy_Slot:AddString
{
	MSG 				= STR_ID_1158,
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(10, 60)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}




-- 가격
g_pStatic_Shop_Buy_Slot:AddString
{
	MSG 				= STR_ID_1159,
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(10, 80)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}




-- 아이템 설명
g_pStatic_Shop_Buy_Slot:AddString
{
	MSG 				= STR_ID_1160,
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(10, 100)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}


