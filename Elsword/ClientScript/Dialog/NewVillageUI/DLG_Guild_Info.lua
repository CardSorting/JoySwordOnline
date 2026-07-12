-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Guild_Info" )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetPos( 310, 245 ) 
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( GUILD_UI_MESSAGE["GUM_GUILD_INFO_CLOSE"] )


--------------------------------------- 바탕 화면 -----------------------------------------------------------
g_pStaticGuild_BackGround = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuild_BackGround )
g_pStaticGuild_BackGround:SetName( "g_pStaticGuild_BackGround" )

-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticGuild_BackGround:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG1_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticGuild_BackGround:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG1_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 344 ,
	"LEFT_TOP		= D3DXVECTOR2(0,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticGuild_BackGround:AddPicture( g_pPicture_BG1)

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG1_Bottom" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticGuild_BackGround:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG2_TOP" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticGuild_BackGround:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG2_middle" )

g_pPicture_bg2:SetPoint
{
     ADD_SIZE_Y = 288  ,
	"LEFT_TOP		= D3DXVECTOR2(13,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticGuild_BackGround:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG2_Bottom" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,342)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





------------------------BG3


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticGuild_BackGround:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "GUILD_BG_TOP" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticGuild_BackGround:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "GUILD_BG_middle" )

g_pPicture_bg3:SetPoint
{
     ADD_SIZE_Y = 278  ,
	"LEFT_TOP		= D3DXVECTOR2(14,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticGuild_BackGround:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "GUILD_BG_BOTTOM" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,338)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------TITLE


g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticGuild_BackGround:AddPicture( g_pPicture_title)

g_pPicture_title:SetTex( "DLG_UI_Title02_B.tga", "GUILD_INFO" )

g_pPicture_title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------------------------------	길드 정보 -----------------------------------------------------------

g_pStaticGuild_Info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuild_Info )
g_pStaticGuild_Info:SetName( "g_pStaticGuild_Info" )


------------- BAR

g_pPicture_line0 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_line0 )

g_pPicture_line0:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line0:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,113-26-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,113-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,139-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,165-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
--]]


g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,190-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}




--[[

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,217-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,243-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
--]]

g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,243+27-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


