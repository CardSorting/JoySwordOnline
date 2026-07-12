-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_UI_Party" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )
--g_pUIDialog:SetCloseCustomUIEventID( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )










g_pStaticParty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty )
g_pStaticParty:SetName( "Party" )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture04.TGA", "party_bg_left" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture04.TGA", "party_bg_middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_X = 548,
	"LEFT_TOP		= D3DXVECTOR2(12,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture04.TGA", "party_bg_right" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(561,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------------------------------------------------------------------------------



g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture04.TGA", "party_bg2_left" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture04.TGA", "party_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = 528,
	"LEFT_TOP		= D3DXVECTOR2(22,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture04.TGA", "party_bg2_right" )

g_pPicture_bg2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(551,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 

----------------------------------------------------



g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture04.TGA", "party_bg3_left" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(18,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture04.TGA", "party_bg3_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = 524,
	"LEFT_TOP		= D3DXVECTOR2(25,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture04.TGA", "party_bg3_right" )

g_pPicture_bg3:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(549,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------------


g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "party_bg4_top" )

g_pPicture_bg4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(405,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "party_bg4_middle" )

g_pPicture_bg4:SetPoint
{
    ADD_SIZE_Y = 94,
	"LEFT_TOP		= D3DXVECTOR2(405,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "party_bg4_bottom" )

g_pPicture_bg4:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(405,160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---방제 BAR

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture04.TGA", "win_name_left" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(62,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture04.TGA", "win_name_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = 452-26,
	"LEFT_TOP		= D3DXVECTOR2(70,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture04.TGA", "win_name_right" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(523-26,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------타이틀

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "dungeon_title" )

g_pPicture_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(16,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--[[
----------------------도움말


g_pPicture_help = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_help )

g_pPicture_help:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_help:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(23,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatichelp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatichelp )
g_pStatichelp:SetName( "help" )

g_pStatichelp:AddString
{
	MSG 			= STR_ID_1334,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(43,62)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
--]]









-------사냥터 이미지

g_pStaticimage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticimage )
g_pStaticimage:SetName( "image" )



g_pPicture_map_slot = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_map_slot )

g_pPicture_map_slot:SetTex( "DLG_UI_BUTTON07.TGA", "map_image_slot" )

g_pPicture_map_slot:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(24,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---적정인원

g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "need_user" )

g_pStaticuser:AddString
{
	MSG 			= STR_ID_1335,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(28,120)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----적정레벨


g_pStaticlevel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticlevel )
g_pStaticlevel:SetName( "need_level" )

g_pStaticlevel:AddString
{
	MSG 			= STR_ID_1336,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(28,135)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


-----던전 지역명  


g_pStaticDungeon_Zone = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Zone )
g_pStaticDungeon_Zone:SetName( "Dungeon_Zone" )



g_pPicture_Ruben = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Ruben )

g_pPicture_Ruben:SetTex( "DLG_UI_Common_Texture07.TGA", "ruben_out" )

g_pPicture_Ruben:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(29,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Eldu = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Eldu )

g_pPicture_Eldu:SetTex( "DLG_UI_Common_Texture07.TGA", "eldu_out" )

g_pPicture_Eldu:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(29,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Besma = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Besma )

g_pPicture_Besma:SetTex( "DLG_UI_Common_Texture07.TGA", "besma_out" )

g_pPicture_Besma:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(29,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Altera = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Altera )

g_pPicture_Altera:SetTex( "DLG_UI_Common_Texture07.TGA", "altera_out" )

g_pPicture_Altera:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(29,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Peita = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Peita )

g_pPicture_Peita:SetTex( "DLG_UI_Common_Texture07.TGA", "peita_out" )

g_pPicture_Peita:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(29,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- {{ kimhc -- 2009-10-27 -- 벨더 추가
g_pPicture_Velder = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Velder )

g_pPicture_Velder:SetTex( "DLG_UI_Common_Texture07.TGA", "velder_capital" )

g_pPicture_Velder:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(29,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- }} kimhc -- 2009-10-27 -- 벨더 추가


----수도 하멜
g_pPicture_Hamel_Ship = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Hamel_Ship )

g_pPicture_Hamel_Ship:SetTex( "DLG_UI_Common_Texture07.TGA", "Hamel_CAPITAL" )

g_pPicture_Hamel_Ship:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(29,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----하멜 외곽
g_pPicture_Hamel_Ship = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Hamel_Ship )

