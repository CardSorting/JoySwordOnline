-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Right_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )

---------------------------캐시샵 타이틀

g_pStaticcashshop_title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticcashshop_title )
g_pStaticcashshop_title:SetName( "g_pStaticcashshop_title" )


g_pPicturecashshop_title = g_pUIDialog:CreatePicture()
g_pStaticcashshop_title:AddPicture( g_pPicturecashshop_title )

g_pPicturecashshop_title:SetTex( "DLG_Common_New_Texture51.TGA", "CASHSHOP_TITLE" )

g_pPicturecashshop_title:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(4,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









---------------------------오른쪽 캐시 정보창



g_pStaticCashshop_back2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashshop_back2 )
g_pStaticCashshop_back2:SetName( "g_pStaticCashshop_back2" )


g_pPictureCashshop_back_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG1 )

g_pPictureCashshop_back_BG1:SetTex( "DLG_Common_New_Texture50.TGA", "back_window1" )

g_pPictureCashshop_back_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(346,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG2 )

g_pPictureCashshop_back_BG2:SetTex( "DLG_Common_New_Texture50.TGA", "back_window2" )

g_pPictureCashshop_back_BG2:SetPoint
{
    ADD_SIZE_X = 394,
	"LEFT_TOP		= D3DXVECTOR2(405,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG3 )

g_pPictureCashshop_back_BG3:SetTex( "DLG_Common_New_Texture50.TGA", "back_window3" )

g_pPictureCashshop_back_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(800,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG4 )

g_pPictureCashshop_back_BG4:SetTex( "DLG_Common_New_Texture50.TGA", "back_window4" )

g_pPictureCashshop_back_BG4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(346,695)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG5 )

g_pPictureCashshop_back_BG5:SetTex( "DLG_Common_New_Texture50.TGA", "back_window5" )

g_pPictureCashshop_back_BG5:SetPoint
{
    ADD_SIZE_X = 394,
	"LEFT_TOP		= D3DXVECTOR2(405,695)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG6 )

g_pPictureCashshop_back_BG6:SetTex( "DLG_Common_New_Texture50.TGA", "back_window6" )

g_pPictureCashshop_back_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(800,695)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_back_BG7 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG7 )

g_pPictureCashshop_back_BG7:SetTex( "DLG_Common_New_Texture50.TGA", "back_window8" )

g_pPictureCashshop_back_BG7:SetPoint
{
	ADD_SIZE_Y = 518+4,
	"LEFT_TOP		= D3DXVECTOR2(346,180-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_back_BG8 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG8 )

g_pPictureCashshop_back_BG8:SetTex( "DLG_Common_New_Texture50.TGA", "back_window7" )

g_pPictureCashshop_back_BG8:SetPoint
{
	ADD_SIZE_Y = 518+4,
	"LEFT_TOP		= D3DXVECTOR2(800,180-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_back_BG9 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG9 )

g_pPictureCashshop_back_BG9:SetTex( "DLG_Common_New_Texture50.TGA", "BLACK" )

g_pPictureCashshop_back_BG9:SetPoint
{
	ADD_SIZE_X = 414,
	ADD_SIZE_Y = 518+4,
	"LEFT_TOP		= D3DXVECTOR2(400,180-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------------------캐시  아이템 보관함 타이틀

g_pPictureCashshop_back_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG10 )

g_pPictureCashshop_back_BG10:SetTex( "DLG_Common_New_Texture50.TGA", "pattern2" )

g_pPictureCashshop_back_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,577)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back_BG11 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG11 )

g_pPictureCashshop_back_BG11:SetTex( "DLG_Common_New_Texture37.TGA", "pattern1" )

g_pPictureCashshop_back_BG11:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(618,577)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back_BG12 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG12 )

g_pPictureCashshop_back_BG12:SetTex( "DLG_Common_New_Texture37.TGA", "cash_inventory" )

g_pPictureCashshop_back_BG12:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(465-21,582)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








---------------------------캐시  아이템 보관함 흰 배경




g_pPictureCashshop_back_BG13 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG13 )

