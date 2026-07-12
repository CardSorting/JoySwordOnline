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







g_pStaticaltera_town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticaltera_town )
g_pStaticaltera_town:SetName( "altera_town" )




----------------

g_pPicture_shadow = g_pUIDialog:CreatePicture()
g_pStaticaltera_town:AddPicture( g_pPicture_shadow )

g_pPicture_shadow:SetTex( "DLG_UI_MAP_Shadow.tga", "map_shadow" ) 

g_pPicture_shadow:SetPoint
{
     ADD_SIZE_X = 431, 
	 ADD_SIZE_Y = -33, 
	"LEFT_TOP		= D3DXVECTOR2(38,235)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------- 알테라 마을


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticaltera_town:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_MAP_Village02.tga", "altera_town" ) 

g_pPicture_bg1:SetPoint
{
     ADD_SIZE_X = 398, 
	 ADD_SIZE_Y = 61,
	 
	"LEFT_TOP		= D3DXVECTOR2(55,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------NPC


----------------은행

g_pButtonBank = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBank )
g_pButtonBank:SetName( "Bank" )

g_pButtonBank:SetNormalTex( "MiniMap_Bank.dds", "MiniMap_Bank" )

g_pButtonBank:SetOverTex( "MiniMap_Bank.dds", "MiniMap_Bank" )

g_pButtonBank:SetDownTex( "MiniMap_Bank.dds", "MiniMap_Bank" )

g_pButtonBank:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(100,445)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBank:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(100,445)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBank:SetDownPoint
{
  
 	"LEFT_TOP		= D3DXVECTOR2(100,445)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBank:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonBank:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonBank:AddDummyInt( NPC_UNIT_ID["NUI_LURIEL"] )

----------------게시판

g_pButtonBOARD1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBOARD1 )
g_pButtonBOARD1:SetName( "GLAVE" )

g_pButtonBOARD1:SetNormalTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )

g_pButtonBOARD1:SetOverTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )

g_pButtonBOARD1:SetDownTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )

g_pButtonBOARD1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(565,400)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBOARD1:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(565,400)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBOARD1:SetDownPoint
{
  
 	"LEFT_TOP		= D3DXVECTOR2(565,400)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonBOARD1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonBOARD1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonBOARD1:AddDummyInt( NPC_UNIT_ID["NUI_BILLBOARD"] )

--g_pButtonBOARD1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_BILLBOARD_MOUSE_OVER"] )
--g_pButtonBOARD1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_BILLBOARD_MOUSE_OUT"] )
 

-----촌장
g_pButtonNPC1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC1 )
g_pButtonNPC1:SetName( "ADEL" )

g_pButtonNPC1:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC1:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC1:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(127,365)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC1:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(127,365)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC1:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(127,365)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC1:AddDummyInt( NPC_UNIT_ID["NUI_ADEL"] )


 
---아리엘


g_pButtonNPC2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC2 )
g_pButtonNPC2:SetName( "ARIEL" )

g_pButtonNPC2:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(420,408)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(420,408)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetDownPoint
{
   
 	"LEFT_TOP		= D3DXVECTOR2(420,408)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC2:AddDummyInt( NPC_UNIT_ID["NUI_ARIEL"] )


---뮤


g_pButtonNPC2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC2 )
g_pButtonNPC2:SetName( "MU" )

