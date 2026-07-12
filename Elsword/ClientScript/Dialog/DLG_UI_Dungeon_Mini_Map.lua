-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 이 lua는 이제 쓰지 않는다 : DLG_UI_Mini_Map.lua로 미니맵 통일


g_pUIDialog:SetName( "DLG_MiniMap_Zoom" )
g_pUIDialog:SetPos( 731 ,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )






g_pStatic_dungeon_mini = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon_mini )
g_pStatic_dungeon_mini:SetName( "dungeon_mini_map" )



---------------MAP IMAGE

g_pPicture_image = g_pUIDialog:CreatePicture()
g_pStatic_dungeon_mini:AddPicture( g_pPicture_image )

g_pPicture_image:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPicture_image:SetPoint
{
    ADD_SIZE_X = 232,
	ADD_SIZE_Y = 89,
	"LEFT_TOP		= D3DXVECTOR2(19,34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}


----------WIN
g_pPicture_win = g_pUIDialog:CreatePicture()
g_pStatic_dungeon_mini:AddPicture( g_pPicture_win )

g_pPicture_win:SetTex( "DLG_UI_Common_Texture09.TGA", "dungeon_minimap" )

g_pPicture_win:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------- ZOOM_IN


g_pButtonZoom_in = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonZoom_in )
g_pButtonZoom_in:SetName( "Zoom_in" )
g_pButtonZoom_in:SetNormalTex( "DLG_UI_Common_Texture09.tga", "Zoom_button1" )

g_pButtonZoom_in:SetOverTex( "DLG_UI_Common_Texture09.tga", "Zoom_button1" )

g_pButtonZoom_in:SetDownTex( "DLG_UI_Common_Texture09.tga", "Zoom_button1" )

g_pButtonZoom_in:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(267,28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonZoom_in:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(267-1,28-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonZoom_in:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(267,28)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonZoom_in:SetCustomMsgMouseUp( MINI_MAP_UI_CUSTOM_MSG["MMUCM_DUNGEON_ZOOM_IN"] )



----------------- ZOOM_OUT


g_pButtonZoom_out = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonZoom_out )
g_pButtonZoom_out:SetName( "Zoom_out" )
g_pButtonZoom_out:SetNormalTex( "DLG_UI_Common_Texture09.tga", "Zoom_button2" )

g_pButtonZoom_out:SetOverTex( "DLG_UI_Common_Texture09.tga", "Zoom_button2" )

g_pButtonZoom_out:SetDownTex( "DLG_UI_Common_Texture09.tga", "Zoom_button2" )

g_pButtonZoom_out:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(267,110)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonZoom_out:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(267-1,110-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonZoom_out:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(267,110)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonZoom_out:SetCustomMsgMouseUp( MINI_MAP_UI_CUSTOM_MSG["MMUCM_DUNGEON_ZOOM_OUT"] )





-----------------ZOOM  1 ~ 3 단계

g_pStaticZoom_num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticZoom_num )
g_pStaticZoom_num:SetName( "Zoom_Level" )



g_pPicture_three = g_pUIDialog:CreatePicture()
g_pStaticZoom_num:AddPicture( g_pPicture_three )

g_pPicture_three:SetTex( "DLG_UI_Common_Texture09.TGA", "zoom_level3" )

g_pPicture_three:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(271,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_two = g_pUIDialog:CreatePicture()
g_pStaticZoom_num:AddPicture( g_pPicture_two )

g_pPicture_two:SetTex( "DLG_UI_Common_Texture09.TGA", "zoom_level2" )

g_pPicture_two:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(272,72)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticZoom_num:AddPicture( g_pPicture_one )

g_pPicture_one:SetTex( "DLG_UI_Common_Texture09.TGA", "zoom_level1" )

g_pPicture_one:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(272,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------- 던전 이름 ----------

g_pStatic_title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_title )
g_pStatic_title:SetName( "Static_Title" )

g_pStatic_title:AddString
{
	MSG 			= STR_ID_1187,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(138,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------- 자신 레벨보다 한참~~~~ 낮은, 비리한 던전 들어 갔을때!!

g_pStatic_low_dungeon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_low_dungeon )
g_pStatic_low_dungeon:SetName( "Static_NoExp" )

g_pStatic_low_dungeon:AddString
{
	MSG 			= STR_ID_1188,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(148,143)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic_low_dungeon:SetShow(false)


---------------남은 몬스터 수

g_pStaticMonster = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMonster )
g_pStaticMonster:SetName( "Static_Monster" )

g_pPicture_image = g_pUIDialog:CreatePicture()
g_pStaticMonster:AddPicture( g_pPicture_image )

g_pPicture_image:SetTex2( "DLG_Monster_Num.TGA" )

g_pPicture_image:SetPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = -10, 
	"LEFT_TOP		= D3DXVECTOR2(25,34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMonster:AddString
{
	-- MSG 			= "100",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStaticMonster:SetShow(false)