g_pPictureCashshop_back_BG13:SetTex( "DLG_Common_New_Texture53.TGA", "backimage1" )

g_pPictureCashshop_back_BG13:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(353,609)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back_BG14 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG14 )

g_pPictureCashshop_back_BG14:SetTex( "DLG_Common_New_Texture53.TGA", "backimage2" )

g_pPictureCashshop_back_BG14:SetPoint
{
	ADD_SIZE_X = 359,
	"LEFT_TOP		= D3DXVECTOR2(363,609)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_back_BG15 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG15 )

g_pPictureCashshop_back_BG15:SetTex( "DLG_Common_New_Texture53.TGA", "backimage3" )

g_pPictureCashshop_back_BG15:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(725-3,609)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back_BG16 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG16 )

g_pPictureCashshop_back_BG16:SetTex( "DLG_Common_New_Texture53.TGA", "arrow_back" )

g_pPictureCashshop_back_BG16:SetPoint
{
	 ADD_SIZE_Y = -23,
	"LEFT_TOP		= D3DXVECTOR2(706,613+10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------------캐시 보유창 

g_pPictureCashshop_back_BG17 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG17 )

g_pPictureCashshop_back_BG17:SetTex( "DLG_Common_New_Texture37.TGA", "cashbox" )

g_pPictureCashshop_back_BG17:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(736,575)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashshop_back_BG18 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPictureCashshop_back_BG18 )

g_pPictureCashshop_back_BG18:SetTex( "DLG_Common_New_Texture54.TGA", "inventory_comment" )

g_pPictureCashshop_back_BG18:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(359,708)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------(폰트)

	
g_pStaticcash_num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticcash_num )
g_pStaticcash_num:SetName( "g_pStaticcash_num" )

g_pStaticcash_num:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(875,610)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


---------------------------캐시아이템 보관함 아이템 슬롯


g_pPicturecashshop_itemslot4_1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot4_1 )

g_pPicturecashshop_itemslot4_1:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot4_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot4_2 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot4_2 )

g_pPicturecashshop_itemslot4_2:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot4_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(403,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot4_3 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot4_3 )

g_pPicturecashshop_itemslot4_3:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot4_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(446,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicturecashshop_itemslot4_4 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot4_4 )

g_pPicturecashshop_itemslot4_4:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot4_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(489,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicturecashshop_itemslot4_5 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot4_5 )

g_pPicturecashshop_itemslot4_5:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot4_5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(532,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicturecashshop_itemslot4_6 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot4_6 )

g_pPicturecashshop_itemslot4_6:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot4_6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(575,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot4_7 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot4_7 )

g_pPicturecashshop_itemslot4_7:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot4_7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(618,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot4_8 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot4_8 )

g_pPicturecashshop_itemslot4_8:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot4_8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(661,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPicturecashshop_itemslot5_1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot5_1 )

g_pPicturecashshop_itemslot5_1:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot5_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,658)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot5_2 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot5_2 )

g_pPicturecashshop_itemslot5_2:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot5_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(403,658)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot5_3 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot5_3 )

g_pPicturecashshop_itemslot5_3:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot5_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(446,658)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicturecashshop_itemslot5_4 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot5_4 )

g_pPicturecashshop_itemslot5_4:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot5_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(489,658)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicturecashshop_itemslot5_5 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot5_5 )

g_pPicturecashshop_itemslot5_5:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot5_5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(532,658)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicturecashshop_itemslot5_6 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot5_6 )

g_pPicturecashshop_itemslot5_6:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot5_6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(575,658)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot5_7 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot5_7 )

g_pPicturecashshop_itemslot5_7:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot5_7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(618,658)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot5_8 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back2:AddPicture( g_pPicturecashshop_itemslot5_8 )

g_pPicturecashshop_itemslot5_8:SetTex( "DLG_Common_New_Texture37.TGA", "itemslot_small" )

