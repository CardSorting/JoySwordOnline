-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 145, 0 ) ) -- 유저1  ---  31 , 145
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 176, 0 ) ) -- 유저2  ---  31 , 176
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 207, 0 ) ) -- 유저3  ---  31 , 207
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 238, 0 ) ) -- 유저4  ---  31 , 238
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 269, 0 ) ) -- 유저5  ---  31 , 269
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 300, 0 ) ) -- 유저6  ---  31 , 300
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 331, 0 ) ) -- 유저7  ---  31 , 331
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 362, 0 ) ) -- 유저8  ---  31 , 362

g_pStaticGuild = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuild )
g_pStaticGuild:SetName( "Guild" )



----- 길드네임박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 140,
	"LEFT_TOP		= D3DXVECTOR2(31,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(172,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 155-11,
	"LEFT_TOP		= D3DXVECTOR2(27,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 99+11,
	"LEFT_TOP		= D3DXVECTOR2(188-11,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 155-11,
	"LEFT_TOP		= D3DXVECTOR2(27,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 99+11,
	"LEFT_TOP		= D3DXVECTOR2(188-11,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_X = 155-11,
	"LEFT_TOP		= D3DXVECTOR2(27,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line8:SetPoint
{
     ADD_SIZE_X = 99+11,
	"LEFT_TOP		= D3DXVECTOR2(188-11,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line9 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line9 )

g_pPicture_line9:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line9:SetPoint
{
     ADD_SIZE_X = 155-11,
	"LEFT_TOP		= D3DXVECTOR2(27,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line10 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line10 )

g_pPicture_line10:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line10:SetPoint
{
     ADD_SIZE_X = 99+11,
	"LEFT_TOP		= D3DXVECTOR2(188-11,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line11 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line11 )

g_pPicture_line11:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line11:SetPoint
{
     ADD_SIZE_X = 155-11,
	"LEFT_TOP		= D3DXVECTOR2(27,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line12 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line12 )

g_pPicture_line12:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line12:SetPoint
{
     ADD_SIZE_X = 99+11,
	"LEFT_TOP		= D3DXVECTOR2(188-11,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line13 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line13 )

g_pPicture_line13:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line13:SetPoint
{
     ADD_SIZE_X = 155-11,
	"LEFT_TOP		= D3DXVECTOR2(27,324)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line14 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line14 )

g_pPicture_line14:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line14:SetPoint
{
     ADD_SIZE_X = 99+11,
	"LEFT_TOP		= D3DXVECTOR2(188-11,324)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line15 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line15 )

g_pPicture_line15:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line15:SetPoint
{
     ADD_SIZE_X = 155-11,
	"LEFT_TOP		= D3DXVECTOR2(27,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line16 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line16 )

g_pPicture_line16:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line16:SetPoint
{
     ADD_SIZE_X = 99+11,
	"LEFT_TOP		= D3DXVECTOR2(188-11,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line17 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line17 )

g_pPicture_line17:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line17:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line18 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line18 )

g_pPicture_line18:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line18:SetPoint
{
     ADD_SIZE_Y = 14,
	"LEFT_TOP		= D3DXVECTOR2(185-10,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line19 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_line19 )

g_pPicture_line19:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line19:SetPoint
{
     ADD_SIZE_Y = 244,
	"LEFT_TOP		= D3DXVECTOR2(185-10,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


---------------------분류

g_pStaticGuildInfoType = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildInfoType )
g_pStaticGuildInfoType:SetName( "GuildInfoType" )
-------------------------------------------------------  닉네임

g_pPicture_nickname = g_pUIDialog:CreatePicture()
g_pStaticGuildInfoType:AddPicture( g_pPicture_nickname )

g_pPicture_nickname:SetTex( "DLG_UI_Title01_A.TGA", "nickname" )

g_pPicture_nickname:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(58,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



-------------------------------------------------위치

g_pPicture_state = g_pUIDialog:CreatePicture()
g_pStaticGuildInfoType:AddPicture( g_pPicture_state )

g_pPicture_state:SetTex( "DLG_UI_Title01_A.TGA", "POSITION" )

g_pPicture_state:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(204-10,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


-------------------------------------------------등급

g_pPicture_state = g_pUIDialog:CreatePicture()
g_pStaticGuildInfoType:AddPicture( g_pPicture_state )

g_pPicture_state:SetTex( "DLG_UI_Title01_A.TGA", "RANK_2" )

g_pPicture_state:SetShow( false )

g_pPicture_state:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(204-10,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}





--------------- 길드 이름


g_pStatic_guild_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_guild_name1 )
g_pStatic_guild_name1:SetName( "Guild_name1" )


g_pStatic_guild_name1:AddString
{
	MSG 			= "WWWWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32+1,96+1)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.3,1.0)",
}

g_pStatic_guild_name1:AddString
{
	MSG 			= "WWWWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32,96)",
	"COLOR			= D3DXCOLOR(1.0,0.85,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.3,1.0)",
}



 
-----------------------------------           캐릭터 뷰  1                  ---------------------------------------


g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "name1" )

g_pStatic_name1:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,149)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------등급 or 위치

g_pStatic_state1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state1 )
g_pStatic_state1:SetName( "state1" )

g_pStatic_state1:AddString
{
	MSG 			= STR_ID_1260,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(181,149-8)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

---------------------------채널

g_pStatic_state1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state1 )
g_pStatic_state1:SetName( "channel1" )

g_pStatic_state1:AddString
{
	MSG 			= STR_ID_1260,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241-60,149+6)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




----------------------------------------         캐릭터 뷰  2             ----------------------------




g_pStatic_name2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name2 )
g_pStatic_name2:SetName( "name2" )

g_pStatic_name2:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,178)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



---------------------------등급 or 위치

g_pStatic_state2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state2 )
g_pStatic_state2:SetName( "state2" )

g_pStatic_state2:AddString
{
	MSG 			= STR_ID_106,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(181,178-8)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------채널

g_pStatic_state2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state2 )
g_pStatic_state2:SetName( "channel2" )

g_pStatic_state2:AddString
{
	MSG 			= STR_ID_106,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241-60,178+6)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




----------------------------------------------------  캐릭터 뷰  3 -----------------------------------




g_pStatic_name3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name3 )
g_pStatic_name3:SetName( "name3" )

g_pStatic_name3:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,210)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------등급 & 위치

g_pStatic_state3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state3 )
g_pStatic_state3:SetName( "state3" )

g_pStatic_state3:AddString
{
	MSG 			= STR_ID_1261,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(181,210-8)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



---------------------------채널

g_pStatic_state3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state3 )
g_pStatic_state3:SetName( "channel3" )

g_pStatic_state3:AddString
{
	MSG 			= STR_ID_1261,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241-60,210+6)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




--------------------------------------------------  캐릭터 뷰  4 --------------------------------------






g_pStatic_name4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name4 )
g_pStatic_name4:SetName( "name4" )