----- BOX1

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(96 + 5,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 110,
	"LEFT_TOP		= D3DXVECTOR2(96+5 + 5,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(217,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----- BOX2

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(278,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 37,
	"LEFT_TOP		= D3DXVECTOR2(278+5,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(321,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----- BOX3

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(96 + 5,83+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 110,
	"LEFT_TOP		= D3DXVECTOR2(96+5 + 5,83+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(217,83+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----- BOX4

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(278,83+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 37,
	"LEFT_TOP		= D3DXVECTOR2(278+5,83+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(321,83+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----- BOX5

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,83+26+26+26-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 291,
	"LEFT_TOP		= D3DXVECTOR2(24+5,83+26+26+26-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(321,83+26+26+26-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------길드 명예 레벨 바 테두리

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_blank )

g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_left" )

g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,83+26+26+26+26+26-4-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_blank )

g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_middle" )

g_pPicture_blank:SetPoint
{
     ADD_SIZE_X = 290 ,
	"LEFT_TOP		= D3DXVECTOR2(29,83+26+26+26+26+26-4-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_blank)

g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_right" )

g_pPicture_blank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(320,83+26+26+26+26+26-4-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------명예 포인트 바 테두리

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_blank )

g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_left" )

g_pPicture_blank:SetPoint
{
     ADD_SIZE_Y = -9,
	"LEFT_TOP		= D3DXVECTOR2(24,83+26+26+26+26+26-4+30+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_blank )

g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_middle" )

g_pPicture_blank:SetPoint
{
     ADD_SIZE_Y = -9,
     ADD_SIZE_X = 290 ,
	"LEFT_TOP		= D3DXVECTOR2(29,83+26+26+26+26+26-4+30+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticGuild_Info:AddPicture( g_pPicture_blank)

g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_right" )

g_pPicture_blank:SetPoint
{
     ADD_SIZE_Y = -9,
	"LEFT_TOP		= D3DXVECTOR2(320,83+26+26+26+26+26-4+30+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------------------------------- 포인트 바 -----------------------------------

g_pStaticGuild_EXP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuild_EXP )
g_pStaticGuild_EXP:SetName( "g_pStaticGuild_EXP" )

-- 레벨
g_pPicture_blank_line = g_pUIDialog:CreatePicture()
g_pStaticGuild_EXP:AddPicture( g_pPicture_blank_line)

g_pPicture_blank_line:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_line" )

g_pPicture_blank_line:SetPoint
{
     ADD_SIZE_X = 296,
	"LEFT_TOP		= D3DXVECTOR2(26,83+2+26+26+26+26+26-4-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 마우스 업 용 버튼
g_pButtonLevelDesc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLevelDesc )
g_pButtonLevelDesc:SetName( "ButtonLevelDesc" )
g_pButtonLevelDesc:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonLevelDesc:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonLevelDesc:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonLevelDesc:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(26,83+2+26+26+26+26+26-4-6)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(26+296,83+2+26+26+26+26+26-4-6+18)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonLevelDesc:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(26,83+2+26+26+26+26+26-4-6)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(26+296,83+2+26+26+26+26+26-4-6+18)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonLevelDesc:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(26,83+2+26+26+26+26+26-4-6)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(26+296,83+2+26+26+26+26+26-4-6+18)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonLevelDesc:SetGuideDesc( STR_ID_2573 )


-- 경험치
g_pPicture_blank_line = g_pUIDialog:CreatePicture()
g_pStaticGuild_EXP:AddPicture( g_pPicture_blank_line )

g_pPicture_blank_line:SetTex( "DLG_UI_Common_Texture08.TGA", "Green_Bar" )

g_pPicture_blank_line:SetPoint
{
     ADD_SIZE_X = 296,
	"LEFT_TOP		= D3DXVECTOR2(26,83+2+26+26+26+26+26-4+30+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 마우스 업 용 버튼
g_pButtonHonorDesc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHonorDesc )
g_pButtonHonorDesc:SetName( "ButtonHonorDesc" )
g_pButtonHonorDesc:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonHonorDesc:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonHonorDesc:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonHonorDesc:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(26,83+2+26+26+26+26+26-4+30+7)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(26+296,83+2+26+26+26+26+26-4+30+7+9)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonHonorDesc:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(26,83+2+26+26+26+26+26-4+30+7)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(26+296,83+2+26+26+26+26+26-4+30+7+9)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonHonorDesc:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(26,83+2+26+26+26+26+26-4+30+7)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(26+296,83+2+26+26+26+26+26-4+30+7+9)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonHonorDesc:SetGuideDesc( STR_ID_4732 )


-------------------------------- 세부 타이틀  -------------------------------- 

-------길드마스터
g_pStatic_Title1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title1 )
g_pStatic_Title1:SetName( "Title1" )
g_pStatic_Title1:SetShowEnable( true, false )


g_pStatic_Title1:AddString
{
	MSG 			= STR_ID_4511,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(24 - 2,87)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}


-------가입인원
g_pStatic_Title2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title2 )
g_pStatic_Title2:SetName( "Title2" )


g_pStatic_Title2:AddString
{
	MSG 			= STR_ID_4524,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(231-10,87)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}


-------길드창단일
g_pStatic_Title3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title3 )
g_pStatic_Title3:SetName( "Title3" )


g_pStatic_Title3:AddString
{
	MSG 			= STR_ID_4525,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(24,87+26)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}


-------길드메세지
g_pStatic_Title4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title4 )
g_pStatic_Title4:SetName( "Title4" )


g_pStatic_Title4:AddString
{
	MSG 			= STR_ID_4526,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(24,87+26+26)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}


-------길드명예 레벨
g_pStatic_Title5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title5 )
g_pStatic_Title5:SetName( "Title5" )


g_pStatic_Title5:AddString
{
	MSG 			= STR_ID_4527,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(24,87+26+26+26+26-5)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}