g_pPicturecashshop_itemslot5_8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(661,658)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--[[
---------------------------내 소지품으로 보내기




g_pButtonCashshop_inventory_move = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCashshop_inventory_move )
g_pButtonCashshop_inventory_move:SetName( "Cashshop_inventory_move" )
g_pButtonCashshop_inventory_move:SetNormalTex( "DLG_Common_New_Texture51.TGA", "inventory_move_normal" )

g_pButtonCashshop_inventory_move:SetOverTex( "DLG_Common_New_Texture51.TGA", "inventory_move_over" )

g_pButtonCashshop_inventory_move:SetDownTex( "DLG_Common_New_Texture51.TGA", "inventory_move_over" )

g_pButtonCashshop_inventory_move:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(359,705)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_inventory_move:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(355,701)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_inventory_move:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(356,702)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------------모두 보내기



g_pButtonCashshop_all_move = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCashshop_all_move )
g_pButtonCashshop_all_move:SetName( "Cashshop_all_move" )
g_pButtonCashshop_all_move:SetNormalTex( "DLG_Common_New_Texture51.TGA", "all_move_normal" )

g_pButtonCashshop_all_move:SetOverTex( "DLG_Common_New_Texture51.TGA", "all_move_over" )

g_pButtonCashshop_all_move:SetDownTex( "DLG_Common_New_Texture51.TGA", "all_move_over" )

g_pButtonCashshop_all_move:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(545,705)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_all_move:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(541,701)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_all_move:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(542,702)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--]]

---------------------------캐시 충전 버튼

g_pButtonbuy_cash = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonbuy_cash )
g_pButtonbuy_cash:SetName( "buy_cash" )
g_pButtonbuy_cash:SetNormalTex( "DLG_Common_New_Texture72.TGA", "buy_cash_normal" )

g_pButtonbuy_cash:SetOverTex( "DLG_Common_New_Texture72.TGA", "buy_cash_over" )

g_pButtonbuy_cash:SetDownTex( "DLG_Common_New_Texture72.TGA", "buy_cash_over" )

g_pButtonbuy_cash:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(744,656)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonbuy_cash:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(744-1,656-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonbuy_cash:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(745-1,657-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonbuy_cash:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CASH_CHARGE"]  )


---------------쿠폰 입력



g_pButton_coupon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_coupon )
g_pButton_coupon:SetName( "coupon" )
g_pButton_coupon:SetNormalTex( "DLG_Common_New_Texture72.TGA", "coupon_normal" )

g_pButton_coupon:SetOverTex( "DLG_Common_New_Texture72.TGA", "coupon_over" )

g_pButton_coupon:SetDownTex( "DLG_Common_New_Texture72.TGA", "coupon_over" )

g_pButton_coupon:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(911,656)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_coupon:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911,656)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_coupon:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(912,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_coupon:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COUPON_INPUT_BOX"]  )



--------------환불 버튼_1123

g_pButton_refund = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_refund )
g_pButton_refund:SetName( "refund" )
g_pButton_refund:SetNormalTex( "DLG_Common_New_Texture72.TGA", "refund_normal" )

g_pButton_refund:SetOverTex( "DLG_Common_New_Texture72.TGA", "refund_over" )

g_pButton_refund:SetDownTex( "DLG_Common_New_Texture72.TGA", "refund_over" )

-- 지헌 : 청약 철회는 일단 뺍시다
g_pButton_refund:SetShow( false, false );

g_pButton_refund:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(945,656)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_refund:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(945,656)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_refund:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(946,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_refund:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CASH_ITEM_REFUND"]  )







---------------------------캐시 아이템 보관함 화살표

 

g_pButtonarrow_up1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonarrow_up1 )
g_pButtonarrow_up1:SetName( "cashitem_arrow_up2" )
g_pButtonarrow_up1:SetNormalTex( "DLG_Common_New_Texture53.TGA", "arrow_up1" )

g_pButtonarrow_up1:SetOverTex( "DLG_Common_New_Texture53.TGA", "arrow_up_over1" )

g_pButtonarrow_up1:SetDownTex( "DLG_Common_New_Texture53.TGA", "arrow_up_over1" )

