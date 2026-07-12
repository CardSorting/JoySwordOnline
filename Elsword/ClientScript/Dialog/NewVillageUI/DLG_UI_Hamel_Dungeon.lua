-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

----------- 전체보기
g_pRadioButton_all_view = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_all_view )
g_pRadioButton_all_view:SetFixOverByCheck( true )
g_pRadioButton_all_view:SetShowOffBGByCheck( true )
g_pRadioButton_all_view:SetName( "all_view" )

g_pRadioButton_all_view:SetNormalTex( "DLG_UI_Button03.tga", "all_view_normal" )
g_pRadioButton_all_view:SetOverTex( "DLG_UI_Button03.tga", "all_view_over" )
g_pRadioButton_all_view:SetCheckedTex( "DLG_UI_Button04.tga", "all_view_down" )

g_pRadioButton_all_view:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(97,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_all_view:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(97,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_all_view:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(97,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(167,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_all_view:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(100,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_all_view:SetGroupID( 1 )
g_pRadioButton_all_view:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_all_view:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_HAMEL"] )
g_pRadioButton_all_view:AddDummyInt( 1 )

----------- 레시암 외곽 
g_pRadioButton_OUTSKIRTS_RESIAM = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_OUTSKIRTS_RESIAM )
g_pRadioButton_OUTSKIRTS_RESIAM:SetFixOverByCheck( true )
g_pRadioButton_OUTSKIRTS_RESIAM:SetShowOffBGByCheck( true )
g_pRadioButton_OUTSKIRTS_RESIAM:SetName( "OUTSKIRTS_RESIAM" )
g_pRadioButton_OUTSKIRTS_RESIAM:SetNormalTex( "DLG_UI_Button15.tga", "OUTSKIRTS_RESIAM_NORMAL" )
g_pRadioButton_OUTSKIRTS_RESIAM:SetOverTex( "DLG_UI_Button15.tga", "OUTSKIRTS_RESIAM_OVER" )
g_pRadioButton_OUTSKIRTS_RESIAM:SetCheckedTex( "DLG_UI_Button15.tga", "OUTSKIRTS_RESIAM_DOWN" )
g_pRadioButton_OUTSKIRTS_RESIAM:SetDisableTex( "DLG_UI_Button15.tga", "OUTSKIRTS_RESIAM_NORMAL" )

g_pRadioButton_OUTSKIRTS_RESIAM:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(165+4,71+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_OUTSKIRTS_RESIAM:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(165+4,71+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_OUTSKIRTS_RESIAM:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(165+4,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(169+80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_OUTSKIRTS_RESIAM:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(168,68+2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_OUTSKIRTS_RESIAM:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(165+4,71+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_OUTSKIRTS_RESIAM:SetGroupID( 1 )
g_pRadioButton_OUTSKIRTS_RESIAM:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_OUTSKIRTS_RESIAM:AddDummyInt( DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"] )

----------- 가라앉은 레시암 
g_pRadioButton_BREAK_RESIAM = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_BREAK_RESIAM )
g_pRadioButton_BREAK_RESIAM:SetFixOverByCheck( true )
g_pRadioButton_BREAK_RESIAM:SetShowOffBGByCheck( true )
g_pRadioButton_BREAK_RESIAM:SetName( "BREAK_RESIAM" )
g_pRadioButton_BREAK_RESIAM:SetNormalTex( "DLG_UI_Button15.tga", "BREAK_RESIAM_NORMAL" )
g_pRadioButton_BREAK_RESIAM:SetOverTex( "DLG_UI_Button15.tga", "BREAK_RESIAM_OVER" )
g_pRadioButton_BREAK_RESIAM:SetCheckedTex( "DLG_UI_Button15.tga", "BREAK_RESIAM_DOWN" )
g_pRadioButton_BREAK_RESIAM:SetDisableTex( "DLG_UI_Button15.tga", "BREAK_RESIAM_NORMAL" )

g_pRadioButton_BREAK_RESIAM:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(245+2,71+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_BREAK_RESIAM:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(245+3,71+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_BREAK_RESIAM:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(245+2,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(247+80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_BREAK_RESIAM:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(248,68+3)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_BREAK_RESIAM:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(245+2,71+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_BREAK_RESIAM:SetGroupID( 1 )
g_pRadioButton_BREAK_RESIAM:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_BREAK_RESIAM:AddDummyInt( DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"] )

----------- 고대 수로 
g_pRadioButton_ANCIENT_WATERWAY = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_ANCIENT_WATERWAY)
g_pRadioButton_ANCIENT_WATERWAY:SetFixOverByCheck( true )
g_pRadioButton_ANCIENT_WATERWAY:SetShowOffBGByCheck( true )
g_pRadioButton_ANCIENT_WATERWAY:SetName( "ANCIENT_WATERWAY" )
g_pRadioButton_ANCIENT_WATERWAY:SetNormalTex( "DLG_UI_Button15.tga", "ANCIENT_WATERWAY_NORMAL" )
g_pRadioButton_ANCIENT_WATERWAY:SetOverTex( "DLG_UI_Button15.tga", "ANCIENT_WATERWAY_OVER" )
g_pRadioButton_ANCIENT_WATERWAY:SetCheckedTex( "DLG_UI_Button15.tga", "ANCIENT_WATERWAY_DOWN" )
g_pRadioButton_ANCIENT_WATERWAY:SetDisableTex( "DLG_UI_Button15.tga", "ANCIENT_WATERWAY_NORMAL" )

g_pRadioButton_ANCIENT_WATERWAY:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(326+2,71+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_ANCIENT_WATERWAY:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(326+2,71+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_ANCIENT_WATERWAY:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(326+2,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(328+80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_ANCIENT_WATERWAY:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(328,68+2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_ANCIENT_WATERWAY:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(326+2,71+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_ANCIENT_WATERWAY:SetGroupID( 1 )
g_pRadioButton_ANCIENT_WATERWAY:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_ANCIENT_WATERWAY:AddDummyInt( DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"] )

----------- 고대수로 중심부
g_pRadioButton_ANCIENT_WATERWAY_CORE = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_ANCIENT_WATERWAY_CORE )
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetFixOverByCheck( true )
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetShowOffBGByCheck( true )
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetName( "ANCIENT_WATERWAY_CORE" )
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetNormalTex( "DLG_UI_Button15.tga", "ANCIENT_WATERWAY_CORE_NORMAL" )
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetOverTex( "DLG_UI_Button15.tga", "ANCIENT_WATERWAY_CORE_OVER" )
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetCheckedTex( "DLG_UI_Button15.tga", "ANCIENT_WATERWAY_CORE_DOWN" )
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetDisableTex( "DLG_UI_Button15.tga", "ANCIENT_WATERWAY_CORE_NORMAL" )

g_pRadioButton_ANCIENT_WATERWAY_CORE:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405+3,71+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405+3,71+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(405+3,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(408+80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(408,69)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405+3,71+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_ANCIENT_WATERWAY_CORE:SetGroupID( 1 )
g_pRadioButton_ANCIENT_WATERWAY_CORE:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_ANCIENT_WATERWAY_CORE:AddDummyInt( DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"] )

--[[
----------- 할로윈 카니발
g_pRadioButton_Holloween= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Holloween)
g_pRadioButton_Holloween:SetFixOverByCheck( true )
g_pRadioButton_Holloween:SetShowOffBGByCheck( true )
g_pRadioButton_Holloween:SetName( "Holloween" )
g_pRadioButton_Holloween:SetNormalTex( "DLG_UI_Button15.tga", "HOLLOWEEN_Normal" )
g_pRadioButton_Holloween:SetOverTex( "DLG_UI_Button15.tga", "HOLLOWEEN_Over" )
g_pRadioButton_Holloween:SetCheckedTex( "DLG_UI_Button15.tga", "HOLLOWEEN_Down" )
g_pRadioButton_Holloween:SetDisableTex( "DLG_UI_Button15.tga", "HOLLOWEEN_Normal" )
g_pRadioButton_Holloween:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485+82+158,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Holloween:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485+82+158,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Holloween:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(485+82+158,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(565+82+158,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Holloween:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(485+82+158,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Holloween:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(485+82+158,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Holloween:SetGroupID( 1 )
g_pRadioButton_Holloween:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Holloween:AddDummyInt( DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"] )
--]]





----------- 마그만타의 동굴
g_pRadioButton_CAVE_OF_MAGMANTA = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_CAVE_OF_MAGMANTA )
g_pRadioButton_CAVE_OF_MAGMANTA:SetFixOverByCheck( true )
g_pRadioButton_CAVE_OF_MAGMANTA:SetShowOffBGByCheck( true )
g_pRadioButton_CAVE_OF_MAGMANTA:SetName( "CAVE_OF_MAGMANTA" )
g_pRadioButton_CAVE_OF_MAGMANTA:SetNormalTex( "DLG_UI_Button20.tga", "MAGMANTA_NORMAL" )
g_pRadioButton_CAVE_OF_MAGMANTA:SetOverTex( "DLG_UI_Button20.tga", "MAGMANTA_OVER" )
g_pRadioButton_CAVE_OF_MAGMANTA:SetCheckedTex( "DLG_UI_Button20.tga", "MAGMANTA_DOWN" )
g_pRadioButton_CAVE_OF_MAGMANTA:SetDisableTex( "DLG_UI_Button20.tga", "MAGMANTA_NORMAL" )

g_pRadioButton_CAVE_OF_MAGMANTA:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(406+80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_CAVE_OF_MAGMANTA:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(406+80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_CAVE_OF_MAGMANTA:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(405+3+80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(486+80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_CAVE_OF_MAGMANTA:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(408+80,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_CAVE_OF_MAGMANTA:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(406+80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_CAVE_OF_MAGMANTA:SetGroupID( 1 )
g_pRadioButton_CAVE_OF_MAGMANTA:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_CAVE_OF_MAGMANTA:AddDummyInt( DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"] )

----------- 얼어붙은 물의 신전
g_pRadioButton_FROZEN_WATER_TEMPLE = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_FROZEN_WATER_TEMPLE )
g_pRadioButton_FROZEN_WATER_TEMPLE:SetFixOverByCheck( true )
g_pRadioButton_FROZEN_WATER_TEMPLE:SetShowOffBGByCheck( true )
g_pRadioButton_FROZEN_WATER_TEMPLE:SetName( "FROZEN_WATER_TEMPLE" )
g_pRadioButton_FROZEN_WATER_TEMPLE:SetNormalTex( "DLG_UI_Button20.tga", "WATER_TEMPLE_NORMAL" )
g_pRadioButton_FROZEN_WATER_TEMPLE:SetOverTex( "DLG_UI_Button20.tga", "WATER_TEMPLE_OVER" )
g_pRadioButton_FROZEN_WATER_TEMPLE:SetCheckedTex( "DLG_UI_Button20.tga", "WATER_TEMPLE_DOWN" )
g_pRadioButton_FROZEN_WATER_TEMPLE:SetDisableTex( "DLG_UI_Button20.tga", "WATER_TEMPLE_NORMAL" )

g_pRadioButton_FROZEN_WATER_TEMPLE:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(406+160,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_FROZEN_WATER_TEMPLE:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(406+160,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_FROZEN_WATER_TEMPLE:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(405+3+160,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(486+160,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_FROZEN_WATER_TEMPLE:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(408+160,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_FROZEN_WATER_TEMPLE:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405+160,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_FROZEN_WATER_TEMPLE:SetGroupID( 1 )
g_pRadioButton_FROZEN_WATER_TEMPLE:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_FROZEN_WATER_TEMPLE:AddDummyInt( DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"] )

----------- 물의 전당
g_pRadioButton_FROZEN_WATER_HALL = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_FROZEN_WATER_HALL )
g_pRadioButton_FROZEN_WATER_HALL:SetFixOverByCheck( true )
g_pRadioButton_FROZEN_WATER_HALL:SetShowOffBGByCheck( true )
g_pRadioButton_FROZEN_WATER_HALL:SetName( "FROZEN_WATER_HALL" )
g_pRadioButton_FROZEN_WATER_HALL:SetNormalTex( "DLG_UI_Button20.tga", "WATER_HALL_NORMAL" )
g_pRadioButton_FROZEN_WATER_HALL:SetOverTex( "DLG_UI_Button20.tga", "WATER_HALL_OVER" )
g_pRadioButton_FROZEN_WATER_HALL:SetCheckedTex( "DLG_UI_Button20.tga", "WATER_HALL_DOWN" )
g_pRadioButton_FROZEN_WATER_HALL:SetDisableTex( "DLG_UI_Button20.tga", "WATER_HALL_NORMAL" )

g_pRadioButton_FROZEN_WATER_HALL:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(406+240,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_FROZEN_WATER_HALL:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(406+240,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_FROZEN_WATER_HALL:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(405+3+240,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(486+240,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_FROZEN_WATER_HALL:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(407+240,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_FROZEN_WATER_HALL:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405+240,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_FROZEN_WATER_HALL:SetGroupID( 1 )
g_pRadioButton_FROZEN_WATER_HALL:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_FROZEN_WATER_HALL:AddDummyInt( DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"] )


-----------------디펜스 던전

g_pRadioButton_defence= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_defence)
g_pRadioButton_defence:SetFixOverByCheck( true )
g_pRadioButton_defence:SetShowOffBGByCheck( true )
g_pRadioButton_defence:SetName( "defence" )
g_pRadioButton_defence:SetNormalTex( "DLG_UI_Button12.tga", "defence_Normal" )
g_pRadioButton_defence:SetOverTex( "DLG_UI_Button12.tga", "defence_Over" )
g_pRadioButton_defence:SetCheckedTex( "DLG_UI_Button12.tga", "defence_Down" )
g_pRadioButton_defence:SetDisableTex( "DLG_UI_Button12.tga", "defence_Normal" )
g_pRadioButton_defence:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80+2,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_defence:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80+2,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_defence:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(911-80+2,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(911+84+2,71+33)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_defence:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(914-80-2+2,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_defence:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80+2,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_defence:SetGroupID( 1 )
g_pRadioButton_defence:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_defence:AddDummyInt( DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"] )

-- 헤니르의 시공
g_pRadioButton_Henir_space = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Henir_space )
g_pRadioButton_Henir_space:SetFixOverByCheck( true )
g_pRadioButton_Henir_space:SetShowOffBGByCheck( true )
g_pRadioButton_Henir_space:SetName( "Henir_space" )
g_pRadioButton_Henir_space:SetNormalTex( "DLG_UI_Button11.tga", "Rank_Henir_normal" )
g_pRadioButton_Henir_space:SetOverTex( "DLG_UI_Button11.tga", "Rank_Henir_over" )
g_pRadioButton_Henir_space:SetCheckedTex( "DLG_UI_Button11.tga", "Rank_Henir_down" )
g_pRadioButton_Henir_space:SetDisableTex( "DLG_UI_Button11.tga", "Rank_Henir_normal" )

g_pRadioButton_Henir_space:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Henir_space:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Henir_space:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(911,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(995,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Henir_space:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(914,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Henir_space:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Henir_space:SetGroupID( 1 )
g_pRadioButton_Henir_space:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Henir_space:AddDummyInt( DUNGEON_ID["DI_ELDER_HENIR_SPACE"] )


----------- 식목일 이벤트 던전
--[[
g_pRadioButton_Tree_Day = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Tree_Day )
g_pRadioButton_Tree_Day:SetFixOverByCheck( true )
g_pRadioButton_Tree_Day:SetShowOffBGByCheck( true )
g_pRadioButton_Tree_Day:SetName( "Tree_Day" )
g_pRadioButton_Tree_Day:SetNormalTex( "DLG_UI_Button14.tga", "event_normal" )
g_pRadioButton_Tree_Day:SetOverTex( "DLG_UI_Button14.tga", "event_over" )
g_pRadioButton_Tree_Day:SetCheckedTex( "DLG_UI_Button14.tga", "event_down" )
g_pRadioButton_Tree_Day:SetDisableTex( "DLG_UI_Button14.tga", "event_normal" )

g_pRadioButton_Tree_Day:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tree_Day:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tree_Day:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(911-80-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(995-80-80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tree_Day:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(914-80-80,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tree_Day:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Tree_Day:SetGroupID( 1 )
g_pRadioButton_Tree_Day:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_HAMEL"] )
--]]