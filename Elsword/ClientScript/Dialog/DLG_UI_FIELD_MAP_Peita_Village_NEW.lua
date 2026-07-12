-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_FIELD_MAP_PEITA_VILLAGE" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_FIELD_RIGHT_CLICK"] )
g_pUIDialog:SetCustomMsgRMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_FIELD_RIGHT_CLICK"] )
g_pUIDialog:SetCustomMsgStopDragging( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NAVI_FIELD_MAP_STOP_DRAGGING"] )

g_pUIDialog:SetSize( 1536, 768 )
g_pUIDialog:SetEnableDraggingRange( true )
g_pUIDialog:SetDraggingRangeCenter( 512, 384 )
g_pUIDialog:SetDraggingRange( 512, 0 )

g_pStaticPeita_town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPeita_town )
g_pStaticPeita_town:SetName( "g_pStaticPeita_town" )

------------------------------------------    월드맵    ----------------------------------------------------
-------------------------------------------------------------------------------------------------------------
--상_좌
g_pPicture_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticPeita_town:AddPicture( g_pPicture_Bg1 )
g_pPicture_Bg1:SetTex( "DLG_UI_FIELD_MAP_Peita_Village_01.DDS", "TOWN_PEITA_BG1" )
g_pPicture_Bg1:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2( 0, 256 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--상_중
g_pPicture_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticPeita_town:AddPicture( g_pPicture_Bg2 )
g_pPicture_Bg2:SetTex( "DLG_UI_FIELD_MAP_Peita_Village_02.DDS", "TOWN_PEITA_BG2" )
g_pPicture_Bg2:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2( 512, 256 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--상_우
g_pPicture_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticPeita_town:AddPicture( g_pPicture_Bg3 )
g_pPicture_Bg3:SetTex( "DLG_UI_FIELD_MAP_Peita_Village_03.DDS", "TOWN_PEITA_BG3" )
g_pPicture_Bg3:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2( 1024, 256 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--하_좌
g_pPicture_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticPeita_town:AddPicture( g_pPicture_Bg4 )
g_pPicture_Bg4:SetTex( "DLG_UI_FIELD_MAP_Peita_Village_04.DDS", "TOWN_PEITA_BG4" )
g_pPicture_Bg4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 0, 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--하_중
g_pPicture_Bg5 = g_pUIDialog:CreatePicture()
g_pStaticPeita_town:AddPicture( g_pPicture_Bg5 )
g_pPicture_Bg5:SetTex( "DLG_UI_FIELD_MAP_Peita_Village_04.DDS", "TOWN_PEITA_BG5" )
g_pPicture_Bg5:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 512, 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--하_우
g_pPicture_Bg6 = g_pUIDialog:CreatePicture()
g_pStaticPeita_town:AddPicture( g_pPicture_Bg6 )
g_pPicture_Bg6:SetTex( "DLG_UI_FIELD_MAP_Peita_Village_05.DDS", "TOWN_PEITA_BG6" )
g_pPicture_Bg6:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 1024, 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- 왼쪽 출구
g_pButtonLeft = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft )
g_pButtonLeft:SetName( "LEFT_cusor" )
g_pButtonLeft:SetNormalTex( "DLG_UI_Button04.tga", "l_gate" )
g_pButtonLeft:SetOverTex( "DLG_UI_Button04.tga", "l_gate" )
g_pButtonLeft:SetDownTex( "DLG_UI_Button04.tga", "l_gate" )
g_pButtonLeft:SetDisableTex( "DLG_UI_Button04.tga", "l_gate_noactive" )
g_pButtonLeft:SetNormalPoint
{
	ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
    "LEFT_TOP	= D3DXVECTOR2( 65, 370 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetOverPoint
{
    ADD_SIZE_X	= 4,
	ADD_SIZE_Y	= 4,
	"LEFT_TOP	= D3DXVECTOR2( 65-1, 370-2 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetDownPoint
{
    ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 65, 370 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetDisablePoint
{
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 65+3, 370 )",
    "COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonLeft:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonLeft:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PREV_FIELD_MAP"] )
g_pButtonLeft:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_01"] )

-- 광장1
g_pButtonMarket1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMarket1 )
g_pButtonMarket1:SetName( "MARKET1" )
g_pButtonMarket1:SetNormalTex( "MiniMap_Market.dds", "MINIMAP_MARKET" )
g_pButtonMarket1:SetOverTex( "MiniMap_Market.dds", "MINIMAP_MARKET" )
g_pButtonMarket1:SetDownTex( "MiniMap_Market.dds", "MINIMAP_MARKET" )
g_pButtonMarket1:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 661, 481 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMarket1:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 661, 481 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMarket1:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
 	"LEFT_TOP	= D3DXVECTOR2( 661, 481 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMarket1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonMarket1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonMarket1:AddDummyInt( NPC_UNIT_ID["NUI_NONE"] )
-- 아리엘
g_pButtonAriel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAriel )
g_pButtonAriel:SetName( "ARIEL" )
g_pButtonAriel:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonAriel:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonAriel:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonAriel:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 820, 555 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAriel:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 820, 555 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAriel:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 820, 555 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAriel:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonAriel:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonAriel:AddDummyInt( NPC_UNIT_ID["NUI_ARIEL"] )

-- 루리엘_은행
g_pButtonBank = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBank )
g_pButtonBank:SetName( "LURIEL" )
g_pButtonBank:SetNormalTex( "MiniMap_Bank.dds", "MINIMAP_BANK" )
g_pButtonBank:SetOverTex( "MiniMap_Bank.dds", "MINIMAP_BANK" )
g_pButtonBank:SetDownTex( "MiniMap_Bank.dds", "MINIMAP_BANK" )
g_pButtonBank:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 458, 343 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBank:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 458, 343 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBank:SetDownPoint
{
 	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 458, 343 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBank:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonBank:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonBank:AddDummyInt( NPC_UNIT_ID["NUI_LURIEL"] )

-- 우편함
g_pButtonPost = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPost )
g_pButtonPost:SetName( "Post" )
g_pButtonPost:SetNormalTex( "MiniMap_Post.dds", "MiniMap_Post" )
g_pButtonPost:SetOverTex( "MiniMap_Post.dds", "MiniMap_Post" )
g_pButtonPost:SetDownTex( "MiniMap_Post.dds", "MiniMap_Post" )
g_pButtonPost:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 340, 345 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPost:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 340, 345 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPost:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 340, 345 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPost:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_POSTBOX_MOUSE_OVER"] )
g_pButtonPost:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_POSTBOX_MOUSE_OUT"] )