g_pButtonarrow_up1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(707,634-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonarrow_up1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(706,634-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonarrow_up1:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(707,635-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonarrow_up1:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CASH_ITEM_DEPOSIT_PREV_PAGE"] )



g_pButtonarrow_down1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonarrow_down1 )
g_pButtonarrow_down1:SetName( "cashitem_arrow_down2" )
g_pButtonarrow_down1:SetNormalTex( "DLG_Common_New_Texture53.TGA", "arrow_down1" )

g_pButtonarrow_down1:SetOverTex( "DLG_Common_New_Texture53.TGA", "arrow_down_over1" )

g_pButtonarrow_down1:SetDownTex( "DLG_Common_New_Texture53.TGA", "arrow_down_over1" )

g_pButtonarrow_down1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(707,655+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonarrow_down1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(706,655+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonarrow_down1:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(707,656+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonarrow_down1:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CASH_ITEM_DEPOSIT_NEXT_PAGE"] )








---------------------------장착 아이템 모두 구입 버튼

g_pButtonallbuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonallbuy )
g_pButtonallbuy:SetName( "EquippingAllBuy" )
g_pButtonallbuy:SetNormalTex( "DLG_Common_New_Texture54.TGA", "all_buy2_normal" )

g_pButtonallbuy:SetDisableTex( "DLG_Common_New_Texture54.TGA", "all_buy2_normal" )

g_pButtonallbuy:SetOverTex( "DLG_Common_New_Texture54.TGA", "all_buy2_over" )

g_pButtonallbuy:SetDownTex( "DLG_Common_New_Texture54.TGA", "all_buy2_over" )

g_pButtonallbuy:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(10+80,406)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonallbuy:SetDisablePoint
{


 	"LEFT_TOP		= D3DXVECTOR2(10+80,406)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pButtonallbuy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(6+80,402)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonallbuy:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(7+80,403)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonallbuy:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_ALL_EQUIPPING_ITEMS"] )







---------------------------모두 벗기 버튼

g_pButtonalloff = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonalloff )
g_pButtonalloff:SetName( "alloff" )
g_pButtonalloff:SetNormalTex( "DLG_Common_New_Texture51.TGA", "all_off_normal" )

g_pButtonalloff:SetOverTex( "DLG_Common_New_Texture51.TGA", "all_off_over" )

g_pButtonalloff:SetDownTex( "DLG_Common_New_Texture51.TGA", "all_off_over" )

g_pButtonalloff:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(10+240,406)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalloff:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(6+240,402)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalloff:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(7+240,403)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalloff:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_TAKE_OFF_ALL_ITEM"] )







------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


g_pStaticCashshop_tab = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashshop_tab )
g_pStaticCashshop_tab:SetName( "g_pStaticCashshop_tab" )


g_pPictureCashshop_tab_BG = g_pUIDialog:CreatePicture()
g_pStaticCashshop_tab:AddPicture( g_pPictureCashshop_tab_BG )

g_pPictureCashshop_tab_BG:SetTex( "DLG_Common_New_Texture53.TGA", "tab" )

g_pPictureCashshop_tab_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(363,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------------오른쪽 인벤토리창 라디오버튼


g_pRadioButtontab_main = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtontab_main )

g_pRadioButtontab_main:SetFixOverByCheck( true )
g_pRadioButtontab_main:SetShowOffBGByCheck( true )

g_pRadioButtontab_main:SetName( "tab_main" )

g_pRadioButtontab_main:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButtontab_main:SetOverTex( "DLG_Common_New_Texture53.TGA", "main_tab_Over" )


g_pRadioButtontab_main:SetCheckedTex( "DLG_Common_New_Texture53.TGA", "main_tab_Over" )


g_pRadioButtontab_main:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_main:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_main:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(365,12)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(365+69,12+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtontab_main:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(364,10)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pRadioButtontab_main:SetGroupID( 2 )

g_pRadioButtontab_main:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CATEGORY_CHANGE"] ) 


g_pRadioButtontab_fashon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtontab_fashon )

g_pRadioButtontab_fashon:SetFixOverByCheck( true )
g_pRadioButtontab_fashon:SetShowOffBGByCheck( true )

g_pRadioButtontab_fashon:SetName( "tab_fashon" )
g_pRadioButtontab_fashon:AddDummyInt( CASH_SHOP_CATEGORY["CSC_FASHION"] )

g_pRadioButtontab_fashon:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButtontab_fashon:SetOverTex( "DLG_Common_New_Texture53.TGA", "fashon_tab_Over" )


g_pRadioButtontab_fashon:SetCheckedTex( "DLG_Common_New_Texture53.TGA", "fashon_tab_Over" )


g_pRadioButtontab_fashon:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_fashon:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_fashon:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(364+71,12)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(364+71+71,12+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtontab_fashon:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(364+71,10)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_fashon:SetGroupID( 2 )

g_pRadioButtontab_fashon:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CATEGORY_CHANGE"] ) 


g_pRadioButtontab_Accessory = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtontab_Accessory )

g_pRadioButtontab_Accessory:SetFixOverByCheck( true )
g_pRadioButtontab_Accessory:SetShowOffBGByCheck( true )

g_pRadioButtontab_Accessory:SetName( "tab_Accessory" )
g_pRadioButtontab_Accessory:AddDummyInt( CASH_SHOP_CATEGORY["CSC_ACCESSORY"] )

g_pRadioButtontab_Accessory:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButtontab_Accessory:SetOverTex( "DLG_Common_New_Texture53.TGA", "item_tab_Over" )


g_pRadioButtontab_Accessory:SetCheckedTex( "DLG_Common_New_Texture53.TGA", "item_tab_Over" )


g_pRadioButtontab_Accessory:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Accessory:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Accessory:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71,12)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(364+71+71+71,12+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtontab_Accessory:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71,10)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Accessory:SetGroupID( 2 )