-------명예 포인트
g_pStatic_Title6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title6 )
g_pStatic_Title6:SetName( "Title6" )


g_pStatic_Title6:AddString
{

	MSG 			= STR_ID_4636,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(24,87+26+26+26+26-5+45)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}




-------수용인원
g_pStatic_Title2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title2 )
g_pStatic_Title2:SetName( "Title7" )


g_pStatic_Title2:AddString
{
	MSG 			= STR_ID_4617,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(231-10,87+26)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}





-------------------------------------------  내용 ------------------------------------------------


-------마스터 닉네임
g_pStatic_Master_Nick = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Master_Nick )
g_pStatic_Master_Nick:SetName( "Master_Nick" )


g_pStatic_Master_Nick:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(100 + 5,87)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}



-------가입인원 내용
g_pStatic_Count = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Count )
g_pStatic_Count:SetName( "Count" )


g_pStatic_Count:AddString
{
	MSG 			= "100명",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(302,87)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}

-------수용인원 내용
g_pStatic_Count = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Count )
g_pStatic_Count:SetName( "MaxCount" )


g_pStatic_Count:AddString
{
	MSG 			= "100명",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(302,87+26)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}

-------마우스 업용 컨트롤
g_pButtonSysopDesc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSysopDesc )
g_pButtonSysopDesc:SetName( "SysopDesc" )
g_pButtonSysopDesc:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonSysopDesc:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonSysopDesc:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonSysopDesc:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(278,83)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(321+5,83+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonSysopDesc:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(278,83)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(321+5,83+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonSysopDesc:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(278,83)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(321+5,83+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonSysopDesc:SetGuideDesc( STR_ID_2573 )


-------길드창단일 내용
g_pStatic_Date = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Date )
g_pStatic_Date:SetName( "Date" )


g_pStatic_Date:AddString
{
	MSG 			= "2009년09월25일",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(100 + 5,87+26)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}



-------길드레벨
g_pStatic_LV = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_LV )
g_pStatic_LV:SetName( "LV" )


g_pStatic_LV:AddString
{
	MSG 			= "LV.100",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,214-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


------- 경험치 %
g_pStatic_EXP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EXP )
g_pStatic_EXP:SetName( "EXP" )


g_pStatic_EXP:AddString
{
	MSG 			= "100%",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
 --   FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(307,214-6)",
	"COLOR			= D3DXCOLOR(0.0,0.3,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------- 경험치2 %
g_pStatic_EXP2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EXP2 )
g_pStatic_EXP2:SetName( "EXP2" )


g_pStatic_EXP2:AddString
{
	MSG 			= "100%",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
 --   FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(307,214-6+38)",
	"COLOR			= D3DXCOLOR(0.0,0.3,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------메시지 입력
g_pStatic_Message = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Message )
g_pStatic_Message:SetName( "GuildMessage" )


g_pStatic_Message:AddString
{
	MSG 				= "",
	FONT_INDEX			= XUF_DODUM_11_NORMAL,
 --   FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG			= DRAW_TEXT["DT_RIGHT"],
	"POS 				= D3DXVECTOR2(30+100+176,162)",
	"COLOR				= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--- 마우스 업 용 버튼
g_pButtonMessageDesc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMessageDesc )
g_pButtonMessageDesc:SetName( "ButtonMessageDesc" )
g_pButtonMessageDesc:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMessageDesc:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMessageDesc:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMessageDesc:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(24+5, 83+26+26+26-4+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(24+5+291, 83+26+26+26-4+1+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMessageDesc:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(24+5, 83+26+26+26-4+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(24+5+291, 83+26+26+26-4+1+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMessageDesc:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(24+5, 83+26+26+26-4+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(24+5+291, 83+26+26+26-4+1+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonMessageDesc:SetGuideDesc( STR_ID_2573 )



------------------                     길드정보                     ---------------


g_pRadioButtongraphic = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtongraphic )

g_pRadioButtongraphic:SetFixOverByCheck( true )
g_pRadioButtongraphic:SetShowOffBGByCheck( true )

g_pRadioButtongraphic:SetName( "Radio_Guild_Info" )

g_pRadioButtongraphic:SetNormalTex( "DLG_UI_Button14.tga", "GUILD_INFO_NORMAL" )


g_pRadioButtongraphic:SetOverTex( "DLG_UI_Button14.tga", "GUILD_INFO_OVER" )


g_pRadioButtongraphic:SetCheckedTex( "DLG_UI_Button14.tga", "GUILD_INFO_OVER" )


g_pRadioButtongraphic:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtongraphic:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26-1,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtongraphic:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(24,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(83+20,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtongraphic:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26-1,55)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtongraphic:SetGroupID( 1 )
g_pRadioButtongraphic:SetChecked( true )
g_pRadioButtongraphic:SetCustomMsgChecked( GUILD_UI_MESSAGE["GUM_GUILD_INFO_TAB"] )






-----------------                     길드원정보                ----------------------


g_pRadioButtonsound = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonsound )

g_pRadioButtonsound:SetFixOverByCheck( true )
g_pRadioButtonsound:SetShowOffBGByCheck( true )

g_pRadioButtonsound:SetName( "Radio_Guild_Member_Info" )

g_pRadioButtonsound:SetNormalTex( "DLG_UI_Button14.tga", "GUILD_MEMBER_NORMAL" )


g_pRadioButtonsound:SetOverTex( "DLG_UI_Button14.tga", "GUILD_MEMBER_OVER" )


g_pRadioButtonsound:SetCheckedTex( "DLG_UI_Button14.tga", "GUILD_MEMBER_OVER" )


g_pRadioButtonsound:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90 + 20,55-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonsound:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90 + 20 + 2,55-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonsound:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(90 + 20+2,55-1+1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(90+64 + 20+ 60,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonsound:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(90+2+ 20,55-1+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonsound:SetGroupID( 1 )
g_pRadioButtonsound:SetCustomMsgChecked( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_TAB"] )


-----------------                     길드스킬정보                ----------------------


g_pRadioButtonGuild_Skill = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonGuild_Skill )

g_pRadioButtonGuild_Skill:SetFixOverByCheck( true )
g_pRadioButtonGuild_Skill:SetShowOffBGByCheck( true )

g_pRadioButtonGuild_Skill:SetName( "RadioButtonGuild_Skill" )

g_pRadioButtonGuild_Skill:SetNormalTex( "DLG_UI_Button14.tga", "GUILD_SKILL_NORMAL" )


g_pRadioButtonGuild_Skill:SetOverTex( "DLG_UI_Button14.tga", "GUILD_SKILL_OVER" )


g_pRadioButtonGuild_Skill:SetCheckedTex( "DLG_UI_Button14.tga", "GUILD_SKILL_OVER" )


g_pRadioButtonGuild_Skill:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90+76+70,55-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Skill:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90+76+70,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Skill:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(90+76+70,55)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(90+64+76+70,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Skill:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(90+76+70,55)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonGuild_Skill:SetGroupID( 1 )
g_pRadioButtonGuild_Skill:SetCustomMsgChecked( GUILD_UI_MESSAGE["GUM_GUILD_SKILL_TAB"] )

-----------------------------------하단버튼 ----------------------------------

----------BTN_BG1
g_pButton_BG = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BG )
g_pButton_BG:SetName( "BG_GuildLeave" )
g_pButton_BG:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )

g_pButton_BG:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_BG:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_BG:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(210-111,92+223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(208-111,90+223)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(208-111+1,90+223+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_BG:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_INFO_LEAVE_BUTTON"] )

----------------- 길드탈퇴 버튼

g_pStatic_BTN_GUILD1= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BTN_GUILD1 )
g_pStatic_BTN_GUILD1:SetName( "BTN_GuildLeave" )

g_pStatic_BTN_GUILD1:AddString
{
	MSG 			= STR_ID_4567,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-111 - 8,96+223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



----------BTN_BG2
g_pButton_BG2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BG2 )
g_pButton_BG2:SetName( "BG_GuildDestroy" )
g_pButton_BG2:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )

g_pButton_BG2:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_BG2:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_BG2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(210-29,92+223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(208-29,90+223)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(208-29+1,90+223+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_BG2:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_INFO_DESTROY_BUTTON"] )


----------------- 길드해체 버튼

g_pStatic_BTN_GUILD2= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BTN_GUILD2 )
g_pStatic_BTN_GUILD2:SetName( "BTN_GuildDestroy" )

g_pStatic_BTN_GUILD2:AddString
{
	MSG 			= STR_ID_4568,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-29 - 5,96+223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}


----------BTN_BG3
g_pButton_BG3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BG3 )
g_pButton_BG3:SetName( "BG_ChangeMessage" )
g_pButton_BG3:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_S_NORMAL" )

g_pButton_BG3:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_S_OVER" )

g_pButton_BG3:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_S_OVER" )

g_pButton_BG3:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(276,136)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(276-2,136-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG3:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(276-2+1,136-2+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_BG3:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_INFO_CHANGE_MESSAGE_BUTTON"] )

----------------- 길드 메시지 변경 버튼

g_pStatic_BTN_GUILD3= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BTN_GUILD3 )
g_pStatic_BTN_GUILD3:SetName( "BTN_ChangeMessage" )

g_pStatic_BTN_GUILD3:AddString
{
	MSG 			= STR_ID_4575,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(299,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )


g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(313,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(309,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(309+1,10 +1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_INFO_CLOSE"] )

---------------------------------------	길드원 정보 -----------------------------------------------------------

-----------캐릭터 아이콘 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 23 , 101, 0 ) ) 
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 23 , 101+27, 0 ) ) 
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 23 , 101+27+27, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 23 , 101+27+27+27, 0 ) ) 
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 23 , 101+27+27+27+27, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 23 , 101+27+27+27+27+27, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 23 , 101+27+27+27+27+27+27, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 23 , 101+27+27+27+27+27+27+27, 0 ) ) 



g_pStaticGuild_Member_Info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuild_Member_Info )
g_pStaticGuild_Member_Info:SetName( "g_pStaticGuild_Member_Info" )


------------- BAR

g_pPicture_line0 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line0 )

g_pPicture_line0:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line0:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,113-26-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,96+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,96+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,96+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}






g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,96+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,96+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,96+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line8:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,96+27+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line9 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line9 )

g_pPicture_line9:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line9:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,96+27+27+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_line10 = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_line10 )

