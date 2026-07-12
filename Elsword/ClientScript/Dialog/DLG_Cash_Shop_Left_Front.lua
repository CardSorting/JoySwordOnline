-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



---------------------------왼쪽 인벤토리창 배경

g_pStaticmy_inventory = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticmy_inventory )
g_pStaticmy_inventory:SetName( "g_pStaticmy_inventory" )


g_pPicturemy_inventory_back1 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back1 )

g_pPicturemy_inventory_back1:SetTex( "DLG_Common_New_Texture50.TGA", "back_window1" )

g_pPicturemy_inventory_back1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(3,459-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturemy_inventory_back2 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back2 )

g_pPicturemy_inventory_back2:SetTex( "DLG_Common_New_Texture50.TGA", "back_window2" )

g_pPicturemy_inventory_back2:SetPoint
{
    ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(23,459-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturemy_inventory_back3 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back3 )

g_pPicturemy_inventory_back3:SetTex( "DLG_Common_New_Texture50.TGA", "back_window3" )

g_pPicturemy_inventory_back3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(122,459-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturemy_inventory_back4 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back4 )

g_pPicturemy_inventory_back4:SetTex( "DLG_Common_New_Texture50.TGA", "back_window4" )

g_pPicturemy_inventory_back4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(3,695)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturemy_inventory_back5 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back5 )

g_pPicturemy_inventory_back5:SetTex( "DLG_Common_New_Texture50.TGA", "back_window5" )

g_pPicturemy_inventory_back5:SetPoint
{
    ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(23,695)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturemy_inventory_back6 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back6 )

g_pPicturemy_inventory_back6:SetTex( "DLG_Common_New_Texture50.TGA", "back_window6" )

g_pPicturemy_inventory_back6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(122,695)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturemy_inventory_back7 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back7 )

g_pPicturemy_inventory_back7:SetTex( "DLG_Common_New_Texture50.TGA", "back_window8" )

g_pPicturemy_inventory_back7:SetPoint
{
	ADD_SIZE_Y = 118+4+20,
	"LEFT_TOP		= D3DXVECTOR2(3,580)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturemy_inventory_back8 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back8 )

g_pPicturemy_inventory_back8:SetTex( "DLG_Common_New_Texture50.TGA", "back_window7" )

g_pPicturemy_inventory_back8:SetPoint
{
	ADD_SIZE_Y = 118+4+20,
	"LEFT_TOP		= D3DXVECTOR2(122,580-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturemy_inventory_back9 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back9 )

g_pPicturemy_inventory_back9:SetTex( "DLG_Common_New_Texture50.TGA", "black" )

g_pPicturemy_inventory_back9:SetPoint
{
	ADD_SIZE_X = 118,
	ADD_SIZE_Y = 118,
	"LEFT_TOP		= D3DXVECTOR2(52,600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturemy_inventory_back9 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back9 )

g_pPicturemy_inventory_back9:SetTex( "DLG_Common_New_Texture53.TGA", "check_item_Over" )

g_pPicturemy_inventory_back9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20,468-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}













--[[
---------------------------왼쪽 인벤토리창 라디오버튼


g_pRadioButtonMyinvetory_viewitem = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonMyinvetory_viewitem )

g_pRadioButtonMyinvetory_viewitem:SetFixOverByCheck( true )
g_pRadioButtonMyinvetory_viewitem:SetShowOffBGByCheck( true )

g_pRadioButtonMyinvetory_viewitem:SetName( "Myinvetory_viewitem" )

g_pRadioButtonMyinvetory_viewitem:SetNormalTex( "DLG_Common_New_Texture45.TGA", "view_item_Normal" )


g_pRadioButtonMyinvetory_viewitem:SetOverTex( "DLG_Common_New_Texture45.TGA", "view_item_Over" )


g_pRadioButtonMyinvetory_viewitem:SetCheckedTex( "DLG_Common_New_Texture45.TGA", "view_item_Over" )


g_pRadioButtonMyinvetory_viewitem:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20,472-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonMyinvetory_viewitem:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20,468-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonMyinvetory_viewitem:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(20,474-15)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(20+151,474+31-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonMyinvetory_viewitem:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(20,468-15)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonMyinvetory_viewitem:SetGroupID( 1 )



g_pRadioButtonMyinvetory_checkitem = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonMyinvetory_checkitem )

g_pRadioButtonMyinvetory_checkitem:SetFixOverByCheck( true )
g_pRadioButtonMyinvetory_checkitem:SetShowOffBGByCheck( true )

g_pRadioButtonMyinvetory_checkitem:SetName( "Myinvetory_checkitem" )

g_pRadioButtonMyinvetory_checkitem:SetNormalTex( "DLG_Common_New_Texture45.TGA", "check_item_Normal" )


g_pRadioButtonMyinvetory_checkitem:SetOverTex( "DLG_Common_New_Texture53.TGA", "check_item_Over" )


g_pRadioButtonMyinvetory_checkitem:SetCheckedTex( "DLG_Common_New_Texture53.TGA", "check_item_Over" )


g_pRadioButtonMyinvetory_checkitem:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(172,472-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonMyinvetory_checkitem:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(172,468-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonMyinvetory_checkitem:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(172,472-15)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(172+151,472+31-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonMyinvetory_checkitem:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(172,468-15)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonMyinvetory_checkitem:SetGroupID( 1 )


--]]




---------------------------왼쪽 인벤토리 창 흰 배경


g_pStaticmy_inventory = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticmy_inventory )
g_pStaticmy_inventory:SetName( "g_pStaticmy_inventory" )



g_pPicturemy_inventory_back7 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back7 )

g_pPicturemy_inventory_back7:SetTex( "DLG_Common_New_Texture10.TGA", "item_inventory1" )

g_pPicturemy_inventory_back7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,500-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturemy_inventory_back8 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back8 )

g_pPicturemy_inventory_back8:SetTex( "DLG_Common_New_Texture10.TGA", "item_inventory2" )

g_pPicturemy_inventory_back8:SetPoint
{
	ADD_SIZE_X = 268,
	"LEFT_TOP		= D3DXVECTOR2(35,500-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturemy_inventory_back9 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturemy_inventory_back9 )

g_pPicturemy_inventory_back9:SetTex( "DLG_Common_New_Texture10.TGA", "item_inventory3" )

g_pPicturemy_inventory_back9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(304,500-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------------왼쪽 인벤토리 아이템 슬롯


g_pPicturecashshop_itemslot1_1 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot1_1 )

g_pPicturecashshop_itemslot1_1:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot1_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,517-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot1_2 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot1_2 )

g_pPicturecashshop_itemslot1_2:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot1_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(67,517-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot1_3 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot1_3 )

g_pPicturecashshop_itemslot1_3:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(110,517-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot1_4 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot1_4 )

g_pPicturecashshop_itemslot1_4:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot1_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(153,517-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot1_5 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot1_5 )

g_pPicturecashshop_itemslot1_5:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot1_5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(196,517-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot1_6 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot1_6 )

g_pPicturecashshop_itemslot1_6:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot1_6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(239,517-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot1_7 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot1_7 )

g_pPicturecashshop_itemslot1_7:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot1_7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(282,517-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturecashshop_itemslot2_1 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot2_1 )

g_pPicturecashshop_itemslot2_1:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot2_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,560-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot2_2 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot2_2 )

