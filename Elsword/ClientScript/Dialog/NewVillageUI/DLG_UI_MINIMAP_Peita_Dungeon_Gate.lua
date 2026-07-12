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






 g_pStaticpeita_Gate = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpeita_Gate )
g_pStaticpeita_Gate:SetName( "peita_Gate" )


--------------- 


g_pPicture_shadow = g_pUIDialog:CreatePicture()
g_pStaticpeita_Gate:AddPicture( g_pPicture_shadow )

g_pPicture_shadow:SetTex( "DLG_UI_MAP_Shadow.tga", "map_shadow" ) 

g_pPicture_shadow:SetPoint
{
     ADD_SIZE_X = 440, 
	 ADD_SIZE_Y = 108, 
	"LEFT_TOP		= D3DXVECTOR2(38,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticpeita_Gate:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_MAP_Gate03.tga", "peita_Gate" ) 

g_pPicture_bg1:SetPoint
{
     ADD_SIZE_X = 402,
	 ADD_SIZE_Y = 174,
	"LEFT_TOP		= D3DXVECTOR2(58,237-47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---포스트


g_pButtonPost = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPost )
g_pButtonPost:SetName( "Post" )

g_pButtonPost:SetNormalTex( "MiniMap_Post.dds", "MiniMap_Post" )

g_pButtonPost:SetOverTex( "MiniMap_Post.dds", "MiniMap_Post" )

g_pButtonPost:SetDownTex( "MiniMap_Post.dds", "MiniMap_Post" )