g_pPicture_line10:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line10:SetPoint
{
     ADD_SIZE_Y = 11,
	"LEFT_TOP		= D3DXVECTOR2(166,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




----- BOX1

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166,99)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 150,
	"LEFT_TOP		= D3DXVECTOR2(166+5,99)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166+6+150,99)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 마우스 업 용 버튼
g_pButtonMemberDesc1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMemberDesc1 )
g_pButtonMemberDesc1:SetName( "ButtonMemberDesc01" )
g_pButtonMemberDesc1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc1:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc1:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc1:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonMemberDesc1:SetGuideDesc( STR_ID_2573 )


----- BOX2

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166,99+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 150,
	"LEFT_TOP		= D3DXVECTOR2(166+5,99+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166+6+150,99+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 마우스 업 용 버튼
g_pButtonMemberDesc2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMemberDesc2 )
g_pButtonMemberDesc2:SetName( "ButtonMemberDesc02" )
g_pButtonMemberDesc2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc2:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc2:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc2:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonMemberDesc2:SetGuideDesc( STR_ID_2573 )

----- BOX3

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166,99+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 150,
	"LEFT_TOP		= D3DXVECTOR2(166+5,99+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166+6+150,99+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 마우스 업 용 버튼
g_pButtonMemberDesc3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMemberDesc3 )
g_pButtonMemberDesc3:SetName( "ButtonMemberDesc03" )
g_pButtonMemberDesc3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc3:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc3:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc3:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc3:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc3:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonMemberDesc3:SetGuideDesc( STR_ID_2573 )