----카밀라
g_pButtonCamilla = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCamilla )
g_pButtonCamilla:SetName( "CAMILLA" )
g_pButtonCamilla:SetNormalTex( "MiniMap_Arena.dds", "MiniMap_Arena" )
g_pButtonCamilla:SetOverTex( "MiniMap_Arena.dds", "MiniMap_Arena" )
g_pButtonCamilla:SetDownTex( "MiniMap_Arena.dds", "MiniMap_Arena" )
g_pButtonCamilla:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 945, 555 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonCamilla:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 945, 555 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonCamilla:SetDownPoint
{
    ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 945, 555 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonCamilla:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonCamilla:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonCamilla:AddDummyInt( NPC_UNIT_ID["NUI_CAMILLA"] )

-- 게시판
g_pButtonBOARD = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBOARD )
g_pButtonBOARD:SetName( "BOARD" )
g_pButtonBOARD:SetNormalTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )
g_pButtonBOARD:SetOverTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )
g_pButtonBOARD:SetDownTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )
g_pButtonBOARD:SetNormalPoint
{
    ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 662, 354 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBOARD:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 662, 354 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBOARD:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 662, 354 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBOARD:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonBOARD:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonBOARD:AddDummyInt( NPC_UNIT_ID["NUI_BILLBOARD"] )

-- 뮤
--[[
g_pButtonMU = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMU )
g_pButtonMU:SetName( "MU" )
g_pButtonMU:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonMU:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonMU:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonMU:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 550, 548 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMU:SetOverPoint
{
    ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 550, 548 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMU:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 550, 548 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMU:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonMU:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonMU:AddDummyInt( NPC_UNIT_ID["NUI_MU"] )
--]]
-- 알레그로(연금술사)
g_pButtonAlche = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAlche )
g_pButtonAlche:SetName( "Shop_Alche" )
g_pButtonAlche:SetNormalTex( "MiniMap_Shop_Alche.dds", "MiniMap_Shop_Alche" )
g_pButtonAlche:SetOverTex( "MiniMap_Shop_Alche.dds", "MiniMap_Shop_Alche" )
g_pButtonAlche:SetDownTex( "MiniMap_Shop_Alche.dds", "MiniMap_Shop_Alche" )
g_pButtonAlche:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 833, 345 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAlche:SetOverPoint
{
    ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 833, 345 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAlche:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 833, 345 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAlche:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonAlche:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonAlche:AddDummyInt( NPC_UNIT_ID["NUI_ALLEGRO"] )

-- 렌토(대장장이)
g_pButtonWeapon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonWeapon )
g_pButtonWeapon:SetName( "Shop_Weapon" )
g_pButtonWeapon:SetNormalTex( "MiniMap_Shop_Weapon.dds", "MiniMap_Shop_Weapon" )
g_pButtonWeapon:SetOverTex( "MiniMap_Shop_Weapon.dds", "MiniMap_Shop_Weapon" )
g_pButtonWeapon:SetDownTex( "MiniMap_Shop_Weapon.dds", "MiniMap_Shop_Weapon" )
g_pButtonWeapon:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 957, 350 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonWeapon:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 957, 350 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonWeapon:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 957, 350 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonWeapon:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonWeapon:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonWeapon:AddDummyInt( NPC_UNIT_ID["NUI_LENTO"] )

