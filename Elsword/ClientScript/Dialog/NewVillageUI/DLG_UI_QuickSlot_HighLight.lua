-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"])
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

-----인벤 슬롯
g_pStaticInven_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInven_Slot )
g_pStaticInven_Slot:SetName( "g_pStaticInvenHighLight" )
g_pStaticInven_Slot:SetOffsetPos(-5,-5)

g_pPictureInven_slot1= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot1)
g_pPictureInven_slot1:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )
g_pPictureInven_slot1:SetPoint
{    
	ADD_SIZE_X	= - 10;
	ADD_SIZE_Y  = - 10;
	"LEFT_TOP		= D3DXVECTOR2(19,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInven_slot2= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot2)
g_pPictureInven_slot2:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )
g_pPictureInven_slot2:SetPoint
{
    
	ADD_SIZE_X	= - 10;
	ADD_SIZE_Y  = - 10;
	"LEFT_TOP		= D3DXVECTOR2(19+43,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot3= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot3)

g_pPictureInven_slot3:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot3:SetPoint
{
    
	ADD_SIZE_X	= - 10;
	ADD_SIZE_Y  = - 10;
	"LEFT_TOP		= D3DXVECTOR2(19+86,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot4= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot4)

g_pPictureInven_slot4:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot4:SetPoint
{
    
	ADD_SIZE_X	= - 10;
	ADD_SIZE_Y  = - 10;
	"LEFT_TOP		= D3DXVECTOR2(19+129,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot5= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot5)

g_pPictureInven_slot5:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot5:SetPoint
{
    
	ADD_SIZE_X	= - 10;
	ADD_SIZE_Y  = - 10;
	"LEFT_TOP		= D3DXVECTOR2(19+172,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot6= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot6)

g_pPictureInven_slot6:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot6:SetPoint
{    
	ADD_SIZE_X	= - 10;
	ADD_SIZE_Y  = - 10;
	"LEFT_TOP		= D3DXVECTOR2(19+215,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