----- BOX4

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166,99+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 150,
	"LEFT_TOP		= D3DXVECTOR2(166+5,99+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166+6+150,99+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 마우스 업 용 버튼
g_pButtonMemberDesc4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMemberDesc4 )
g_pButtonMemberDesc4:SetName( "ButtonMemberDesc04" )
g_pButtonMemberDesc4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc4:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc4:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc4:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc4:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc4:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonMemberDesc4:SetGuideDesc( STR_ID_2573 )

----- BOX5

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166,99+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 150,
	"LEFT_TOP		= D3DXVECTOR2(166+5,99+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166+6+150,99+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 마우스 업 용 버튼
g_pButtonMemberDesc5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMemberDesc5 )
g_pButtonMemberDesc5:SetName( "ButtonMemberDesc05" )
g_pButtonMemberDesc5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc5:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc5:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc5:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc5:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc5:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonMemberDesc5:SetGuideDesc( STR_ID_2573 )

----- BOX6

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166,99+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 150,
	"LEFT_TOP		= D3DXVECTOR2(166+5,99+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166+6+150,99+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 마우스 업 용 버튼
g_pButtonMemberDesc6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMemberDesc6 )
g_pButtonMemberDesc6:SetName( "ButtonMemberDesc06" )
g_pButtonMemberDesc6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc6:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc6:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc6:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc6:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc6:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonMemberDesc6:SetGuideDesc( STR_ID_2573 )