-- 글레이브_시공 관리자
g_pButtonGlave = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGlave )
g_pButtonGlave:SetName( "GLAVE" )
g_pButtonGlave:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonGlave:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonGlave:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonGlave:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 370, 483 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonGlave:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 370, 483 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonGlave:SetDownPoint
{
 	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 370, 483 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonGlave:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonGlave:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonGlave:AddDummyInt( NPC_UNIT_ID["NUI_GLAVE"] )
--[[
-- 이벤트 NPC
g_pButtonNPC2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC2 )
g_pButtonNPC2:SetName( "EVENT" )
g_pButtonNPC2:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonNPC2:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonNPC2:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonNPC2:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 1139, 500 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonNPC2:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 1139, 500 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonNPC2:SetDownPoint
{
 	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 1139, 500 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonNPC2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC2:AddDummyInt( NPC_UNIT_ID["NUI_EVENT_APINK"] ) -- <-- 이벤트 NPC에 따라 변경해야됨
--]]
-- 오른쪽 출구
g_pButtonRight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight )
g_pButtonRight:SetName( "Right_Cusor" )
g_pButtonRight:SetNormalTex( "DLG_UI_Button04.tga", "R_gate" )
g_pButtonRight:SetOverTex( "DLG_UI_Button04.tga", "R_gate" )
g_pButtonRight:SetDownTex( "DLG_UI_Button04.tga", "R_gate" )
g_pButtonRight:SetDisableTex( "DLG_UI_Button04.tga", "R_gate_noactive" )
g_pButtonRight:SetNormalPoint
{
	ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
    "LEFT_TOP	= D3DXVECTOR2( 1452, 381 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetOverPoint
{
    ADD_SIZE_X	= 4,
	ADD_SIZE_Y	= 4,
	"LEFT_TOP	= D3DXVECTOR2( 1452-1, 381-1 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetDownPoint
{
    ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 1452, 381 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetDisablePoint
{
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 1452+3, 381 )",
    "COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonRight:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonRight:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NEXT_FIELD_MAP"] )
g_pButtonRight:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_02"] )