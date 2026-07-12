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
g_pRadioButton_all_view:AddDummyInt( VILLAGE_MAP_ID["VMI_PEITA"] )
g_pRadioButton_all_view:AddDummyInt( 1 )





----------- 봉헌의신전입구

g_pRadioButtonbonghun_gate = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonbonghun_gate )

g_pRadioButtonbonghun_gate:SetFixOverByCheck( true )
g_pRadioButtonbonghun_gate:SetShowOffBGByCheck( true )

g_pRadioButtonbonghun_gate:SetName( "bonghun_gate" )

g_pRadioButtonbonghun_gate:SetNormalTex( "DLG_UI_Button10.tga", "bonghun_gate_normal" )


g_pRadioButtonbonghun_gate:SetOverTex( "DLG_UI_Button10.tga", "bonghun_gate_over" )


g_pRadioButtonbonghun_gate:SetCheckedTex( "DLG_UI_Button10.tga", "bonghun_gate_down" )

g_pRadioButtonbonghun_gate:SetDisableTex( "DLG_UI_Button10.tga", "bonghun_gate_normal" )

g_pRadioButtonbonghun_gate:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonbonghun_gate:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonbonghun_gate:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(245,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonbonghun_gate:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(168,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonbonghun_gate:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonbonghun_gate:SetGroupID( 1 )
g_pRadioButtonbonghun_gate:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButtonbonghun_gate:AddDummyInt( DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"] )




----------- 나선회랑

g_pRadioButtonscrew_corridor = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonscrew_corridor )

g_pRadioButtonscrew_corridor:SetFixOverByCheck( true )
g_pRadioButtonscrew_corridor:SetShowOffBGByCheck( true )

g_pRadioButtonscrew_corridor:SetName( "screw_corridor" )

g_pRadioButtonscrew_corridor:SetNormalTex( "DLG_UI_Button10.tga", "screw_corridor_normal" )


g_pRadioButtonscrew_corridor:SetOverTex( "DLG_UI_Button10.tga", "screw_corridor_over" )


g_pRadioButtonscrew_corridor:SetCheckedTex( "DLG_UI_Button10.tga", "screw_corridor_down" )

g_pRadioButtonscrew_corridor:SetDisableTex( "DLG_UI_Button10.tga", "screw_corridor_normal" )

g_pRadioButtonscrew_corridor:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonscrew_corridor:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonscrew_corridor:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(325,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonscrew_corridor:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(248,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonscrew_corridor:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonscrew_corridor:SetGroupID( 1 )
g_pRadioButtonscrew_corridor:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButtonscrew_corridor:AddDummyInt( DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"] )





----------- 지하예배당

g_pRadioButton_Chapel = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Chapel )

g_pRadioButton_Chapel:SetFixOverByCheck( true )
g_pRadioButton_Chapel:SetShowOffBGByCheck( true )

g_pRadioButton_Chapel:SetName( "Chapel" )

g_pRadioButton_Chapel:SetNormalTex( "DLG_UI_Button11.tga", "Chapel_normal" )


g_pRadioButton_Chapel:SetOverTex( "DLG_UI_Button11.tga", "Chapel_over" )


g_pRadioButton_Chapel:SetCheckedTex( "DLG_UI_Button11.tga", "Chapel_down" )

g_pRadioButton_Chapel:SetDisableTex( "DLG_UI_Button11.tga", "Chapel_normal" )

g_pRadioButton_Chapel:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Chapel:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Chapel:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(405,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Chapel:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(327,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Chapel:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Chapel:SetGroupID( 1 )
g_pRadioButton_Chapel:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Chapel:AddDummyInt( DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"] )




----------- 지하정원

g_pRadioButton_Garden= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Garden)

g_pRadioButton_Garden:SetFixOverByCheck( true )
g_pRadioButton_Garden:SetShowOffBGByCheck( true )

g_pRadioButton_Garden:SetName( "Garden" )

g_pRadioButton_Garden:SetNormalTex( "DLG_UI_Button11.tga", "GARDEN_NORMAL" )


g_pRadioButton_Garden:SetOverTex( "DLG_UI_Button11.tga", "GARDEN_OVER" )


g_pRadioButton_Garden:SetCheckedTex( "DLG_UI_Button11.tga", "GARDEN_DOWN" )

g_pRadioButton_Garden:SetDisableTex( "DLG_UI_Button11.tga", "GARDEN_NORMAL" )

g_pRadioButton_Garden:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Garden:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Garden:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(486,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Garden:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(408,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Garden:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Garden:SetGroupID( 1 )
g_pRadioButton_Garden:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Garden:AddDummyInt( DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"] )



-----------첩탑의심장부

g_pRadioButton_Tower_Center= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Tower_Center)

g_pRadioButton_Tower_Center:SetFixOverByCheck( true )
g_pRadioButton_Tower_Center:SetShowOffBGByCheck( true )

g_pRadioButton_Tower_Center:SetName( "Tower_Center" )

g_pRadioButton_Tower_Center:SetNormalTex( "DLG_UI_Button11.tga", "Tower_Center_NORMAL" )


g_pRadioButton_Tower_Center:SetOverTex( "DLG_UI_Button11.tga", "Tower_Center_OVER" )


g_pRadioButton_Tower_Center:SetCheckedTex( "DLG_UI_Button11.tga", "Tower_Center_DOWN" )

g_pRadioButton_Tower_Center:SetDisableTex( "DLG_UI_Button11.tga", "Tower_Center_NORMAL" )

g_pRadioButton_Tower_Center:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405+80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Tower_Center:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405+80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Tower_Center:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(405+80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(486+80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Tower_Center:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(408+80,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Tower_Center:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405+80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tower_Center:SetGroupID( 1 )
g_pRadioButton_Tower_Center:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Tower_Center:AddDummyInt( DUNGEON_ID["DI_PEITA_TOWER_HEART_NORMAL"] )


-----------봉헌의제단

g_pRadioButton_Altar= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Altar)

g_pRadioButton_Altar:SetFixOverByCheck( true )
g_pRadioButton_Altar:SetShowOffBGByCheck( true )

g_pRadioButton_Altar:SetName( "Altar" )

g_pRadioButton_Altar:SetNormalTex( "DLG_UI_Button11.tga", "Altar_NORMAL" )


g_pRadioButton_Altar:SetOverTex( "DLG_UI_Button11.tga", "Altar_OVER" )


g_pRadioButton_Altar:SetCheckedTex( "DLG_UI_Button11.tga", "Altar_DOWN" )

g_pRadioButton_Altar:SetDisableTex( "DLG_UI_Button11.tga", "Altar_NORMAL" )

g_pRadioButton_Altar:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405+80+80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Altar:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405+80+80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Altar:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(405+80+80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(486+80+80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Altar:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(408+80+80,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Altar:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(405+80+80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Altar:SetGroupID( 1 )
g_pRadioButton_Altar:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Altar:AddDummyInt( DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"] )




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

 	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(995-80,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Secret:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(911-80,68)",
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
g_pRadioButton_Secret:AddDummyInt( DUNGEON_ID["DI_RUBEN_SECRET_COMMON"] )
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

	"LEFT_TOP		= D3DXVECTOR2(911-80-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_defence:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(911-80-80,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_defence:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(911-80-80,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(911-80-80+84,71+33)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_defence:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(914-80-80-2,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_defence:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
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
		----------- 식목일 이벤트 던전

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

			"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		g_pRadioButton_Tree_Day:SetBGMouseOverPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		g_pRadioButton_Tree_Day:SetRBPoint
		{

 			USE_TEXTURE_SIZE	= FALSE,

 			"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
			"RIGHT_BOTTOM	= D3DXVECTOR2(995-80,104)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		g_pRadioButton_Tree_Day:SetCheckPoint
		{

 			"LEFT_TOP		= D3DXVECTOR2(914-80,68)",
 			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pRadioButton_Tree_Day:SetDisabledPoint
		{
			"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
			CHANGE_TIME		= 0.0,
		}

		g_pRadioButton_Tree_Day:SetGroupID( 1 )
		g_pRadioButton_Tree_Day:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
		g_pRadioButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_PEITA"] )
--]]