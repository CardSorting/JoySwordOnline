-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_PVP_Room_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

--슬롯에 따른 토크박스 포지션
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 180, 105, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 350, 110, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 540, 100, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 720, 110, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 870, 390, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 690, 410, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 520, 410, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 355, 425, 0 ) )


IncludeLua( "DLG_PVP_Room_Host.lua" )

IncludeLua( "DLG_PVP_Room_Play.lua" )

IncludeLua( "DLG_PVP_Room_Ready.lua" )

--IncludeLua( "DLG_PVP_Room_UserInfo.lua" )



--IncludeLua( "DLG_PVP_Room_Team_Select.lua" )

IncludeLua( "DLG_PVP_Room_Equip.lua" )

IncludeLua( "DLG_PVP_Room_Trade.lua" )



IncludeLua( "DLG_PVP_Room_Now_Map.lua" )



g_pStaticPVP_Room_KILL = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_KILL )
g_pStaticPVP_Room_KILL:SetName( "StaticPVP_Room_KILL" )



g_pStaticPVP_Room_KILL:AddString
{
		-- MSG 			= "7",
 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	--USE_UK_FONT		= FALSE,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(920+5,80+63)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStaticPVP_Room_TIME = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_TIME )
g_pStaticPVP_Room_TIME:SetName( "StaticPVP_Room_TIME" )


g_pStaticPVP_Room_TIME:AddString
{
		-- MSG 			= "1200",
 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	--USE_UK_FONT		= FALSE,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(920+5,128+47)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


--	이 컨트롤을 dlg_pvp_room_lua_func.lua 에서 사용하고 있습니다.(상형)
g_pStaticLock = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLock )
g_pStaticLock:SetName( "g_pStaticLock" )


g_pPictureLock = g_pUIDialog:CreatePicture()
g_pStaticLock:AddPicture( g_pPictureLock )

g_pPictureLock:SetTex( "DLG_UI_Common_Texture02.TGA", "lock" )

g_pPictureLock:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(180,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}














