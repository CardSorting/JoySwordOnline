-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Room_Warning_All_Ready" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


g_pStaticInventory_Ready_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInventory_Ready_Text )
g_pStaticInventory_Ready_Text:SetName( "g_pStaticInventory_Ready_Text" )


g_pPictureInventory_Ready_Text1 = g_pUIDialog:CreatePicture()
g_pStaticInventory_Ready_Text:AddPicture( g_pPictureInventory_Ready_Text1 )

g_pPictureInventory_Ready_Text1:SetTex( "DLG_Common_New_Texture22.tga", "PVP_RESULT_TITLE_BGWHITE" )

g_pPictureInventory_Ready_Text1:SetPoint
{
        ADD_SIZE_X=344,
		ADD_SIZE_Y=203-36,
	"LEFT_TOP		= D3DXVECTOR2(126,238+27)",

	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME     	= 0.0,
}






g_pPictureInventory_Ready_Text3 = g_pUIDialog:CreatePicture()
g_pStaticInventory_Ready_Text:AddPicture( g_pPictureInventory_Ready_Text3 )

g_pPictureInventory_Ready_Text3:SetTex( "DLG_Common_New_Texture31.tga", "Inventory_Ready_Text1" )

g_pPictureInventory_Ready_Text3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(380,328-37)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




g_pPictureInventory_Ready_Text4 = g_pUIDialog:CreatePicture()
g_pStaticInventory_Ready_Text:AddPicture( g_pPictureInventory_Ready_Text4 )

g_pPictureInventory_Ready_Text4:SetTex( "DLG_Common_New_Texture36.tga", "Inventory_Ready_Text2" )

g_pPictureInventory_Ready_Text4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(294+6,389-37)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




--[[
g_pPictureInventory_Ready_Text5 = g_pUIDialog:CreatePicture()
g_pStaticInventory_Ready_Text:AddPicture( g_pPictureInventory_Ready_Text5 )

g_pPictureInventory_Ready_Text5:SetTex( "DLG_Common_New_Texture36.tga", "Inventory_Ready_Text_PushButton" )

g_pPictureInventory_Ready_Text5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(539,276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pStaticInventory_Ready_Text_Room_People = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInventory_Ready_Text_Room_People )
g_pStaticInventory_Ready_Text_Room_People:SetName( "g_pStaticInventory_Ready_Text_Room_People" )



g_pPictureInventory_Ready_Text2 = g_pUIDialog:CreatePicture()
g_pStaticInventory_Ready_Text_Room_People:AddPicture( g_pPictureInventory_Ready_Text2 )

g_pPictureInventory_Ready_Text2:SetTex( "DLG_Common_New_Texture09.tga", "Ready_Button_Normal" )

g_pPictureInventory_Ready_Text2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(321,251)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pStaticInventory_Start_Text_Room_Master = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInventory_Start_Text_Room_Master )
g_pStaticInventory_Start_Text_Room_Master:SetName( "g_pStaticInventory_Start_Text_Room_Master" )


g_pPictureInventory_Start_Text2 = g_pUIDialog:CreatePicture()
g_pStaticInventory_Start_Text_Room_Master:AddPicture( g_pPictureInventory_Start_Text2 )

g_pPictureInventory_Start_Text2:SetTex( "DLG_Common_New_Texture10.tga", "START_BUTTON_NORMAL" )

g_pPictureInventory_Start_Text2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(321,251)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--]]