----- BOX7

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166,99+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 150,
	"LEFT_TOP		= D3DXVECTOR2(166+5,99+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166+6+150,99+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 마우스 업 용 버튼
g_pButtonMemberDesc7 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMemberDesc7 )
g_pButtonMemberDesc7:SetName( "ButtonMemberDesc07" )
g_pButtonMemberDesc7:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc7:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc7:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc7:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc7:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc7:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonMemberDesc7:SetGuideDesc( STR_ID_2573 )

----- BOX8

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166,99+27+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 150,
	"LEFT_TOP		= D3DXVECTOR2(166+5,99+27+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(166+6+150,99+27+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 마우스 업 용 버튼
g_pButtonMemberDesc8 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMemberDesc8 )
g_pButtonMemberDesc8:SetName( "ButtonMemberDesc08" )
g_pButtonMemberDesc8:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc8:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc8:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc8:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc8:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc8:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(166+5,99+27+27+27+27+27+27+27)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(166+5+150,99+27+27+27+27+27+27+27+22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButtonMemberDesc8:SetGuideDesc( STR_ID_2573 )

-------------------------------- 세부 타이틀  -------------------------------- 

g_pStatic_title_nick = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_title_nick )
g_pStatic_title_nick:SetName( "Title" )


g_pStatic_title_nick:AddString
{
	--MSG 			= "닉네임",
	MSG 			= STR_ID_1127,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
 --   FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(49,82)",
	"COLOR			= D3DXCOLOR(0.0,0.3,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_title_Introduce  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_title_Introduce )
g_pStatic_title_Introduce:SetName( "Title_Introduce" )

g_pStatic_title_Introduce:AddString
{
	--MSG 			= "자기소개",
	MSG 			= STR_ID_4570,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
 --   FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(170,82)",
	"COLOR			= D3DXCOLOR(0.0,0.3,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



---------------------------------------------- 캐릭터 닉네임 -----------------------------------------------

g_pStatic_Nick01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Nick01 )
g_pStatic_Nick01:SetName( "Nick01" )

g_pStatic_Nick01:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,104)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}



g_pStatic_Nick02 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Nick02 )
g_pStatic_Nick02:SetName( "Nick02" )

g_pStatic_Nick02:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,104+27)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}




g_pStatic_Nick03 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Nick03 )
g_pStatic_Nick03:SetName( "Nick03" )

g_pStatic_Nick03:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,104+27+27)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}



g_pStatic_Nick04 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Nick04 )
g_pStatic_Nick04:SetName( "Nick04" )

