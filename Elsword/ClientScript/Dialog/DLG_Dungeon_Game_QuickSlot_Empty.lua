-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Game_QuickSlot_Empty" )
g_pUIDialog:SetPos( -311,97 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticUser_Equip_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Equip_Window )
g_pStaticUser_Equip_Window:SetName( "Static_Game_Quick_Slot_Empty" )


g_pPictureUser_State_Item_Slot1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Item_Slot1 )
g_pPictureUser_State_Item_Slot1:SetTex( "DLG_Common_Texture01.TGA", "Box_Button4" )
g_pPictureUser_State_Item_Slot1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(325,593)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}




g_pPictureUser_State_Item_Slot2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Item_Slot2 )
g_pPictureUser_State_Item_Slot2:SetTex( "DLG_Common_Texture01.TGA", "Box_Button4" )
g_pPictureUser_State_Item_Slot2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(383,593)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Item_Slot3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Item_Slot3 )
g_pPictureUser_State_Item_Slot3:SetTex( "DLG_Common_Texture01.TGA", "Box_Button4" )
g_pPictureUser_State_Item_Slot3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(383 + ( 383 - 325 ),593)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}














--[[

g_pPictureUser_State_Item_Slot3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Item_Slot3 )

g_pPictureUser_State_Item_Slot3:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Item_Slot3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(233,519)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Item_Slot4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Item_Slot4 )

g_pPictureUser_State_Item_Slot4:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Item_Slot4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(293,519)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Item_Slot5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Item_Slot5 )

g_pPictureUser_State_Item_Slot5:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Item_Slot5:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(353,519)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}




g_pPictureUser_State_Item_Slot6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Item_Slot6 )

g_pPictureUser_State_Item_Slot6:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Item_Slot6:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(413,519)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}
--]]
