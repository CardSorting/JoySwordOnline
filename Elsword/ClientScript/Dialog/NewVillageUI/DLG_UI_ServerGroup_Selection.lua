-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
-- #ifdef SERVER_GROUP_UI_ADVANCED

local format_D3DXVECTOR2 = "D3DXVECTOR2(%f,%f)"
local format_button_name = "server_button_%d"
local format_button_caption = "server_name_%d"

local MAX_SLOT_SIZE = 5
local button_X = 18
local button_start_Y = 19
local button_width_normal = 282
local button_width_over = 278
local button_height_normal = 61
local button_height_over = 57
local button_space = -1


------------------------------BG
g_pStaticServerGroupBG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticServerGroupBG )
g_pStaticServerGroupBG:SetName( "BG" )

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticServerGroupBG:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture05.TGA", "server_bg_top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticServerGroupBG:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture05.TGA", "server_bg_middle" )

g_pPicture_bg:SetPoint
{
	ADD_SIZE_Y 		= button_height_normal*2,
	"LEFT_TOP		= D3DXVECTOR2(0,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticServerGroupBG:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture05.TGA", "server_bg_bottom" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------    서버 선택   ---------------------
for i = 0, MAX_SLOT_SIZE-1 do

	local button_Y = button_start_Y + ( button_height_normal + button_space ) * i
	
	-------------------서버 버튼
	local g_pButton_sever_select = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_sever_select )
	g_pButton_sever_select:SetName( string.format( format_button_name, i ) )
	g_pButton_sever_select:SetShow( false )

	g_pButton_sever_select:SetNormalTex( "DLG_UI_BUTTON09.tga", "server_btn_normal" )
	g_pButton_sever_select:SetOverTex( "DLG_UI_BUTTON09.tga", "server_btn_over" )
	g_pButton_sever_select:SetDownTex( "DLG_UI_BUTTON09.tga", "server_btn_over" )

	g_pButton_sever_select:SetNormalPoint
	{
		USE_TEXTURE_SIZE	= FALSE,
		--"LEFT_TOP		= D3DXVECTOR2(19-1,18+2)",
		string.format( "LEFT_TOP = "..format_D3DXVECTOR2, button_X, button_Y ),
		--"RIGHT_BOTTOM   = D3DXVECTOR2(19-1+281,18+2+59)",
		string.format( "RIGHT_BOTTOM = "..format_D3DXVECTOR2, button_X+button_width_normal, button_Y+button_height_normal ),
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_sever_select:SetOverPoint
	{
		 ADD_SIZE_X = 2,
		 ADD_SIZE_Y = 2,

		USE_TEXTURE_SIZE	= FALSE,	 
		--"LEFT_TOP		= D3DXVECTOR2(19,18)",
		string.format( "LEFT_TOP = "..format_D3DXVECTOR2, button_X+2, button_Y+2 ),
		--"RIGHT_BOTTOM   = D3DXVECTOR2(19+281,18+59)",
		string.format( "RIGHT_BOTTOM = "..format_D3DXVECTOR2, button_X+button_width_over+2, button_Y+button_height_over+2 ),
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_sever_select:SetDownPoint
	{
		USE_TEXTURE_SIZE	= FALSE,     
		--"LEFT_TOP		= D3DXVECTOR2(19,18)",
		string.format( "LEFT_TOP = "..format_D3DXVECTOR2, button_X+2+1, button_Y+2+1 ),
		--"RIGHT_BOTTOM   = D3DXVECTOR2(19+281,18+59)",
		string.format( "RIGHT_BOTTOM = "..format_D3DXVECTOR2, button_X+button_width_over+2-1, button_Y+button_height_over+2-1 ),
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pButton_sever_select:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SELECT_SERVER_GROUP"] )


	-------------------서버명
	local g_pStaticServerGroupButton = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticServerGroupButton )
	g_pStaticServerGroupButton:SetName( string.format( format_button_caption, i ) )
	g_pStaticServerGroupButton:SetShow( false )
	
	-- 이름(그림자)
	g_pStaticServerGroupButton:AddString
	{
		--MSG 			= STR_ID_4835,
		FONT_INDEX		= XUF_DODUM_20_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		--"POS 			= D3DXVECTOR2(80+2,37+2)",
		string.format( "POS = "..format_D3DXVECTOR2, button_X+65+2, button_Y+18+2 ),
		"COLOR			= D3DXCOLOR(0.4,0.4,0.4,0.7)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	-- 이름(메인)
	g_pStaticServerGroupButton:AddString
	{
		--MSG 			= STR_ID_4835,
		FONT_INDEX		= XUF_DODUM_20_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		--"POS 			= D3DXVECTOR2(80,37)",
		string.format( "POS = "..format_D3DXVECTOR2, button_X+65, button_Y+18 ),
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	-- "서버"
	g_pStaticServerGroupButton:AddString
	{
		MSG 			= STR_ID_1367,
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		--"POS 			= D3DXVECTOR2(80+100,37+2+4)",
		string.format( "POS = "..format_D3DXVECTOR2, button_X+65, button_Y+18+4 ),
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	local g_pPicture_Soles = g_pUIDialog:CreatePicture()
	g_pStaticServerGroupButton:AddPicture( g_pPicture_Soles )

	g_pPicture_Soles:SetTex( "DLG_UI_Common_Texture05.TGA", "Soles" )

	g_pPicture_Soles:SetPoint
	{
		--"LEFT_TOP		= D3DXVECTOR2(25,29)",
		string.format( "LEFT_TOP = "..format_D3DXVECTOR2, button_X+8, button_Y+10 ),
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	

	--[[
	g_pPicture_New = g_pUIDialog:CreatePicture()
	g_pStaticserver_name:AddPicture( g_pPicture_New )

	g_pPicture_New:SetTex( "DLG_UI_Common_Texture02.TGA", "QUEST_LIST_NEW" )

	g_pPicture_New:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(243+26,92)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	--]]

end

-- #endif SERVER_GROUP_UI_ADVANCED