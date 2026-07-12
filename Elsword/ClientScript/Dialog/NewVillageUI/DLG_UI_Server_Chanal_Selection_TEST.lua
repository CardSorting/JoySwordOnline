-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

---------서버선택
g_pStaticserver = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticserver )
g_pStaticserver:SetName( "server" )

--------- TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticserver:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "server_selec" )

g_pPicture_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(3,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------- 엘소드 로고
g_pPicture_Logo = g_pUIDialog:CreatePicture()
g_pStaticserver:AddPicture( g_pPicture_Logo )

g_pPicture_Logo:SetTex2( "DLG_El_Mark_TEST.tga")

g_pPicture_Logo:SetPoint
{
    --USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(258,65)",
	--"RIGHT_BOTTOM	= D3DXVECTOR2(256,356)",	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


OFFSET_X = 329
OFFSET_Y = 272 + 100




------------- 여기서부터 가이아 서버 군 ----------------------------------------------------------------------------
------------------------------BG1
--[[
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticserver:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture05.TGA", "server_bg_top" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(20,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticserver:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture05.TGA", "server_bg_middle" )

g_pPicture_bg1:SetPoint
{
     ADD_SIZE_Y = 101,
	"LEFT_TOP		= D3DXVECTOR2(20,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticserver:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture05.TGA", "server_bg_bottom" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(20,188)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

----------------------    서버 선택   ---------------------


g_pButton_sever_select02 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_sever_select02 )
g_pButton_sever_select02:SetName( "sever_select_02" )
g_pButton_sever_select02:SetNormalTex( "DLG_UI_BUTTON09.tga", "server_btn_normal" )

g_pButton_sever_select02:SetOverTex( "DLG_UI_BUTTON09.tga", "server_btn_over" )

g_pButton_sever_select02:SetDownTex( "DLG_UI_BUTTON09.tga", "server_btn_over" )

g_pButton_sever_select02:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(38+OFFSET_X, 78+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sever_select02:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(38+1+OFFSET_X,78+1+OFFSET_Y)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sever_select02:SetDownPoint
{
     
 	"LEFT_TOP		= D3DXVECTOR2(38+2+OFFSET_X,78+2+OFFSET_Y)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}

g_pButton_sever_select02:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SELECT_SERVER_GROUP"] )
g_pButton_sever_select02:AddDummyInt(1)			--- 첫번째 서버군 index
g_pButton_sever_select02:AddDummyInt(16)		--- 첫번째 서버군의 채널 갯수 ---




-------------------서버명


g_pStatic_server = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_server )
g_pStatic_server:SetName( "server_02" )

g_pStatic_server:AddString
{
	MSG 			= STR_ID_4835,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(103+2+OFFSET_X, 97+2+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_server:AddString
{
	MSG 			= STR_ID_4835,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(103+OFFSET_X, 97+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic_server:AddString
{
	MSG 			= STR_ID_1367,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(165+OFFSET_X, 103+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStaticserver_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticserver_name )
g_pStaticserver_name:SetName( "server_name_02" )


g_pPicture_Gaia = g_pUIDialog:CreatePicture()
g_pStaticserver_name:AddPicture( g_pPicture_Gaia )

g_pPicture_Gaia:SetTex( "DLG_UI_Common_Texture05.TGA", "Gaia" )

g_pPicture_Gaia:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(45+OFFSET_X, 87+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_New = g_pUIDialog:CreatePicture()
g_pStaticserver_name:AddPicture( g_pPicture_New )

g_pPicture_New:SetTex( "DLG_UI_Common_Texture02.TGA", "QUEST_LIST_NEW" )

g_pPicture_New:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(243+OFFSET_X, 92+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------------- 여기까지 가이아 서버 군 -----------------------------------------------------







----------------------------- 여기서부터 솔레스 서버군 -----------------------------------------------------


----------------------    서버 선택   ---------------------

g_pButton_sever_select01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_sever_select01 )
g_pButton_sever_select01:SetName( "sever_select_01" )
g_pButton_sever_select01:SetNormalTex( "DLG_UI_BUTTON09.tga", "server_btn_normal" )

g_pButton_sever_select01:SetOverTex( "DLG_UI_BUTTON09.tga", "server_btn_over" )

g_pButton_sever_select01:SetDownTex( "DLG_UI_BUTTON09.tga", "server_btn_over" )

g_pButton_sever_select01:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(38+OFFSET_X, 78+57+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sever_select01:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(38+1+OFFSET_X, 78+1+57+OFFSET_Y)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sever_select01:SetDownPoint
{
     
 	"LEFT_TOP		= D3DXVECTOR2(38+2+OFFSET_X, 78+2+57+OFFSET_Y)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sever_select01:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SELECT_SERVER_GROUP"] )
g_pButton_sever_select01:AddDummyInt(0)			--- 첫번째 서버군 index
g_pButton_sever_select01:AddDummyInt(16)			--- 첫번째 서버군의 채널 갯수 ---


-------------------서버명

g_pStatic_server = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_server )
g_pStatic_server:SetName( "server_01" )

g_pStatic_server:AddString
{
	MSG 			= STR_ID_4836,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(103+2+OFFSET_X, 97+2+56+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_server:AddString
{
	MSG 			= STR_ID_4836,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(103+OFFSET_X, 97+56+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic_server:AddString
{
	MSG 			= STR_ID_1367,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(165+OFFSET_X, 103+56+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




g_pStaticserver_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticserver_name )
g_pStaticserver_name:SetName( "server_name_01" )




g_pPicture_Soles = g_pUIDialog:CreatePicture()
g_pStaticserver_name:AddPicture( g_pPicture_Soles )

g_pPicture_Soles:SetTex( "DLG_UI_Common_Texture05.TGA", "Soles" )

g_pPicture_Soles:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(45+OFFSET_X, 87+57+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------------------- 여기까지 솔레스 서버군 -----------------------------------------------------

----------------------------- 여기서 부터 채널 타이틀 및 뒷 회색 배경 -------------------------------------------------------
------------------------          채널리스트



--[[
-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG1_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0+OFFSET_X, 0+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG1_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 344 ,
	"LEFT_TOP		= D3DXVECTOR2(0+OFFSET_X,10+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_BG1)

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG1_Bottom" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0+OFFSET_X,355+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]

--[[
g_pStaticchanal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticchanal )
g_pStaticchanal:SetName( "chanal" )


------------------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG2_TOP" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13+OFFSET_X,74+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG2_middle" )

g_pPicture_bg2:SetPoint
{
     ADD_SIZE_Y = 288  ,
	"LEFT_TOP		= D3DXVECTOR2(13+OFFSET_X,83+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG2_Bottom" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13+OFFSET_X,372+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

--[[


------------------------BG3


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "GUILD_BG_TOP" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14+OFFSET_X,44+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "GUILD_BG_middle" )

g_pPicture_bg3:SetPoint
{
     ADD_SIZE_Y = 278  ,
	"LEFT_TOP		= D3DXVECTOR2(14+OFFSET_X,58+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "GUILD_BG_BOTTOM" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14+OFFSET_X,338+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--]]














--[[
------------------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture12.TGA", "chanal_bg1_left" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(323,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture12.TGA", "chanal_bg1_middle" )

g_pPicture_bg1:SetPoint
{
     ADD_SIZE_X = 627,
	"LEFT_TOP		= D3DXVECTOR2(352,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture12.TGA", "chanal_bg1_right" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(981,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

--[[
--------- TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "chanal" )

g_pPicture_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(341,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticchanal:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "list" )

g_pPicture_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(387,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 ----------------------------- 여기서 까지 채널 타이틀 및 뒷 회색 배경 -------------------------------------------------------
 --]]
 
---------------ESC
g_pStaticESC 	= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticESC )
g_pStaticESC:SetName( "g_pStaticESC" )

g_pPicture_esc 	= g_pUIDialog:CreatePicture()
g_pStaticESC:AddPicture( g_pPicture_esc )

g_pPicture_esc:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "esc_icon" )

g_pPicture_esc:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(887,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButtonesc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonesc )
g_pButtonesc:SetName( "Inventory_arrow" )
g_pButtonesc:SetNormalTex( "DLG_UI_BUTTON07.tga", "esc_normal" )

g_pButtonesc:SetOverTex( "DLG_UI_BUTTON07.tga", "esc_over" )

g_pButtonesc:SetDownTex( "DLG_UI_BUTTON07.tga", "esc_over" )

g_pButtonesc:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(908,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonesc:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(906,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonesc:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(906+1,11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonesc:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_SELECT_EXIT"] )


-- 클라이언트 버전 표시
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Client_Version" )

g_pStatic:AddString
{
	MSG 			= STR_ID_1,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2( 1000, 740 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	




--IncludeLua( "DLG_UI_Ad.lua" )
--------------------------------  서버 및  각 채널 인원 수 --------------------------------------------




										g_pStaticUser_Num = g_pUIDialog:CreateStatic()
										g_pUIDialog:AddControl( g_pStaticUser_Num )
										g_pStaticUser_Num:SetName( "server_user_num" )

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(170,120)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}



										g_pStaticUser_Num = g_pUIDialog:CreateStatic()
										g_pUIDialog:AddControl( g_pStaticUser_Num )
										g_pStaticUser_Num:SetName( "channel_num" )

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(550,137)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(880,137)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(550,137+48)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(880,137+48)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(550,137+96)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(880,137+96)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(550,137+144)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(880,137+144)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(550,137+192)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(880,137+192)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(550,137+240)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(880,137+240)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(550,137+288)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}

										g_pStaticUser_Num:AddString
										{
											-- MSG 			= "",
											FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
											FONT_STYLE      = FONT_STYLE["FS_SHELL"],
											SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
											"POS 			= D3DXVECTOR2(880,137+288)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
											"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
										}
--]]

----------알림말
--[[
g_pStatic_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Notice )
g_pStatic_Notice:SetName( "server" )


g_pPicture_Notice= g_pUIDialog:CreatePicture()
g_pStatic_Notice:AddPicture( g_pPicture_Notice)

g_pPicture_Notice:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_Notice:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(455,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStatic_Notice:AddString
{
	MSG 			= STR_ID_2609,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(475,86)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]