g_pPicturecashshop_itemslot2_2:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot2_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(67,560-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot2_3 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot2_3 )

g_pPicturecashshop_itemslot2_3:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot2_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(110,560-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot2_4 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot2_4 )

g_pPicturecashshop_itemslot2_4:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot2_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(153,560-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot2_5 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot2_5 )

g_pPicturecashshop_itemslot2_5:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot2_5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(196,560-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot2_6 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot2_6 )

g_pPicturecashshop_itemslot2_6:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot2_6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(239,560-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot2_7 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot2_7 )

g_pPicturecashshop_itemslot2_7:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot2_7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(282,560-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturecashshop_itemslot3_1 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot3_1 )

g_pPicturecashshop_itemslot3_1:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot3_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,603-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot3_2 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot3_2 )

g_pPicturecashshop_itemslot3_2:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot3_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(67,603-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot3_3 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot3_3 )

g_pPicturecashshop_itemslot3_3:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot3_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(110,603-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturecashshop_itemslot3_4 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot3_4 )

g_pPicturecashshop_itemslot3_4:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot3_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(153,603-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot3_5 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot3_5 )

g_pPicturecashshop_itemslot3_5:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot3_5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(196,603-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot3_6 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot3_6 )

