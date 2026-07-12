-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( X2_HERO_MATCH_UI_MSG["XHMUM_CLOSE_ADD_USER"] )



g_pStaticObeserver = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticObeserver )
g_pStaticObeserver:SetName( "Obeserver" )


---------BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Large2_Top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Large2_Middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 465-34,
	"LEFT_TOP		= D3DXVECTOR2(0,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Large2_Bottom" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,459)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Medium2_Top8" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Medium2_Middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 358-30,
	"LEFT_TOP		= D3DXVECTOR2(13,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Medium2_Bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,391)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------BG3

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Small2_Top" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(21,90-33)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Small2_Middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 302,
	"LEFT_TOP		= D3DXVECTOR2(21,100-33)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Small2_Bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(21,408-33)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------title
----------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title03.tga", "USER_ADD" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(82,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
-------------------------BAR(실제 길이 2px)

----세로 라인 예시---
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_Y = 298,
	"LEFT_TOP		= D3DXVECTOR2(139,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_Y = 298,
	"LEFT_TOP		= D3DXVECTOR2(217,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------가로라인 시작-----
-------1번째 라인
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 101,
	"LEFT_TOP		= D3DXVECTOR2(34,114)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 70,
	"LEFT_TOP		= D3DXVECTOR2(143,114)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-------2번째 라인
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 101,
	"LEFT_TOP		= D3DXVECTOR2(34,114+29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 70,
	"LEFT_TOP		= D3DXVECTOR2(143,114+29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-------3번째 라인
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 101,
	"LEFT_TOP		= D3DXVECTOR2(34,114+29*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 70,
	"LEFT_TOP		= D3DXVECTOR2(143,114+29*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
-------4번째 라인
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 101,
	"LEFT_TOP		= D3DXVECTOR2(34,114+29*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 70,
	"LEFT_TOP		= D3DXVECTOR2(143,114+29*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
-------5번째 라인
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 101,
	"LEFT_TOP		= D3DXVECTOR2(34,114+29*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 70,
	"LEFT_TOP		= D3DXVECTOR2(143,114+29*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
-------6번째 라인
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 101,
	"LEFT_TOP		= D3DXVECTOR2(34,114+29*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 70,
	"LEFT_TOP		= D3DXVECTOR2(143,114+29*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
-------7번째 라인
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 101,
	"LEFT_TOP		= D3DXVECTOR2(34,114+29*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 70,
	"LEFT_TOP		= D3DXVECTOR2(143,114+29*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
-------8번째 라인
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 101,
	"LEFT_TOP		= D3DXVECTOR2(34,114+29*7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 70,
	"LEFT_TOP		= D3DXVECTOR2(143,114+29*7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-------9번째 라인
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 101,
	"LEFT_TOP		= D3DXVECTOR2(34,114+29*8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 70,
	"LEFT_TOP		= D3DXVECTOR2(143,114+29*8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--------------------------------스크롤 바 -154/-34-----------------------------------------------
------------------------------------------------------------------------------------------

-- g_pPicture_bg31 = g_pUIDialog:CreatePicture()
-- g_pStaticObeserver:AddPicture( g_pPicture_bg31 )

-- g_pPicture_bg31:SetTex( "DLG_UI_Common_Texture01.TGA", "gray_bar" )

