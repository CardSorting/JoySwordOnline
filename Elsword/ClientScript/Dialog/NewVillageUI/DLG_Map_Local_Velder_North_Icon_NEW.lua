-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


----엘의나무
g_pButton_Ruben_El_Tree = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Ruben_El_Tree )
g_pButton_Ruben_El_Tree:SetName( "El_Tree" )
g_pButton_Ruben_El_Tree:AddDummyInt( DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"] )
g_pButton_Ruben_El_Tree:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Ruben_El_Tree:SetNormalTex( "DLG_Common_Button00_NEW.tga", "El_tree_N" )
IconAni( g_pButton_Ruben_El_Tree, "DLG_Common_Button00_NEW.tga", "El_tree_O" )
g_pButton_Ruben_El_Tree:SetDownTex( "DLG_Common_Button00_NEW.tga", "El_tree_O" )

g_pButton_Ruben_El_Tree:SetNormalPoint
{
	  ADD_SIZE_X=4,
	  ADD_SIZE_Y=4,
	"LEFT_TOP		= D3DXVECTOR2(447-196,344-140-44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_El_Tree:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(434+6-196,327+4-140-44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_El_Tree:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(434+2+6-196,327+4+2-140-44)",

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

g_pButton_Ruben_Ruin_Of_Elf:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Ruin_N" )
IconAni( g_pButton_Ruben_Ruin_Of_Elf, "DLG_Common_Button00_NEW.tga", "Ruin_O" )
g_pButton_Ruben_Ruin_Of_Elf:SetDownTex( "DLG_Common_Button00_NEW.tga", "Ruin_O" )

g_pButton_Ruben_Ruin_Of_Elf:SetNormalPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(357,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_Ruin_Of_Elf:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(349,74)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_Ruin_Of_Elf:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(588+5+2-260+16,164+4+2-74-20)",

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

g_pButton_Ruben_Swap:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Swamp_N" )
IconAni( g_pButton_Ruben_Swap, "DLG_Common_Button00_NEW.tga", "Swamp_O" )
g_pButton_Ruben_Swap:SetDownTex( "DLG_Common_Button00_NEW.tga", "Swamp_O" )

g_pButton_Ruben_Swap:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(309-141-19,249-101-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_Swap:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(297+6-141-19,236+4-101-16)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ruben_Swap:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(297+6+2-141-19,236+4+2-101-16)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Ruben_Swap:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Ruben_Swap:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Ruben_Swap:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


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

--------------------------------------------------

--기본별1
g_pButton_STAR1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR1 )
g_pButton_STAR1:SetNameStrID( STR_ID_5185 )

g_pPictureSTAR1_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_StarBG )
g_pPictureSTAR1_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR1_StarBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 396 -180-110+246+16, 571 -250-70-58-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star0 )
g_pPictureSTAR1_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR1_Star0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 396 + 1 -180-110+246+16, 571 -250-70-58-20)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star1 )
g_pPictureSTAR1_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR1_Star1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 396 + 15 -180-110+246+16, 571 -250-70-58-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star2 )
g_pPictureSTAR1_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR1_Star2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 396 + 28 -180-110+246+16, 571 -250-70-58-20)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별2
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_5186 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -56-131-28-19, 571-228-152 +26-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star0 )
g_pPictureSTAR2_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR2_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 + 1 -56-131-28-19, 571-228-152+26 -16)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star1 )
g_pPictureSTAR2_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR2_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 + 15 -56-131-28-19, 571-228-152+26-16 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star2 )
g_pPictureSTAR2_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR2_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 + 28-56 -131-28-19, 571 -228-152+26-16)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별2--퀘스트 마크용
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_2825 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -56-131-28+88 , 571-228-152 +26+100-44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_STAR2:SetShow(false)