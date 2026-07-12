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
g_pRadioButton_all_view:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_VELDER"] )
g_pRadioButton_all_view:AddDummyInt( 1 )





----------- 제 3거주지구

g_pRadioButton_third_dwelling = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_third_dwelling )

g_pRadioButton_third_dwelling:SetFixOverByCheck( true )
g_pRadioButton_third_dwelling:SetShowOffBGByCheck( true )

g_pRadioButton_third_dwelling:SetName( "third_dwelling" )

g_pRadioButton_third_dwelling:SetNormalTex( "DLG_UI_Button14.tga", "DWELLING_NORMAL" )


g_pRadioButton_third_dwelling:SetOverTex( "DLG_UI_Button14.tga", "DWELLING_OVER" )


g_pRadioButton_third_dwelling:SetCheckedTex( "DLG_UI_Button14.tga", "DWELLING_DOWN" )

g_pRadioButton_third_dwelling:SetDisableTex( "DLG_UI_Button14.tga", "DWELLING_NORMAL" )

g_pRadioButton_third_dwelling:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_third_dwelling:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_third_dwelling:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(245,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_third_dwelling:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(168,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_third_dwelling:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_third_dwelling:SetGroupID( 1 )
g_pRadioButton_third_dwelling:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_third_dwelling:AddDummyInt( DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"] )




----------- 희망의 다리

g_pRadioButton_bridge_hope = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_bridge_hope )

g_pRadioButton_bridge_hope:SetFixOverByCheck( true )
g_pRadioButton_bridge_hope:SetShowOffBGByCheck( true )

g_pRadioButton_bridge_hope:SetName( "bridge_hope" )

g_pRadioButton_bridge_hope:SetNormalTex( "DLG_UI_Button14.tga", "HOPE_BRIDGE_NORMAL" )


g_pRadioButton_bridge_hope:SetOverTex( "DLG_UI_Button14.tga", "HOPE_BRIDGE_OVER" )


g_pRadioButton_bridge_hope:SetCheckedTex( "DLG_UI_Button14.tga", "HOPE_BRIDGE_DOWN" )

g_pRadioButton_bridge_hope:SetDisableTex( "DLG_UI_Button14.tga", "HOPE_BRIDGE_NORMAL" )

g_pRadioButton_bridge_hope:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_bridge_hope:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_bridge_hope:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(325,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_bridge_hope:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(248,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_bridge_hope:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_bridge_hope:SetGroupID( 1 )
g_pRadioButton_bridge_hope:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_bridge_hope:AddDummyInt( DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"] )

----------- 왕궁 진입로

g_pRadioButton_place_entrance = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_place_entrance )

g_pRadioButton_place_entrance:SetFixOverByCheck( true )
g_pRadioButton_place_entrance:SetShowOffBGByCheck( true )

g_pRadioButton_place_entrance:SetName( "place_entrance" )

g_pRadioButton_place_entrance:SetNormalTex( "DLG_UI_Button15.tga", "PALACE_ENTRANCE_NORMAL" )


g_pRadioButton_place_entrance:SetOverTex( "DLG_UI_Button15.tga", "PALACE_ENTRANCE_OVER" )


g_pRadioButton_place_entrance:SetCheckedTex( "DLG_UI_Button15.tga", "PALACE_ENTRANCE_DOWN" )

g_pRadioButton_place_entrance:SetDisableTex( "DLG_UI_Button15.tga", "PALACE_ENTRANCE_NORMAL" )

g_pRadioButton_place_entrance:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(326,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_place_entrance:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(326,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_place_entrance:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(326,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(406,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_place_entrance:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(328-2,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_place_entrance:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(326,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_place_entrance:SetGroupID( 1 )
g_pRadioButton_place_entrance:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_place_entrance:AddDummyInt( DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"] )




-----------  불타는 희망의 다리

g_pRadioButton_BRIDGE_BUNNING = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_BRIDGE_BUNNING )

g_pRadioButton_BRIDGE_BUNNING:SetFixOverByCheck( true )
g_pRadioButton_BRIDGE_BUNNING:SetShowOffBGByCheck( true )

g_pRadioButton_BRIDGE_BUNNING:SetName( "BRIDGE_BUNNING" )

g_pRadioButton_BRIDGE_BUNNING:SetNormalTex( "DLG_UI_Button15.tga", "BRIDGE_BUNNING_NORMAL" )


g_pRadioButton_BRIDGE_BUNNING:SetOverTex( "DLG_UI_Button15.tga", "BRIDGE_BUNNING_OVER" )


g_pRadioButton_BRIDGE_BUNNING:SetCheckedTex( "DLG_UI_Button15.tga", "BRIDGE_BUNNING_DOWN" )

g_pRadioButton_BRIDGE_BUNNING:SetDisableTex( "DLG_UI_Button15.tga", "BRIDGE_BUNNING_NORMAL" )

g_pRadioButton_BRIDGE_BUNNING:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_BRIDGE_BUNNING:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_BRIDGE_BUNNING:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(486,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_BRIDGE_BUNNING:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(408-3,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_BRIDGE_BUNNING:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_BRIDGE_BUNNING:SetGroupID( 1 )
g_pRadioButton_BRIDGE_BUNNING:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_BRIDGE_BUNNING:AddDummyInt( DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"] )




-----------  제1상업지구

g_pRadioButton_MARKET = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_MARKET )

g_pRadioButton_MARKET:SetFixOverByCheck( true )
g_pRadioButton_MARKET:SetShowOffBGByCheck( true )

g_pRadioButton_MARKET:SetName( "MARKET" )

g_pRadioButton_MARKET:SetNormalTex( "DLG_UI_Button15.tga", "MARKET_NORMAL" )


g_pRadioButton_MARKET:SetOverTex( "DLG_UI_Button15.tga", "MARKET_OVER" )


g_pRadioButton_MARKET:SetCheckedTex( "DLG_UI_Button15.tga", "MARKET_DOWN" )

g_pRadioButton_MARKET:SetDisableTex( "DLG_UI_Button15.tga", "MARKET_NORMAL" )

g_pRadioButton_MARKET:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485-2,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_MARKET:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485-2,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_MARKET:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(485-2,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(566-2,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_MARKET:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(488-2-4,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_MARKET:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(485-2,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_MARKET:SetGroupID( 1 )
g_pRadioButton_MARKET:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_MARKET:AddDummyInt( DUNGEON_ID["DI_VELDER_MARKET_NORMAL"] )



-----------  남쪽게이트

g_pRadioButton_GATE = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_GATE )

g_pRadioButton_GATE:SetFixOverByCheck( true )
g_pRadioButton_GATE:SetShowOffBGByCheck( true )

g_pRadioButton_GATE:SetName( "GATE" )

g_pRadioButton_GATE:SetNormalTex( "DLG_UI_Button15.tga", "GATE_NORMAL" )


g_pRadioButton_GATE:SetOverTex( "DLG_UI_Button15.tga", "GATE_OVER" )


g_pRadioButton_GATE:SetCheckedTex( "DLG_UI_Button15.tga", "GATE_DOWN" )

g_pRadioButton_GATE:SetDisableTex( "DLG_UI_Button15.tga", "GATE_NORMAL" )

g_pRadioButton_GATE:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485-2+79,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_GATE:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485-2+79,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_GATE:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(485-2+79,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(566-2+79,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_GATE:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(488-2-4+79,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_GATE:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(485-2+79,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_GATE:SetGroupID( 1 )
g_pRadioButton_GATE:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_GATE:AddDummyInt( DUNGEON_ID["DI_VELDER_GATE_NORMAL"] )



----------- 헤니르의 시공

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


-----------비밀던전

g_pRadioButton_Secret= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Secret)

g_pRadioButton_Secret:SetFixOverByCheck( true )
g_pRadioButton_Secret:SetShowOffBGByCheck( true )

g_pRadioButton_Secret:SetName( "Secret" )
g_pRadioButton_Secret:SetNormalTex( "DLG_UI_Button14.tga", "Secret_Normal" )
g_pRadioButton_Secret:SetOverTex( "DLG_UI_Button14.tga", "Secret_Over" )
g_pRadioButton_Secret:SetCheckedTex( "DLG_UI_Button14.tga", "Secret_Down" )
g_pRadioButton_Secret:SetDisableTex( "DLG_UI_Button14.tga", "Secret_Normal" )

g_pRadioButton_Secret:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Secret:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Secret:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(911-80+3,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(995-80+3,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Secret:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(911-80+3,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Secret:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Secret:SetGroupID( 1 )
g_pRadioButton_Secret:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Secret:AddDummyInt( DUNGEON_ID["DI_VELDER_SECRET_COMMON"] )
g_pRadioButton_Secret:AddDummyInt( 2 )	-- 비밀던전은 AddDummyInt(2)를 꼭 넣어줘야함


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

	"LEFT_TOP		= D3DXVECTOR2(485+158,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Holloween:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485+158,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Holloween:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(485+158,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(565+158,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Holloween:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(485+158,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Holloween:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(485+158,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Holloween:SetGroupID( 1 )
g_pRadioButton_Holloween:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Holloween:AddDummyInt( DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"] )
--]]



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

	"LEFT_TOP		= D3DXVECTOR2(911-80-80+2,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_defence:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80-80+2,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_defence:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(911-80-80+2,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(911-80-80+84+2,71+33)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_defence:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(914-80-80-2+2,68)",
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
g_pRadioButton_defence:AddDummyInt( DUNGEON_ID["DI_DEFENCE_DUNGEON_VELDER_NORMAL"] )


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

	"LEFT_TOP		= D3DXVECTOR2(911-80-80-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Tree_Day:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80-80-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Tree_Day:SetRBPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(911-80-80-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(995-80-80-80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Tree_Day:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(914-80-80-80,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Tree_Day:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80-80-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

			g_pRadioButton_Tree_Day:SetGroupID( 1 )
			g_pRadioButton_Tree_Day:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
			g_pRadioButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_VELDER"] )
--]]