g_pButtonNPC2:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonNPC2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(752-73,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(752-73,446)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetDownPoint
{
   
 	"LEFT_TOP		= D3DXVECTOR2(752-73,446)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC2:AddDummyInt( NPC_UNIT_ID["NUI_MU"] )




---카밀라

g_pButtonNPC3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNPC3 )
g_pButtonNPC3:SetName( "KAMIRLA" )

g_pButtonNPC3:SetNormalTex( "MiniMap_Arena.dds", "MiniMap_Arena" )

g_pButtonNPC3:SetOverTex( "MiniMap_Arena.dds", "MiniMap_Arena" )

g_pButtonNPC3:SetDownTex( "MiniMap_Arena.dds", "MiniMap_Arena" )

g_pButtonNPC3:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(523,429)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(523,429)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetDownPoint
{
   
 	"LEFT_TOP		= D3DXVECTOR2(523,429)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNPC3:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonNPC3:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonNPC3:AddDummyInt( NPC_UNIT_ID["NUI_CAMILLA"] )






------제조



g_pButtonAlche = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAlche )
g_pButtonAlche:SetName( "Shop_Alche" )

g_pButtonAlche:SetNormalTex( "MiniMap_Shop_Alche.dds", "MiniMap_Shop_Alche" )

g_pButtonAlche:SetOverTex( "MiniMap_Shop_Alche.dds", "MiniMap_Shop_Alche" )

g_pButtonAlche:SetDownTex( "MiniMap_Shop_Alche.dds", "MiniMap_Shop_Alche" )

g_pButtonAlche:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(724,298)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAlche:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(724,298)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAlche:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(724,298)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAlche:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonAlche:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonAlche:AddDummyInt( NPC_UNIT_ID["NUI_AMOS"] )






--[[
-----뱅크
   
g_pButtonBank = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBank )
g_pButtonBank:SetName( "Bank" )

g_pButtonBank:SetNormalTex( "MiniMap_Bank.dds", "MiniMap_Bank" )

g_pButtonBank:SetOverTex( "MiniMap_Bank.dds", "MiniMap_Bank" )

g_pButtonBank:SetDownTex( "MiniMap_Bank.dds", "MiniMap_Bank" )

g_pButtonBank:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(133,380)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBank:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(133,380)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBank:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(133,380)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBank:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonBank:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
-- fix!! g_pButtonBank:AddDummyInt( NPC_UNIT_ID["NUI_AMOS"] )
--]]
 

-----무기 상점


g_pButtonWeapon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonWeapon )
g_pButtonWeapon:SetName( "Shop_Weapon" )

g_pButtonWeapon:SetNormalTex( "MiniMap_Shop_Weapon.dds", "MiniMap_Shop_Weapon" )

g_pButtonWeapon:SetOverTex( "MiniMap_Shop_Weapon.dds", "MiniMap_Shop_Weapon" )

g_pButtonWeapon:SetDownTex( "MiniMap_Shop_Weapon.dds", "MiniMap_Shop_Weapon" )

g_pButtonWeapon:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(826,445)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWeapon:SetOverPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(826,445)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWeapon:SetDownPoint
{
     
	ADD_SIZE_Y = -20,
 	"LEFT_TOP		= D3DXVECTOR2(826,445)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWeapon:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonWeapon:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonWeapon:AddDummyInt( NPC_UNIT_ID["NUI_AGATHA"] )




-----마켓 왼쪽


g_pButtonMarket = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMarket )
g_pButtonMarket:SetName( "Market_Left" )

g_pButtonMarket:SetNormalTex( "MiniMap_Market.dds", "MiniMap_Market" )

g_pButtonMarket:SetOverTex( "MiniMap_Market.dds", "MiniMap_Market" )

g_pButtonMarket:SetDownTex( "MiniMap_Market.dds", "MiniMap_Market" )

g_pButtonMarket:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(250,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMarket:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(250,446)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMarket:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(250,446)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMarket:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_MARKET_MOUSE_OVER"] )
g_pButtonMarket:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_MARKET_MOUSE_OUT"] )






-----마켓 오른쪽


g_pButtonMarket = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMarket )
g_pButtonMarket:SetName( "Market_Right" )

g_pButtonMarket:SetNormalTex( "MiniMap_Market.dds", "MiniMap_Market" )

g_pButtonMarket:SetOverTex( "MiniMap_Market.dds", "MiniMap_Market" )

g_pButtonMarket:SetDownTex( "MiniMap_Market.dds", "MiniMap_Market" )

g_pButtonMarket:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(752,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMarket:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(752,446)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMarket:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(752,446)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMarket:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_MARKET_MOUSE_OVER"] )
g_pButtonMarket:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_MARKET_MOUSE_OUT"] )









---포스트


g_pButtonPost = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPost )
g_pButtonPost:SetName( "Post" )

g_pButtonPost:SetNormalTex( "MiniMap_Post.dds", "MiniMap_Post" )

g_pButtonPost:SetOverTex( "MiniMap_Post.dds", "MiniMap_Post" )

g_pButtonPost:SetDownTex( "MiniMap_Post.dds", "MiniMap_Post" )

g_pButtonPost:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(309,450)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPost:SetOverPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(309,450)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPost:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(309,450)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPost:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_POSTBOX_MOUSE_OVER"] )
g_pButtonPost:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_POSTBOX_MOUSE_OUT"] )


 ----악세서리


