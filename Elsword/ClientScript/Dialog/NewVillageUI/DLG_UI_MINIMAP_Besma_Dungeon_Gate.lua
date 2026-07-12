-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_UI_FIELD_MAP" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_FIELD_MAP"] )




g_pStatic_Black_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Black_BG )
g_pStatic_Black_BG:SetName( "Choice_Item_Black" )


g_pPicture_Bg_Black = g_pUIDialog:CreatePicture()
g_pStatic_Black_BG:AddPicture( g_pPicture_Bg_Black )

g_pPicture_Bg_Black:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPicture_Bg_Black:SetPoint
{

 USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(0,32)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}




 g_pStaticbesma_Gate = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticbesma_Gate )
g_pStaticbesma_Gate:SetName( "besma_Gate" )


--------------- 


g_pPicture_shadow = g_pUIDialog:CreatePicture()
g_pStaticbesma_Gate:AddPicture( g_pPicture_shadow )

g_pPicture_shadow:SetTex( "DLG_UI_MAP_Shadow.tga", "map_shadow" ) 

g_pPicture_shadow:SetPoint
{
     ADD_SIZE_X = 440, 
	 ADD_SIZE_Y = 56, 
	"LEFT_TOP		= D3DXVECTOR2(39,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticbesma_Gate:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_MAP_Gate02.tga", "besma_Gate" ) 

g_pPicture_bg1:SetPoint
{
     ADD_SIZE_X = 402,
	 ADD_SIZE_Y = 150,
	"LEFT_TOP		= D3DXVECTOR2(58,212)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------NPC

g_pButtonNPC1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC1 )
g_pButtonNPC1:SetName( "HELREN" )

g_pButtonNPC1:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC1:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC1:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(244,354)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC1:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(244,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC1:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(244,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC1:AddDummyInt( NPC_UNIT_ID["NUI_HELLEN"] )

 



g_pButtonNPC2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC2 )
g_pButtonNPC2:SetName( "GLAVE" )

g_pButtonNPC2:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(338,354)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(338,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetDownPoint
{
  
 	"LEFT_TOP		= D3DXVECTOR2(338,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC2:AddDummyInt( NPC_UNIT_ID["NUI_GLAVE"] )

----------------게시판


g_pButtonBOARD1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBOARD1 )
g_pButtonBOARD1:SetName( "Board" )

g_pButtonBOARD1:SetNormalTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )

g_pButtonBOARD1:SetOverTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )

g_pButtonBOARD1:SetDownTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )

