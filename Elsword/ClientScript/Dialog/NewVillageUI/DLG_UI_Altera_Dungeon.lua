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
g_pRadioButton_all_view:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_ALTERA"] )
g_pRadioButton_all_view:AddDummyInt( 1 )






----------- 블래크로우호

g_pRadioButton_black_ship = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_black_ship )

g_pRadioButton_black_ship:SetFixOverByCheck( true )
g_pRadioButton_black_ship:SetShowOffBGByCheck( true )

g_pRadioButton_black_ship:SetName( "black_ship" )

g_pRadioButton_black_ship:SetNormalTex( "DLG_UI_Button03.tga", "black_ship_normal" )


g_pRadioButton_black_ship:SetOverTex( "DLG_UI_Button03.tga", "black_ship_over" )


g_pRadioButton_black_ship:SetCheckedTex( "DLG_UI_Button04.tga", "black_ship_down" )

g_pRadioButton_black_ship:SetDisableTex( "DLG_UI_Button03.tga", "black_ship_normal" )

g_pRadioButton_black_ship:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_black_ship:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_black_ship:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(245,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_black_ship:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(168,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_black_ship:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_black_ship:SetGroupID( 1 )
g_pRadioButton_black_ship:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_black_ship:AddDummyInt( DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"] )












----------- 회귀의평원

g_pRadioButton_return_plain = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_return_plain )

g_pRadioButton_return_plain:SetFixOverByCheck( true )
g_pRadioButton_return_plain:SetShowOffBGByCheck( true )

g_pRadioButton_return_plain:SetName( "return_plain" )

g_pRadioButton_return_plain:SetNormalTex( "DLG_UI_Button03.tga", "return_plain_normal" )


g_pRadioButton_return_plain:SetOverTex( "DLG_UI_Button03.tga", "return_plain_over" )


g_pRadioButton_return_plain:SetCheckedTex( "DLG_UI_Button04.tga", "return_plain_down" )

g_pRadioButton_return_plain:SetDisableTex( "DLG_UI_Button03.tga", "return_plain_normal" )

g_pRadioButton_return_plain:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_return_plain:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_return_plain:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(325,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_return_plain:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(248,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_return_plain:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_return_plain:SetGroupID( 1 )
g_pRadioButton_return_plain:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_return_plain:AddDummyInt( DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"] )










----------- 운송터널B4_1

g_pRadioButton_b4_1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_b4_1 )

g_pRadioButton_b4_1:SetFixOverByCheck( true )
g_pRadioButton_b4_1:SetShowOffBGByCheck( true )

g_pRadioButton_b4_1:SetName( "b4_1" )

g_pRadioButton_b4_1:SetNormalTex( "DLG_UI_Button03.tga", "b4_1_normal" )


g_pRadioButton_b4_1:SetOverTex( "DLG_UI_Button03.tga", "b4_1_over" )


g_pRadioButton_b4_1:SetCheckedTex( "DLG_UI_Button04.tga", "b4_1_down" )

g_pRadioButton_b4_1:SetDisableTex( "DLG_UI_Button03.tga", "b4_1_normal" )

g_pRadioButton_b4_1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_b4_1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_b4_1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(405,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_b4_1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(327,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_b4_1:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_b4_1:SetGroupID( 1 )
g_pRadioButton_b4_1:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_b4_1:AddDummyInt( DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"] )









----------- 알테라평원

g_pRadioButton_altera_plain= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_altera_plain)

g_pRadioButton_altera_plain:SetFixOverByCheck( true )
g_pRadioButton_altera_plain:SetShowOffBGByCheck( true )

g_pRadioButton_altera_plain:SetName( "altera_plain" )

g_pRadioButton_altera_plain:SetNormalTex( "DLG_UI_Button03.tga", "altera_plain_normal" )


g_pRadioButton_altera_plain:SetOverTex( "DLG_UI_Button03.tga", "altera_plain_over" )


g_pRadioButton_altera_plain:SetCheckedTex( "DLG_UI_Button04.tga", "altera_plain_down" )

g_pRadioButton_altera_plain:SetDisableTex( "DLG_UI_Button03.tga", "altera_plain_normal" )

g_pRadioButton_altera_plain:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_plain:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_plain:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(486,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_plain:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(408,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_altera_plain:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_altera_plain:SetGroupID( 1 )
g_pRadioButton_altera_plain:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_altera_plain:AddDummyInt( DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"] )







----------- 나소드생산기지

g_pRadioButton_nasword_base = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_nasword_base )

g_pRadioButton_nasword_base:SetFixOverByCheck( true )
g_pRadioButton_nasword_base:SetShowOffBGByCheck( true )

g_pRadioButton_nasword_base:SetName( "nasword_base" )

g_pRadioButton_nasword_base:SetNormalTex( "DLG_UI_Button03.tga", "nasword_base_normal" )


g_pRadioButton_nasword_base:SetOverTex( "DLG_UI_Button03.tga", "nasword_base_over" )


g_pRadioButton_nasword_base:SetCheckedTex( "DLG_UI_Button04.tga", "nasword_base_down" )
g_pRadioButton_nasword_base:SetDisableTex( "DLG_UI_Button03.tga", "nasword_base_normal" )


g_pRadioButton_nasword_base:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_nasword_base:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(485,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_nasword_base:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(485,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(565,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_nasword_base:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(488,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_nasword_base:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(485,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_nasword_base:SetGroupID( 1 )
g_pRadioButton_nasword_base:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_nasword_base:AddDummyInt( DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"] )



----------- 알테라코어

g_pRadioButton_altera_core= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_altera_core)

g_pRadioButton_altera_core:SetFixOverByCheck( true )
g_pRadioButton_altera_core:SetShowOffBGByCheck( true )

g_pRadioButton_altera_core:SetName( "altera_core" )

g_pRadioButton_altera_core:SetNormalTex( "DLG_UI_Button03.tga", "altera_core_normal" )


g_pRadioButton_altera_core:SetOverTex( "DLG_UI_Button03.tga", "altera_core_over" )


g_pRadioButton_altera_core:SetCheckedTex( "DLG_UI_Button04.tga", "altera_core_down" )

g_pRadioButton_altera_core:SetDisableTex( "DLG_UI_Button03.tga", "altera_core_normal" )

g_pRadioButton_altera_core:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(565,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_core:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(565,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_core:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(565,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(645,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_core:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(568,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_core:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(565,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_core:SetGroupID( 1 )
g_pRadioButton_altera_core:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_altera_core:AddDummyInt( DUNGEON_ID["DI_ALTERA_CORE_NORMAL"] )


----------- 알테라 비던-  운송터널:오염지역

g_pRadioButton_altera_secret_dungeon= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_altera_secret_dungeon)

g_pRadioButton_altera_secret_dungeon:SetFixOverByCheck( true )
g_pRadioButton_altera_secret_dungeon:SetShowOffBGByCheck( true )

g_pRadioButton_altera_secret_dungeon:SetName( "altera_secret_dungeon" )

g_pRadioButton_altera_secret_dungeon:SetNormalTex( "DLG_UI_Button14.tga", "Secret_Normal" )


g_pRadioButton_altera_secret_dungeon:SetOverTex( "DLG_UI_Button14.tga", "Secret_Over" )


g_pRadioButton_altera_secret_dungeon:SetCheckedTex( "DLG_UI_Button14.tga", "Secret_Down" )

g_pRadioButton_altera_secret_dungeon:SetDisableTex( "DLG_UI_Button14.tga", "Secret_Normal" )

g_pRadioButton_altera_secret_dungeon:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_secret_dungeon:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_secret_dungeon:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(995-80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_secret_dungeon:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(914-80,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_secret_dungeon:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_altera_secret_dungeon:SetGroupID( 1 )
g_pRadioButton_altera_secret_dungeon:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_altera_secret_dungeon:AddDummyInt( DUNGEON_ID["DI_ALTERA_SECRET_COMMON"] )
g_pRadioButton_altera_secret_dungeon:AddDummyInt( 2 )	-- 비밀던전은 AddDummyInt(2)를 꼭 넣어줘야함

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
	g_pRadioButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_ALTERA"] )
--]]