g_pPicturecashshop_itemslot3_6:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot3_6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(239,603-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturecashshop_itemslot3_7 = g_pUIDialog:CreatePicture()
g_pStaticmy_inventory:AddPicture( g_pPicturecashshop_itemslot3_7 )

g_pPicturecashshop_itemslot3_7:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturecashshop_itemslot3_7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(282,603-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








---------------------------모두 구입하기 버튼

g_pButtonmy_inventory_allbuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonmy_inventory_allbuy )
g_pButtonmy_inventory_allbuy:SetName( "allbuy" )
g_pButtonmy_inventory_allbuy:SetNormalTex( "DLG_Common_New_Texture54.TGA", "allbuy_normal" )

g_pButtonmy_inventory_allbuy:SetOverTex( "DLG_Common_New_Texture54.TGA", "allbuy_over" )

g_pButtonmy_inventory_allbuy:SetDownTex( "DLG_Common_New_Texture54.TGA", "allbuy_over" )

g_pButtonmy_inventory_allbuy:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(82,654-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmy_inventory_allbuy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(82,654-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmy_inventory_allbuy:SetDownPoint
{
    ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(83,655-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmy_inventory_allbuy:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CHOICED_BUY_ALL"] )









--[[


---------------------------모두 구입하기 버튼2

g_pButtonmy_inventory_allbuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonmy_inventory_allbuy )
g_pButtonmy_inventory_allbuy:SetName( "allbuy" )
g_pButtonmy_inventory_allbuy:SetNormalTex( "DLG_Common_New_Texture51.TGA", "allbuy_normal" )

g_pButtonmy_inventory_allbuy:SetOverTex( "DLG_Common_New_Texture51.TGA", "allbuy_over" )

g_pButtonmy_inventory_allbuy:SetDownTex( "DLG_Common_New_Texture51.TGA", "allbuy_over" )

g_pButtonmy_inventory_allbuy:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(18,654-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmy_inventory_allbuy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,650-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmy_inventory_allbuy:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(15,651-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------------구입하기 버튼



g_pButtonmy_inventory_buy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonmy_inventory_buy )
g_pButtonmy_inventory_buy:SetName( "buy" )
g_pButtonmy_inventory_buy:SetNormalTex( "DLG_Common_New_Texture51.TGA", "buy_normal" )

g_pButtonmy_inventory_buy:SetOverTex( "DLG_Common_New_Texture51.TGA", "buy_over" )

g_pButtonmy_inventory_buy:SetDownTex( "DLG_Common_New_Texture51.TGA", "buy_over" )

g_pButtonmy_inventory_buy:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(122,654-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmy_inventory_buy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(118,650-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmy_inventory_buy:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(119,651-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------------------찜해두기 버튼


g_pButtonmy_inventory_check = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonmy_inventory_check )
g_pButtonmy_inventory_check:SetName( "chack" )
g_pButtonmy_inventory_check:SetNormalTex( "DLG_Common_New_Texture51.TGA", "check_normal" )

g_pButtonmy_inventory_check:SetOverTex( "DLG_Common_New_Texture51.TGA", "check_over" )

g_pButtonmy_inventory_check:SetDownTex( "DLG_Common_New_Texture51.TGA", "check_over" )

g_pButtonmy_inventory_check:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(226,654-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmy_inventory_check:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(222,650-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmy_inventory_check:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(223,651-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]






---------------------------캐시샵나가기

g_pButtoncashshop_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncashshop_exit )
g_pButtoncashshop_exit:SetName( "cashshop_exit" )
g_pButtoncashshop_exit:SetNormalTex( "DLG_Common_New_Texture51.TGA", "cashshop_exit_normal" )

g_pButtoncashshop_exit:SetOverTex( "DLG_Common_New_Texture51.TGA", "cashshop_exit_over" )

g_pButtoncashshop_exit:SetDownTex( "DLG_Common_New_Texture51.TGA", "cashshop_exit_over" )

g_pButtoncashshop_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(40,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncashshop_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(40,690)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncashshop_exit:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(41,691)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtoncashshop_exit:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CASH_SHOP"] )




------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-----------------------장착 슬롯



g_pStaticCash_Equip_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCash_Equip_Slot )
g_pStaticCash_Equip_Slot:SetName( "g_pStaticCash_Equip_Slot" )


g_pPictureCash_Equip_Slot_Avatar = g_pUIDialog:CreatePicture()
g_pStaticCash_Equip_Slot:AddPicture( g_pPictureCash_Equip_Slot_Avatar )

g_pPictureCash_Equip_Slot_Avatar:SetTex( "DLG_Common_New_Texture57.TGA", "Cash_Equip_Slot_Avatar" )

g_pPictureCash_Equip_Slot_Avatar:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(7,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCash_Equip_Slot_Acc = g_pUIDialog:CreatePicture()
g_pStaticCash_Equip_Slot:AddPicture( g_pPictureCash_Equip_Slot_Acc )

g_pPictureCash_Equip_Slot_Acc:SetTex( "DLG_Common_New_Texture57.TGA", "Cash_Equip_Slot_Acc" )

g_pPictureCash_Equip_Slot_Acc:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(298,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCash_Equip_Slot_Weapon_Acc = g_pUIDialog:CreatePicture()
g_pStaticCash_Equip_Slot:AddPicture( g_pPictureCash_Equip_Slot_Weapon_Acc )

g_pPictureCash_Equip_Slot_Weapon_Acc:SetTex( "DLG_Common_New_Texture68.TGA", "weapon_ac_slot" )

g_pPictureCash_Equip_Slot_Weapon_Acc:SetPoint
{
	ADD_SIZE_X = -23,
	ADD_SIZE_Y = -23,
	"LEFT_TOP		= D3DXVECTOR2(50,90)",
	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,1.0)",
	CHANGE_TIME		= 0.0,
}

-- SERV_NEW_ONE_PIECE_AVATAR_SLOT
g_pPictureCash_Equip_Slot_One_Piece_Avatar = g_pUIDialog:CreatePicture()
g_pStaticCash_Equip_Slot:AddPicture( g_pPictureCash_Equip_Slot_One_Piece_Avatar )

g_pPictureCash_Equip_Slot_One_Piece_Avatar:SetTex( "DLG_Common_Texture_INT_ALL01.tga", "AVATA_ONEPIECE_CASH" )

g_pPictureCash_Equip_Slot_One_Piece_Avatar:SetPoint
{
	ADD_SIZE_X = -11,
	ADD_SIZE_Y = -11,
	"LEFT_TOP		= D3DXVECTOR2(11,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}