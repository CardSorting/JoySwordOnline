-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pStaticRoom_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoom_State )
g_pStaticRoom_State:SetName( "Room_State" )


g_pPictureRoom_State_Wait = g_pUIDialog:CreatePicture()
g_pStaticRoom_State:AddPicture( g_pPictureRoom_State_Wait )

g_pPictureRoom_State_Wait:SetTex( "DLG_Common_Texture01.TGA", "Wait" )

g_pPictureRoom_State_Wait:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(263+42,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_State_Play = g_pUIDialog:CreatePicture()
g_pStaticRoom_State:AddPicture( g_pPictureRoom_State_Play )

g_pPictureRoom_State_Play:SetTex( "DLG_Common_Texture01.TGA", "Play" )

g_pPictureRoom_State_Play:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(263+42,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureRoom_State_Full = g_pUIDialog:CreatePicture()
g_pStaticRoom_State:AddPicture( g_pPictureRoom_State_Full )

g_pPictureRoom_State_Full:SetTex( "DLG_Common_Texture01.TGA", "Full" )

g_pPictureRoom_State_Full:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(263+42,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureRoom_State_Join = g_pUIDialog:CreatePicture()
g_pStaticRoom_State:AddPicture( g_pPictureRoom_State_Join )

g_pPictureRoom_State_Join:SetTex( "DLG_Common_Texture16.TGA", "Join" )

g_pPictureRoom_State_Join:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(263+42,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticRoom_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoom_State )
g_pStaticRoom_State:SetName( "Room_State_Lock" )
--g_pStaticRoom_State:SetShow( false )

g_pPictureLocalRoom_State_Lock = g_pUIDialog:CreatePicture()
g_pStaticRoom_State:AddPicture( g_pPictureLocalRoom_State_Lock )

g_pPictureLocalRoom_State_Lock:SetTex( "DLG_Common_Texture01.TGA", "Lock" )

g_pPictureLocalRoom_State_Lock:SetPoint
{

    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(298-11,242-17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