-- g_pPicture_bg31:SetPoint
-- {
     -- ADD_SIZE_X = 19,
	 -- ADD_SIZE_Y = 250,
	-- "LEFT_TOP		= D3DXVECTOR2(383-154,125-34)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }



-------------------------상하 버튼 --------------------------------------------------------


-- g_pButtonup1 = g_pUIDialog:CreateButton()
-- g_pUIDialog:AddControl( g_pButtonup1 )
-- g_pButtonup1:SetName( "Button_up1" )
-- g_pButtonup1:SetNormalTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

-- g_pButtonup1:SetOverTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

-- g_pButtonup1:SetDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

-- g_pButtonup1:SetNormalPoint
-- {
	
    -- "LEFT_TOP		= D3DXVECTOR2(383-154,103-34)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButtonup1:SetOverPoint
-- {
     -- ADD_SIZE_X = 2,
     -- ADD_SIZE_Y = 2,
	-- "LEFT_TOP		= D3DXVECTOR2(383-1-154,103-1-34)",

	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButtonup1:SetDownPoint
-- {
      
 	-- "LEFT_TOP		= D3DXVECTOR2(383-154,103-34)",

	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButtonup1:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_SCROOL_UP"] )

 

-- g_pButtondown1 = g_pUIDialog:CreateButton()
-- g_pUIDialog:AddControl( g_pButtondown1 )
-- g_pButtondown1:SetName( "Button_down1" )
-- g_pButtondown1:SetNormalTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Normal" )

-- g_pButtondown1:SetOverTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

-- g_pButtondown1:SetDownTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

-- g_pButtondown1:SetNormalPoint
-- {
	
    -- "LEFT_TOP		= D3DXVECTOR2(383-154,377-34)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButtondown1:SetOverPoint
-- {
     -- ADD_SIZE_X = 2,
     -- ADD_SIZE_Y = 2,
	-- "LEFT_TOP		= D3DXVECTOR2(383-1-154,377-1-34)",

	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButtondown1:SetDownPoint
-- {
      
 	-- "LEFT_TOP		= D3DXVECTOR2(383-154,377-1-34)",

	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButtondown1:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_SCROOL_DOWN"] )


-- -- 리스트 네비게이션 바

-- g_pNavi = g_pUIDialog:CreateNavigation()
-- g_pUIDialog:AddControl( g_pNavi )
-- g_pNavi:SetName( "Navi_QuestList" )
-- g_pNavi:SetBGTex_LUA( "DLG_Room_Button0.tga", "Invisible" )
-- g_pNavi:SetWindowTex_LUA( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

-- -- 스크롤 범위
-- g_pNavi:SetBGPoint_LUA
-- {
	-- USE_TEXTURE_SIZE= FALSE,
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- "LEFT_TOP		= D3DXVECTOR2(384-154,125-34)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(403-154,377-34)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -- 스크롤 바 최초 위치+범위
-- g_pNavi:SetWindowPoint_LUA
-- {
	-- USE_TEXTURE_SIZE= FALSE,

	-- "LEFT_TOP		= D3DXVECTOR2(384-154,125-34)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(403-154,125+40-34)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pNavi:SetCustomMsgLButtonDown( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_NAVI_LCLICKED"] )
-- g_pNavi:SetCustomMsgMouseDragging( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_NAVI_DRAGGING"] ) 
 

-- g_pControlList = g_pUIDialog:CreateControlList()
-- g_pUIDialog:AddControl( g_pControlList )
-- g_pControlList:SetName( "PvpMapControlList" )

-- g_pControlList:SetYScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
-- g_pControlList:SetYScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
-- g_pControlList:SetYScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
-- g_pControlList:SetYScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
-- g_pControlList:SetYScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
-- g_pControlList:SetYScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

-- g_pScrollBar = g_pControlList:InitYScrollBar()
-- g_pControlList:SetYScrollBarPos( 230 , 65 )
-- g_pControlList:SetYScrollBarSize( 25, 290 )
-- --g_pControlList:SetYScrollBarSize( 0, 0 )
-- g_pControlList:SetScrollOffset( 0, 25 )
-- g_pControlList:SetPos(25, 0 )

-- g_pControlList:SetViewSize( 3, 12, true )
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

------------------------------------------------첫번째 줄(전체/닉네임/서버선택지---------------------------------

----닉네임---
g_pStatic_Nickname = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Nickname )
g_pStatic_Nickname:SetName( "Static_Nickname" )
g_pStatic_Nickname:AddString
{
	 -- MSG 			= "닉네임",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(65,74)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
----서버---
g_pStatic_Server = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Server )
g_pStatic_Server:SetName( "Static_Server" )
g_pStatic_Server:AddString
{
	 -- MSG 			= "서버",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(165,74)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-------1 서버 선택지 부분
-----서버 고르기   버튼
g_pButtonServer_choice1 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonServer_choice1 )
g_pButtonServer_choice1:SetName( "Server_choice1" )

g_pButtonServer_choice1:SetDropHeight( 15 )

g_pButtonServer_choice1:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonServer_choice1:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonServer_choice1:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonServer_choice1:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonServer_choice1:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonServer_choice1:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )

g_pButtonServer_choice1:SetTextPos( 145, 120 )
g_pButtonServer_choice1:SetTextSize( 55, 21 )

g_pButtonServer_choice1:SetTextStringOffsetPos( 3, 4 )
g_pButtonServer_choice1:SetButtonPos( 200, 120 )
g_pButtonServer_choice1:SetButtonSize( 15, 15 )

g_pButtonServer_choice1:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- -------2 선택지 부분
-- -----서버 고르기   버튼
g_pButtonServer_choice2 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonServer_choice2 )
g_pButtonServer_choice2:SetName( "Server_choice2" )

g_pButtonServer_choice2:SetDropHeight( 15 )

g_pButtonServer_choice2:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonServer_choice2:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonServer_choice2:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonServer_choice2:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonServer_choice2:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonServer_choice2:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )

g_pButtonServer_choice2:SetTextPos( 145, 120+29 )
g_pButtonServer_choice2:SetTextSize( 55, 21 )

g_pButtonServer_choice2:SetTextStringOffsetPos( 3, 4 )
g_pButtonServer_choice2:SetButtonPos( 200, 120+29 )
g_pButtonServer_choice2:SetButtonSize( 15, 15 )

g_pButtonServer_choice2:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- -------3 선택지 부분
-- -----서버 고르기   버튼
g_pButtonServer_choice3 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonServer_choice3 )
g_pButtonServer_choice3:SetName( "Server_choice3" )

g_pButtonServer_choice3:SetDropHeight( 15 )

g_pButtonServer_choice3:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonServer_choice3:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonServer_choice3:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonServer_choice3:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonServer_choice3:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonServer_choice3:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )

g_pButtonServer_choice3:SetTextPos( 145, 120+29*2 )
g_pButtonServer_choice3:SetTextSize( 55, 21 )

g_pButtonServer_choice3:SetTextStringOffsetPos( 3, 4 )
g_pButtonServer_choice3:SetButtonPos( 200, 120+29*2 )
g_pButtonServer_choice3:SetButtonSize( 15, 15 )

g_pButtonServer_choice3:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- -------4 선택지 부분
-- -----서버 고르기   버튼
g_pButtonServer_choice4 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonServer_choice4 )
g_pButtonServer_choice4:SetName( "Server_choice4" )

g_pButtonServer_choice4:SetDropHeight( 15 )

g_pButtonServer_choice4:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonServer_choice4:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonServer_choice4:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonServer_choice4:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonServer_choice4:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonServer_choice4:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )

g_pButtonServer_choice4:SetTextPos( 145, 120+29*3 )
g_pButtonServer_choice4:SetTextSize( 55, 21 )

g_pButtonServer_choice4:SetTextStringOffsetPos( 3, 4 )
g_pButtonServer_choice4:SetButtonPos( 200, 120+29*3 )
g_pButtonServer_choice4:SetButtonSize( 15, 15 )

g_pButtonServer_choice4:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- -------5 선택지 부분
-- -----서버 고르기   버튼
g_pButtonServer_choice5 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonServer_choice5 )
g_pButtonServer_choice5:SetName( "Server_choice5" )

g_pButtonServer_choice5:SetDropHeight( 15 )

g_pButtonServer_choice5:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonServer_choice5:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonServer_choice5:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonServer_choice5:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonServer_choice5:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonServer_choice5:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )

g_pButtonServer_choice5:SetTextPos( 145, 120+29*4 )
g_pButtonServer_choice5:SetTextSize( 55, 21 )

g_pButtonServer_choice5:SetTextStringOffsetPos( 3, 4 )
g_pButtonServer_choice5:SetButtonPos( 200, 120+29*4 )
g_pButtonServer_choice5:SetButtonSize( 15, 15 )

g_pButtonServer_choice5:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- -------6 선택지 부분
-- -----서버 고르기   버튼
g_pButtonServer_choice6 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonServer_choice6 )
g_pButtonServer_choice6:SetName( "Server_choice6" )

g_pButtonServer_choice6:SetDropHeight( 15 )

g_pButtonServer_choice6:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonServer_choice6:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonServer_choice6:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonServer_choice6:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonServer_choice6:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonServer_choice6:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )

g_pButtonServer_choice6:SetTextPos( 145, 120+29*5 )
g_pButtonServer_choice6:SetTextSize( 55, 21 )

g_pButtonServer_choice6:SetTextStringOffsetPos( 3, 4 )
g_pButtonServer_choice6:SetButtonPos( 200, 120+29*5 )
g_pButtonServer_choice6:SetButtonSize( 15, 15 )

g_pButtonServer_choice6:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
-- -------7 선택지 부분
-- -----서버 고르기   버튼
g_pButtonServer_choice7 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonServer_choice7 )
g_pButtonServer_choice7:SetName( "Server_choice7" )