g_pRadioButtontab_Accessory:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CATEGORY_CHANGE"] ) 


g_pRadioButtontab_Use = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtontab_Use )

g_pRadioButtontab_Use:SetFixOverByCheck( true )
g_pRadioButtontab_Use:SetShowOffBGByCheck( true )

g_pRadioButtontab_Use:SetName( "tab_Use" )
g_pRadioButtontab_Use:AddDummyInt( CASH_SHOP_CATEGORY["CSC_CONSUME"] )

g_pRadioButtontab_Use:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButtontab_Use:SetOverTex( "DLG_Common_New_Texture53.TGA", "package_tab_Over" )


g_pRadioButtontab_Use:SetCheckedTex( "DLG_Common_New_Texture53.TGA", "package_tab_Over" )


g_pRadioButtontab_Use:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Use:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Use:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71,12)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(364+71+71+71+71,12+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtontab_Use:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71,10)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Use:SetGroupID( 2 )

g_pRadioButtontab_Use:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CATEGORY_CHANGE"] ) 



g_pRadioButtontab_Setup = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtontab_Setup )

g_pRadioButtontab_Setup:SetFixOverByCheck( true )
g_pRadioButtontab_Setup:SetShowOffBGByCheck( true )

g_pRadioButtontab_Setup:SetName( "tab_Setup" )
g_pRadioButtontab_Setup:AddDummyInt( CASH_SHOP_CATEGORY["CSC_INSTALL"] )


g_pRadioButtontab_Setup:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButtontab_Setup:SetOverTex( "DLG_Common_New_Texture53.TGA", "pet_tab_Over" )


g_pRadioButtontab_Setup:SetCheckedTex( "DLG_Common_New_Texture53.TGA", "pet_tab_Over" )


g_pRadioButtontab_Setup:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Setup:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Setup:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71,12)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(364+71+71+71+71+71,12+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtontab_Setup:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71,10)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Setup:SetGroupID( 2 )

g_pRadioButtontab_Setup:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CATEGORY_CHANGE"] ) 



--펫
g_pRadioButtontab_Pet = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtontab_Pet )

g_pRadioButtontab_Pet:SetFixOverByCheck( true )
g_pRadioButtontab_Pet:SetShowOffBGByCheck( true )

g_pRadioButtontab_Pet:SetName( "tab_Pet" )
g_pRadioButtontab_Pet:AddDummyInt( CASH_SHOP_CATEGORY["CSC_PET"] )