g_pButtonAcc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAcc )
g_pButtonAcc:SetName( "Shop_Acc" )

g_pButtonAcc:SetNormalTex( "MiniMap_Shop_Acc.dds", "MiniMap_Shop_Acc" )

g_pButtonAcc:SetOverTex( "MiniMap_Shop_Acc.dds", "MiniMap_Shop_Acc" )

g_pButtonAcc:SetDownTex( "MiniMap_Shop_Acc.dds", "MiniMap_Shop_Acc" )

g_pButtonAcc:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(299,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAcc:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(299,277)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAcc:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(299,277)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAcc:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonAcc:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonAcc:AddDummyInt( NPC_UNIT_ID["NUI_AIDA"] )








----------------타이틀


g_pPicturealtera = g_pUIDialog:CreatePicture()
g_pStaticaltera_town:AddPicture( g_pPicturealtera )

g_pPicturealtera:SetTex( "DLG_UI_Title02.tga", "altera_town" )

g_pPicturealtera:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(66,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------------------------



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
    "LEFT_TOP		= D3DXVECTOR2(59,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft:SetOverPoint
{
    ADD_SIZE_X = 4,
	ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(60-2,283-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft:SetDownPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(59,282)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonLeft:SetDisablePoint
{
     
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(61,285)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonLeft:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonLeft:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PREV_FIELD_MAP"] )
g_pButtonLeft:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_BESMA"] )



g_pButtonRight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight )
g_pButtonRight:SetName( "Right_Cusor" )

g_pButtonRight:SetNormalTex( "DLG_UI_Button04.tga", "R_gate" )

g_pButtonRight:SetOverTex( "DLG_UI_Button04.tga", "R_gate" )

g_pButtonRight:SetDownTex( "DLG_UI_Button04.tga", "R_gate" )

g_pButtonRight:SetDisableTex( "DLG_UI_Button04.tga", "R_gate_noactive" )

g_pButtonRight:SetNormalPoint
{
	ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
    "LEFT_TOP		= D3DXVECTOR2(930,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetOverPoint
{
    ADD_SIZE_X = 4,
	ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(931-2,387-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetDownPoint
{
     ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(930,386)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight:SetDisablePoint
{
    
	ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(932,389)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonRight:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonRight:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NEXT_FIELD_MAP"] )
g_pButtonRight:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_ALTERA"] )
---------------------- 도움말

g_pPictureHelper = g_pUIDialog:CreatePicture()
g_pStaticaltera_town:AddPicture( g_pPictureHelper )

g_pPictureHelper:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureHelper:SetPoint
{   
    ADD_SIZE_X = 4,
    ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(58,220)",
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
	"POS 			= D3DXVECTOR2(86,222)",
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
	
    "LEFT_TOP		= D3DXVECTOR2(918,258)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(918,258)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetDownPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(918+1,258+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_FIELD_MAP"] )





--[[
-----------------이벤트 NPC

g_pButtonEVENT_NPC = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonEVENT_NPC )
g_pButtonEVENT_NPC:SetName( "EVENT_NPC" )

g_pButtonEVENT_NPC:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonEVENT_NPC:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonEVENT_NPC:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pButtonEVENT_NPC:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(555,394)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEVENT_NPC:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(555,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEVENT_NPC:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(555,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEVENT_NPC:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonEVENT_NPC:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonEVENT_NPC:AddDummyInt( NPC_UNIT_ID["NUI_WILLIAM_PORTER"] )

--]]






--[[
---------------이동가능루트지역


-----베스마외곽

g_pButtonBesma_Out = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Out )
g_pButtonBesma_Out:SetName( "Besma_Out" )

g_pButtonBesma_Out:SetNormalTex( "DLG_UI_Button11.tga", "L_Besma_Out_normal" )

g_pButtonBesma_Out:SetOverTex( "DLG_UI_Button11.tga", "L_Besma_Out_over" )

g_pButtonBesma_Out:SetDownTex( "DLG_UI_Button11.tga", "L_Besma_Out_over" )

g_pButtonBesma_Out:SetDisableTex( "DLG_UI_Button11.tga", "L_Besma_Out_noactive" )

g_pButtonBesma_Out:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(45,307)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Out:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(45,307)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Out:SetDownPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(45+1,307+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonBesma_Out:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(45,307)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Out:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonBesma_Out:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_BESMA"] )



----알테라섬



g_pButtonAltera_Island = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAltera_Island )
g_pButtonAltera_Island:SetName( "Altera_Island" )

g_pButtonAltera_Island:SetNormalTex( "DLG_UI_Button11.tga", "R_Altera_Island_normal" )

g_pButtonAltera_Island:SetOverTex( "DLG_UI_Button11.tga", "R_Altera_Island_over" )

g_pButtonAltera_Island:SetDownTex( "DLG_UI_Button11.tga", "R_Altera_Island_over" )

g_pButtonAltera_Island:SetDisableTex( "DLG_UI_Button11.tga", "R_Altera_Island_noactive" )

g_pButtonAltera_Island:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(869,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Island:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(869,378)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Island:SetDownPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(869+1,378+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonAltera_Island:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(869,378)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Island:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonAltera_Island:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_ALTERA"] )
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



--만드라실
--[[
			g_pButtonNPC2 = g_pUIDialog:CreateButton()
			g_pUIDialog:AddControl( g_pButtonNPC2 )
			g_pButtonNPC2:SetName( "MANDRASSIL" )

			g_pButtonNPC2:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetNormalPoint
			{
	
			    "LEFT_TOP		= D3DXVECTOR2(450,428)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetOverPoint
			{
    
				"LEFT_TOP		= D3DXVECTOR2(450,428)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetDownPoint
			{
   
			 	"LEFT_TOP		= D3DXVECTOR2(450,428)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
			g_pButtonNPC2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
			g_pButtonNPC2:AddDummyInt( NPC_UNIT_ID["NUI_MANDRASSIL"] )


--]]



--산타 클로에--
--[[
			g_pButtonNPC2 = g_pUIDialog:CreateButton()
			g_pUIDialog:AddControl( g_pButtonNPC2 )
			g_pButtonNPC2:SetName( "SANTA_DARKELF" )

			g_pButtonNPC2:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetNormalPoint
			{
	
			    "LEFT_TOP		= D3DXVECTOR2(470,428)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetOverPoint
			{
    
				"LEFT_TOP		= D3DXVECTOR2(470,428)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetDownPoint
			{
   
			 	"LEFT_TOP		= D3DXVECTOR2(470,428)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
			g_pButtonNPC2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
			g_pButtonNPC2:AddDummyInt( NPC_UNIT_ID["NUI_SANTA_DARKELF"] )
--]]

-- 에이핑크
--[[
			g_pButtonNPC2 = g_pUIDialog:CreateButton()
			g_pUIDialog:AddControl( g_pButtonNPC2 )
			g_pButtonNPC2:SetName( "EVENT_APINK" )

			g_pButtonNPC2:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetNormalPoint
			{
	
			    "LEFT_TOP		= D3DXVECTOR2(450,428)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetOverPoint
			{
    
				"LEFT_TOP		= D3DXVECTOR2(450,428)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetDownPoint
			{
   
			 	"LEFT_TOP		= D3DXVECTOR2(450,428)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
			g_pButtonNPC2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
			g_pButtonNPC2:AddDummyInt( NPC_UNIT_ID["NUI_EVENT_APINK"] )
--]]

-- 에이핑크 대천사
--[[
			g_pButtonNPC2 = g_pUIDialog:CreateButton()
			g_pUIDialog:AddControl( g_pButtonNPC2 )
			g_pButtonNPC2:SetName( "EVENT_APINK_ARCHANGEL" )

			g_pButtonNPC2:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

			g_pButtonNPC2:SetNormalPoint
			{
	
			    "LEFT_TOP		= D3DXVECTOR2(450,428)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetOverPoint
			{
    
				"LEFT_TOP		= D3DXVECTOR2(450,428)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetDownPoint
			{
   
			 	"LEFT_TOP		= D3DXVECTOR2(450,428)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
			g_pButtonNPC2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
			g_pButtonNPC2:AddDummyInt( NPC_UNIT_ID["NUI_EVENT_APINK_ARCHANGEL"] )
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
			    "LEFT_TOP		= D3DXVECTOR2(450,428)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC1:SetOverPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(450,428)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC1:SetDownPoint
			{
			 	"LEFT_TOP		= D3DXVECTOR2(450,428)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonNPC1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
			g_pButtonNPC1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
			g_pButtonNPC1:AddDummyInt( NPC_UNIT_ID["NUI_EVENT_DARKMOON"] )
--]]