g_pButtonBOARD1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(566,354)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBOARD1:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(566,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBOARD1:SetDownPoint
{
  
 	"LEFT_TOP		= D3DXVECTOR2(566,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonBOARD1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonBOARD1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonBOARD1:AddDummyInt( NPC_UNIT_ID["NUI_BILLBOARD"] )

--g_pButtonBOARD1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_BILLBOARD_MOUSE_OVER"] )
--g_pButtonBOARD1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_BILLBOARD_MOUSE_OUT"] )

 

----------------타이틀


g_pPicturebesma_Gate = g_pUIDialog:CreatePicture()
g_pStaticbesma_Gate:AddPicture( g_pPicturebesma_Gate )

g_pPicturebesma_Gate:SetTex( "DLG_UI_Title02.tga", "besma_out" )

g_pPicturebesma_Gate:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(64,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------------------게이트



g_pButtonLeft = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft )
g_pButtonLeft:SetName( "LEFT_cusor" )

g_pButtonLeft:SetNormalTex( "DLG_UI_Button04.tga", "l_gate" )

g_pButtonLeft:SetOverTex( "DLG_UI_Button04.tga", "l_gate" )

g_pButtonLeft:SetDownTex( "DLG_UI_Button04.tga", "l_gate" )

g_pButtonLeft:SetDisableTex( "DLG_UI_Button04.tga", "L_gate_noactive" )

g_pButtonLeft:SetNormalPoint
{
	
	ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
    "LEFT_TOP		= D3DXVECTOR2(104,368+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft:SetOverPoint
{
    ADD_SIZE_X = 4,
	ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(105-2,369+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft:SetDownPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(104,368+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonLeft:SetDisablePoint
{
    
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(104+2,371+2)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pButtonLeft:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonLeft:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonLeft:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PREV_FIELD_MAP"] )
g_pButtonLeft:AddDummyInt( VILLAGE_MAP_ID["VMI_BESMA"] )





g_pButtonRight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight )
g_pButtonRight:SetName( "Right_Cusor_Altera" )

g_pButtonRight:SetNormalTex( "DLG_UI_Button04.tga", "R_gate" )

g_pButtonRight:SetOverTex( "DLG_UI_Button04.tga", "R_gate" )
 
g_pButtonRight:SetDownTex( "DLG_UI_Button04.tga", "R_gate" )

g_pButtonRight:SetDisableTex( "DLG_UI_Button04.tga", "R_gate_noactive" )

g_pButtonRight:SetNormalPoint
{
	ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
    "LEFT_TOP		= D3DXVECTOR2(878-5,342)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetOverPoint
{
    ADD_SIZE_X = 4,
	ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(879-2-5,343-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetDownPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(878-5,342)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight:SetDisablePoint
{
     
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(878+2-5,345)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonRight:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonRight:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NEXT_FIELD_MAP"] )
g_pButtonRight:AddDummyInt( VILLAGE_MAP_ID["VMI_ALTERA"] )








g_pButtonRight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight )
g_pButtonRight:SetName( "Right_Cusor_Peita" )

g_pButtonRight:SetNormalTex( "DLG_UI_Button04.tga", "R_gate" )

g_pButtonRight:SetOverTex( "DLG_UI_Button04.tga", "R_gate" )

g_pButtonRight:SetDownTex( "DLG_UI_Button04.tga", "R_gate" )

g_pButtonRight:SetDisableTex( "DLG_UI_Button04.tga", "R_gate_noactive" )

g_pButtonRight:SetNormalPoint
{
	ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
    "LEFT_TOP		= D3DXVECTOR2(770,493)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetOverPoint
{
    ADD_SIZE_X = 4,
	ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(771-2,493-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetDownPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(770,493)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight:SetDisablePoint
{
    ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(773,493+3)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonRight:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonRight:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NEXT_FIELD_MAP"] )
g_pButtonRight:AddDummyInt( VILLAGE_MAP_ID["VMI_PEITA"] )
---------------------- 도움말

g_pPictureHelper = g_pUIDialog:CreatePicture()
g_pStaticbesma_Gate:AddPicture( g_pPictureHelper )

g_pPictureHelper:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureHelper:SetPoint
{   
    ADD_SIZE_X = 4,
    ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(58,180)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticHelp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHelp )
g_pStaticHelp:SetName( "help" )

g_pStaticHelp:AddString
{
	MSG 			= STR_ID_1304,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(86,182)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




-------------EXIT


g_pButtonExit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExit )
g_pButtonExit:SetName( "Exit" )

g_pButtonExit:SetNormalTex( "DLG_Common_New_Texture67.tga", "Exit_normal" )

g_pButtonExit:SetOverTex( "DLG_Common_New_Texture67.tga", "Exit_over" )

g_pButtonExit:SetDownTex( "DLG_Common_New_Texture67.tga", "Exit_over" )

g_pButtonExit:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(923,221)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(923,221)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetDownPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(923+1,221+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_FIELD_MAP"] )


--[[
------------이동가능 루트 지역 버튼

------ 베스마 마을

g_pButtonBesma_Town = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Town )
g_pButtonBesma_Town:SetName( "Besma_Town" )

g_pButtonBesma_Town:SetNormalTex( "DLG_UI_Button11.tga", "L_Besma_Town_normal" )

g_pButtonBesma_Town:SetOverTex( "DLG_UI_Button11.tga", "L_Besma_Town_over" )

g_pButtonBesma_Town:SetDownTex( "DLG_UI_Button11.tga", "L_Besma_Town_over" )

g_pButtonBesma_Town:SetDisableTex( "DLG_UI_Button11.tga", "L_Besma_Town_noactive" )

g_pButtonBesma_Town:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(45,347)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Town:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(45,347)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Town:SetDownPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(45+1,347+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonBesma_Town:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(45,347)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Town:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButtonBesma_Town:AddDummyInt( VILLAGE_MAP_ID["VMI_BESMA"] )
                                           



------ 알테라 마을

g_pButtonAltera_Town = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAltera_Town )
g_pButtonAltera_Town:SetName( "Altera_Town" )

g_pButtonAltera_Town:SetNormalTex( "DLG_UI_Button11.tga", "R_Altera_Town_normal" )

g_pButtonAltera_Town:SetOverTex( "DLG_UI_Button11.tga", "R_Altera_Town_over" )

g_pButtonAltera_Town:SetDownTex( "DLG_UI_Button11.tga", "R_Altera_Town_over" )

g_pButtonAltera_Town:SetDisableTex( "DLG_UI_Button11.tga", "R_Altera_Town_noactive" )

g_pButtonAltera_Town:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(869,347)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Town:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(869,347)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Town:SetDownPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(869+1,347+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonAltera_Town:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(869,347)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonAltera_Town:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButtonAltera_Town:AddDummyInt( VILLAGE_MAP_ID["VMI_ALTERA"] )


------ 페이타

g_pButtonPeita_Out = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPeita_Out )
g_pButtonPeita_Out:SetName( "Peita_Out" )

g_pButtonPeita_Out:SetNormalTex( "DLG_UI_Button11.tga", "R_Peita_Out_normal" )

g_pButtonPeita_Out:SetOverTex( "DLG_UI_Button11.tga", "R_Peita_Out_over" )

g_pButtonPeita_Out:SetDownTex( "DLG_UI_Button11.tga", "R_Peita_Out_over" )

g_pButtonPeita_Out:SetDisableTex( "DLG_UI_Button11.tga", "R_Peita_Out_noactive" )

g_pButtonPeita_Out:SetNormalPoint
{
	 
    "LEFT_TOP		= D3DXVECTOR2(869,412)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPeita_Out:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(869,412)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPeita_Out:SetDownPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(869+1,412+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonPeita_Out:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(869,412)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPeita_Out:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonPeita_Out:AddDummyInt( VILLAGE_MAP_ID["VMI_PEITA"] )
--]]
-------------------------------------- 캐릭터/파티원 위치 마크 'ㅅ'

g_pButtonMyChar = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMyChar )
g_pButtonMyChar:SetName( "Button_Mychar" )

g_pButtonMyChar:SetNormalTex( "DLG_UI_Common_Texture02.TGA", "Char_My" )
g_pButtonMyChar:SetOverTex( "DLG_UI_Common_Texture02.TGA", "Char_My" )
g_pButtonMyChar:SetDownTex( "DLG_UI_Common_Texture02.TGA", "Char_My" )

g_pButtonMyChar:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMyChar:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMyChar:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMyChar:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_MYCHAR_MOUSE_OVER"] )
g_pButtonMyChar:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_MYCHAR_MOUSE_OUT"] )



g_pButtonPartyMember0 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPartyMember0 )
g_pButtonPartyMember0:SetName( "Button_PartyMember0" )

g_pButtonPartyMember0:SetNormalTex( "DLG_UI_Common_Texture02.TGA", "Char_Party" )
g_pButtonPartyMember0:SetOverTex( "DLG_UI_Common_Texture02.TGA", "Char_Party" )
g_pButtonPartyMember0:SetDownTex( "DLG_UI_Common_Texture02.TGA", "Char_Party" )

g_pButtonPartyMember0:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPartyMember0:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPartyMember0:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPartyMember0:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OVER"] )
g_pButtonPartyMember0:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OUT"] )
g_pButtonPartyMember0:AddDummyInt( 0 )


g_pButtonPartyMember1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPartyMember1 )
g_pButtonPartyMember1:SetName( "Button_PartyMember1" )

g_pButtonPartyMember1:SetNormalTex( "DLG_UI_Common_Texture02.TGA", "Char_Party" )
g_pButtonPartyMember1:SetOverTex( "DLG_UI_Common_Texture02.TGA", "Char_Party" )
g_pButtonPartyMember1:SetDownTex( "DLG_UI_Common_Texture02.TGA", "Char_Party" )

g_pButtonPartyMember1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPartyMember1:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPartyMember1:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPartyMember1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OVER"] )
g_pButtonPartyMember1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OUT"] )
g_pButtonPartyMember1:AddDummyInt( 1 )

g_pButtonPartyMember2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPartyMember2 )
g_pButtonPartyMember2:SetName( "Button_PartyMember2" )

g_pButtonPartyMember2:SetNormalTex( "DLG_UI_Common_Texture02.TGA", "Char_Party" )
g_pButtonPartyMember2:SetOverTex( "DLG_UI_Common_Texture02.TGA", "Char_Party" )
g_pButtonPartyMember2:SetDownTex( "DLG_UI_Common_Texture02.TGA", "Char_Party" )

g_pButtonPartyMember2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPartyMember2:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPartyMember2:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPartyMember2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OVER"] )
g_pButtonPartyMember2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OUT"] )
g_pButtonPartyMember2:AddDummyInt( 2 )

-----------루토
--[[
g_pButtonNPC3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC3 )
g_pButtonNPC3:SetName( "RUTO" )

g_pButtonNPC3:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetNormalPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10, 	
    "LEFT_TOP		= D3DXVECTOR2(338+43,354)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetOverPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10,    
	"LEFT_TOP		= D3DXVECTOR2(338+43,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetDownPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10,   
 	"LEFT_TOP		= D3DXVECTOR2(338+43,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC3:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC3:AddDummyInt( NPC_UNIT_ID["NUI_LUTO_VILLAGE"] )
--]]

--[[
-----------다오
g_pButtonNPC3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC3 )
g_pButtonNPC3:SetName( "DAO" )

g_pButtonNPC3:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetNormalPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10, 	
    "LEFT_TOP		= D3DXVECTOR2(338+48,354)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetOverPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10,    
	"LEFT_TOP		= D3DXVECTOR2(338+48,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetDownPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10,   
 	"LEFT_TOP		= D3DXVECTOR2(338+48,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC3:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC3:AddDummyInt( NPC_UNIT_ID["NUI_EVENT_DAO"] )
--]]