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
g_pRadioButton_all_view:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_RUBEN"] )
g_pRadioButton_all_view:AddDummyInt( 1 )

-----------------------------------------------------------------------------------
-- 개편된 엘의 나무
-----------------------------------------------------------------------------------

g_pRadioButton_El_Tree = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_El_Tree )

g_pRadioButton_El_Tree:SetFixOverByCheck( true )
g_pRadioButton_El_Tree:SetShowOffBGByCheck( true )

g_pRadioButton_El_Tree:SetName( "eltree_east" )

g_pRadioButton_El_Tree:SetNormalTex( "DLG_UI_Button03.tga", "eltree_normal" )


g_pRadioButton_El_Tree:SetOverTex( "DLG_UI_Button03.tga", "eltree_over" )


g_pRadioButton_El_Tree:SetCheckedTex( "DLG_UI_Button04.tga", "eltree_down" )


g_pRadioButton_El_Tree:SetDisableTex( "DLG_UI_Button03.tga", "eltree_normal" )

g_pRadioButton_El_Tree:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_El_Tree:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_El_Tree:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(245,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_El_Tree:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(168,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_El_Tree:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(165,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_El_Tree:SetGroupID( 1 )
g_pRadioButton_El_Tree:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_El_Tree:AddDummyInt( DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"] )


-----------------------------------------------------------------------------------
-- 숲속의 폐허
-----------------------------------------------------------------------------------

g_pRadioButton_Ruin_Of_Elf_Normal = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Ruin_Of_Elf_Normal )

g_pRadioButton_Ruin_Of_Elf_Normal:SetFixOverByCheck( true )
g_pRadioButton_Ruin_Of_Elf_Normal:SetShowOffBGByCheck( true )

g_pRadioButton_Ruin_Of_Elf_Normal:SetName( "eltree" )

g_pRadioButton_Ruin_Of_Elf_Normal:SetNormalTex( "DLG_UI_Button15.tga", "Ruin_normal" )


g_pRadioButton_Ruin_Of_Elf_Normal:SetOverTex( "DLG_UI_Button15.tga", "Ruin_over" )


g_pRadioButton_Ruin_Of_Elf_Normal:SetCheckedTex( "DLG_UI_Button15.tga", "Ruin_down" )

g_pRadioButton_Ruin_Of_Elf_Normal:SetDisableTex( "DLG_UI_Button15.tga", "Ruin_normal" )

g_pRadioButton_Ruin_Of_Elf_Normal:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Ruin_Of_Elf_Normal:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Ruin_Of_Elf_Normal:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(325,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Ruin_Of_Elf_Normal:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(248,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Ruin_Of_Elf_Normal:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Ruin_Of_Elf_Normal:SetGroupID( 1 )
g_pRadioButton_Ruin_Of_Elf_Normal:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Ruin_Of_Elf_Normal:AddDummyInt( DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"] )


-----------------------------------------------------------------------------------
-- 하얀 안개 습지
-----------------------------------------------------------------------------------

g_pRadioButton_Swamp = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Swamp )

g_pRadioButton_Swamp:SetFixOverByCheck( true )
g_pRadioButton_Swamp:SetShowOffBGByCheck( true )

g_pRadioButton_Swamp:SetName( "eltree_west" )

g_pRadioButton_Swamp:SetNormalTex( "DLG_UI_Button15.tga", "Swamp_normal" )


g_pRadioButton_Swamp:SetOverTex( "DLG_UI_Button15.tga", "Swamp_over" )


g_pRadioButton_Swamp:SetCheckedTex( "DLG_UI_Button15.tga", "Swamp_down" )

g_pRadioButton_Swamp:SetDisableTex( "DLG_UI_Button15.tga", "Swamp_normal" )

g_pRadioButton_Swamp:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Swamp:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Swamp:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(405,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Swamp:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(328,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Swamp:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(325,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_Swamp:SetGroupID( 1 )
g_pRadioButton_Swamp:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
g_pRadioButton_Swamp:AddDummyInt( DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"] )
			


--[[
			----------- 엘의 나무 서쪽

			g_pRadioButton_eltree_east = g_pUIDialog:CreateRadioButton()
			g_pUIDialog:AddControl( g_pRadioButton_eltree_east )

			g_pRadioButton_eltree_east:SetFixOverByCheck( true )
			g_pRadioButton_eltree_east:SetShowOffBGByCheck( true )

			g_pRadioButton_eltree_east:SetName( "eltree_east" )

			g_pRadioButton_eltree_east:SetNormalTex( "DLG_UI_Button03.tga", "eltree_west_normal" )


			g_pRadioButton_eltree_east:SetOverTex( "DLG_UI_Button03.tga", "eltree_west_over" )


			g_pRadioButton_eltree_east:SetCheckedTex( "DLG_UI_Button04.tga", "eltree_west_down" )


			g_pRadioButton_eltree_east:SetDisableTex( "DLG_UI_Button03.tga", "eltree_west_normal" )

			g_pRadioButton_eltree_east:SetBGPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(165,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_east:SetBGMouseOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(165,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_east:SetRBPoint
			{

 				USE_TEXTURE_SIZE	= FALSE,

 				"LEFT_TOP		= D3DXVECTOR2(165,71)",
				"RIGHT_BOTTOM	= D3DXVECTOR2(245,104)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_east:SetCheckPoint
			{

 				"LEFT_TOP		= D3DXVECTOR2(168,68)",
 				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_east:SetDisabledPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(165,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_east:SetGroupID( 1 )
			g_pRadioButton_eltree_east:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
			g_pRadioButton_eltree_east:AddDummyInt( DUNGEON_ID["DI_EL_FOREST_WEST_NORMAL"] )





			----------- 엘의 나무 

			g_pRadioButton_eltree = g_pUIDialog:CreateRadioButton()
			g_pUIDialog:AddControl( g_pRadioButton_eltree )

			g_pRadioButton_eltree:SetFixOverByCheck( true )
			g_pRadioButton_eltree:SetShowOffBGByCheck( true )

			g_pRadioButton_eltree:SetName( "eltree" )

			g_pRadioButton_eltree:SetNormalTex( "DLG_UI_Button03.tga", "eltree_normal" )


			g_pRadioButton_eltree:SetOverTex( "DLG_UI_Button03.tga", "eltree_over" )


			g_pRadioButton_eltree:SetCheckedTex( "DLG_UI_Button04.tga", "eltree_down" )

			g_pRadioButton_eltree:SetDisableTex( "DLG_UI_Button03.tga", "eltree_normal" )

			g_pRadioButton_eltree:SetBGPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(245,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree:SetBGMouseOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(245,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree:SetRBPoint
			{

 				USE_TEXTURE_SIZE	= FALSE,

 				"LEFT_TOP		= D3DXVECTOR2(245,71)",
				"RIGHT_BOTTOM	= D3DXVECTOR2(325,104)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree:SetCheckPoint
			{

 				"LEFT_TOP		= D3DXVECTOR2(248,68)",
 				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree:SetDisabledPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(245,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree:SetGroupID( 1 )
			g_pRadioButton_eltree:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
			g_pRadioButton_eltree:AddDummyInt( DUNGEON_ID["DI_EL_FOREST_MAIN_NORMAL"] )




			----------- 원숭이 숲

			g_pRadioButton_eltree_west = g_pUIDialog:CreateRadioButton()
			g_pUIDialog:AddControl( g_pRadioButton_eltree_west )

			g_pRadioButton_eltree_west:SetFixOverByCheck( true )
			g_pRadioButton_eltree_west:SetShowOffBGByCheck( true )

			g_pRadioButton_eltree_west:SetName( "eltree_west" )

			g_pRadioButton_eltree_west:SetNormalTex( "DLG_UI_Button03.tga", "monkey_wood_normal" )


			g_pRadioButton_eltree_west:SetOverTex( "DLG_UI_Button03.tga", "monkey_wood_over" )


			g_pRadioButton_eltree_west:SetCheckedTex( "DLG_UI_Button04.tga", "monkey_wood_down" )

			g_pRadioButton_eltree_west:SetDisableTex( "DLG_UI_Button03.tga", "monkey_wood_normal" )

			g_pRadioButton_eltree_west:SetBGPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(325,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_west:SetBGMouseOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(325,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_west:SetRBPoint
			{

 				USE_TEXTURE_SIZE	= FALSE,

 				"LEFT_TOP		= D3DXVECTOR2(325,71)",
				"RIGHT_BOTTOM	= D3DXVECTOR2(405,104)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_west:SetCheckPoint
			{

 				"LEFT_TOP		= D3DXVECTOR2(328,68)",
 				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_west:SetDisabledPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(325,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
				CHANGE_TIME		= 0.0,
			}


			g_pRadioButton_eltree_west:SetGroupID( 1 )
			g_pRadioButton_eltree_west:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
			g_pRadioButton_eltree_west:AddDummyInt( DUNGEON_ID["DI_EL_FOREST_MONKEY_NORMAL"] )







			----------- 엘의나무 동쪽

			g_pRadioButton_monkey_wood = g_pUIDialog:CreateRadioButton()
			g_pUIDialog:AddControl( g_pRadioButton_monkey_wood )

			g_pRadioButton_monkey_wood:SetFixOverByCheck( true )
			g_pRadioButton_monkey_wood:SetShowOffBGByCheck( true )

			g_pRadioButton_monkey_wood:SetName( "monkey_wood" )

			g_pRadioButton_monkey_wood:SetNormalTex( "DLG_UI_Button03.tga", "eltree_east_normal" )


			g_pRadioButton_monkey_wood:SetOverTex( "DLG_UI_Button03.tga", "eltree_east_over" )


			g_pRadioButton_monkey_wood:SetCheckedTex( "DLG_UI_Button04.tga", "eltree_east_down" )

			g_pRadioButton_monkey_wood:SetDisableTex( "DLG_UI_Button03.tga", "eltree_east_normal" )

			g_pRadioButton_monkey_wood:SetBGPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(405,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_monkey_wood:SetBGMouseOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(405,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_monkey_wood:SetRBPoint
			{

 				USE_TEXTURE_SIZE	= FALSE,

 				"LEFT_TOP		= D3DXVECTOR2(405,71)",
				"RIGHT_BOTTOM	= D3DXVECTOR2(485,104)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_monkey_wood:SetCheckPoint
			{

 				"LEFT_TOP		= D3DXVECTOR2(408,68)",
 				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}



			g_pRadioButton_monkey_wood:SetDisabledPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(405,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
				CHANGE_TIME		= 0.0,
			}
			g_pRadioButton_monkey_wood:SetGroupID( 1 )
			g_pRadioButton_monkey_wood:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
			g_pRadioButton_monkey_wood:AddDummyInt( DUNGEON_ID["DI_EL_FOREST_EXTRA_NORMAL"] )



			----------- 엘의 나무 북쪽

			g_pRadioButton_eltree_north = g_pUIDialog:CreateRadioButton()
			g_pUIDialog:AddControl( g_pRadioButton_eltree_north )

			g_pRadioButton_eltree_north:SetFixOverByCheck( true )
			g_pRadioButton_eltree_north:SetShowOffBGByCheck( true )

			g_pRadioButton_eltree_north:SetName( "eltree_north" )

			g_pRadioButton_eltree_north:SetNormalTex( "DLG_UI_Button03.tga", "eltree_north_normal" )


			g_pRadioButton_eltree_north:SetOverTex( "DLG_UI_Button03.tga", "eltree_north_over" )


			g_pRadioButton_eltree_north:SetCheckedTex( "DLG_UI_Button04.tga", "eltree_north_down" )

			g_pRadioButton_eltree_north:SetDisableTex( "DLG_UI_Button03.tga", "eltree_north_normal" )

			g_pRadioButton_eltree_north:SetBGPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(485,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_north:SetBGMouseOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(485,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_north:SetRBPoint
			{

 				USE_TEXTURE_SIZE	= FALSE,

 				"LEFT_TOP		= D3DXVECTOR2(485,71)",
				"RIGHT_BOTTOM	= D3DXVECTOR2(565,104)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_north:SetCheckPoint
			{

 				"LEFT_TOP		= D3DXVECTOR2(488,68)",
 				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_north:SetDisabledPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(485,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_north:SetGroupID( 1 )
			g_pRadioButton_eltree_north:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
			g_pRadioButton_eltree_north:AddDummyInt( DUNGEON_ID["DI_EL_FOREST_NORTH_NORMAL"] )





			----------- 엘의 나무 비밀던전

			g_pRadioButton_eltree_hidden = g_pUIDialog:CreateRadioButton()
			g_pUIDialog:AddControl( g_pRadioButton_eltree_hidden )

			g_pRadioButton_eltree_hidden:SetFixOverByCheck( true )
			g_pRadioButton_eltree_hidden:SetShowOffBGByCheck( true )

			g_pRadioButton_eltree_hidden:SetName( "eltree_hidden" )

			g_pRadioButton_eltree_hidden:SetNormalTex( "DLG_UI_Button14.tga", "Secret_Normal" )


			g_pRadioButton_eltree_hidden:SetOverTex( "DLG_UI_Button14.tga", "Secret_Over" )


			g_pRadioButton_eltree_hidden:SetCheckedTex( "DLG_UI_Button14.tga", "Secret_Down" )

			g_pRadioButton_eltree_hidden:SetDisableTex( "DLG_UI_Button14.tga", "Secret_Normal" )

			g_pRadioButton_eltree_hidden:SetBGPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_hidden:SetBGMouseOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_hidden:SetRBPoint
			{

 				USE_TEXTURE_SIZE	= FALSE,

 				"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
				"RIGHT_BOTTOM	= D3DXVECTOR2(995-80,104)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_hidden:SetCheckPoint
			{

 				"LEFT_TOP		= D3DXVECTOR2(914-80,68)",
 				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_hidden:SetDisabledPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(911-80,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_eltree_hidden:SetGroupID( 1 )
			g_pRadioButton_eltree_hidden:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
			g_pRadioButton_eltree_hidden:AddDummyInt( DUNGEON_ID["DI_RUBEN_SECRET_COMMON"] )
			g_pRadioButton_eltree_hidden:AddDummyInt( 2 )	-- 비밀던전은 AddDummyInt(2)를 꼭 넣어줘야함
--]]

--[[
			----------- 윌리엄의 시공

			g_pRadioButton_William = g_pUIDialog:CreateRadioButton()
			g_pUIDialog:AddControl( g_pRadioButton_William )

			g_pRadioButton_William:SetFixOverByCheck( true )
			g_pRadioButton_William:SetShowOffBGByCheck( true )

			g_pRadioButton_William:SetName( "William" )

			g_pRadioButton_William:SetNormalTex( "DLG_UI_Button11.tga", "William_normal" )


			g_pRadioButton_William:SetOverTex( "DLG_UI_Button11.tga", "William_over" )


			g_pRadioButton_William:SetCheckedTex( "DLG_UI_Button11.tga", "William_down" )

			g_pRadioButton_William:SetDisableTex( "DLG_UI_Button11.tga", "William_normal" )

			g_pRadioButton_William:SetBGPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(911,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_William:SetBGMouseOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(911,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_William:SetRBPoint
			{

 				USE_TEXTURE_SIZE	= FALSE,

 				"LEFT_TOP		= D3DXVECTOR2(911,71)",
				"RIGHT_BOTTOM	= D3DXVECTOR2(995,104)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_William:SetCheckPoint
			{

 				"LEFT_TOP		= D3DXVECTOR2(914,68)",
 				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}


			g_pRadioButton_William:SetDisabledPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(911,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
				CHANGE_TIME		= 0.0,
			}
			g_pRadioButton_William:SetGroupID( 1 )
			g_pRadioButton_William:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
			g_pRadioButton_William:AddDummyInt( DUNGEON_ID["DI_EVENT_KIDDAY_RUBEN"] )
--]]

--[[

			----------- 이미르의 시공

			g_pRadioButton_emile_space = g_pUIDialog:CreateRadioButton()
			g_pUIDialog:AddControl( g_pRadioButton_emile_space )

			g_pRadioButton_emile_space:SetFixOverByCheck( true )
			g_pRadioButton_emile_space:SetShowOffBGByCheck( true )

			g_pRadioButton_emile_space:SetName( "emile_space" )

			g_pRadioButton_emile_space:SetNormalTex( "DLG_UI_Button03.tga", "emile_space_normal" )


			g_pRadioButton_emile_space:SetOverTex( "DLG_UI_Button03.tga", "emile_space_over" )


			g_pRadioButton_emile_space:SetCheckedTex( "DLG_UI_Button04.tga", "emile_space_down" )

			g_pRadioButton_emile_space:SetDisableTex( "DLG_UI_Button03.tga", "emile_space_normal" )

			g_pRadioButton_emile_space:SetBGPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(911,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_emile_space:SetBGMouseOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(911,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_emile_space:SetRBPoint
			{

 				USE_TEXTURE_SIZE	= FALSE,

 				"LEFT_TOP		= D3DXVECTOR2(911,71)",
				"RIGHT_BOTTOM	= D3DXVECTOR2(995,104)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_emile_space:SetCheckPoint
			{

 				"LEFT_TOP		= D3DXVECTOR2(914,68)",
 				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}


			g_pRadioButton_emile_space:SetDisabledPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(911,71)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
				CHANGE_TIME		= 0.0,
			}
			g_pRadioButton_emile_space:SetGroupID( 1 )
			g_pRadioButton_emile_space:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_DUNGEON_SELECT"] ) 
			g_pRadioButton_emile_space:AddDummyInt( DUNGEON_ID["DI_ARCADE_RUBEN"] )

--]]


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

--]]
