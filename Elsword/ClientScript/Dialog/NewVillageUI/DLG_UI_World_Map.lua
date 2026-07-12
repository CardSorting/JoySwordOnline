-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_WORLD_MAP" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_WORLD_MAP"] )

g_pUIDialog:SetCustomMsgStopDragging( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NAVI_WORLD_MAP_STOP_DRAGGING"] )

g_pUIDialog:SetSize( 1024+512+88*2, 1024+312 )
g_pUIDialog:SetEnableDraggingRange( true )
g_pUIDialog:SetDraggingRangeCenter( 512, 384 )
g_pUIDialog:SetDraggingRange( 1024+512+88*2 -1024, 1024+312 -768 )

g_pStaticWorld_Map = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Map )
g_pStaticWorld_Map:SetName( "g_pStaticWorld_Map" )

------------------------------------------      월드맵    ----------------------------------------------------
-------------------------------------------------------------------------------------------------------------

g_pPicture_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg1 )

g_pPicture_Bg1:SetTex( "DLG_UI_World_Map01.TGA", "world_bg1" )

g_pPicture_Bg1:SetPoint
{   
    ADD_SIZE_X = 88,
    ADD_SIZE_Y = 156,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg2 )

g_pPicture_Bg2:SetTex( "DLG_UI_World_Map02.TGA", "world_bg2" )

