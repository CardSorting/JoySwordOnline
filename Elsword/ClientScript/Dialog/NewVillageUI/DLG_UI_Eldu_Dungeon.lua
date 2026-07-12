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
g_pRadioButton_all_view:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_ELDER"] )
g_pRadioButton_all_view:AddDummyInt( 1 )





----------- 어둠의 숲

g_pRadioButton_dark_wood = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_dark_wood )

g_pRadioButton_dark_wood:SetFixOverByCheck( true )
g_pRadioButton_dark_wood:SetShowOffBGByCheck( true )

g_pRadioButton_dark_wood:SetName( "dark_wood" )

g_pRadioButton_dark_wood:SetNormalTex( "DLG_UI_Button03.tga", "dark_wood_normal" )


g_pRadioButton_dark_wood:SetOverTex( "DLG_UI_Button03.tga", "dark_wood_over" )


g_pRadioButton_dark_wood:SetCheckedTex( "DLG_UI_Button04.tga", "dark_wood_down" )

g_pRadioButton_dark_wood:SetDisableTex( "DLG_UI_Button03.tga", "dark_wood_normal" )

g_pRadioButton_dark_wood:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dark_wood:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dark_wood:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(245,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dark_wood:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(168,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dark_wood:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_dark_wood:SetGroupID( 1 )
g_pRadioButton_dark_wood:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_dark_wood:AddDummyInt( DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"] )



--[[
----------- 천연동굴

g_pRadioButton_nature_cave = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_nature_cave )

g_pRadioButton_nature_cave:SetFixOverByCheck( true )
g_pRadioButton_nature_cave:SetShowOffBGByCheck( true )

g_pRadioButton_nature_cave:SetName( "nature_cave" )

g_pRadioButton_nature_cave:SetNormalTex( "DLG_UI_Button03.tga", "nature_cave_normal" )


g_pRadioButton_nature_cave:SetOverTex( "DLG_UI_Button03.tga", "nature_cave_over" )


g_pRadioButton_nature_cave:SetCheckedTex( "DLG_UI_Button04.tga", "nature_cave_down" )

g_pRadioButton_nature_cave:SetDisableTex( "DLG_UI_Button03.tga", "nature_cave_normal" )

g_pRadioButton_nature_cave:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_nature_cave:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_nature_cave:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(325,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_nature_cave:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(248,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_nature_cave:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_nature_cave:SetGroupID( 1 )
g_pRadioButton_nature_cave:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_nature_cave:AddDummyInt( DUNGEON_ID["DI_ELDER_NATURE_CAVE_NORMAL"] )

--]]


----------- 벤더스의 동굴

g_pRadioButton_bendus_cave = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_bendus_cave )

g_pRadioButton_bendus_cave:SetFixOverByCheck( true )
g_pRadioButton_bendus_cave:SetShowOffBGByCheck( true )

g_pRadioButton_bendus_cave:SetName( "bendus_cave" )

g_pRadioButton_bendus_cave:SetNormalTex( "DLG_UI_Button03.tga", "bendus_cave_normal" )


g_pRadioButton_bendus_cave:SetOverTex( "DLG_UI_Button03.tga", "bendus_cave_over" )


g_pRadioButton_bendus_cave:SetCheckedTex( "DLG_UI_Button04.tga", "bendus_cave_down" )


g_pRadioButton_bendus_cave:SetDisableTex( "DLG_UI_Button03.tga", "bendus_cave_normal" )

g_pRadioButton_bendus_cave:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_bendus_cave:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_bendus_cave:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(325,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_bendus_cave:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(245+3,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_bendus_cave:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_bendus_cave:SetGroupID( 1 )
g_pRadioButton_bendus_cave:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_bendus_cave:AddDummyInt( DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"] )









----------- 지하수로

g_pRadioButton_culvert = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_culvert )

g_pRadioButton_culvert:SetFixOverByCheck( true )
g_pRadioButton_culvert:SetShowOffBGByCheck( true )

g_pRadioButton_culvert:SetName( "culvert" )

g_pRadioButton_culvert:SetNormalTex( "DLG_UI_Button03.tga", "culvert_normal" )


g_pRadioButton_culvert:SetOverTex( "DLG_UI_Button03.tga", "culvert_over" )


g_pRadioButton_culvert:SetCheckedTex( "DLG_UI_Button04.tga", "culvert_down" )

g_pRadioButton_culvert:SetDisableTex( "DLG_UI_Button03.tga", "culvert_normal" )

g_pRadioButton_culvert:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_culvert:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_culvert:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(405,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_culvert:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(325+3,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_culvert:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_culvert:SetGroupID( 1 )
g_pRadioButton_culvert:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_culvert:AddDummyInt( DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"] )








----------- 월리의성 외곽

g_pRadioButton_castle_out = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_castle_out )

g_pRadioButton_castle_out:SetFixOverByCheck( true )
g_pRadioButton_castle_out:SetShowOffBGByCheck( true )

g_pRadioButton_castle_out:SetName( "castle_out" )

g_pRadioButton_castle_out:SetNormalTex( "DLG_UI_Button03.tga", "castle_out_normal" )


g_pRadioButton_castle_out:SetOverTex( "DLG_UI_Button03.tga", "castle_out_over" )


g_pRadioButton_castle_out:SetCheckedTex( "DLG_UI_Button04.tga", "castle_out_down" )

g_pRadioButton_castle_out:SetDisableTex( "DLG_UI_Button03.tga", "castle_out_normal" )

g_pRadioButton_castle_out:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_castle_out:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_castle_out:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(485,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_castle_out:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(405+3,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_castle_out:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_castle_out:SetGroupID( 1 )
g_pRadioButton_castle_out:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_castle_out:AddDummyInt( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"] )



----------- 월리의성

g_pRadioButton_waulli_castle= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_waulli_castle)

g_pRadioButton_waulli_castle:SetFixOverByCheck( true )
g_pRadioButton_waulli_castle:SetShowOffBGByCheck( true )

g_pRadioButton_waulli_castle:SetName( "waulli_castle" )

g_pRadioButton_waulli_castle:SetNormalTex( "DLG_UI_Button03.tga", "waulli_castle_normal" )


g_pRadioButton_waulli_castle:SetOverTex( "DLG_UI_Button03.tga", "waulli_castle_over" )


g_pRadioButton_waulli_castle:SetCheckedTex( "DLG_UI_Button04.tga", "waulli_castle_down" )

g_pRadioButton_waulli_castle:SetDisableTex( "DLG_UI_Button03.tga", "waulli_castle_normal" )

g_pRadioButton_waulli_castle:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_waulli_castle:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_waulli_castle:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(485,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(565,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_waulli_castle:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(485+3,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_waulli_castle:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(485,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_waulli_castle:SetGroupID( 1 )
g_pRadioButton_waulli_castle:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_waulli_castle:AddDummyInt( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"] )








----------- 지하연구실

g_pRadioButton_under_oppice= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_under_oppice)

g_pRadioButton_under_oppice:SetFixOverByCheck( true )
g_pRadioButton_under_oppice:SetShowOffBGByCheck( true )

g_pRadioButton_under_oppice:SetName( "under_oppice" )

g_pRadioButton_under_oppice:SetNormalTex( "DLG_UI_Button14.tga", "Secret_Normal" )


g_pRadioButton_under_oppice:SetOverTex( "DLG_UI_Button14.tga", "Secret_Over" )


g_pRadioButton_under_oppice:SetCheckedTex( "DLG_UI_Button14.tga", "Secret_Down" )

g_pRadioButton_under_oppice:SetDisableTex( "DLG_UI_Button14.tga", "Secret_Normal" )

g_pRadioButton_under_oppice:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_under_oppice:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_under_oppice:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(995-80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_under_oppice:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(914-80,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_under_oppice:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_under_oppice:SetGroupID( 1 )
g_pRadioButton_under_oppice:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_under_oppice:AddDummyInt( DUNGEON_ID["DI_ELDER_SECRET_COMMON"] )
g_pRadioButton_under_oppice:AddDummyInt( 2 )	-- 비밀던전은 AddDummyInt(2)를 꼭 넣어줘야함

----------- 디펜스 던전

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

	"LEFT_TOP		= D3DXVECTOR2(485+82,71+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Holloween:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485+82,71+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Holloween:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(485+82,71+2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(565+82,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Holloween:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(485+82,68+2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Holloween:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(485+82,71+2)",
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
	g_pRadioButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_ELDER"] )
--]]