g_pButtonServer_choice7:SetDropHeight( 15 )

g_pButtonServer_choice7:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonServer_choice7:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonServer_choice7:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonServer_choice7:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonServer_choice7:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonServer_choice7:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )

g_pButtonServer_choice7:SetTextPos( 145, 120+29*6 )
g_pButtonServer_choice7:SetTextSize( 55, 21 )

g_pButtonServer_choice7:SetTextStringOffsetPos( 3, 4 )
g_pButtonServer_choice7:SetButtonPos( 200, 120+29*6 )
g_pButtonServer_choice7:SetButtonSize( 15, 15 )

g_pButtonServer_choice7:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- -------8 선택지 부분
-- -----서버 고르기   버튼
g_pButtonServer_choice8 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonServer_choice8 )
g_pButtonServer_choice8:SetName( "Server_choice8" )

g_pButtonServer_choice8:SetDropHeight( 15 )

g_pButtonServer_choice8:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonServer_choice8:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonServer_choice8:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonServer_choice8:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonServer_choice8:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonServer_choice8:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )

g_pButtonServer_choice8:SetTextPos( 145, 120+29*7 )
g_pButtonServer_choice8:SetTextSize( 55, 21 )

g_pButtonServer_choice8:SetTextStringOffsetPos( 3, 4 )
g_pButtonServer_choice8:SetButtonPos( 200, 120+29*7 )
g_pButtonServer_choice8:SetButtonSize( 15, 15 )

g_pButtonServer_choice8:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- -------9 선택지 부분
-- -----서버 고르기   버튼
g_pButtonServer_choice9 = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pButtonServer_choice9 )
g_pButtonServer_choice9:SetName( "Server_choice9" )

g_pButtonServer_choice9:SetDropHeight( 15 )

g_pButtonServer_choice9:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pButtonServer_choice9:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pButtonServer_choice9:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )
g_pButtonServer_choice9:SetButtonTex( "DLG_Common_New_Texture53.tga", "ARROW_DOWN1" )
g_pButtonServer_choice9:SetButtonMouseOverTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )
g_pButtonServer_choice9:SetButtonMouseDownTex( "DLG_Common_New_Texture53.tga", "combo_DOWN_OVER1" )

g_pButtonServer_choice9:SetTextPos( 145, 120+29*8 )
g_pButtonServer_choice9:SetTextSize( 55, 21 )

g_pButtonServer_choice9:SetTextStringOffsetPos( 3, 4 )
g_pButtonServer_choice9:SetButtonPos( 200, 120+29*8 )
g_pButtonServer_choice9:SetButtonSize( 15, 15 )

g_pButtonServer_choice9:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

---------------------------------------------------------------------------------------------
--------------------------------------------------------1-9플레이어 내용-----------------

--------------------------1번 플레이어
----닉네임 부분---
g_p1stNickname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_p1stNickname )
g_p1stNickname:SetName( "1st_Nickname" )
g_p1stNickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(35,120)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125,140)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_p1stNickname:SetFont( XF_DODUM_15_NORMAL )
g_p1stNickname:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p1stNickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p1stNickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_p1stNickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_p1stNickname:SetLengthLimit(12)
g_p1stNickname:RequestFocus()

