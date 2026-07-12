-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Room_ChatBox" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )



g_pStaticPVP_Room_ChatBox = g_pUIDialog:CreateStatic()
g_pStaticPVP_Room_ChatBox:SetEnable( false )
g_pStaticPVP_Room_ChatBox:SetShow( false )
g_pUIDialog:AddControl( g_pStaticPVP_Room_ChatBox )
g_pStaticPVP_Room_ChatBox:SetName( "Room_ChatBox" )



g_pPicture_PVP_Room_ChatBG1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_ChatBox:AddPicture( g_pPicture_PVP_Room_ChatBG1 )

g_pPicture_PVP_Room_ChatBG1:SetTex( "DLG_Room_Button0.TGA", "List_Window1" )

g_pPicture_PVP_Room_ChatBG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_PVP_Room_ChatBG2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_ChatBox:AddPicture( g_pPicture_PVP_Room_ChatBG2 )

g_pPicture_PVP_Room_ChatBG2:SetTex( "DLG_Room_Button0.TGA", "List_Window2" )

g_pPicture_PVP_Room_ChatBG2:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(152,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(576,124)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_PVP_Room_ChatBG3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_ChatBox:AddPicture( g_pPicture_PVP_Room_ChatBG3 )

g_pPicture_PVP_Room_ChatBG3:SetTex( "DLG_Room_Button0.TGA", "List_Window3" )

g_pPicture_PVP_Room_ChatBG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(576,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------------------------------------------------------------------

g_pStaticRoom_ChatBox_ListBoxBG = g_pUIDialog:CreateStatic()
g_pStaticRoom_ChatBox_ListBoxBG:SetEnable(true)

g_pUIDialog:AddControl( g_pStaticRoom_ChatBox_ListBoxBG )
g_pStaticRoom_ChatBox_ListBoxBG:SetName( "StaticRoom_ChatBox_ListBoxBG" )


g_pPicture_PVP_Room_ChatBG4 = g_pUIDialog:CreatePicture()
g_pStaticRoom_ChatBox_ListBoxBG:AddPicture( g_pPicture_PVP_Room_ChatBG4 )

g_pPicture_PVP_Room_ChatBG4:SetTex( "DLG_Room_Button0.TGA", "List_Window4" )

g_pPicture_PVP_Room_ChatBG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_PVP_Room_ChatBG5 = g_pUIDialog:CreatePicture()
g_pStaticRoom_ChatBox_ListBoxBG:AddPicture( g_pPicture_PVP_Room_ChatBG5 )

g_pPicture_PVP_Room_ChatBG5:SetTex( "DLG_Room_Button0.TGA", "List_Window5" )

g_pPicture_PVP_Room_ChatBG5:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(152,120)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(576,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_PVP_Room_ChatBG6 = g_pUIDialog:CreatePicture()
g_pStaticRoom_ChatBox_ListBoxBG:AddPicture( g_pPicture_PVP_Room_ChatBG6 )

g_pPicture_PVP_Room_ChatBG6:SetTex( "DLG_Room_Button0.TGA", "List_Window6" )

g_pPicture_PVP_Room_ChatBG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(575,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

IncludeLua( "DLG_Room_ChatBox_Mode.lua" )
IncludeLua( "DLG_Room_ChatBox_ChatList.lua" )