g_pStatic_Nick04:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,104+27+27+27)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}



g_pStatic_Nick05 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Nick05 )
g_pStatic_Nick05:SetName( "Nick05" )

g_pStatic_Nick05:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,104+27+27+27+27)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}



g_pStatic_Nick06 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Nick06 )
g_pStatic_Nick06:SetName( "Nick06" )

g_pStatic_Nick06:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,104+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}



g_pStatic_Nick07 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Nick07 )
g_pStatic_Nick07:SetName( "Nick07" )

g_pStatic_Nick07:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,104+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}


g_pStatic_Nick08 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Nick08 )
g_pStatic_Nick08:SetName( "Nick08" )

g_pStatic_Nick08:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,104+27+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}



-------------------------------------------  인사말 ------------------------------------------------

-------자기소개
g_pStatic_Introduce01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Introduce01 )
g_pStatic_Introduce01:SetName( "Introduce01" )

g_pStatic_Introduce01:AddString
{
	MSG 			= "이길드열라짱조아염마니..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(169,104)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}


g_pStatic_Introduce02 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Introduce02 )
g_pStatic_Introduce02:SetName( "Introduce02" )

g_pStatic_Introduce02:AddString
{
	MSG 			= "이길드열라짱조아염마니..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(169,104+27)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}



g_pStatic_Introduce03 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Introduce03 )
g_pStatic_Introduce03:SetName( "Introduce03" )

g_pStatic_Introduce03:AddString
{
	MSG 			= "이길드열라짱조아염마니..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(169,104+27+27)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}



g_pStatic_Introduce04 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Introduce04 )
g_pStatic_Introduce04:SetName( "Introduce04" )

g_pStatic_Introduce04:AddString
{
	MSG 			= "이길드열라짱조아염마니..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(169,104+27+27+27)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}


g_pStatic_Introduce05 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Introduce05 )
g_pStatic_Introduce05:SetName( "Introduce05" )

g_pStatic_Introduce05:AddString
{
	MSG 			= "이길드열라짱조아염마니..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(169,104+27+27+27+27)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}


g_pStatic_Introduce06 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Introduce06 )
g_pStatic_Introduce06:SetName( "Introduce06" )

g_pStatic_Introduce06:AddString
{
	MSG 			= "이길드열라짱조아염마니..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(169,104+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}


g_pStatic_Introduce07 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Introduce07 )
g_pStatic_Introduce07:SetName( "Introduce07" )

g_pStatic_Introduce07:AddString
{
	MSG 			= "이길드열라짱조아염마니..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(169,104+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}


g_pStatic_Introduce08 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Introduce08 )
g_pStatic_Introduce08:SetName( "Introduce08" )

g_pStatic_Introduce08:AddString
{
	MSG 			= "이길드열라짱조아염마니..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(169,104+27+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.5,0.5,1.0)",
}


-----------------------------------하단버튼 ----------------------------------

----------BTN_BG4
g_pButton_BG = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BG )
g_pButton_BG:SetName( "BG_ChangeIntroduce" )
g_pButton_BG:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )

g_pButton_BG:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_BG:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_BG:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(24,92+227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24-2,92-2+227)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(24-2+1,92-2+227+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_BG:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_CHANGE_MESSAGE"] )


----------------- 인사말 작성 버튼

g_pStatic_BTN_GUILD1= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BTN_GUILD1 )
g_pStatic_BTN_GUILD1:SetName( "BTN_ChangeIntroduce" )

g_pStatic_BTN_GUILD1:AddString
{
	MSG 			= STR_ID_4590,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(63,96+227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}


------------------------------- 페이지 넘기기

-----페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticGuild_Member_Info:AddPicture( g_pPicturepage )

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(128+123,391-74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----페이지 번호

g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "page_number" )

g_pStaticnumber:AddString
{
	MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(156+123,396-74)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrow_left" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(110+123,393-74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(110+123,392-74)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(110+1+123,392+1-74)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonL_arrow:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_PAGE_LEFT"] )