--------------------------2번 플레이어
----닉네임 부분---
g_p2stNickname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_p2stNickname )
g_p2stNickname:SetName( "2st_Nickname" )
g_p2stNickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(35,120+29*1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125,140+29*1)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_p2stNickname:SetFont( XF_DODUM_15_NORMAL )
g_p2stNickname:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p2stNickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p2stNickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_p2stNickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_p2stNickname:SetLengthLimit(12)

-- --------------------------3번 플레이어
-- ----닉네임 부분---
g_p3stNickname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_p3stNickname )
g_p3stNickname:SetName( "3st_Nickname" )
g_p3stNickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(35,120+29*2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125,140+29*2)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_p3stNickname:SetFont( XF_DODUM_15_NORMAL )
g_p3stNickname:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p3stNickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p3stNickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_p3stNickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_p3stNickname:SetLengthLimit(12)

-- --------------------------4번 플레이어
-- ----닉네임 부분---
g_p4stNickname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_p4stNickname )
g_p4stNickname:SetName( "4st_Nickname" )
g_p4stNickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(35,120+29*3)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125,140+29*3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_p4stNickname:SetFont( XF_DODUM_15_NORMAL )
g_p4stNickname:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p4stNickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p4stNickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_p4stNickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_p4stNickname:SetLengthLimit(12)

-- --------------------------5번 플레이어
-- ----닉네임 부분---
g_p5stNickname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_p5stNickname )
g_p5stNickname:SetName( "5st_Nickname" )
g_p5stNickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(35,120+29*4)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125,140+29*4)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_p5stNickname:SetFont( XF_DODUM_15_NORMAL )
g_p5stNickname:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p5stNickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p5stNickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_p5stNickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_p5stNickname:SetLengthLimit(12)

-- --------------------------6번 플레이어
-- ----닉네임 부분---
g_p6stNickname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_p6stNickname )
g_p6stNickname:SetName( "6st_Nickname" )
g_p6stNickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(35,120+29*5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125,140+29*5)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_p6stNickname:SetFont( XF_DODUM_15_NORMAL )
g_p6stNickname:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p6stNickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p6stNickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_p6stNickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_p6stNickname:SetLengthLimit(12)

-- -------------------------7번 플레이어
-- ----닉네임 부분---
g_p7stNickname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_p7stNickname )
g_p7stNickname:SetName( "7st_Nickname" )
g_p7stNickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(35,120+29*6)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125,140+29*6)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_p7stNickname:SetFont( XF_DODUM_15_NORMAL )
g_p7stNickname:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p7stNickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p7stNickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_p7stNickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_p7stNickname:SetLengthLimit(12)

-- --------------------------8번 플레이어
-- ----닉네임 부분---
g_p8stNickname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_p8stNickname )
g_p8stNickname:SetName( "8st_Nickname" )
g_p8stNickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(35,120+29*7)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125,140+29*7)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_p8stNickname:SetFont( XF_DODUM_15_NORMAL )
g_p8stNickname:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p8stNickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p8stNickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_p8stNickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_p8stNickname:SetLengthLimit(12)

-- --------------------------9번 플레이어
-- ----닉네임 부분---
g_p9stNickname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_p9stNickname )
g_p9stNickname:SetName( "9st_Nickname" )
g_p9stNickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(35,120+29*8)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125,140+29*8)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_p9stNickname:SetFont( XF_DODUM_15_NORMAL )
g_p9stNickname:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p9stNickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_p9stNickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_p9stNickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_p9stNickname:SetLengthLimit(12)




-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

-----EXIT  버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(245,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245-4,15-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(245-3,15-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX:SetCustomMsgMouseUp( X2_HERO_MATCH_UI_MSG["XHMUM_CLOSE_ADD_USER"] )



-----공지 유저 추가하기   버튼
g_pButtonObserverAdd = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonObserverAdd )
g_pButtonObserverAdd:SetName( "Observer_Add" )
g_pButtonObserverAdd:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_Add" )
g_pButtonObserverAdd:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_Add_Over" )
g_pButtonObserverAdd:SetDownTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_Add_Over" )

g_pButtonObserverAdd:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(108,406)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonObserverAdd:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(108,406)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonObserverAdd:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(108+1,406+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonObserverAdd:SetCustomMsgMouseUp( X2_HERO_MATCH_UI_MSG["XHMUM_ADD_USER_OK"] )