g_pPicture_Hamel_Ship:SetTex( "DLG_UI_Common_Texture09.TGA", "Hamel_out" )

g_pPicture_Hamel_Ship:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(29,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticLocalQuest = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocalQuest )
g_pStaticLocalQuest:SetName( "StaticLocalQuest" )

g_pPictureQuest = g_pUIDialog:CreatePicture()
g_pStaticLocalQuest:AddPicture( g_pPictureQuest )

g_pPictureQuest:SetTex( "DLG_UI_Common_Texture13.tga", "Quset_Notice_Small" )

g_pPictureQuest:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(29,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--[[
---------------------------    맵 선택 커서  ------------------------
----------------------------------------------------------------------

g_pButtonClick_map= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClick_map )
g_pButtonClick_map:SetName( "Click_map" )
g_pButtonClick_map:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )

g_pButtonClick_map:SetOverTex( "DLG_UI_Button10.tga", "click_all" )

g_pButtonClick_map:SetDownTex( "DLG_UI_Button10.tga", "click_all" )

g_pButtonClick_map:SetNormalPoint
{
	  ADD_SIZE_X = 202,
	 ADD_SIZE_Y = 113,
    "LEFT_TOP		= D3DXVECTOR2(29,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClick_map:SetOverPoint
{
     ADD_SIZE_X = 2,
	 ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(29-1,88-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClick_map:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(29,88)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClick_map:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_OPEN_LOCAL_MAP"] )
--]]
-------맵 선택 버튼

g_pButtonMap_selec = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMap_selec )
g_pButtonMap_selec:SetName( "Click_map" )
g_pButtonMap_selec:SetNormalTex( "DLG_UI_BUTTON12.tga", "Map_selec_NORMAL" )

g_pButtonMap_selec:SetOverTex( "DLG_UI_BUTTON12.tga", "Map_selec_OVER" )

g_pButtonMap_selec:SetDownTex( "DLG_UI_BUTTON12.tga", "Map_selec_OVER" )

g_pButtonMap_selec:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(23,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMap_selec:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,56)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMap_selec:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,57+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMap_selec:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_OPEN_LOCAL_MAP"] )
--[[
	g_pPicture_image = g_pUIDialog:CreatePicture()
	g_pStaticimage:AddPicture( g_pPicture_image )

	g_pPicture_image:SetTex( "DLG_UI_Common_Texture09.TGA", "dungeon_image_nasod_factory" )

	g_pPicture_image:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(28,87)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}



	g_pButtonopicity = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButtonopicity )
	g_pButtonopicity:SetName( "opicity" )
	g_pButtonopicity:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

	g_pButtonopicity:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

	g_pButtonopicity:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

	g_pButtonopicity:SetNormalPoint
	{
		ADD_SIZE_X = 201,
		ADD_SIZE_Y = 112,  
		"LEFT_TOP		= D3DXVECTOR2(28,87)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonopicity:SetOverPoint
	{
		ADD_SIZE_X = 203,
		ADD_SIZE_Y = 114, 
		"LEFT_TOP		= D3DXVECTOR2(28-1,87-1)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonopicity:SetDownPoint
	{
		ADD_SIZE_X = 201,
		ADD_SIZE_Y = 112, 
 		"LEFT_TOP		= D3DXVECTOR2(28,87)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonopicity:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_OPEN_LOCAL_MAP"] )
--]]













-----------bar

g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_line )