g_pRadioButtontab_Pet:SetNormalTex( "DLG_Common_New_Texture53.TGA", "invisible" )


g_pRadioButtontab_Pet:SetOverTex( "DLG_Common_New_Texture53.TGA", "other_tab_Over" )


g_pRadioButtontab_Pet:SetCheckedTex( "DLG_Common_New_Texture53.TGA", "other_tab_Over" )


g_pRadioButtontab_Pet:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Pet:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Pet:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71,12)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(364+71+71+71+71+71+71,12+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtontab_Pet:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71,10)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Pet:SetGroupID( 2 )


g_pRadioButtontab_Pet:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CATEGORY_CHANGE"] ) 


--이벤트
g_pRadioButtontab_Event = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtontab_Event )

g_pRadioButtontab_Event:SetFixOverByCheck( true )
g_pRadioButtontab_Event:SetShowOffBGByCheck( true )

g_pRadioButtontab_Event:SetName( "tab_Event" )
g_pRadioButtontab_Event:AddDummyInt( CASH_SHOP_CATEGORY["CSC_EVENT"] )

g_pRadioButtontab_Event:SetNormalTex( "DLG_Common_New_Texture54.TGA", "event_normal" )


g_pRadioButtontab_Event:SetOverTex( "DLG_Common_New_Texture54.TGA", "event_Over" )


g_pRadioButtontab_Event:SetCheckedTex( "DLG_Common_New_Texture54.TGA", "event_Over" )


g_pRadioButtontab_Event:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Event:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Event:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71,14)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(364+71+71+71+71+71+71+71,12+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtontab_Event:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71,10)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Event:SetGroupID( 2 )

g_pRadioButtontab_Event:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CATEGORY_CHANGE"] ) 


--[[
---이벤트 탭

g_pRadioButtontab_Event = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtontab_Event )

g_pRadioButtontab_Event:SetFixOverByCheck( true )
g_pRadioButtontab_Event:SetShowOffBGByCheck( true )

g_pRadioButtontab_Event:SetName( "tab_Event" )
g_pRadioButtontab_Event:AddDummyInt( CASH_SHOP_CATEGORY["CSC_EVENT"] )

g_pRadioButtontab_Event:SetNormalTex( "DLG_Common_New_Texture54.TGA", "event_normal" )


g_pRadioButtontab_Event:SetOverTex( "DLG_Common_New_Texture54.TGA", "event_Over" )


g_pRadioButtontab_Event:SetCheckedTex( "DLG_Common_New_Texture54.TGA", "event_Over" )


g_pRadioButtontab_Event:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Event:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Event:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71,12)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(364+71+71+71+71+71+71,12+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtontab_Event:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71,10)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Event:SetGroupID( 2 )


g_pRadioButtontab_Event:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CATEGORY_CHANGE"] ) 
--]]

---------------미국 스팀 이벤트 탭
--[[
g_pRadioButtontab_Event_2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtontab_Event_2 )

g_pRadioButtontab_Event_2:SetFixOverByCheck( true )
g_pRadioButtontab_Event_2:SetShowOffBGByCheck( true )

g_pRadioButtontab_Event_2:SetName( "tab_Event_2" )
g_pRadioButtontab_Event_2:AddDummyInt( CASH_SHOP_CATEGORY["CSC_EVENT_2"] )

g_pRadioButtontab_Event_2:SetNormalTex( "DLG_Common_New_Texture53.TGA", "STEAM_NORMAL" )


g_pRadioButtontab_Event_2:SetOverTex( "DLG_Common_New_Texture53.TGA", "STEAM_OVER" )


g_pRadioButtontab_Event_2:SetCheckedTex( "DLG_Common_New_Texture53.TGA", "STEAM_OVER" )


g_pRadioButtontab_Event_2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71+71,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Event_2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71+71,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Event_2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71+71,14)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(364+71+71+71+71+71+71+71+71,12+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtontab_Event_2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71+71,10)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Event_2:SetGroupID( 2 )

g_pRadioButtontab_Event_2:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CATEGORY_CHANGE"] )
--]]

---------------자동결제 탭