g_pStatic_name4:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,241)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------등급 & 위치

g_pStatic_state4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state4 )
g_pStatic_state4:SetName( "state4" )

g_pStatic_state4:AddString
{
	MSG 			= STR_ID_1262,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(181,241-8)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

---------------------------채널

g_pStatic_state4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state4 )
g_pStatic_state4:SetName( "channel4" )

g_pStatic_state4:AddString
{
	MSG 			= STR_ID_1262,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241-60,241+6)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






-----------------------------------     캐릭터 뷰  5     ------------------------------------




g_pStatic_name5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name5 )
g_pStatic_name5:SetName( "name5" )

g_pStatic_name5:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,272)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------등급 & 위치

g_pStatic_state5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state5 )
g_pStatic_state5:SetName( "state5" )

g_pStatic_state5:AddString
{
	MSG 			= STR_ID_1263,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(181,272-8)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------채널

g_pStatic_state5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state5 )
g_pStatic_state5:SetName( "channel5" )

g_pStatic_state5:AddString
{
	MSG 			= STR_ID_1263,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241-60,272+6)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




------------------------------------------     캐릭터 뷰  6         --------------------------------------




g_pStatic_name6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name6 )
g_pStatic_name6:SetName( "name6" )

g_pStatic_name6:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,301)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------등급 & 위치

g_pStatic_state6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state6 )
g_pStatic_state6:SetName( "state6" )

g_pStatic_state6:AddString
{
	MSG 			= STR_ID_1263,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(181,301-8)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------채널

g_pStatic_state6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state6 )
g_pStatic_state6:SetName( "channel6" )

g_pStatic_state6:AddString
{
	MSG 			= STR_ID_1263,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241-60,301+6)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



----------------------------------------  캐릭터 뷰  7-------------------------------




g_pStatic_name7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name7 )
g_pStatic_name7:SetName( "name7" )

g_pStatic_name7:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,332)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------등급 & 위치


g_pStatic_state7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state7 )
g_pStatic_state7:SetName( "state7" )

g_pStatic_state7:AddString
{
	MSG 			= STR_ID_1263,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(181,332-8)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------채널

g_pStatic_state7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state7 )
g_pStatic_state7:SetName( "channel7" )

g_pStatic_state7:AddString
{
	MSG 			= STR_ID_1263,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241-60,332+6)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



---------------------------------------------------  캐릭터 뷰  8   ---------------------------------


g_pStatic_name8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name8 )
g_pStatic_name8:SetName( "name8" )

