-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.








g_pStaticInventory = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInventory )
g_pStaticInventory:SetName( "Dungeon_Room_Equip" )




g_pPictureInventory1= g_pUIDialog:CreatePicture()
g_pStaticInventory:AddPicture( g_pPictureInventory1)

g_pPictureInventory1:SetTex( "DLG_Common_New_Texture04.tga", "Wait" )

g_pPictureInventory1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(108-3,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInventory2= g_pUIDialog:CreatePicture()
g_pStaticInventory:AddPicture( g_pPictureInventory2)

g_pPictureInventory2:SetTex( "DLG_Common_New_Texture04.tga", "Wait" )

g_pPictureInventory2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(355-21,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInventory3= g_pUIDialog:CreatePicture()
g_pStaticInventory:AddPicture( g_pPictureInventory3)

g_pPictureInventory3:SetTex( "DLG_Common_New_Texture04.tga", "Wait" )

g_pPictureInventory3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(594-38,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInventory4= g_pUIDialog:CreatePicture()
g_pStaticInventory:AddPicture( g_pPictureInventory4)

g_pPictureInventory4:SetTex( "DLG_Common_New_Texture04.tga", "Wait" )

g_pPictureInventory4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(811-28,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