g_pRadioButtontab_Auto_Account = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtontab_Auto_Account )

g_pRadioButtontab_Auto_Account:SetFixOverByCheck( true )
g_pRadioButtontab_Auto_Account:SetShowOffBGByCheck( true )

g_pRadioButtontab_Auto_Account:SetName( "tab_Auto_Account" )
g_pRadioButtontab_Auto_Account:AddDummyInt( CASH_SHOP_CATEGORY["CSC_AUTO_PAYMENT"] )

g_pRadioButtontab_Auto_Account:SetNormalTex( "DLG_Common_New_Texture70.TGA", "Auto_Account_normal" )


g_pRadioButtontab_Auto_Account:SetOverTex( "DLG_Common_New_Texture70.TGA", "Auto_Account_Over" )


g_pRadioButtontab_Auto_Account:SetCheckedTex( "DLG_Common_New_Texture70.TGA", "Auto_Account_Over" )


g_pRadioButtontab_Auto_Account:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Auto_Account:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Auto_Account:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71,14)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(364+71+71+71+71+71+71+71,12+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtontab_Auto_Account:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(364+71+71+71+71+71+71,10)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtontab_Auto_Account:SetGroupID( 2 )

g_pRadioButtontab_Auto_Account:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CATEGORY_CHANGE"] )


---------------------------오른쪽 캐시 정보창2



g_pStaticCashshop_back3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashshop_back3 )
g_pStaticCashshop_back3:SetName( "g_pStaticCashshop_back3" )


g_pPictureCashshop_back2_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back3:AddPicture( g_pPictureCashshop_back2_BG1 )

g_pPictureCashshop_back2_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "whiteback1" )

g_pPictureCashshop_back2_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(354+1,41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back2_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back3:AddPicture( g_pPictureCashshop_back2_BG1 )

g_pPictureCashshop_back2_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "whiteback2" )

g_pPictureCashshop_back2_BG1:SetPoint
{
	ADD_SIZE_X = 590,
	"LEFT_TOP		= D3DXVECTOR2(390+1,41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back2_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back3:AddPicture( g_pPictureCashshop_back2_BG1 )

g_pPictureCashshop_back2_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "whiteback3" )

g_pPictureCashshop_back2_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(980+1,41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_back2_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back3:AddPicture( g_pPictureCashshop_back2_BG1 )

g_pPictureCashshop_back2_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "whiteback4" )

g_pPictureCashshop_back2_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(354+1,42+503+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back2_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back3:AddPicture( g_pPictureCashshop_back2_BG1 )

g_pPictureCashshop_back2_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "whiteback5" )

g_pPictureCashshop_back2_BG1:SetPoint
{
	ADD_SIZE_X = 595,
	"LEFT_TOP		= D3DXVECTOR2(385+1,42+503+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back2_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back3:AddPicture( g_pPictureCashshop_back2_BG1 )

g_pPictureCashshop_back2_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "whiteback6" )

g_pPictureCashshop_back2_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(980+1,42+503+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_back2_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back3:AddPicture( g_pPictureCashshop_back2_BG1 )

g_pPictureCashshop_back2_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "whiteback7" )

g_pPictureCashshop_back2_BG1:SetPoint
{
	ADD_SIZE_Y = 476+5,
	"LEFT_TOP		= D3DXVECTOR2(354+1,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_back2_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back3:AddPicture( g_pPictureCashshop_back2_BG1 )

g_pPictureCashshop_back2_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "whiteback8" )

g_pPictureCashshop_back2_BG1:SetPoint
{
	ADD_SIZE_Y = 476+5,
	"LEFT_TOP		= D3DXVECTOR2(980+1,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_back2_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_back3:AddPicture( g_pPictureCashshop_back2_BG1 )

g_pPictureCashshop_back2_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "whiteback9" )

g_pPictureCashshop_back2_BG1:SetPoint
{
	ADD_SIZE_X = 615,
	ADD_SIZE_Y = 476+5,
	"LEFT_TOP		= D3DXVECTOR2(380+1,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









IncludeLua( "DLG_Cash_Shop_Left_Front.lua" )