g_pPicture_line:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line:SetPoint
{
    ADD_SIZE_Y = 116,
	"LEFT_TOP		= D3DXVECTOR2(231,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------박스


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(306,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 64,
	"LEFT_TOP		= D3DXVECTOR2(311,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(376,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------박스2


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(306,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box2:SetPoint
{
     ADD_SIZE_X = 64,
	"LEFT_TOP		= D3DXVECTOR2(311,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box2:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(376,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----- 난이도
g_pStatic_Difficulty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Difficulty )
g_pStatic_Difficulty:SetName( "DifficultyImage" )


g_pPicture_degree_1 = g_pUIDialog:CreatePicture()
g_pStatic_Difficulty:AddPicture( g_pPicture_degree_1 )

g_pPicture_degree_1:SetTex( "DLG_UI_Title01.TGA", "degree_1" )

g_pPicture_degree_1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(239,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--[[
----- 랭킹등록
g_pStatic_Ranking = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Ranking )
g_pStatic_Ranking:SetName( "RankingImage" )


g_pPicture_ranking = g_pUIDialog:CreatePicture()
g_pStatic_Ranking:AddPicture( g_pPicture_ranking )

g_pPicture_ranking:SetTex( "DLG_UI_Title01.TGA", "rank_record" )

g_pPicture_ranking:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(239,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]



g_pPicture_staff = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_staff )

g_pPicture_staff:SetTex( "DLG_UI_Title01.TGA", "staff" )

g_pPicture_staff:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(239,95)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_pickup = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_pickup )

g_pPicture_pickup:SetTex( "DLG_UI_Title01.TGA", "item_pickup" )

g_pPicture_pickup:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(239,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

 



g_pPicture_secret = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_secret )

g_pPicture_secret:SetTex( "DLG_UI_Title01.TGA", "secret" )

g_pPicture_secret:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(338,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_secret = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_secret )

g_pPicture_secret:SetTex( "DLG_UI_Title01.TGA", "lvlimit" )

g_pPicture_secret:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(242,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------파티명
--[[
	g_pStaticname = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticname )
	g_pStaticname:SetName( "name" )

	g_pStaticname:AddString
	{
		MSG 			= STR_ID_1337,
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(23,52)",
		"COLOR			= D3DXCOLOR(1.00,0.95,0.30,1.00)",
		"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
--]]












------------- 위 내용

g_pStaticstep = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticstep )
g_pStaticstep:SetName( "step" )

g_pStaticstep:AddString
{
	MSG 			= STR_ID_986,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(343,69)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

--[[
	g_pStaticstep = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticstep )
	g_pStaticstep:SetName( "step" )

	g_pStaticstep:AddString
	{
		MSG 			= STR_ID_382,                                                         
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(343,69)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
--]]


g_pStaticnum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnum )
g_pStaticnum:SetName( "num" )

g_pStaticnum:AddString
{
	-- MSG 			= "4",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(343,96)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}









----------난이도 조절 버튼

g_pButtonstage_left = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstage_left )
g_pButtonstage_left:SetName( "stage_left" )
g_pButtonstage_left:SetNormalTex( "DLG_UI_BUTTON01.tga", "l_arrow_NORMAL" )

g_pButtonstage_left:SetOverTex( "DLG_UI_BUTTON01.tga", "l_arrow_OVER" )

g_pButtonstage_left:SetDownTex( "DLG_UI_BUTTON01.tga", "l_arrow_OVER" )

g_pButtonstage_left:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(289,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_left:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(289,65)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_left:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(289+1,65+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_left:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_DIFFICULTY_LEFT"] )





g_pButtonstage_right = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstage_right )
g_pButtonstage_right:SetName( "stage_right" )
g_pButtonstage_right:SetNormalTex( "DLG_UI_BUTTON01.tga", "r_arrow_NORMAL" )

g_pButtonstage_right:SetOverTex( "DLG_UI_BUTTON01.tga", "r_arrow_OVER" )

g_pButtonstage_right:SetDownTex( "DLG_UI_BUTTON01.tga", "r_arrow_OVER" )

g_pButtonstage_right:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(383,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_right:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(383,65)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_right:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(383+1,65+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_right:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_DIFFICULTY_RIGHT"] )









---------------- 인원 조절 버튼


g_pButtonstaff_left = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstaff_left )
g_pButtonstaff_left:SetName( "staff_left" )
g_pButtonstaff_left:SetNormalTex( "DLG_UI_BUTTON01.tga", "l_arrow_NORMAL" )

g_pButtonstaff_left:SetOverTex( "DLG_UI_BUTTON01.tga", "l_arrow_OVER" )

g_pButtonstaff_left:SetDownTex( "DLG_UI_BUTTON01.tga", "l_arrow_OVER" )

g_pButtonstaff_left:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(289,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_left:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(289,91)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_left:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(289+1,91+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_left:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_MAX_SLOT_LEFT"] )




g_pButtonstaff_right = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstaff_right )
g_pButtonstaff_right:SetName( "staff_right" )
g_pButtonstaff_right:SetNormalTex( "DLG_UI_BUTTON01.tga", "r_arrow_NORMAL" )

g_pButtonstaff_right:SetOverTex( "DLG_UI_BUTTON01.tga", "r_arrow_OVER" )

g_pButtonstaff_right:SetDownTex( "DLG_UI_BUTTON01.tga", "r_arrow_OVER" )

g_pButtonstaff_right:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(383,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_right:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(383,91)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_right:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(383+1,91+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_right:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_MAX_SLOT_RIGHT"] )



--------------------------------------        기본메뉴  ( 혼자하기, 파티만들기, 파티리스트 )   ------------------------------------
--------------------------------------------    파티 버튼

--[[
	g_pButtonspeed = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButtonspeed )
	g_pButtonspeed:SetName( "speed" )
	g_pButtonspeed:SetNormalTex( "DLG_UI_BUTTON04.tga", "speed_party_NORMAL" )

	g_pButtonspeed:SetOverTex( "DLG_UI_BUTTON04.tga", "speed_party_OVER" )

	g_pButtonspeed:SetDownTex( "DLG_UI_BUTTON04.tga", "speed_party_OVER" )

	g_pButtonspeed:SetDisableTex( "DLG_UI_Common_Texture07.tga", "speed_noactive" )

	g_pButtonspeed:SetNormalPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(409,61)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonspeed:SetOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(406,58)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonspeed:SetDownPoint
	{
		ADD_SIZE_X = -2,
		ADD_SIZE_Y = -2,
 		"LEFT_TOP		= D3DXVECTOR2(406+1,58+1)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pButtonspeed:SetDisablePoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(409,61)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonspeed:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_QUICK_PARTY"] )
--]]


-- 혼자하기버튼 빠른파티로 변경
-----------------  혼자하기    ( 이걸로 던전 클리어시 결과방에선 시작하기, 던전나가기 메뉴가 나타남)

g_pButtonalone = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonalone )
g_pButtonalone:SetName( "alone" )
g_pButtonalone:SetNormalTex( "DLG_UI_BUTTON04.tga", "alone_party_NORMAL" )

g_pButtonalone:SetOverTex( "DLG_UI_BUTTON04.tga", "alone_party_OVER" )

g_pButtonalone:SetDownTex( "DLG_UI_BUTTON04.tga", "alone_party_OVER" )

g_pButtonalone:SetDisableTex( "DLG_UI_BUTTON04.tga", "alone_party_NORMAL" )
g_pButtonalone:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalone:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(406,58)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalone:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(406+1,58+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalone:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(409,61)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonalone:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_PLAY_SOLO"] )
g_pButtonalone:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_QUICK_PARTY"] )






------------------파티만들기

g_pButtonmake = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonmake )
g_pButtonmake:SetName( "make" )
g_pButtonmake:SetNormalTex( "DLG_UI_BUTTON07.tga", "party_make_NORMAL" )

g_pButtonmake:SetOverTex( "DLG_UI_BUTTON07.tga", "party_make_OVER" )

g_pButtonmake:SetDownTex( "DLG_UI_BUTTON07.tga", "party_make_OVER" )

g_pButtonmake:SetDisableTex( "DLG_UI_Common_Texture07.tga", "make_noactive" )

g_pButtonmake:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmake:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,92)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmake:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(405+1,92+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmake:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonmake:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CREATE_PARTY"] )






g_pButtonlist = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonlist )
g_pButtonlist:SetName( "list" )
g_pButtonlist:SetNormalTex( "DLG_UI_BUTTON04.tga", "party_list_NORMAL" )

g_pButtonlist:SetOverTex( "DLG_UI_BUTTON04.tga", "party_list_OVER" )

g_pButtonlist:SetDownTex( "DLG_UI_BUTTON04.tga", "party_list_OVER" )
g_pButtonlist:SetDisableTex( "DLG_UI_Common_Texture07.tga", "list_noactive" )

g_pButtonlist:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonlist:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(406,128)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonlist:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(406+1,128+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonlist:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonlist:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_VIEW_PARTY_LIST"] )





--------------------------      자신이 파티장일 때 ( 시작하기, 파티 탈퇴 )
--------  START  ---------











g_pButtonstart = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstart )
g_pButtonstart:SetName( "start" )
g_pButtonstart:SetNormalTex( "DLG_UI_BUTTON04.tga", "start_NORMAL" )

g_pButtonstart:SetOverTex( "DLG_UI_BUTTON04.tga", "start_OVER" )

g_pButtonstart:SetDownTex( "DLG_UI_BUTTON04.tga", "start_OVER" )
g_pButtonstart:SetDisableTex( "DLG_UI_Common_Texture09.tga", "start_noactive" )


g_pButtonstart:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(406,58)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(406+1,58+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonstart:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonstart:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_START"] )




-----------------------------------  자신이 파티원일 때 ( 준비하기 , 파티탈퇴 )






-----------------------         READY


g_pRadioButtonready = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonready )

--g_pRadioButtonready:SetFixOverByCheck( true )
--g_pRadioButtonready:SetShowOffBGByCheck( true )

g_pRadioButtonready:SetName( "ready" )

g_pRadioButtonready:SetEnableCheckToggle( true )


g_pRadioButtonready:SetNormalTex( "DLG_UI_BUTTON01.tga", "ready_NORMAL" )


g_pRadioButtonready:SetOverTex( "DLG_UI_Button01.tga", "ready_OVER" )


g_pRadioButtonready:SetCheckedTex( "DLG_UI_Button12.tga", "ready_down" )


g_pRadioButtonready:SetDisableTex( "DLG_UI_Common_Texture09.tga", "ready_noactive" )



g_pRadioButtonready:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(409,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetBGMouseOverPoint
{
     ADD_SIZE_X = 2,
	 ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(406-1,57-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(409,61)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(545,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(406,57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pRadioButtonready:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(409,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pRadioButtonready:SetGroupID( 2 )

g_pRadioButtonready:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_READY"] )
g_pRadioButtonready:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_READY"] )


--------------배 승선 버튼

----------------승선하기 버튼
g_pButtonstart = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstart )
g_pButtonstart:SetName( "StartShip" )
g_pButtonstart:SetNormalTex( "DLG_UI_BUTTON17.tga", "SHIP_START_NORMAL" )

g_pButtonstart:SetOverTex( "DLG_UI_BUTTON17.tga", "SHIP_START_OVER" )

g_pButtonstart:SetDownTex( "DLG_UI_BUTTON17.tga", "SHIP_START_OVER" )
g_pButtonstart:SetDisableTex( "DLG_UI_Button17.tga", "SHIP_NOACTIVE" )


g_pButtonstart:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409+1,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(406-1,58-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(406,58)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonstart:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409+1,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_START"] )



----------------------- 승선준비 버튼
g_pRadioButtonready = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonready )

g_pRadioButtonready:SetFixOverByCheck( true )
g_pRadioButtonready:SetShowOffBGByCheck( true )

g_pRadioButtonready:SetName( "ReadyShip" )
g_pRadioButtonready:SetEnableCheckToggle( true )

g_pRadioButtonready:SetNormalTex( "DLG_UI_BUTTON17.tga", "SHIP_READY_NORMAL" )
g_pRadioButtonready:SetOverTex( "DLG_UI_Button17.tga", "SHIP_READY_OVER" )
g_pRadioButtonready:SetCheckedTex( "DLG_UI_Button17.tga", "SHIP_READY_DOWN" )
g_pRadioButtonready:SetDisableTex( "DLG_UI_Button17.tga", "SHIP_NOACTIVE" )
g_pRadioButtonready:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(409,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetBGMouseOverPoint
{
     ADD_SIZE_X = 2,
	 ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(406-1,57-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(409,61)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(545,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(406,57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pRadioButtonready:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(409,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonready:SetGroupID( 2 )

g_pRadioButtonready:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_READY"] )
g_pRadioButtonready:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_READY"] )


-----------------------파티탈퇴   (   파장, 파티원 공용)

g_pButtonleave = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonleave )
g_pButtonleave:SetName( "leave" )
g_pButtonleave:SetNormalTex( "DLG_UI_BUTTON07.tga", "party_leave_NORMAL" )

g_pButtonleave:SetOverTex( "DLG_UI_BUTTON07.tga", "party_leave_OVER" )

g_pButtonleave:SetDownTex( "DLG_UI_BUTTON07.tga", "party_leave_OVER" )
g_pButtonleave:SetDisableTex( "DLG_UI_Common_Texture07.tga", "leave_noactive" )

g_pButtonleave:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,127)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(405+1,127+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LEAVE_PARTY"] )





--------------던전나가기(  파장, 파티원 공용 ) ------------->> 던전결과방

g_pButtonout = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonout )
g_pButtonout:SetName( "out" )
g_pButtonout:SetNormalTex( "DLG_UI_BUTTON07.tga", "dungeon_out_NORMAL" )

g_pButtonout:SetOverTex( "DLG_UI_BUTTON07.tga", "dungeon_out_OVER" )

g_pButtonout:SetDownTex( "DLG_UI_BUTTON07.tga", "dungeon_out_OVER" )
g_pButtonout:SetDisableTex( "DLG_UI_Common_Texture07.tga", "getout_noactive" )

g_pButtonout:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(406,128)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(406+1,128+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LEAVE_DUNGEON_LOUNGE"] )








-------------------exit버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(535,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(531,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(531+1,12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )




---------------- 도움말 버튼 

g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Button_Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_BUTTON14.tga", "Help_Normal" )

g_pButton_Help:SetOverTex( "DLG_UI_BUTTON14.tga", "Help_Over" )

g_pButton_Help:SetDownTex( "DLG_UI_BUTTON14.tga", "Help_Over" )

g_pButton_Help:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(535-27,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(531-27,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(531+1-27,12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--[[
g_pButton_Help:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(398,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398-4,15-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(398-4+1,15-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(10)







----------------   아이템습득종류



---------------------       랜덤

g_pStatic_rendom= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_rendom )
g_pStatic_rendom:SetName( "rendom" )

g_pStatic_rendom:AddString
{
	MSG 			= STR_ID_1338,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(322,122)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4 ,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  






g_pRadioButtonrendom = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonrendom )

g_pRadioButtonrendom:SetFixOverByCheck( true ) 
g_pRadioButtonrendom:SetShowOffBGByCheck( true )

g_pRadioButtonrendom:SetName( "g_pRadioButtonrendom" )

g_pRadioButtonrendom:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )


g_pRadioButtonrendom:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadioButtonrendom:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadioButtonrendom:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(303,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonrendom:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(303,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonrendom:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(303,119)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(321,137)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonrendom:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(303,119)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonrendom:SetGroupID( 1 )
g_pRadioButtonrendom:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_ITEM_GET_RANDOM"] )




-------------------------   각자

g_pStatic_each= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_each )
g_pStatic_each:SetName( "each" )

g_pStatic_each:AddString
{
	MSG 			= STR_ID_1339,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(372,122)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4 ,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  





g_pRadioButtoneach = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtoneach )

g_pRadioButtoneach:SetFixOverByCheck( true ) 
g_pRadioButtoneach:SetShowOffBGByCheck( true )

g_pRadioButtoneach:SetName( "g_pRadioButtoneach" )

g_pRadioButtoneach:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )


g_pRadioButtoneach:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadioButtoneach:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadioButtoneach:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(353,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoneach:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(353,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoneach:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(353,119)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(371,137)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoneach:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(353,119)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtoneach:SetGroupID( 1 )
g_pRadioButtoneach:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_ITEM_GET_EACH"] )









-------------------   lock 삭제해달레요


-- g_pPicture_lock = g_pUIDialog:CreatePicture()
-- g_pStaticParty:AddPicture( g_pPicture_lock )

-- g_pPicture_lock:SetTex( "DLG_UI_Common_Texture02.TGA", "lock" )

-- g_pPicture_lock:SetPoint
-- {
    
	-- "LEFT_TOP		= D3DXVECTOR2(286,142)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }



-----체크박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(302,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------체크 표시
	g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxsecret:SetName( "g_pCheckBoxLevel" )
	g_pUIDialog:AddControl( g_pCheckBoxsecret )

	g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(302,145)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(317,160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(300,143)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxsecret:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LEVEL_LIMIT"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LEVEL_LIMIT"] )

--------------------------------파티제한

-----체크박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(383,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
	g_pCheckBoxsecret2 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxsecret2:SetName( "g_pCheckBoxsecret" )
	g_pUIDialog:AddControl( g_pCheckBoxsecret2 )

	g_pCheckBoxsecret2:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxsecret2:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxsecret2:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(383,146)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(383+15,144+2+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret2:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(383-2,144+2-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxsecret2:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_PUBLIC"] )
g_pCheckBoxsecret2:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_PUBLIC"] )



g_pIMEEditBox_PartyName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBox_PartyName )
g_pIMEEditBox_PartyName:SetName( "g_pIMEEditBox_PartyName" )
g_pIMEEditBox_PartyName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(70, 19)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(523-60, 38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBox_PartyName:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBox_PartyName:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBox_PartyName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_PartyName:SetSelectedBackColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_PartyName:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_PartyName:SetCustomMsgEnter( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_NAME"] )
g_pIMEEditBox_PartyName:SetCustomMsgFocusOut( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_NAME"] )