g_pButtonPost:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(512,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPost:SetOverPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(512,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPost:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(512,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPost:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_POSTBOX_MOUSE_OVER"] )
g_pButtonPost:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_POSTBOX_MOUSE_OUT"] )


-------NPC

-----알레그로
g_pButtonAlche = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAlche )
g_pButtonAlche:SetName( "ALREGRO" )

g_pButtonAlche:SetNormalTex( "MiniMap_Shop_Alche.dds", "MiniMap_Shop_Alche" )

g_pButtonAlche:SetOverTex( "MiniMap_Shop_Alche.dds", "MiniMap_Shop_Alche" )

g_pButtonAlche:SetDownTex( "MiniMap_Shop_Alche.dds", "MiniMap_Shop_Alche" )


g_pButtonAlche:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(286,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAlche:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(286,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAlche:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(286,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAlche:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonAlche:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonAlche:AddDummyInt( NPC_UNIT_ID["NUI_ALLEGRO"] )


----렌토---------

g_pButtonWeapon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonWeapon )
g_pButtonWeapon:SetName( "Shop_Weapon" )

g_pButtonWeapon:SetNormalTex( "MiniMap_Shop_Weapon.dds", "MiniMap_Shop_Weapon" )

g_pButtonWeapon:SetOverTex( "MiniMap_Shop_Weapon.dds", "MiniMap_Shop_Weapon" )

g_pButtonWeapon:SetDownTex( "MiniMap_Shop_Weapon.dds", "MiniMap_Shop_Weapon" )


g_pButtonWeapon:SetNormalPoint
{
	 
    "LEFT_TOP		= D3DXVECTOR2(361,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWeapon:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(361,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWeapon:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(361,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWeapon:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonWeapon:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonWeapon:AddDummyInt( NPC_UNIT_ID["NUI_LENTO"] )




----카밀라

g_pButtonNPC3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC3 )
g_pButtonNPC3:SetName( "KAMIRLA" )

g_pButtonNPC3:SetNormalTex( "MiniMap_Arena.dds", "MiniMap_Arena" )

g_pButtonNPC3:SetOverTex( "MiniMap_Arena.dds", "MiniMap_Arena" )

g_pButtonNPC3:SetDownTex( "MiniMap_Arena.dds", "MiniMap_Arena" )

g_pButtonNPC3:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(587,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(587,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetDownPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(587,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonNPC3:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC3:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC3:AddDummyInt( NPC_UNIT_ID["NUI_CAMILLA"] )


---아리엘


g_pButtonNPC2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC2 )
g_pButtonNPC2:SetName( "ARIEL" )

g_pButtonNPC2:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(450,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(450,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetDownPoint
{
   
 	"LEFT_TOP		= D3DXVECTOR2(450,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC2:AddDummyInt( NPC_UNIT_ID["NUI_ARIEL"] )





g_pButtonNPC_Glave = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC_Glave )
g_pButtonNPC_Glave:SetName( "GLAVE" )

g_pButtonNPC_Glave:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC_Glave:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC_Glave:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC_Glave:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(688,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC_Glave:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(688,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC_Glave:SetDownPoint
{
  
 	"LEFT_TOP		= D3DXVECTOR2(688,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC_Glave:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC_Glave:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC_Glave:AddDummyInt( NPC_UNIT_ID["NUI_GLAVE"] )



----------------게시판


g_pButtonBOARD1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBOARD1 )
g_pButtonBOARD1:SetName( "Board" )

g_pButtonBOARD1:SetNormalTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )

g_pButtonBOARD1:SetOverTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )

g_pButtonBOARD1:SetDownTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )

g_pButtonBOARD1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(782,454)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBOARD1:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(782,454)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBOARD1:SetDownPoint
{
  
 	"LEFT_TOP		= D3DXVECTOR2(782,454)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonBOARD1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonBOARD1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonBOARD1:AddDummyInt( NPC_UNIT_ID["NUI_BILLBOARD"] )

--g_pButtonBOARD1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_BILLBOARD_MOUSE_OVER"] )
--g_pButtonBOARD1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_BILLBOARD_MOUSE_OUT"] )


 
----------------타이틀


g_pPicturepeita_Gate = g_pUIDialog:CreatePicture()
g_pStaticpeita_Gate:AddPicture( g_pPicturepeita_Gate )

g_pPicturepeita_Gate:SetTex( "DLG_UI_Title02.tga", "peita_out" )

g_pPicturepeita_Gate:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(69,202)",
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

g_pButtonLeft:SetDisableTex( "DLG_UI_Button04.tga", "l_gate_noactive" )

g_pButtonLeft:SetNormalPoint
{
	ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
    "LEFT_TOP		= D3DXVECTOR2(100,454)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft:SetOverPoint
{
    ADD_SIZE_X = 4,
	ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(101-2,455-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft:SetDownPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(100,454)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonLeft:SetDisablePoint
{
     
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(100+2,454+3)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonLeft:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonLeft:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PREV_FIELD_MAP"] )
g_pButtonLeft:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_BESMA"] )

---------------------------

g_pButtonRight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight )
g_pButtonRight:SetName( "RIGHT_cusor" )


g_pButtonRight:SetNormalTex( "DLG_UI_Button04.tga", "l_gate" )

g_pButtonRight:SetOverTex( "DLG_UI_Button04.tga", "l_gate" )

g_pButtonRight:SetDownTex( "DLG_UI_Button04.tga", "l_gate" )

g_pButtonRight:SetDisableTex( "DLG_UI_Button04.tga", "l_gate_noactive" )

g_pButtonRight:SetNormalPoint
{
	ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
    "LEFT_TOP		= D3DXVECTOR2(869,469)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetOverPoint
{
    ADD_SIZE_X = 4,
	ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(867-2,470-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetDownPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(869,469)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight:SetDisablePoint
{
     
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(869+2,469+3)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonRight:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonRight:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PREV_FIELD_MAP"] )
g_pButtonRight:AddDummyInt( VILLAGE_MAP_ID["VMI_VELDER"] )

---------------------- 도움말

g_pPictureHelper = g_pUIDialog:CreatePicture()
g_pStaticpeita_Gate:AddPicture( g_pPictureHelper )

g_pPictureHelper:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureHelper:SetPoint
{   
    ADD_SIZE_X = 4,
    ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(58,160)",
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
	"POS 			= D3DXVECTOR2(86,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--[[

g_pButtonRight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight )
g_pButtonRight:SetName( "Right_Cusor" )

g_pButtonRight:SetNormalTex( "DLG_UI_Button04.tga", "Right" )

g_pButtonRight:SetOverTex( "DLG_UI_Button04.tga", "Right" )

g_pButtonRight:SetDownTex( "DLG_UI_Button04.tga", "Right" )

g_pButtonRight:SetDisableTex( "DLG_UI_Common_Texture09.tga", "Right_Cusor_noactive" )

g_pButtonRight:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(820,424)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetOverPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(820-1,424-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(820,424)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(820,424)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]



-------------EXIT


g_pButtonExit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExit )
g_pButtonExit:SetName( "Exit" )

g_pButtonExit:SetNormalTex( "DLG_Common_New_Texture67.tga", "Exit_normal" )

g_pButtonExit:SetOverTex( "DLG_Common_New_Texture67.tga", "Exit_over" )

g_pButtonExit:SetDownTex( "DLG_Common_New_Texture67.tga", "Exit_over" )

g_pButtonExit:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(923,203)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(923,203)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetDownPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(923+1,203+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_FIELD_MAP"] )
--[[
------이동가능루트지역


--------------베스마지역


g_pButtonBesma_Out = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Out )
g_pButtonBesma_Out:SetName( "Besma_Out" )

g_pButtonBesma_Out:SetNormalTex( "DLG_UI_Button11.tga", "L_Besma_Out_normal" )

g_pButtonBesma_Out:SetOverTex( "DLG_UI_Button11.tga", "L_Besma_Out_over" )

g_pButtonBesma_Out:SetDownTex( "DLG_UI_Button11.tga", "L_Besma_Out_over" )

g_pButtonBesma_Out:SetDisableTex( "DLG_UI_Button11.tga", "L_Besma_Out_noactive" )

g_pButtonBesma_Out:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(45,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Out:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(45,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Out:SetDownPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(45+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonBesma_Out:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(45,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Out:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonBesma_Out:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_BESMA"] )
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
    "LEFT_TOP		= D3DXVECTOR2(688-50,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetOverPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10, 
	"LEFT_TOP		= D3DXVECTOR2(688-50,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetDownPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10, 
 	"LEFT_TOP		= D3DXVECTOR2(688-50,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC3:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC3:AddDummyInt( NPC_UNIT_ID["NUI_LUTO_VILLAGE"] )
--]]


-----------다오---손나은
--[[
g_pButtonNPC3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC3 )
g_pButtonNPC3:SetName( "APINK" )

g_pButtonNPC3:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetNormalPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10, 
    "LEFT_TOP		= D3DXVECTOR2(688-50,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetOverPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10, 
	"LEFT_TOP		= D3DXVECTOR2(688-50,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetDownPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10, 
 	"LEFT_TOP		= D3DXVECTOR2(688-50,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC3:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC3:AddDummyInt( NPC_UNIT_ID["NUI_EVENT_APINK"] )
--]]

-----------에이핑크 대천사
--[[
g_pButtonNPC3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC3 )
g_pButtonNPC3:SetName( "APINK_ARCHANGEL" )

g_pButtonNPC3:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC3:SetNormalPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10, 
    "LEFT_TOP		= D3DXVECTOR2(688-50,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetOverPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10, 
	"LEFT_TOP		= D3DXVECTOR2(688-50,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetDownPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10, 
 	"LEFT_TOP		= D3DXVECTOR2(688-50,448)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC3:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC3:AddDummyInt( NPC_UNIT_ID["NUI_EVENT_APINK_ARCHANGEL"] )

--]]

--[[ 다크문
g_pButtonNPC1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC1 )
g_pButtonNPC1:SetName( "DARKMOON" )
g_pButtonNPC1:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonNPC1:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonNPC1:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC1:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(688-50,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC1:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(688-50,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC1:SetDownPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(688-50,448)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC1:AddDummyInt( NPC_UNIT_ID["NUI_EVENT_DARKMOON"] )
--]]