--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrow_right" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(189+123,393-74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(188+123,392-74)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188+1+123,392+1-74)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonR_arrow:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_PAGE_RIGHT"] )


--------- 인사말 삭제 버튼01

g_pButtonDel01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDel01 )
g_pButtonDel01:SetName( "BTN_DeleteIntroduce01" )


g_pButtonDel01:SetNormalTex( "DLG_UI_Button14.tga", "Delete_Normal" )

g_pButtonDel01:SetOverTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel01:SetDownTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel01:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(310,103)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel01:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,103)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel01:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310+1,103+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonDel01:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_DELETE01"] )

--------- 인사말 삭제 버튼02

g_pButtonDel02 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDel02 )
g_pButtonDel02:SetName( "BTN_DeleteIntroduce02" )


g_pButtonDel02:SetNormalTex( "DLG_UI_Button14.tga", "Delete_Normal" )

g_pButtonDel02:SetOverTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel02:SetDownTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel02:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(310,103 + 27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel02:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,103 + 27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel02:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310+1,103 +1 + 27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonDel02:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_DELETE02"] )

--------- 인사말 삭제 버튼03

g_pButtonDel03 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDel03 )
g_pButtonDel03:SetName( "BTN_DeleteIntroduce03" )


g_pButtonDel03:SetNormalTex( "DLG_UI_Button14.tga", "Delete_Normal" )

g_pButtonDel03:SetOverTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel03:SetDownTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel03:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(310,103+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel03:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,103+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel03:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310+1,103 +1+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonDel03:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_DELETE03"] )

--------- 인사말 삭제 버튼04

g_pButtonDel04 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDel04 )
g_pButtonDel04:SetName( "BTN_DeleteIntroduce04" )


g_pButtonDel04:SetNormalTex( "DLG_UI_Button14.tga", "Delete_Normal" )

g_pButtonDel04:SetOverTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel04:SetDownTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel04:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(310,103+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel04:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,103+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel04:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310+1,103 +1+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonDel04:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_DELETE04"] )

--------- 인사말 삭제 버튼05

g_pButtonDel05 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDel05 )
g_pButtonDel05:SetName( "BTN_DeleteIntroduce05" )


g_pButtonDel05:SetNormalTex( "DLG_UI_Button14.tga", "Delete_Normal" )

g_pButtonDel05:SetOverTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel05:SetDownTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel05:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(310,103+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel05:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,103+27+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel05:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310+1,103 +1+27+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonDel05:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_DELETE05"] )

--------- 인사말 삭제 버튼06

g_pButtonDel06 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDel06 )
g_pButtonDel06:SetName( "BTN_DeleteIntroduce06" )


g_pButtonDel06:SetNormalTex( "DLG_UI_Button14.tga", "Delete_Normal" )

g_pButtonDel06:SetOverTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel06:SetDownTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel06:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(310,103+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel06:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,103+27+27+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel06:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310+1,103 +1+27+27+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonDel06:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_DELETE06"] )

--------- 인사말 삭제 버튼07

g_pButtonDel07 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDel07 )
g_pButtonDel07:SetName( "BTN_DeleteIntroduce07" )


g_pButtonDel07:SetNormalTex( "DLG_UI_Button14.tga", "Delete_Normal" )

g_pButtonDel07:SetOverTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel07:SetDownTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel07:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(310,103+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel07:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,103+27+27+27+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel07:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310+1,103 +1+27+27+27+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonDel07:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_DELETE07"] )

--------- 인사말 삭제 버튼08

g_pButtonDel08 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDel08 )
g_pButtonDel08:SetName( "BTN_DeleteIntroduce08" )


g_pButtonDel08:SetNormalTex( "DLG_UI_Button14.tga", "Delete_Normal" )

g_pButtonDel08:SetOverTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel08:SetDownTex( "DLG_UI_Button14.tga", "Delete_Over" )

g_pButtonDel08:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(310,103+27+27+27+27+27+27+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel08:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,103+27+27+27+27+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDel08:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310+1,103 +1+27+27+27+27+27+27+27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonDel08:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_DELETE08"] )