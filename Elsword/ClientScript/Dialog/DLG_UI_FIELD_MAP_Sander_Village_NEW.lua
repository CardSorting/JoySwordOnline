-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_FIELD_MAP_SANDER_VILLAGE" )
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

g_pStaticSander_town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSander_town )
g_pStaticSander_town:SetName( "g_pStaticSander_town" )

------------------------------------------    월드맵    ----------------------------------------------------
-------------------------------------------------------------------------------------------------------------
--상_좌
g_pPicture_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticSander_town:AddPicture( g_pPicture_Bg1 )
g_pPicture_Bg1:SetTex( "DLG_UI_Town_SANDER_Map01.DDS", "TOWN_SANDER_BG1" )
g_pPicture_Bg1:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2( 0, 256 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--상_중
g_pPicture_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticSander_town:AddPicture( g_pPicture_Bg2 )
g_pPicture_Bg2:SetTex( "DLG_UI_Town_SANDER_Map02.DDS", "TOWN_SANDER_BG2" )
g_pPicture_Bg2:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2( 512, 256 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--상_우
g_pPicture_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticSander_town:AddPicture( g_pPicture_Bg3 )
g_pPicture_Bg3:SetTex( "DLG_UI_Town_SANDER_Map03.DDS", "TOWN_SANDER_BG3" )
g_pPicture_Bg3:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2( 1024, 256 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--하_좌
g_pPicture_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticSander_town:AddPicture( g_pPicture_Bg4 )
g_pPicture_Bg4:SetTex( "DLG_UI_Town_SANDER_Map04.DDS", "TOWN_SANDER_BG4" )
g_pPicture_Bg4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 0, 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--하_중
g_pPicture_Bg5 = g_pUIDialog:CreatePicture()
g_pStaticSander_town:AddPicture( g_pPicture_Bg5 )
g_pPicture_Bg5:SetTex( "DLG_UI_Town_SANDER_Map04.DDS", "TOWN_SANDER_BG5" )
g_pPicture_Bg5:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 512, 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--하_우
g_pPicture_Bg6 = g_pUIDialog:CreatePicture()
g_pStaticSander_town:AddPicture( g_pPicture_Bg6 )
g_pPicture_Bg6:SetTex( "DLG_UI_Town_SANDER_Map05.DDS", "TOWN_SANDER_BG6" )
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
    "LEFT_TOP	= D3DXVECTOR2( 80, 565 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetOverPoint
{
    ADD_SIZE_X	= 4,
	ADD_SIZE_Y	= 4,
	"LEFT_TOP	= D3DXVECTOR2( 80-1, 565-2 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetDownPoint
{
    ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 80, 565 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetDisablePoint
{
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 80+3, 565 )",
    "COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonLeft:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonLeft:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PREV_FIELD_MAP"] )
g_pButtonLeft:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_04"] )

-- 로즈앙(액세서리)
g_pButtonACC = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonACC )
g_pButtonACC:SetName( "shop_acc" )
g_pButtonACC:SetNormalTex( "MiniMap_Shop_Acc.dds", "MINIMAP_SHOP_ACC" )
g_pButtonACC:SetOverTex( "MiniMap_Shop_Acc.dds", "MINIMAP_SHOP_ACC" )
g_pButtonACC:SetDownTex( "MiniMap_Shop_Acc.dds", "MINIMAP_SHOP_ACC" )
g_pButtonACC:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 532, 478 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonACC:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 532, 478 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonACC:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
 	"LEFT_TOP	= D3DXVECTOR2( 532, 478 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonACC:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonACC:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonACC:AddDummyInt( NPC_UNIT_ID["NUI_ROSEANG"] )

-- 루리엘(은행)
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
	"LEFT_TOP	= D3DXVECTOR2( 637, 516 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBank:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 637, 516 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBank:SetDownPoint
{
 	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 637, 516 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBank:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonBank:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonBank:AddDummyInt( NPC_UNIT_ID["NUI_LURIEL"] )

-- 에미리트(족장)
g_pButtonNPC1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC1 )
g_pButtonNPC1:SetName( "PENENSIO" )
g_pButtonNPC1:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonNPC1:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonNPC1:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonNPC1:SetNormalPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 620, 538 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonNPC1:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 620, 538 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonNPC1:SetDownPoint
{
 	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 620, 538 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonNPC1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC1:AddDummyInt( NPC_UNIT_ID["NUI_EMIRATE"] )

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
	"LEFT_TOP	= D3DXVECTOR2( 686, 458 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPost:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 686, 458 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPost:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 686, 458 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPost:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_POSTBOX_MOUSE_OVER"] )
g_pButtonPost:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_POSTBOX_MOUSE_OUT"] )

-- 아리엘(코보)
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
	"LEFT_TOP	= D3DXVECTOR2( 650, 556 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAriel:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 650, 556 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAriel:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 650, 556 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAriel:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonAriel:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonAriel:AddDummyInt( NPC_UNIT_ID["NUI_ARIEL"] )

-- 광장
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
	"LEFT_TOP	= D3DXVECTOR2( 750, 458 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMarket1:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 750, 458 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMarket1:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
 	"LEFT_TOP	= D3DXVECTOR2( 750, 458 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMarket1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonMarket1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonMarket1:AddDummyInt( NPC_UNIT_ID["NUI_NONE"] )

-- 카밀라(대전)
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
	"LEFT_TOP	= D3DXVECTOR2( 845, 556 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonCamilla:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 845, 556 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonCamilla:SetDownPoint
{
    ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 845, 556 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonCamilla:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonCamilla:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonCamilla:AddDummyInt( NPC_UNIT_ID["NUI_CAMILLA"] )

-- 뮤(대리상인)
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
	"LEFT_TOP	= D3DXVECTOR2( 814, 458 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMU:SetOverPoint
{
    ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 814, 458 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMU:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 814, 458 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMU:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonMU:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonMU:AddDummyInt( NPC_UNIT_ID["NUI_MU"] )
--]]
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
	"LEFT_TOP	= D3DXVECTOR2( 870, 532 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBOARD:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 870, 532 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBOARD:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 870, 532 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBOARD:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonBOARD:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonBOARD:AddDummyInt( NPC_UNIT_ID["NUI_BILLBOARD"] )

-- 바포르(연금)
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
	"LEFT_TOP	= D3DXVECTOR2( 860, 512 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAlche:SetOverPoint
{
    ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 860, 512 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAlche:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 860, 512 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonAlche:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonAlche:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonAlche:AddDummyInt( NPC_UNIT_ID["NUI_VAPOR"] )

-- 다파르(장비)
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
	"LEFT_TOP	= D3DXVECTOR2( 965, 478 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonWeapon:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 965, 478 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonWeapon:SetDownPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 965, 478 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonWeapon:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonWeapon:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonWeapon:AddDummyInt( NPC_UNIT_ID["NUI_DAPPAR"] )
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
	"LEFT_TOP	= D3DXVECTOR2( 417, 545 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonNPC2:SetOverPoint
{
	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 417, 545 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonNPC2:SetDownPoint
{
 	ADD_SIZE_X	= -20,
	ADD_SIZE_Y	= -20,
	"LEFT_TOP	= D3DXVECTOR2( 417, 545 )",
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
    "LEFT_TOP	= D3DXVECTOR2( 1421, 562 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetOverPoint
{
    ADD_SIZE_X	= 4,
	ADD_SIZE_Y	= 4,
	"LEFT_TOP	= D3DXVECTOR2( 1421-1, 562-1 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetDownPoint
{
    ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 1421, 562 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetDisablePoint
{
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 1421+3, 562 )",
    "COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonRight:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonRight:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NEXT_FIELD_MAP"] )
g_pButtonRight:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_01"] )