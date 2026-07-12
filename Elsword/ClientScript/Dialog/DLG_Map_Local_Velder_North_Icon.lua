-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.







--[[

			g_pButton_Velder_North_WestForest = g_pUIDialog:CreateButton()
			g_pUIDialog:AddControl( g_pButton_Velder_North_WestForest )
			g_pButton_Velder_North_WestForest:SetName( "Dungeon" )

			g_pButton_Velder_North_WestForest:AddDummyInt( DUNGEON_ID["DI_EL_FOREST_WEST_NORMAL"] )
			g_pButton_Velder_North_WestForest:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
			g_pButton_Velder_North_WestForest:AddDummyString( "West_Forest_Star" )

			g_pButton_Velder_North_WestForest:SetNormalTex( "DLG_Common_Button00.TGA", "Island_Sky_Over" )

			--g_pButton_Velder_North_WestForest:SetOverTex( "DLG_Common_Button00.TGA", "Island_Sky_Down" )
			IconAni( g_pButton_Velder_North_WestForest, "DLG_Common_Button00.TGA", "Island_Sky_Down" )

			g_pButton_Velder_North_WestForest:SetDownTex( "DLG_Common_Button00.TGA", "Island_Sky_Down" )

			g_pButton_Velder_North_WestForest:SetNormalPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(277,435)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButton_Velder_North_WestForest:SetOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(277-8,435-11)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButton_Velder_North_WestForest:SetDownPoint
			{
				ADD_SIZE_X = -4,
				ADD_SIZE_Y = -4,
 				"LEFT_TOP		= D3DXVECTOR2(277-8+2,435-11+2)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButton_Velder_North_WestForest:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )


--]]



------엘의나무
g_pButton_Ruben_El_Tree = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Ruben_El_Tree )
g_pButton_Ruben_El_Tree:SetName( "El_Tree" )
g_pButton_Ruben_El_Tree:AddDummyInt( DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"] )
g_pButton_Ruben_El_Tree:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Ruben_El_Tree:SetNormalTex( "DLG_Common_New_Button10.dds", "El_tree_N" )
IconAni( g_pButton_Ruben_El_Tree, "DLG_Common_New_Button10.dds", "El_tree_O" )
g_pButton_Ruben_El_Tree:SetDownTex( "DLG_Common_New_Button10.dds", "El_tree_O" )

g_pButton_Ruben_El_Tree:SetNormalPoint
{
	  ADD_SIZE_X=4,
	  ADD_SIZE_Y=4,
	"LEFT_TOP		= D3DXVECTOR2(447,344)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_El_Tree:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(434,327)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_El_Tree:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(434+2,327+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Ruben_El_Tree:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Ruben_El_Tree:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Ruben_El_Tree:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )



--숲속의 폐허

g_pButton_Ruben_Ruin_Of_Elf = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Ruben_Ruin_Of_Elf )
g_pButton_Ruben_Ruin_Of_Elf:SetName( "Ruben_Ruin_Of_Elf" )
g_pButton_Ruben_Ruin_Of_Elf:AddDummyInt( DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"] )
g_pButton_Ruben_Ruin_Of_Elf:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Ruben_Ruin_Of_Elf:SetNormalTex( "DLG_Common_New_Button10.dds", "Ruin_N" )
IconAni( g_pButton_Ruben_Ruin_Of_Elf, "DLG_Common_New_Button10.dds", "Ruin_O" )
g_pButton_Ruben_Ruin_Of_Elf:SetDownTex( "DLG_Common_New_Button10.dds", "Ruin_O" )

g_pButton_Ruben_Ruin_Of_Elf:SetNormalPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(601,178)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_Ruin_Of_Elf:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(588,164)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_Ruin_Of_Elf:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(588+2,164+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Ruben_Ruin_Of_Elf:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Ruben_Ruin_Of_Elf:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Ruben_Ruin_Of_Elf:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )



--하얀 안개 습지

g_pButton_Ruben_Swap = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Ruben_Swap )
g_pButton_Ruben_Swap:SetName( "Ruben_Swap" )
g_pButton_Ruben_Swap:AddDummyInt( DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"] )
g_pButton_Ruben_Swap:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Ruben_Swap:SetNormalTex( "DLG_Common_New_Button10.dds", "Swamp_N" )
IconAni( g_pButton_Ruben_Swap, "DLG_Common_New_Button10.dds", "Swamp_O" )
g_pButton_Ruben_Swap:SetDownTex( "DLG_Common_New_Button10.dds", "Swamp_O" )

g_pButton_Ruben_Swap:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(309,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_Swap:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(297,236)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_Swap:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(297+2,236+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Ruben_Swap:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Ruben_Swap:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Ruben_Swap:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )







--[[
		g_pButton_Velder_North_Monkey_Forest = g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButton_Velder_North_Monkey_Forest )
		g_pButton_Velder_North_Monkey_Forest:SetName( "Dungeon" )
		g_pButton_Velder_North_Monkey_Forest:AddDummyString( "Monkey_Forest_Star" )
		g_pButton_Velder_North_Monkey_Forest:AddDummyInt( DUNGEON_ID["DI_EL_FOREST_MONKEY_NORMAL"] )
		g_pButton_Velder_North_Monkey_Forest:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

		g_pButton_Velder_North_Monkey_Forest:SetNormalTex( "DLG_Common_New_Button08.dds", "Monkey_Forest_Normal" )

		--g_pButton_Velder_North_Monkey_Forest:SetOverTex( "DLG_Common_New_Button08.dds", "Monkey_Forest_Over" )
		IconAni( g_pButton_Velder_North_Monkey_Forest, "DLG_Common_New_Button08.dds", "Monkey_Forest_Over" )

		g_pButton_Velder_North_Monkey_Forest:SetDownTex( "DLG_Common_New_Button08.dds", "Monkey_Forest_Over" )

		g_pButton_Velder_North_Monkey_Forest:SetNormalPoint
		{
			"LEFT_TOP		= D3DXVECTOR2(669,303)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Velder_North_Monkey_Forest:SetOverPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(662,296)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Velder_North_Monkey_Forest:SetDownPoint
		{
			ADD_SIZE_X = -4,
			ADD_SIZE_Y = -4,
 			"LEFT_TOP		= D3DXVECTOR2(662+2,296+2)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Velder_North_Monkey_Forest:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )

--]]















--[[
	-----------------------------------------------------------------
	-----이미르 시공



	g_pButton_emir_space = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_emir_space )
	g_pButton_emir_space:SetName( "Dungeon" )

	g_pButton_emir_space:AddDummyString( "Glow_Forest_Star" )
	g_pButton_emir_space:AddDummyInt( DUNGEON_ID["DI_ARCADE_RUBEN"] )
	g_pButton_emir_space:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_ARCADE"] )



	g_pButton_emir_space:SetNormalTex( "DLG_Common_New_Button08.dds", "emir_space_normal" )

	--g_pButton_emir_space:SetOverTex( "DLG_Common_Button00.TGA", "Island_Sky_Down2" )
	IconAni( g_pButton_emir_space, "DLG_Common_New_Button08.dds", "emir_space_over" )

	g_pButton_emir_space:SetDownTex( "DLG_Common_New_Button08.dds", "emir_space_over" )

	g_pButton_emir_space:SetNormalPoint
	{
   		"LEFT_TOP		= D3DXVECTOR2(236+503,140)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_emir_space:SetOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(236+503-12,140-10)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_emir_space:SetDownPoint
	{
		ADD_SIZE_X = -4,
		ADD_SIZE_Y = -4,
 		"LEFT_TOP		= D3DXVECTOR2(236+503+2-12,140+2-10)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pButton_emir_space:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )

--]]



--[[
		g_pButton_Velder_El_Tree_HellMode = g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButton_Velder_El_Tree_HellMode )
		g_pButton_Velder_El_Tree_HellMode:SetName( "Dungeon" )
		g_pButton_Velder_El_Tree_HellMode:AddDummyInt( DUNGEON_ID["DI_RUBEN_SECRET_COMMON"] )
		g_pButton_Velder_El_Tree_HellMode:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

		g_pButton_Velder_El_Tree_HellMode:SetNormalTex( "DLG_Common_Button01.TGA", "Druid_Forest" )

		--g_pButton_Velder_El_Tree_HellMode:SetOverTex( "DLG_Common_Button01.TGA", "Druid_Forest_Over" )
		IconAni( g_pButton_Velder_El_Tree_HellMode, "DLG_Common_Button01.TGA", "Druid_Forest_Over" )

		g_pButton_Velder_El_Tree_HellMode:SetDownTex( "DLG_Common_Button01.TGA", "Druid_Forest_Over" )

		g_pButton_Velder_El_Tree_HellMode:SetNormalPoint
		{


		"LEFT_TOP		= D3DXVECTOR2(80,259)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Velder_El_Tree_HellMode:SetOverPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(80-9,259-7)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Velder_El_Tree_HellMode:SetDownPoint
		{
			ADD_SIZE_X = -4,
			ADD_SIZE_Y = -4,
 			"LEFT_TOP		= D3DXVECTOR2(80-9+2,259-7+2)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Velder_El_Tree_HellMode:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
--]]








--[[
		-- 2009 어린이날 이벤트 던전
		g_pButton = g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButton )
		g_pButton:SetName( "Dungeon" )
		g_pButton:AddDummyInt( DUNGEON_ID["DI_EVENT_KIDDAY_RUBEN"] )
		g_pButton:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

		g_pButton:SetNormalTex( "DLG_Common_New_Button08.dds", "emir_space_normal" )

		--g_pButton:SetOverTex( "DLG_Common_Button01.TGA", "Druid_Forest_Over" )
		IconAni( g_pButton, "DLG_Common_New_Button08.dds", "emir_space_over" )

		g_pButton:SetDownTex( "DLG_Common_New_Button08.dds", "emir_space_over" )

		g_pButton:SetNormalPoint
		{
		"LEFT_TOP		= D3DXVECTOR2(236+503,140)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton:SetOverPoint
		{
				"LEFT_TOP		= D3DXVECTOR2(236+503-12,140-10)",


			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton:SetDownPoint
		{
			ADD_SIZE_X = -4,
			ADD_SIZE_Y = -4,
 				"LEFT_TOP		= D3DXVECTOR2(236+503+2-12,140+2-10)",


			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
--]]



