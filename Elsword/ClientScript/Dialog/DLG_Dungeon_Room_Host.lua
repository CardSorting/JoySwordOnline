-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





g_pStaticRoomMaster = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoomMaster )
g_pStaticRoomMaster:SetName( "Dungeon_Room_Host" )







g_pPictureRoom_Master1= g_pUIDialog:CreatePicture()
g_pStaticRoomMaster:AddPicture( g_pPictureRoom_Master1)

g_pPictureRoom_Master1:SetTex( "DLG_Common_New_Texture04.tga", "Master" )

g_pPictureRoom_Master1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(124,480+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_Master2= g_pUIDialog:CreatePicture()
g_pStaticRoomMaster:AddPicture( g_pPictureRoom_Master2)

g_pPictureRoom_Master2:SetTex( "DLG_Common_New_Texture04.tga", "Master" )

g_pPictureRoom_Master2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(385-35,480+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRoom_Master3= g_pUIDialog:CreatePicture()
g_pStaticRoomMaster:AddPicture( g_pPictureRoom_Master3)

g_pPictureRoom_Master3:SetTex( "DLG_Common_New_Texture04.tga", "Master" )

g_pPictureRoom_Master3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(624-48,480+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRoom_Master4= g_pUIDialog:CreatePicture()
g_pStaticRoomMaster:AddPicture( g_pPictureRoom_Master4)

g_pPictureRoom_Master4:SetTex( "DLG_Common_New_Texture04.tga", "Master" )

g_pPictureRoom_Master4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(841-38,480+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