g_pPicture_Bg2:SetPoint
{   
    ADD_SIZE_X = 88,
    ADD_SIZE_Y = 156,
	"LEFT_TOP		= D3DXVECTOR2(0,668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg3 )

g_pPicture_Bg3:SetTex( "DLG_UI_World_Map03.TGA", "world_bg3" )

g_pPicture_Bg3:SetPoint
{   
    ADD_SIZE_X = 88,
    ADD_SIZE_Y = 156,
	"LEFT_TOP		= D3DXVECTOR2(512+88,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg4 )

g_pPicture_Bg4:SetTex( "DLG_UI_World_Map04.TGA", "world_bg4" )

g_pPicture_Bg4:SetPoint
{
    ADD_SIZE_X = 88,
	ADD_SIZE_Y = 156,
	"LEFT_TOP		= D3DXVECTOR2(512+88,668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Bg5 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg5 )

g_pPicture_Bg5:SetTex( "DLG_UI_World_Map05.TGA", "world_bg5" )

g_pPicture_Bg5:SetPoint
{
    ADD_SIZE_X = 88,
	ADD_SIZE_Y = 156,
	"LEFT_TOP		= D3DXVECTOR2(1024+176,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Bg6 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg6 )

g_pPicture_Bg6:SetTex( "DLG_UI_World_Map06.TGA", "world_bg6" )

g_pPicture_Bg6:SetPoint
{
    ADD_SIZE_X = 88,
	ADD_SIZE_Y = 156,
	"LEFT_TOP		= D3DXVECTOR2(1024+176,668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------수도 하멜
--{{ 벨더 ~ 하멜 항로
g_pStaticHamel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHamel )
g_pStaticHamel:SetName( "g_pStaticHamel" )
g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticHamel:AddPicture( g_pPictureRoad )
g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "SHIP_ROAD" )
g_pPictureRoad:SetPoint
{
    ADD_SIZE_X = 3,
	ADD_SIZE_Y = 15,
	"LEFT_TOP		= D3DXVECTOR2(437,237+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 벨더 ~ 하멜 항로

--{{ 벨더 항구
g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticHamel:AddPicture( g_pPictureRoad )
g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "SHIP_MARK" )
g_pPictureRoad:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(472,212+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 벨더 항구

--{{ 하멜 항구
g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticHamel:AddPicture( g_pPictureRoad )
g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "SHIP_MARK" )
g_pPictureRoad:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(423,363+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 하멜 항구

--{{ 수도 하멜 ~ 하멜 외곽
g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticHamel:AddPicture( g_pPictureRoad )
g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "RUBEN_ROAD" )
g_pPictureRoad:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(445,428+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 수도 하멜 ~ 하멜 외곽

--{{ 수도 하멜 타이틀
g_pPictureTown_Name = g_pUIDialog:CreatePicture()
g_pStaticHamel:AddPicture( g_pPictureTown_Name )
g_pPictureTown_Name:SetTex( "DLG_UI_Title02.tga", "Hamel_town" )
g_pPictureTown_Name:SetPoint
{   
    ADD_SIZE_X = -20,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(382,449+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 수도 하멜 타이틀

--{{ 하멜 외곽 타이틀
g_pPictureTown_Name = g_pUIDialog:CreatePicture()
g_pStaticHamel:AddPicture( g_pPictureTown_Name )
g_pPictureTown_Name:SetTex( "DLG_UI_Title02.tga", "Hamel_out" )
g_pPictureTown_Name:SetPoint
{   
    ADD_SIZE_X = -41,
	ADD_SIZE_Y = -11,
	"LEFT_TOP		= D3DXVECTOR2(437,493+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 하멜 외곽 타이틀
g_pStaticHamel:AddDummyInt( VILLAGE_MAP_ID["VMI_HAMEL"] )

--{{ 수도 하멜 버튼 및 캐릭터 위치
g_pButtonHamel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHamel )
g_pButtonHamel:SetName( "Hamel_town" )
g_pButtonHamel:SetNormalTex( "DLG_UI_BUTTON17.tga", "MAP_HAMEL_NORMAL" )
g_pButtonHamel:SetOverTex( "DLG_UI_BUTTON17.tga", "MAP_HAMEL_OVER" )
g_pButtonHamel:SetDownTex( "DLG_UI_BUTTON17.tga", "MAP_HAMEL_OVER" )

g_pButtonHamel:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(382,383+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 
g_pButtonHamel:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(382-5,383-8+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHamel:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(382-5+1,383-8+1+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHamel:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(457,335+668)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHamel:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButtonHamel:AddDummyInt( VILLAGE_MAP_ID["VMI_HAMEL"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonHamel:AddDummyPos( D3DXVECTOR3(433, 373+668, 0) )
--}} 수도 하멜 버튼 및 캐릭터 위치

--{{ 하멜 던전 게이트 버튼 및 캐릭터 위치
g_pButtonHamel_Gate = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHamel_Gate )
g_pButtonHamel_Gate:SetName( "Hamel_Dungeon_Gate" )
g_pButtonHamel_Gate:SetNormalTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_NORMAL" )
g_pButtonHamel_Gate:SetOverTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )
g_pButtonHamel_Gate:SetDownTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonHamel_Gate:SetNormalPoint
{
	ADD_SIZE_X = 4,
	ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(475,462+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHamel_Gate:SetOverPoint
{
	ADD_SIZE_X = 4,
	ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(475,462+668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHamel_Gate:SetDownPoint
{
	ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(475-1,462+668-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHamel_Gate:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonHamel_Gate:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_HAMEL"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonHamel_Gate:AddDummyPos( D3DXVECTOR3(475,478+668, 0) )
--}} 하멜 던전 게이트 버튼 및 캐릭터 위치
-----------------}} 하멜

-----------------벨더 마을




g_pStaticVelder = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder )
g_pStaticVelder:SetName( "g_pStaticVelder" )


g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticVelder:AddPicture( g_pPictureRoad )

g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "Velder_road" )

g_pPictureRoad:SetPoint
{   
   
	"LEFT_TOP		= D3DXVECTOR2(387,709)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTown_Name = g_pUIDialog:CreatePicture()
g_pStaticVelder:AddPicture( g_pPictureTown_Name )

g_pPictureTown_Name:SetTex( "DLG_UI_Title02.tga", "Velder_out" )

g_pPictureTown_Name:SetPoint
{   
    ADD_SIZE_X = -20,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(395, 875)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Name = g_pUIDialog:CreatePicture()
g_pStaticVelder:AddPicture( g_pPictureDungeon_Name )

g_pPictureDungeon_Name:SetTex( "DLG_UI_Title02.tga", "Velder_town" )

g_pPictureDungeon_Name:SetPoint
{   
    ADD_SIZE_X = -41,
	ADD_SIZE_Y = -11,
	"LEFT_TOP		= D3DXVECTOR2(505,845)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticVelder:AddDummyInt( VILLAGE_MAP_ID["VMI_VELDER"] )





g_pButtonVelder = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVelder )
g_pButtonVelder:SetName( "Velder_town" )
g_pButtonVelder:SetNormalTex( "DLG_UI_BUTTON09.tga", "Velder_NORMAL" )

g_pButtonVelder:SetOverTex( "DLG_UI_BUTTON09.tga", "Velder_OVER" )

g_pButtonVelder:SetDownTex( "DLG_UI_BUTTON09.tga", "Velder_OVER" )

g_pButtonVelder:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(388,809)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 
g_pButtonVelder:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(374,809)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(374+1,809+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonVelder:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(388,809)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButtonVelder:AddDummyInt( VILLAGE_MAP_ID["VMI_VELDER"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonVelder:AddDummyPos( D3DXVECTOR3(395, 800, 0) )


-----------------벨더 던전게이트



g_pButtonVelder_Gate = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVelder_Gate )
g_pButtonVelder_Gate:SetName( "Velder_Dungeon_Gate" )
g_pButtonVelder_Gate:SetNormalTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_NORMAL" )

g_pButtonVelder_Gate:SetOverTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonVelder_Gate:SetDownTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonVelder_Gate:SetNormalPoint
{
	 ADD_SIZE_X = 4,
     ADD_SIZE_Y = 4,
    "LEFT_TOP		= D3DXVECTOR2(473,830)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_Gate:SetOverPoint
{
     ADD_SIZE_X = 4,
     ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(473,830)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_Gate:SetDownPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(473-1,830-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_Gate:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonVelder_Gate:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_VELDER"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonVelder_Gate:AddDummyPos( D3DXVECTOR3(484, 866, 0) )










-----------------알테라 마을




g_pStaticAltera = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera )
g_pStaticAltera:SetName( "g_pStaticAltera" )


g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureRoad )

g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "Altera_road1" )

g_pPictureRoad:SetPoint
{   
   
	"LEFT_TOP		= D3DXVECTOR2(60,600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureRoad )

g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "Altera_road2" )

g_pPictureRoad:SetPoint
{   
   
	"LEFT_TOP		= D3DXVECTOR2(161,915)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureRoad )

g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "Altera_road3" )

g_pPictureRoad:SetPoint
{   
   
	"LEFT_TOP		= D3DXVECTOR2(303,886)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureRoad )

g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "Altera_road4" )

g_pPictureRoad:SetPoint
{   
   
	"LEFT_TOP		= D3DXVECTOR2(529,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureRoad )

g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "Altera_road5" )

g_pPictureRoad:SetPoint
{   
   
	"LEFT_TOP		= D3DXVECTOR2(682,644)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureTown_Name = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureTown_Name )

g_pPictureTown_Name:SetTex( "DLG_UI_Title02.tga", "altera_town" )

g_pPictureTown_Name:SetPoint
{   
    ADD_SIZE_X = -20,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(864,698)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Name = g_pUIDialog:CreatePicture()
g_pStaticAltera:AddPicture( g_pPictureDungeon_Name )

g_pPictureDungeon_Name:SetTex( "DLG_UI_Title02.tga", "altera_out" )

g_pPictureDungeon_Name:SetPoint
{   
    ADD_SIZE_X = -41,
	ADD_SIZE_Y = -11,
	"LEFT_TOP		= D3DXVECTOR2(912,614)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticAltera:AddDummyInt( VILLAGE_MAP_ID["VMI_ALTERA"] )






g_pButtonAltera = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAltera )
g_pButtonAltera:SetName( "Altera_town" )
g_pButtonAltera:SetNormalTex( "DLG_UI_BUTTON13.tga", "Altera_NORMAL" )

g_pButtonAltera:SetOverTex( "DLG_UI_BUTTON13.tga", "Altera_OVER" )

g_pButtonAltera:SetDownTex( "DLG_UI_BUTTON13.tga", "Altera_OVER" )

g_pButtonAltera:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(795,610)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,609)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(794+1,609+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButtonAltera:AddDummyInt( VILLAGE_MAP_ID["VMI_ALTERA"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonAltera:AddDummyPos( D3DXVECTOR3(890, 671, 0) )


-----------------알테라 던전게이트 



g_pButtonAltera_Gate = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAltera_Gate )
g_pButtonAltera_Gate:SetName( "Altera_Dungeon_Gate" )
g_pButtonAltera_Gate:SetNormalTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_NORMAL" )

g_pButtonAltera_Gate:SetOverTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonAltera_Gate:SetDownTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonAltera_Gate:SetNormalPoint
{
	 ADD_SIZE_X = 4,
     ADD_SIZE_Y = 4,
    "LEFT_TOP		= D3DXVECTOR2(863,612)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Gate:SetOverPoint
{
     ADD_SIZE_X = 4,
     ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(861,610)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Gate:SetDownPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(863-1,611-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Gate:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonAltera_Gate:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_ALTERA"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonAltera_Gate:AddDummyPos( D3DXVECTOR3(916, 579, 0) )















-----------------페이타 




g_pStaticPeita= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPeita )
g_pStaticPeita:SetName( "g_pStaticPeita" )


g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticPeita:AddPicture( g_pPictureRoad )

g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "peita_road" )

g_pPictureRoad:SetPoint
{   
   
	"LEFT_TOP		= D3DXVECTOR2(240,576)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureDungeon_Name = g_pUIDialog:CreatePicture()
g_pStaticPeita:AddPicture( g_pPictureDungeon_Name )

g_pPictureDungeon_Name:SetTex( "DLG_UI_Title02.tga", "peita_out" )

g_pPictureDungeon_Name:SetPoint
{   
    ADD_SIZE_X = -20,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(375,714)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticPeita:AddDummyInt( VILLAGE_MAP_ID["VMI_PEITA"] )






g_pButtonPeita = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPeita )
g_pButtonPeita:SetName( "Peita_town" )
g_pButtonPeita:SetNormalTex( "DLG_UI_BUTTON13.tga", "peita_NORMAL" )

g_pButtonPeita:SetOverTex( "DLG_UI_BUTTON13.tga", "peita_OVER" )

g_pButtonPeita:SetDownTex( "DLG_UI_BUTTON13.tga", "peita_OVER" )

g_pButtonPeita:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(367,645)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPeita:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(363,633)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPeita:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(363+1,633+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPeita:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonPeita:AddDummyInt( VILLAGE_MAP_ID["VMI_PEITA"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonPeita:AddDummyPos( D3DXVECTOR3(364, 732, 0) )













-----------------베스마 마을




g_pStaticBesma = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBesma )
g_pStaticBesma:SetName( "g_pStaticBesma" )


g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticBesma:AddPicture( g_pPictureRoad )

g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "besma_road" )

g_pPictureRoad:SetPoint
{   
   
	"LEFT_TOP		= D3DXVECTOR2(136,472)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTown_Name = g_pUIDialog:CreatePicture()
g_pStaticBesma:AddPicture( g_pPictureTown_Name )

g_pPictureTown_Name:SetTex( "DLG_UI_Title02.tga", "besma_town" )

g_pPictureTown_Name:SetPoint
{   
    ADD_SIZE_X = -20,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(200,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Name = g_pUIDialog:CreatePicture()
g_pStaticBesma:AddPicture( g_pPictureDungeon_Name )

g_pPictureDungeon_Name:SetTex( "DLG_UI_Title02.tga", "besma_out" )

g_pPictureDungeon_Name:SetPoint
{   
    ADD_SIZE_X = -20,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(104,624)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticBesma:AddDummyInt( VILLAGE_MAP_ID["VMI_BESMA"] )





g_pButtonBesma = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma )
g_pButtonBesma:SetName( "Besma_town" )
g_pButtonBesma:SetNormalTex( "DLG_UI_BUTTON13.tga", "Besma_NORMAL" )

g_pButtonBesma:SetOverTex( "DLG_UI_BUTTON13.tga", "Besma_OVER" )

g_pButtonBesma:SetDownTex( "DLG_UI_BUTTON13.tga", "Besma_OVER" )

g_pButtonBesma:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(172,459)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(163,455)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(163+1,454+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonBesma:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(147+31,470)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButtonBesma:AddDummyInt( VILLAGE_MAP_ID["VMI_BESMA"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonBesma:AddDummyPos( D3DXVECTOR3(210, 420, 0) )

-----------------베스마 던전게이트



g_pButtonBesma_Gate = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Gate )
g_pButtonBesma_Gate:SetName( "Besma_Dungeon_Gate" )
g_pButtonBesma_Gate:SetNormalTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_NORMAL" )

g_pButtonBesma_Gate:SetOverTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonBesma_Gate:SetDownTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonBesma_Gate:SetNormalPoint
{
	 ADD_SIZE_X = 4,
     ADD_SIZE_Y = 4,
    "LEFT_TOP		= D3DXVECTOR2(217,577)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Gate:SetOverPoint
{
     ADD_SIZE_X = 4,
     ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(217,577)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Gate:SetDownPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(217-1,577-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Gate:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonBesma_Gate:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_BESMA"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonBesma_Gate:AddDummyPos( D3DXVECTOR3(113, 593, 0) )








-----------------엘더마을



g_pStaticEldu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEldu )
g_pStaticEldu:SetName( "g_pStaticEldu" )


g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticEldu:AddPicture( g_pPictureRoad )

g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "eldu_road" )

g_pPictureRoad:SetPoint
{   
   
	"LEFT_TOP		= D3DXVECTOR2(344,412)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTown_Name = g_pUIDialog:CreatePicture()
g_pStaticEldu:AddPicture( g_pPictureTown_Name )

g_pPictureTown_Name:SetTex( "DLG_UI_Title02.tga", "eldu_town" )

g_pPictureTown_Name:SetPoint
{   
    ADD_SIZE_X = -20,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(484,486)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Name = g_pUIDialog:CreatePicture()
g_pStaticEldu:AddPicture( g_pPictureDungeon_Name )

g_pPictureDungeon_Name:SetTex( "DLG_UI_Title02.tga", "eldu_out" )

g_pPictureDungeon_Name:SetPoint
{   
    ADD_SIZE_X = -41,
	ADD_SIZE_Y = -11,
	"LEFT_TOP		= D3DXVECTOR2(377,503)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticEldu:AddDummyInt( VILLAGE_MAP_ID["VMI_ELDER"] )



g_pButtonEldu = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonEldu )
g_pButtonEldu:SetName( "Eldu_town" )
g_pButtonEldu:SetNormalTex( "DLG_UI_BUTTON13.tga", "Eldu_NORMAL" )

g_pButtonEldu:SetOverTex( "DLG_UI_BUTTON13.tga", "Eldu_OVER" )

g_pButtonEldu:SetDownTex( "DLG_UI_BUTTON13.tga", "Eldu_OVER" )

g_pButtonEldu:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(454,425)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEldu:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(448,409)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEldu:SetDownPoint
{ 
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(448+1,409+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEldu:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButtonEldu:AddDummyInt( VILLAGE_MAP_ID["VMI_ELDER"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonEldu:AddDummyPos( D3DXVECTOR3(523, 454, 0) )



-----------------엘더 던전게이트



g_pButtonEldu_Gate = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonEldu_Gate )
g_pButtonEldu_Gate:SetName( "Eldu_Dungeon_Gate" )
g_pButtonEldu_Gate:SetNormalTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_NORMAL" )

g_pButtonEldu_Gate:SetOverTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonEldu_Gate:SetDownTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonEldu_Gate:SetNormalPoint
{
	 ADD_SIZE_X = 4,
     ADD_SIZE_Y = 4,
    "LEFT_TOP		= D3DXVECTOR2(340,470)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEldu_Gate:SetOverPoint
{
     ADD_SIZE_X = 4,
     ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(338,470)",
 
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEldu_Gate:SetDownPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(340-1,472-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEldu_Gate:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonEldu_Gate:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_ELDER"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonEldu_Gate:AddDummyPos( D3DXVECTOR3(376, 520, 0) )






-----------------루벤마을


g_pStaticRuben = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRuben )
g_pStaticRuben:SetName( "g_pStaticRuben" )


g_pPictureRoad = g_pUIDialog:CreatePicture()
g_pStaticRuben:AddPicture( g_pPictureRoad )

g_pPictureRoad:SetTex( "DLG_UI_Common_Texture14.tga", "ruben_road" )

g_pPictureRoad:SetPoint
{   
   
	"LEFT_TOP		= D3DXVECTOR2(356,354)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTown_Name = g_pUIDialog:CreatePicture()
g_pStaticRuben:AddPicture( g_pPictureTown_Name )

g_pPictureTown_Name:SetTex( "DLG_UI_Title02.tga", "ruben_town" )

g_pPictureTown_Name:SetPoint
{   
    ADD_SIZE_X = -20,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(367,347)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Name = g_pUIDialog:CreatePicture()
g_pStaticRuben:AddPicture( g_pPictureDungeon_Name )

g_pPictureDungeon_Name:SetTex( "DLG_UI_Title02.tga", "ruben_out" )

g_pPictureDungeon_Name:SetPoint
{   
    ADD_SIZE_X = -41,
	ADD_SIZE_Y = -11,
	"LEFT_TOP		= D3DXVECTOR2(347,416)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticRuben:AddDummyInt( VILLAGE_MAP_ID["VMI_RUBEN"] )



g_pButtonRuben = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRuben )

g_pButtonRuben:SetName( "Ruben_town" )

g_pButtonRuben:SetNormalTex( "DLG_UI_BUTTON13.tga", "ruben_NORMAL" )

g_pButtonRuben:SetOverTex( "DLG_UI_BUTTON13.tga", "ruben_OVER" )

g_pButtonRuben:SetDownTex( "DLG_UI_BUTTON13.tga", "ruben_OVER" )

g_pButtonRuben:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(312,294)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRuben:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,290)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRuben:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310+1,290+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRuben:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButtonRuben:AddDummyInt( VILLAGE_MAP_ID["VMI_RUBEN"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonRuben:AddDummyPos( D3DXVECTOR3(390, 320, 0) )



-----------------루벤 던전게이트

g_pButtonRuben_Gate = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRuben_Gate )
g_pButtonRuben_Gate:SetName( "Ruben_Dungeon_Gate" )
g_pButtonRuben_Gate:SetNormalTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_NORMAL" )

g_pButtonRuben_Gate:SetOverTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonRuben_Gate:SetDownTex( "DLG_UI_BUTTON13.tga", "Dungeon_Gate_OVER" )

g_pButtonRuben_Gate:SetNormalPoint
{
	 ADD_SIZE_X = 4,
     ADD_SIZE_Y = 4,
    "LEFT_TOP		= D3DXVECTOR2(388,388)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRuben_Gate:SetOverPoint
{
     ADD_SIZE_X = 4,
     ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(384,387)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRuben_Gate:SetDownPoint
{
      ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
 	"LEFT_TOP		= D3DXVECTOR2(386-1,389-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRuben_Gate:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_DUNGEON_GATE_CLICKED"] )
g_pButtonRuben_Gate:AddDummyInt( VILLAGE_MAP_ID["VMI_DUNGEON_GATE_RUBEN"] )
-- 캐릭터 마크가 붙을 위치
g_pButtonRuben_Gate:AddDummyPos( D3DXVECTOR3(338, 430, 0) )







-------------------------------------- 캐릭터/파티원 위치 마크 'ㅅ'

g_pButtonMyChar = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMyChar )
g_pButtonMyChar:SetName( "Button_Mychar" )

g_pButtonMyChar:SetNormalTex( "MiniMap_Char_My.dds", "Minimap_Char_My" )
g_pButtonMyChar:SetOverTex( "MiniMap_Char_My.dds", "Minimap_Char_My" )
g_pButtonMyChar:SetDownTex( "MiniMap_Char_My.dds", "Minimap_Char_My" )

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

g_pButtonPartyMember0:SetNormalTex( "MiniMap_Char_Party.dds", "Minimap_Char_Party" )
g_pButtonPartyMember0:SetOverTex( "MiniMap_Char_Party.dds", "Minimap_Char_Party" )
g_pButtonPartyMember0:SetDownTex( "MiniMap_Char_Party.dds", "Minimap_Char_Party" )

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

g_pButtonPartyMember1:SetNormalTex( "MiniMap_Char_Party.dds", "Minimap_Char_Party" )
g_pButtonPartyMember1:SetOverTex( "MiniMap_Char_Party.dds", "Minimap_Char_Party" )
g_pButtonPartyMember1:SetDownTex( "MiniMap_Char_Party.dds", "Minimap_Char_Party" )

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

g_pButtonPartyMember2:SetNormalTex( "MiniMap_Char_Party.dds", "Minimap_Char_Party" )
g_pButtonPartyMember2:SetOverTex( "MiniMap_Char_Party.dds", "Minimap_Char_Party" )
g_pButtonPartyMember2:SetDownTex( "MiniMap_Char_Party.dds", "Minimap_Char_Party" )

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