g_pStatic_name8:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,363)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------등급 & 위치

g_pStatic_state8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state8 )
g_pStatic_state8:SetName( "state8" )

g_pStatic_state8:AddString
{
	MSG 			= STR_ID_1261,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(181,363-8)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

---------------------------채널

g_pStatic_state8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state8 )
g_pStatic_state8:SetName( "channel8" )

g_pStatic_state8:AddString
{
	MSG 			= STR_ID_1261,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241-60,363+6)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




----------------------------------------------------------------------------------------
-------------------   캐릭터 리스트 각 투명 버튼 ------------------------------

------------------ 캐릭터 1 투명 버튼 ---------------------------------

g_pButtonUser1= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser1)
g_pButtonUser1:SetName( "User1" )
g_pButtonUser1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser1:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser1:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser1:SetNormalPoint
{
	  ADD_SIZE_X = 155 - 10,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetOverPoint
{
    ADD_SIZE_X = 2 - 10,
	"LEFT_TOP		= D3DXVECTOR2(26,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetDownPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,141+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:AddDummyInt(1)
--g_pButtonUser1:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
g_pButtonUser1:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser1:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )

------------------------------------ 캐릭터 2 투명 버튼 ------------------------------------------

g_pButtonUser2= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser2)
g_pButtonUser2:SetName( "User2" )
g_pButtonUser2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser2:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser2:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser2:SetNormalPoint
{
	  ADD_SIZE_X = 155 - 10,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetOverPoint
{
     ADD_SIZE_X = 2 - 10,
	"LEFT_TOP		= D3DXVECTOR2(26,172)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetDownPoint
{
      ADD_SIZE_X = -10,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,172+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:AddDummyInt(2)
--g_pButtonUser2:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
g_pButtonUser2:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser2:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )


------------------------------------ 캐릭터 3 투명 버튼 ------------------------------------------

g_pButtonUser3= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser3)
g_pButtonUser3:SetName( "User3" )
g_pButtonUser3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser3:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser3:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser3:SetNormalPoint
{
	  ADD_SIZE_X = 155 - 10,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,203)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:SetOverPoint
{
     ADD_SIZE_X = 2 - 10,
	"LEFT_TOP		= D3DXVECTOR2(26,203)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:SetDownPoint
{
      ADD_SIZE_X = -10,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,203+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:AddDummyInt(3)
--g_pButtonUser3:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
g_pButtonUser3:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser3:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )


------------------------------------ 캐릭터 4 투명 버튼 ------------------------------------------
g_pButtonUser4= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser4)
g_pButtonUser4:SetName( "User4" )
g_pButtonUser4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser4:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser4:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser4:SetNormalPoint
{
	  ADD_SIZE_X = 155 - 10,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,234)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:SetOverPoint
{
     ADD_SIZE_X = 2 - 10,
	"LEFT_TOP		= D3DXVECTOR2(26,234)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:SetDownPoint
{
   ADD_SIZE_X = -10,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,234+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:AddDummyInt(4)
--g_pButtonUser4:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
g_pButtonUser4:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser4:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )


------------------------------------ 캐릭터 5 투명 버튼 ------------------------------------------
g_pButtonUser5= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser5)
g_pButtonUser5:SetName( "User5" )
g_pButtonUser5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser5:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser5:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser5:SetNormalPoint
{
	  ADD_SIZE_X = 155 - 10,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:SetOverPoint
{
     ADD_SIZE_X = 2 - 10,
	"LEFT_TOP		= D3DXVECTOR2(26,265)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:SetDownPoint
{
      ADD_SIZE_X = -10,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,265+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:AddDummyInt(5)
--g_pButtonUser5:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
g_pButtonUser5:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser5:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )


------------------------------------ 캐릭터 6 투명 버튼 ------------------------------------------

g_pButtonUser6= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser6)
g_pButtonUser6:SetName( "User6" )
g_pButtonUser6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser6:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser6:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser6:SetNormalPoint
{
	  ADD_SIZE_X = 155 - 10,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:SetOverPoint
{
     ADD_SIZE_X = 2 - 10,
	"LEFT_TOP		= D3DXVECTOR2(26,296)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:SetDownPoint
{
      ADD_SIZE_X = -10,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,296+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:AddDummyInt(6)
--g_pButtonUser6:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
g_pButtonUser6:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser6:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )


------------------------------------ 캐릭터 7 투명 버튼 ------------------------------------------

g_pButtonUser7= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser7)
g_pButtonUser7:SetName( "User7" )
g_pButtonUser7:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser7:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser7:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser7:SetNormalPoint
{
	  ADD_SIZE_X = 155 - 10,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,327)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:SetOverPoint
{
     ADD_SIZE_X = 2 - 10,
	"LEFT_TOP		= D3DXVECTOR2(26,327)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:SetDownPoint
{
      ADD_SIZE_X = -10,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,327+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:AddDummyInt(7)
--g_pButtonUser7:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
g_pButtonUser7:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser7:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )


------------------------------------ 캐릭터 8 투명 버튼 ------------------------------------------

g_pButtonUser8= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser8)
g_pButtonUser8:SetName( "User8" )
g_pButtonUser8:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser8:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser8:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser8:SetNormalPoint
{
	  ADD_SIZE_X = 155 - 10,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,358)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:SetOverPoint
{
     ADD_SIZE_X = 2 - 10,
	"LEFT_TOP		= D3DXVECTOR2(26,358)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:SetDownPoint
{
      ADD_SIZE_X = -10,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,358+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:AddDummyInt(8)
--g_pButtonUser8:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
g_pButtonUser8:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser8:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )

-------------------   길드등급 리스트  투명 버튼 

g_pButtonGuild_Rank1= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild_Rank1)
g_pButtonGuild_Rank1:SetName( "Guild_Rank1" )
g_pButtonGuild_Rank1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonGuild_Rank1:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank1:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank1:SetNormalPoint
{
	  ADD_SIZE_X = 110,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(188-10,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank1:SetOverPoint
{
    ADD_SIZE_X = 2-46,
	"LEFT_TOP		= D3DXVECTOR2(188-10,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank1:SetDownPoint
{
     ADD_SIZE_X = -46,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188-10+1,141+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank1:AddDummyInt(1)
--g_pButtonGuild_Rank1:AddDummyInt(1)		-- 길드 등급을 클릭 했다는 구분 용도로 사용
g_pButtonGuild_Rank1:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonGuild_Rank1:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP_ON_GUILD_MEMBER_GRADE"] )


g_pButtonGuild_Rank2= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild_Rank2)
g_pButtonGuild_Rank2:SetName( "Guild_Rank2" )
g_pButtonGuild_Rank2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonGuild_Rank2:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank2:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank2:SetNormalPoint
{
	  ADD_SIZE_X = 110,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(188-10,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank2:SetOverPoint
{
     ADD_SIZE_X = 2-46,
	"LEFT_TOP		= D3DXVECTOR2(188-10,172)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank2:SetDownPoint
{
     ADD_SIZE_X = -46, 
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188-10+1,172+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank2:AddDummyInt(2)
--g_pButtonGuild_Rank2:AddDummyInt(1)		-- 길드 등급을 클릭 했다는 구분 용도로 사용
g_pButtonGuild_Rank2:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonGuild_Rank2:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP_ON_GUILD_MEMBER_GRADE"] )


g_pButtonGuild_Rank3= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild_Rank3)
g_pButtonGuild_Rank3:SetName( "Guild_Rank3" )
g_pButtonGuild_Rank3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonGuild_Rank3:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank3:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank3:SetNormalPoint
{
	  ADD_SIZE_X = 110,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(188-10,203)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank3:SetOverPoint
{
     ADD_SIZE_X = 2-46,
	"LEFT_TOP		= D3DXVECTOR2(188-10,203)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank3:SetDownPoint
{
     ADD_SIZE_X = -46, 
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188-10+1,203+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank3:AddDummyInt(3)
--g_pButtonGuild_Rank3:AddDummyInt(1)		-- 길드 등급을 클릭 했다는 구분 용도로 사용
g_pButtonGuild_Rank3:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonGuild_Rank3:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP_ON_GUILD_MEMBER_GRADE"] )



g_pButtonGuild_Rank4= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild_Rank4)
g_pButtonGuild_Rank4:SetName( "Guild_Rank4" )
g_pButtonGuild_Rank4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonGuild_Rank4:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank4:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank4:SetNormalPoint
{
	  ADD_SIZE_X = 110,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(188-10,234)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank4:SetOverPoint
{
     ADD_SIZE_X = 2-46,
	"LEFT_TOP		= D3DXVECTOR2(188-10,234)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank4:SetDownPoint
{
	ADD_SIZE_X = -46,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188-10+1,234+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank4:AddDummyInt(4)
--g_pButtonGuild_Rank4:AddDummyInt(1)		-- 길드 등급을 클릭 했다는 구분 용도로 사용
g_pButtonGuild_Rank4:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonGuild_Rank4:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP_ON_GUILD_MEMBER_GRADE"] )


g_pButtonGuild_Rank5= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild_Rank5)
g_pButtonGuild_Rank5:SetName( "Guild_Rank5" )
g_pButtonGuild_Rank5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonGuild_Rank5:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank5:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank5:SetNormalPoint
{
	  ADD_SIZE_X = 110,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(188-10,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank5:SetOverPoint
{
     ADD_SIZE_X = 2-46,
	"LEFT_TOP		= D3DXVECTOR2(188-10,265)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank5:SetDownPoint
{
      ADD_SIZE_X = -46,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188-10+1,265+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank5:AddDummyInt(5)
--g_pButtonGuild_Rank5:AddDummyInt(1)		-- 길드 등급을 클릭 했다는 구분 용도로 사용
g_pButtonGuild_Rank5:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonGuild_Rank5:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP_ON_GUILD_MEMBER_GRADE"] )


g_pButtonGuild_Rank6= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild_Rank6)
g_pButtonGuild_Rank6:SetName( "Guild_Rank6" )
g_pButtonGuild_Rank6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonGuild_Rank6:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank6:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank6:SetNormalPoint
{
	  ADD_SIZE_X = 110,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(188-10,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank6:SetOverPoint
{
     ADD_SIZE_X = 2-46,
	"LEFT_TOP		= D3DXVECTOR2(188-10,296)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank6:SetDownPoint
{
     ADD_SIZE_X = -46, 
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188-10+1,296+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank6:AddDummyInt(6)
--g_pButtonGuild_Rank6:AddDummyInt(1)		-- 길드 등급을 클릭 했다는 구분 용도로 사용
g_pButtonGuild_Rank6:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonGuild_Rank6:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP_ON_GUILD_MEMBER_GRADE"] )

g_pButtonGuild_Rank7= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild_Rank7)
g_pButtonGuild_Rank7:SetName( "Guild_Rank7" )
g_pButtonGuild_Rank7:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonGuild_Rank7:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank7:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank7:SetNormalPoint
{
	  ADD_SIZE_X = 110,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(188-10,327)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank7:SetOverPoint
{
     ADD_SIZE_X = 2-46,
	"LEFT_TOP		= D3DXVECTOR2(188-10,327)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank7:SetDownPoint
{
      ADD_SIZE_X = -46,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188-10+1,327+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank7:AddDummyInt(7)
--g_pButtonGuild_Rank7:AddDummyInt(1)		-- 길드 등급을 클릭 했다는 구분 용도로 사용
g_pButtonGuild_Rank7:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonGuild_Rank7:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP_ON_GUILD_MEMBER_GRADE"] )



g_pButtonGuild_Rank8= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild_Rank8)
g_pButtonGuild_Rank8:SetName( "Guild_Rank8" )
g_pButtonGuild_Rank8:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonGuild_Rank8:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank8:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonGuild_Rank8:SetNormalPoint
{
	  ADD_SIZE_X = 110,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(188-10,358)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank8:SetOverPoint
{
     ADD_SIZE_X = 2-46,
	"LEFT_TOP		= D3DXVECTOR2(188-10,358)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank8:SetDownPoint
{
      ADD_SIZE_X = -46,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188-10+1,358+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild_Rank8:AddDummyInt(8)
--g_pButtonGuild_Rank8:AddDummyInt(1)		-- 길드 등급을 클릭 했다는 구분 용도로 사용
g_pButtonGuild_Rank8:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonGuild_Rank8:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP_ON_GUILD_MEMBER_GRADE"] )

-------------인원표시----------------

-----배경
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicturepage)

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(27,391)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----인원 수

g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "numOfGuildMember" )

g_pStaticnumber:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(55,396)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-----ToolTip

g_pButtonMemberDesc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMemberDesc )
g_pButtonMemberDesc:SetName( "ButtonMemberDesc" )
g_pButtonMemberDesc:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMemberDesc:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(27, 391)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(27+58, 391+25)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(27, 391)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(27+58, 391+25)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMemberDesc:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(27, 391)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(27+58, 391+25)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

g_pButtonMemberDesc:SetGuideDesc( STR_ID_4749 )



--------------페이지표시------------------

--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(110+84,393)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(110+84,392)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(110+84+1,392+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_GUILD_PREV_PAGE"] )

--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(189+84,393)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(188+84,392)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188+84+1,392+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_GUILD_NEXT_PAGE"] )



-----페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicturepage)

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(128+84,391)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----페이지 번호

g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "page_number" )

g_pStaticnumber:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(156+84,396)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}





--------------------------         하단  버튼    -------------------------------

-------------길드원추가
g_pButtonGuildMember_add = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuildMember_add )
g_pButtonGuildMember_add:SetName( "Button_Guild_Member_add" )
g_pButtonGuildMember_add:SetNormalTex( "DLG_UI_BUTTON13.tga", "guild_add_normal" )

g_pButtonGuildMember_add:SetOverTex( "DLG_UI_BUTTON13.tga", "guild_add_over" )

g_pButtonGuildMember_add:SetDownTex( "DLG_UI_BUTTON13.tga", "guild_add_over" )

g_pButtonGuildMember_add:SetDisableTex( "DLG_UI_BUTTON13.tga", "guild_add_gray" )

g_pButtonGuildMember_add:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(19,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuildMember_add:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuildMember_add:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonGuildMember_add:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(19,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuildMember_add:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PUSH_BUTTON_ADD_GUILD_MEMBER"] )

--[[
-------------초대하기

g_pButtonInvite = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInvite )
g_pButtonInvite:SetName( "Invite" )
g_pButtonInvite:SetNormalTex( "DLG_UI_BUTTON10.tga", "Invite_normal" )

g_pButtonInvite:SetOverTex( "DLG_UI_BUTTON10.tga", "Invite_over" )

g_pButtonInvite:SetDownTex( "DLG_UI_BUTTON10.tga", "Invite_over" )

g_pButtonInvite:SetDisableTex( "DLG_UI_Common_Texture09.tga", "Invite_noactive" )

g_pButtonInvite:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(91,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(91,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(91+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonInvite:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(91,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonInvite:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PVP_INVITE"] )




-------------같이하기



g_pButtonTogether = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTogether )
g_pButtonTogether:SetName( "Together" )
g_pButtonTogether:SetNormalTex( "DLG_UI_BUTTON10.tga", "Together_normal" )

g_pButtonTogether:SetOverTex( "DLG_UI_BUTTON10.tga", "Together_over" )

g_pButtonTogether:SetDownTex( "DLG_UI_BUTTON10.tga", "Together_over" )

g_pButtonTogether:SetDisableTex( "DLG_UI_Common_Texture09.tga", "Together_noactive" )

g_pButtonTogether:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(162,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTogether:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTogether:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(162+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonTogether:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(162,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonTogether:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PVP_TOGETHER"] )

--]]



-------------길드정보

g_pButtonGuildInfo = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuildInfo )
g_pButtonGuildInfo:SetName( "GuildInfo" )
g_pButtonGuildInfo:SetNormalTex( "DLG_UI_BUTTON13.tga", "guild_info_normal" )

g_pButtonGuildInfo:SetOverTex( "DLG_UI_BUTTON13.tga", "guild_info_over" )

g_pButtonGuildInfo:SetDownTex( "DLG_UI_BUTTON13.tga", "guild_info_over" )

g_pButtonGuildInfo:SetDisableTex( "DLG_UI_BUTTON13.tga", "guild_info_gray" )

g_pButtonGuildInfo:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(233,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuildInfo:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(233,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuildInfo:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(233+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonGuildInfo:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(233,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuildInfo:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PUSH_BUTTON_GUILD_INFO"] )




----------------------------상단버튼


-----------------                     위치보기                ----------------------


g_pRadioButton_LOCATION = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_LOCATION )

g_pRadioButton_LOCATION:SetFixOverByCheck( true )
g_pRadioButton_LOCATION:SetShowOffBGByCheck( true )

g_pRadioButton_LOCATION:SetName( "RadioButton_LOCATION" )

g_pRadioButton_LOCATION:SetNormalTex( "DLG_UI_Button14.tga", "LOCATION_NORMAL" )


g_pRadioButton_LOCATION:SetOverTex( "DLG_UI_Button14.tga", "LOCATION_OVER" )


g_pRadioButton_LOCATION:SetCheckedTex( "DLG_UI_Button14.tga", "LOCATION_OVER" )


g_pRadioButton_LOCATION:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(183+15,94-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_LOCATION:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(183+15,94-1-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_LOCATION:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(183+15,94-8)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(183+64+15,94+25-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_LOCATION:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(183+15,94-1-8)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_LOCATION:SetGroupID( 1 )
g_pRadioButton_LOCATION:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PUSH_BUTTON_VIEW_LOACATION"] )


-----------------                    등급보기                ----------------------


g_pRadioButton_GRADE = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_GRADE )

g_pRadioButton_GRADE:SetFixOverByCheck( true )
g_pRadioButton_GRADE:SetShowOffBGByCheck( true )

g_pRadioButton_GRADE:SetName( "RadioButton_GRADE" )

g_pRadioButton_GRADE:SetNormalTex( "DLG_UI_Button14.tga", "GRADE_NORMAL" )


g_pRadioButton_GRADE:SetOverTex( "DLG_UI_Button14.tga", "GRADE_OVER" )


g_pRadioButton_GRADE:SetCheckedTex( "DLG_UI_Button14.tga", "GRADE_OVER" )


g_pRadioButton_GRADE:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(236-52+17,94+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_GRADE:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(236-1-52+17,94+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_GRADE:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(236-52+17,94+6)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(236+64-25+17,94+25+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_GRADE:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(236-1-52+17,94+6)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_GRADE:SetGroupID( 1 )
g_pRadioButton_GRADE:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PUSH_BUTTON_VIEW_GUILD_MEMBER_GRADE"] )



--[[
			----------------------------상단버튼

			----------BTN_BG1(위치보기 버튼)

			g_pButton_BG1 = g_pUIDialog:CreateButton()
			g_pUIDialog:AddControl( g_pButton_BG1 )
			g_pButton_BG1:SetName( "g_pButton_BG11" )
			g_pButton_BG1:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_S_NORMAL" )

			g_pButton_BG1:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_S_OVER" )

			g_pButton_BG1:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_S_OVER" )

			g_pButton_BG1:SetNormalPoint
			{
				
				"LEFT_TOP		= D3DXVECTOR2(188,93)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButton_BG1:SetOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(188-2,93-2)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButton_BG1:SetDownPoint
			{
				ADD_SIZE_X = -2,
				ADD_SIZE_Y = -2,
 				"LEFT_TOP		= D3DXVECTOR2(188-2+1,93-2+1)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButton_BG1:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PUSH_BUTTON_VIEW_LOACATION"] )


			----------BTN_BG2(등급보기 버튼)
			g_pButton_BG2 = g_pUIDialog:CreateButton()
			g_pUIDialog:AddControl( g_pButton_BG2 )
			g_pButton_BG2:SetName( "g_pButton_BG21" )
			g_pButton_BG2:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_S_NORMAL" )

			g_pButton_BG2:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_S_OVER" )

			g_pButton_BG2:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_S_OVER" )

			g_pButton_BG2:SetNormalPoint
			{
				
				"LEFT_TOP		= D3DXVECTOR2(188+51,93)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButton_BG2:SetOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(188+51-2,93-2)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButton_BG2:SetDownPoint
			{
				ADD_SIZE_X = -2,
				ADD_SIZE_Y = -2,
 				"LEFT_TOP		= D3DXVECTOR2(188+51-2+1,93-2+1)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButton_BG2:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PUSH_BUTTON_VIEW_GUILD_MEMBER_GRADE"] )


			----------------- 위치보기

			g_pStatic_BTN_LOCATION = g_pUIDialog:CreateStatic()
			g_pUIDialog:AddControl( g_pStatic_BTN_LOCATION )
			g_pStatic_BTN_LOCATION:SetName( "BTN_LOCATION" )

			g_pStatic_BTN_LOCATION:AddString
			{	
				--MSG 			= "위치보기",
				MSG 			= STR_ID_4500,
				FONT_INDEX		= XUF_DODUM_11_NORMAL,
				FONT_STYLE      = FONT_STYLE["FS_SHELL"],
				SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
				"POS 			= D3DXVECTOR2(212,96)",
				"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
				"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
			}

			----------------- 등급보기

			g_pStatic_BTN_GRADE = g_pUIDialog:CreateStatic()
			g_pUIDialog:AddControl( g_pStatic_BTN_GRADE )
			g_pStatic_BTN_GRADE:SetName( "BTN_GRADE" )

			g_pStatic_BTN_GRADE:AddString
			{
				--MSG 			= "등급보기",
				MSG 			= STR_ID_4499,
				FONT_INDEX		= XUF_DODUM_11_NORMAL,
				FONT_STYLE      = FONT_STYLE["FS_SHELL"],
				SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
				"POS 			= D3DXVECTOR2(210+53,96)",
				"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
				"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
			}
--]]

-- 20120127 김석근, 길드원 위치 툴팁
-----------------------------------           캐릭터 뷰  1                  ---------------------------------------
g_pButton_guildMemberLocaTip1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_guildMemberLocaTip1 )
g_pButton_guildMemberLocaTip1:SetName( "GuildMemberLocaTip1" )
g_pButton_guildMemberLocaTip1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip1:SetNormalPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip1:SetOverPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176-1,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip1:SetDownPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_guildMemberLocaTip1:SetGuideDesc( STR_ID_27 )
g_pButton_guildMemberLocaTip1:SetGuideDescOffsetPos( D3DXVECTOR2(160,50) )
g_pButton_guildMemberLocaTip1:SetShow(false)



-----------------------------------           캐릭터 뷰  2                  ---------------------------------------
g_pButton_guildMemberLocaTip2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_guildMemberLocaTip2 )
g_pButton_guildMemberLocaTip2:SetName( "GuildMemberLocaTip2" )
g_pButton_guildMemberLocaTip2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip2:SetNormalPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip2:SetOverPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176-1,145+31*1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip2:SetDownPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_guildMemberLocaTip2:SetGuideDesc( STR_ID_27 )
g_pButton_guildMemberLocaTip2:SetGuideDescOffsetPos( D3DXVECTOR2(160,50) )
g_pButton_guildMemberLocaTip2:SetShow(false)



-----------------------------------           캐릭터 뷰  3                  ---------------------------------------
g_pButton_guildMemberLocaTip3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_guildMemberLocaTip3 )
g_pButton_guildMemberLocaTip3:SetName( "GuildMemberLocaTip3" )
g_pButton_guildMemberLocaTip3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip3:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip3:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip3:SetNormalPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip3:SetOverPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176-1,145+31*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip3:SetDownPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_guildMemberLocaTip3:SetGuideDesc( STR_ID_27 )
g_pButton_guildMemberLocaTip3:SetGuideDescOffsetPos( D3DXVECTOR2(160,50) )
g_pButton_guildMemberLocaTip3:SetShow(false)



-----------------------------------           캐릭터 뷰  4                  ---------------------------------------
g_pButton_guildMemberLocaTip4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_guildMemberLocaTip4 )
g_pButton_guildMemberLocaTip4:SetName( "GuildMemberLocaTip4" )
g_pButton_guildMemberLocaTip4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip4:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip4:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip4:SetNormalPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip4:SetOverPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176-1,145+31*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip4:SetDownPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_guildMemberLocaTip4:SetGuideDesc( STR_ID_27 )
g_pButton_guildMemberLocaTip4:SetGuideDescOffsetPos( D3DXVECTOR2(160,50) )
g_pButton_guildMemberLocaTip4:SetShow(false)



-----------------------------------           캐릭터 뷰  5                  ---------------------------------------
g_pButton_guildMemberLocaTip5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_guildMemberLocaTip5 )
g_pButton_guildMemberLocaTip5:SetName( "GuildMemberLocaTip5" )
g_pButton_guildMemberLocaTip5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip5:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip5:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip5:SetNormalPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip5:SetOverPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176-1,145+31*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip5:SetDownPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_guildMemberLocaTip5:SetGuideDesc( STR_ID_27 )
g_pButton_guildMemberLocaTip5:SetGuideDescOffsetPos( D3DXVECTOR2(160,50) )
g_pButton_guildMemberLocaTip5:SetShow(false)



-----------------------------------           캐릭터 뷰  6                  ---------------------------------------
g_pButton_guildMemberLocaTip6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_guildMemberLocaTip6 )
g_pButton_guildMemberLocaTip6:SetName( "GuildMemberLocaTip6" )
g_pButton_guildMemberLocaTip6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip6:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip6:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip6:SetNormalPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip6:SetOverPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176-1,145+31*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip6:SetDownPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_guildMemberLocaTip6:SetGuideDesc( STR_ID_27 )
g_pButton_guildMemberLocaTip6:SetGuideDescOffsetPos( D3DXVECTOR2(160,50) )
g_pButton_guildMemberLocaTip6:SetShow(false)



-----------------------------------           캐릭터 뷰  7                  ---------------------------------------
g_pButton_guildMemberLocaTip7 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_guildMemberLocaTip7 )
g_pButton_guildMemberLocaTip7:SetName( "GuildMemberLocaTip7" )
g_pButton_guildMemberLocaTip7:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip7:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip7:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip7:SetNormalPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip7:SetOverPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176-1,145+31*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip7:SetDownPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_guildMemberLocaTip7:SetGuideDesc( STR_ID_27 )
g_pButton_guildMemberLocaTip7:SetGuideDescOffsetPos( D3DXVECTOR2(160,50) )
g_pButton_guildMemberLocaTip7:SetShow(false)



-----------------------------------           캐릭터 뷰  8                  ---------------------------------------
g_pButton_guildMemberLocaTip8 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_guildMemberLocaTip8 )
g_pButton_guildMemberLocaTip8:SetName( "GuildMemberLocaTip8" )
g_pButton_guildMemberLocaTip8:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip8:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip8:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_guildMemberLocaTip8:SetNormalPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip8:SetOverPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176-1,145+31*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_guildMemberLocaTip8:SetDownPoint
{
    ADD_SIZE_X = 120,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(176,145+31*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_guildMemberLocaTip8:SetGuideDesc( STR_ID_27 )
g_pButton_guildMemberLocaTip8:SetGuideDescOffsetPos( D3DXVECTOR2(160,50) )
g_pButton_guildMemberLocaTip8:SetShow(false)
