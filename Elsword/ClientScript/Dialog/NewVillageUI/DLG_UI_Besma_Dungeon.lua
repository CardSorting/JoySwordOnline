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
g_pRadioButton_all_view:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_BESMA"] )
g_pRadioButton_all_view:AddDummyInt( 1 )







----------- 용의 길

g_pRadioButton_dregon_way = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_dregon_way )

g_pRadioButton_dregon_way:SetFixOverByCheck( true )
g_pRadioButton_dregon_way:SetShowOffBGByCheck( true )

g_pRadioButton_dregon_way:SetName( "dregon_way" )

g_pRadioButton_dregon_way:SetNormalTex( "DLG_UI_Button03.tga", "dregon_way_normal" )


g_pRadioButton_dregon_way:SetOverTex( "DLG_UI_Button03.tga", "dregon_way_over" )


g_pRadioButton_dregon_way:SetCheckedTex( "DLG_UI_Button04.tga", "dregon_way_down" )

g_pRadioButton_dregon_way:SetDisableTex( "DLG_UI_Button03.tga", "dregon_way_normal" )

g_pRadioButton_dregon_way:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_way:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_way:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(166,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(246,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_way:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(168,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_dregon_way:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_way:SetGroupID( 1 )
g_pRadioButton_dregon_way:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_dregon_way:AddDummyInt( DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"] )














----------- 베스마호수

g_pRadioButton_besma_lake = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_besma_lake )

g_pRadioButton_besma_lake:SetFixOverByCheck( true )
g_pRadioButton_besma_lake:SetShowOffBGByCheck( true )

g_pRadioButton_besma_lake:SetName( "besma_lake" )

g_pRadioButton_besma_lake:SetNormalTex( "DLG_UI_Button03.tga", "besma_lake_normal" )


g_pRadioButton_besma_lake:SetOverTex( "DLG_UI_Button03.tga", "besma_lake_over" )


g_pRadioButton_besma_lake:SetCheckedTex( "DLG_UI_Button04.tga", "besma_lake_down" )

g_pRadioButton_besma_lake:SetDisableTex( "DLG_UI_Button03.tga", "besma_lake_normal" )

g_pRadioButton_besma_lake:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_lake:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(246,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_lake:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(246,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(326,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_lake:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(248,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_lake:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_lake:SetGroupID( 1 )
g_pRadioButton_besma_lake:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_besma_lake:AddDummyInt( DUNGEON_ID["DI_BESMA_LAKE_NORMAL"] )









----------- 베스마 호수 (밤)

g_pRadioButton_besma_dark = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_besma_dark )

g_pRadioButton_besma_dark:SetFixOverByCheck( true )
g_pRadioButton_besma_dark:SetShowOffBGByCheck( true )

g_pRadioButton_besma_dark:SetName( "besma_dark" )

g_pRadioButton_besma_dark:SetNormalTex( "DLG_UI_Button03.tga", "besma_dark_normal" )


g_pRadioButton_besma_dark:SetOverTex( "DLG_UI_Button03.tga", "besma_dark_over" )


g_pRadioButton_besma_dark:SetCheckedTex( "DLG_UI_Button04.tga", "besma_dark_down" )

g_pRadioButton_besma_dark:SetDisableTex( "DLG_UI_Button03.tga", "besma_dark_normal" )

g_pRadioButton_besma_dark:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_dark:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_dark:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(405,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_dark:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(328,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_dark:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_dark:SetGroupID( 1 )
g_pRadioButton_besma_dark:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_besma_dark:AddDummyInt( DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"] )




--[[

----------- 베스마협곡

g_pRadioButton_besma_gorge= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_besma_gorge)

g_pRadioButton_besma_gorge:SetFixOverByCheck( true )
g_pRadioButton_besma_gorge:SetShowOffBGByCheck( true )

g_pRadioButton_besma_gorge:SetName( "besma_gorge" )

g_pRadioButton_besma_gorge:SetNormalTex( "DLG_UI_Button03.tga", "besma_gorge_normal" )


g_pRadioButton_besma_gorge:SetOverTex( "DLG_UI_Button03.tga", "besma_gorge_over" )


g_pRadioButton_besma_gorge:SetCheckedTex( "DLG_UI_Button04.tga", "besma_gorge_down" )

g_pRadioButton_besma_gorge:SetDisableTex( "DLG_UI_Button03.tga", "besma_gorge_normal" )

g_pRadioButton_besma_gorge:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(406,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_gorge:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(406,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_gorge:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(406,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(486,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_besma_gorge:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(408,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_besma_gorge:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(406,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

--g_pRadioButton_besma_gorge:SetGroupID( 1 )
--g_pRadioButton_besma_gorge:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
--g_pRadioButton_besma_gorge:AddDummyInt( DUNGEON_ID["DI_BESMA_CANYON_NORMAL"] )




--]]






----------- 용의둥지

g_pRadioButton_dregon_nest = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_dregon_nest )

g_pRadioButton_dregon_nest:SetFixOverByCheck( true )
g_pRadioButton_dregon_nest:SetShowOffBGByCheck( true )

g_pRadioButton_dregon_nest:SetName( "dregon_nest" )

g_pRadioButton_dregon_nest:SetNormalTex( "DLG_UI_Button03.tga", "dregon_nest_normal" )


g_pRadioButton_dregon_nest:SetOverTex( "DLG_UI_Button03.tga", "dregon_nest_over" )


g_pRadioButton_dregon_nest:SetCheckedTex( "DLG_UI_Button04.tga", "dregon_nest_down" )

g_pRadioButton_dregon_nest:SetDisableTex( "DLG_UI_Button03.tga", "dregon_nest_normal" )

g_pRadioButton_dregon_nest:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_nest:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_nest:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(485-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(565-80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_nest:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(488-80,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_nest:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(485-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_dregon_nest:SetGroupID( 1 )
g_pRadioButton_dregon_nest:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_dregon_nest:AddDummyInt( DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"] )







--[[

----------- 리치광산 입구

g_pRadioButton_mine_gate= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_mine_gate)

g_pRadioButton_mine_gate:SetFixOverByCheck( true )
g_pRadioButton_mine_gate:SetShowOffBGByCheck( true )

g_pRadioButton_mine_gate:SetName( "mine_gate" )

g_pRadioButton_mine_gate:SetNormalTex( "DLG_UI_Button03.tga", "mine_gate_normal" )


g_pRadioButton_mine_gate:SetOverTex( "DLG_UI_Button03.tga", "mine_gate_over" )


g_pRadioButton_mine_gate:SetCheckedTex( "DLG_UI_Button04.tga", "mine_gate_down" )

g_pRadioButton_mine_gate:SetDisableTex( "DLG_UI_Button03.tga", "mine_gate_normal" )

g_pRadioButton_mine_gate:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(565-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_mine_gate:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(566-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_mine_gate:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(565-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(645-80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_mine_gate:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(568-80,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_mine_gate:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(565-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_mine_gate:SetGroupID( 1 )
g_pRadioButton_mine_gate:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_mine_gate:AddDummyInt( DUNGEON_ID["DI_BESMA_MINE_NORMAL"] )

--]]








----------- 리치광산

g_pRadioButton_rich_mine= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_rich_mine)

g_pRadioButton_rich_mine:SetFixOverByCheck( true )
g_pRadioButton_rich_mine:SetShowOffBGByCheck( true )

g_pRadioButton_rich_mine:SetName( "rich_mine" )

g_pRadioButton_rich_mine:SetNormalTex( "DLG_UI_Button03.tga", "rich_mine_normal" )


g_pRadioButton_rich_mine:SetOverTex( "DLG_UI_Button03.tga", "rich_mine_over" )


g_pRadioButton_rich_mine:SetCheckedTex( "DLG_UI_Button04.tga", "rich_mine_down" )

g_pRadioButton_rich_mine:SetDisableTex( "DLG_UI_Button03.tga", "rich_mine_normal" )

g_pRadioButton_rich_mine:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(565-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_rich_mine:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(565-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_rich_mine:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(565-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(646-80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_rich_mine:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(565+3-80,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_rich_mine:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(565-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_rich_mine:SetGroupID( 1 )
g_pRadioButton_rich_mine:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_rich_mine:AddDummyInt( DUNGEON_ID["DI_BESMA_MINE2_NORMAL"] )









----------- 수송비공정

g_pRadioButton_transpor_line= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_transpor_line)

g_pRadioButton_transpor_line:SetFixOverByCheck( true )
g_pRadioButton_transpor_line:SetShowOffBGByCheck( true )

g_pRadioButton_transpor_line:SetName( "transpor_line" )

g_pRadioButton_transpor_line:SetNormalTex( "DLG_UI_Button03.tga", "transpor_line_normal" )


g_pRadioButton_transpor_line:SetOverTex( "DLG_UI_Button03.tga", "transpor_line_over" )


g_pRadioButton_transpor_line:SetCheckedTex( "DLG_UI_Button04.tga", "transpor_line_down" )

g_pRadioButton_transpor_line:SetDisableTex( "DLG_UI_Button03.tga", "transpor_line_normal" )

g_pRadioButton_transpor_line:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(645-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_transpor_line:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(645-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_transpor_line:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(645-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(725-80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_transpor_line:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(645+3-80,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_transpor_line:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(645-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_transpor_line:SetGroupID( 1 )
g_pRadioButton_transpor_line:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_transpor_line:AddDummyInt( DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"] )





-----------용의둥지: 나락

g_pRadioButton_dregon_hell= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_dregon_hell)

g_pRadioButton_dregon_hell:SetFixOverByCheck( true )
g_pRadioButton_dregon_hell:SetShowOffBGByCheck( true )

g_pRadioButton_dregon_hell:SetName( "dregon_hell" )

g_pRadioButton_dregon_hell:SetNormalTex( "DLG_UI_Button14.tga", "Secret_Normal" )


g_pRadioButton_dregon_hell:SetOverTex( "DLG_UI_Button14.tga", "Secret_Over" )


g_pRadioButton_dregon_hell:SetCheckedTex( "DLG_UI_Button14.tga", "Secret_Down" )
g_pRadioButton_dregon_hell:SetDisableTex( "DLG_UI_Button14.tga", "Secret_Normal" )


g_pRadioButton_dregon_hell:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_hell:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_hell:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(995-80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_hell:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(914-80,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_hell:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dregon_hell:SetGroupID( 1 )
g_pRadioButton_dregon_hell:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_dregon_hell:AddDummyInt( DUNGEON_ID["DI_BESMA_SECRET_COMMON"] )
g_pRadioButton_dregon_hell:AddDummyInt( 2 )	-- 비밀던전은 AddDummyInt(2)를 꼭 넣어줘야함


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
g_pRadioButton_defence:AddDummyInt( DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"] )

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
		g_pRadioButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_BESMA"] )
--]]

