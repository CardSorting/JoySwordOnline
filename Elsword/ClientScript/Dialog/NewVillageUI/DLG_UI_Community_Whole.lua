-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 145, 0 ) ) -- 유저1  ---  31 , 145
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 176, 0 ) ) -- 유저2  ---  31 , 176
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 207, 0 ) ) -- 유저3  ---  31 , 207
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 238, 0 ) ) -- 유저4  ---  31 , 238
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 269, 0 ) ) -- 유저5  ---  31 , 269
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 300, 0 ) ) -- 유저6  ---  31 , 300
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 331, 0 ) ) -- 유저7  ---  31 , 331
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 362, 0 ) ) -- 유저8  ---  31 , 362



g_pStaticwhole = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticwhole )
g_pStaticwhole:SetName( "whole" )

g_pStaticAll = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAll )
g_pStaticAll:SetName( "communityAll" )


----- 채널박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 170,
	"LEFT_TOP		= D3DXVECTOR2(31,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(202,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------ 채널

g_pPicture_ch = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_ch )

g_pPicture_ch:SetTex( "DLG_UI_Title01.TGA", "ch" )

g_pPicture_ch:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------- 마을 이름, 채널


g_pStatic_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name )
g_pStatic_name:SetName( "channel_name" )

g_pStatic_name:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(61,96)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
-- 채널 툴팁  20110908 X_x88  ext0을 넣어서 겹치는거 방지할려고 했음
g_pButton_ChannelTip_ext0 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ChannelTip_ext0 )
g_pButton_ChannelTip_ext0:SetName( "ChannelTip_ext0" )
g_pButton_ChannelTip_ext0:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )--투명텍스처입니다X_x88
g_pButton_ChannelTip_ext0:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_ChannelTip_ext0:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_ChannelTip_ext0:SetNormalPoint
{
    ADD_SIZE_X = 160,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(31,86)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ChannelTip_ext0:SetOverPoint
{
    ADD_SIZE_X = 160,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(31,86)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ChannelTip_ext0:SetDownPoint
{
    ADD_SIZE_X = 160,
	ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(31,86)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_ChannelTip_ext0:SetGuideDescOffsetPos( D3DXVECTOR2(160,50) )
g_pButton_ChannelTip_ext0:SetShow(false)



-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line8:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line9 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line9 )

g_pPicture_line9:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line9:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line10 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line10 )

g_pPicture_line10:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line10:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line11 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line11 )

g_pPicture_line11:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line11:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line12 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line12 )

g_pPicture_line12:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line12:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line13 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line13 )

g_pPicture_line13:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line13:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,324)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line14 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line14 )

g_pPicture_line14:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line14:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,324)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line15 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line15 )

g_pPicture_line15:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line15:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line16 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line16 )

g_pPicture_line16:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line16:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line17 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line17 )

g_pPicture_line17:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line17:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line18 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line18 )

g_pPicture_line18:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line18:SetPoint
{
     ADD_SIZE_Y = 14,
	"LEFT_TOP		= D3DXVECTOR2(185,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line19 = g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicture_line19 )

g_pPicture_line19:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line19:SetPoint
{
     ADD_SIZE_Y = 244,
	"LEFT_TOP		= D3DXVECTOR2(185,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


---------------------분류
-------------------------------------------------------  닉네임

g_pPicture_nickname = g_pUIDialog:CreatePicture()
g_pStaticAll:AddPicture( g_pPicture_nickname )

g_pPicture_nickname:SetTex( "DLG_UI_Title01_A.TGA", "nickname" )

g_pPicture_nickname:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(58,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-------------------------------------------------상태


g_pPicture_state = g_pUIDialog:CreatePicture()
g_pStaticAll:AddPicture( g_pPicture_state )

g_pPicture_state:SetTex( "DLG_UI_Title01_A.TGA", "STATE" )

g_pPicture_state:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(204,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
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


---------------------------상태


g_pStatic_state1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state1 )
g_pStatic_state1:SetName( "state1" )

g_pStatic_state1:AddString
{
	MSG 			= STR_ID_1260,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200,149)",
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


---------------------------상태


g_pStatic_state2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state2 )
g_pStatic_state2:SetName( "state2" )

g_pStatic_state2:AddString
{
	MSG 			= STR_ID_106,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200,178)",
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


---------------------------상태


g_pStatic_state3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state3 )
g_pStatic_state3:SetName( "state3" )

g_pStatic_state3:AddString
{
	MSG 			= STR_ID_1261,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200,210)",
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


---------------------------상태


g_pStatic_state4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state4 )
g_pStatic_state4:SetName( "state4" )

g_pStatic_state4:AddString
{
	MSG 			= STR_ID_1262,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200,241)",
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


---------------------------상태


g_pStatic_state5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state5 )
g_pStatic_state5:SetName( "state5" )

g_pStatic_state5:AddString
{
	MSG 			= STR_ID_1263,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200,272)",
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


---------------------------상태


g_pStatic_state6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state6 )
g_pStatic_state6:SetName( "state6" )

g_pStatic_state6:AddString
{
	MSG 			= STR_ID_1263,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200,301)",
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


---------------------------상태


g_pStatic_state7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state7 )
g_pStatic_state7:SetName( "state7" )

g_pStatic_state7:AddString
{
	MSG 			= STR_ID_1263,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200,332)",
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


---------------------------상태


g_pStatic_state8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state8 )
g_pStatic_state8:SetName( "state8" )

g_pStatic_state8:AddString
{
	MSG 			= STR_ID_1261,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200,363)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-------------------   캐릭터 리스트 각 투명 버튼 



g_pButtonUser1= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser1)
g_pButtonUser1:SetName( "User1" )
g_pButtonUser1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser1:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser1:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser1:SetNormalPoint
{
	  ADD_SIZE_X = 155,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetOverPoint
{
    ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(26,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetDownPoint
{
     
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,141+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:AddDummyInt(1)
g_pButtonUser1:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser1:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )

g_pButtonUser2= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser2)
g_pButtonUser2:SetName( "User2" )
g_pButtonUser2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser2:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser2:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser2:SetNormalPoint
{
	  ADD_SIZE_X = 155,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetOverPoint
{
     ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(26,172)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetDownPoint
{
      
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,172+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:AddDummyInt(2)
g_pButtonUser2:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser2:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )

g_pButtonUser3= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser3)
g_pButtonUser3:SetName( "User3" )
g_pButtonUser3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser3:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser3:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser3:SetNormalPoint
{
	  ADD_SIZE_X = 155,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,203)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:SetOverPoint
{
     ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(26,203)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:SetDownPoint
{
      
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,203+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:AddDummyInt(3)
g_pButtonUser3:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser3:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )



g_pButtonUser4= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser4)
g_pButtonUser4:SetName( "User4" )
g_pButtonUser4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser4:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser4:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser4:SetNormalPoint
{
	  ADD_SIZE_X = 155,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,234)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:SetOverPoint
{
     ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(26,234)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:SetDownPoint
{
   
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,234+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:AddDummyInt(4)
g_pButtonUser4:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser4:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )


g_pButtonUser5= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser5)
g_pButtonUser5:SetName( "User5" )
g_pButtonUser5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser5:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser5:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser5:SetNormalPoint
{
	  ADD_SIZE_X = 155,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:SetOverPoint
{
     ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(26,265)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:SetDownPoint
{
      
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,265+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:AddDummyInt(5)
g_pButtonUser5:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser5:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )


g_pButtonUser6= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser6)
g_pButtonUser6:SetName( "User6" )
g_pButtonUser6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser6:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser6:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser6:SetNormalPoint
{
	  ADD_SIZE_X = 155,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:SetOverPoint
{
     ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(26,296)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:SetDownPoint
{
      
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,296+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:AddDummyInt(6)
g_pButtonUser6:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser6:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )

g_pButtonUser7= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser7)
g_pButtonUser7:SetName( "User7" )
g_pButtonUser7:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser7:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser7:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser7:SetNormalPoint
{
	  ADD_SIZE_X = 155,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,327)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:SetOverPoint
{
     ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(26,327)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:SetDownPoint
{
      
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,327+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:AddDummyInt(7)
g_pButtonUser7:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser7:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )



g_pButtonUser8= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser8)
g_pButtonUser8:SetName( "User8" )
g_pButtonUser8:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser8:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser8:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser8:SetNormalPoint
{
	  ADD_SIZE_X = 155,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,358)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:SetOverPoint
{
     ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(26,358)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:SetDownPoint
{
      
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,358+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:AddDummyInt(8)
g_pButtonUser8:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser8:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )





--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(110,393)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(110,392)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(110+1,392+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_FIELD_LIST_PREV"] )

--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(189,393)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(188,392)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188+1,392+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_FIELD_LIST_NEXT"] )

-----페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticwhole:AddPicture( g_pPicturepage)

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(128,391)",
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
	"POS 			= D3DXVECTOR2(156,396)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}









--------------------------         하단  버튼 (일반)       -------------------------------

-------------친구찾기



g_pButtonFriend_add = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonFriend_add )
g_pButtonFriend_add:SetName( "Button_Friend_add" )
g_pButtonFriend_add:SetNormalTex( "DLG_UI_Button10.tga", "friend_add_Normal" )

g_pButtonFriend_add:SetOverTex( "DLG_UI_Button10.tga", "friend_add_over" )

g_pButtonFriend_add:SetDownTex( "DLG_UI_Button10.tga", "friend_add_over" )

g_pButtonFriend_add:SetDisableTex( "DLG_UI_Common_Texture09.tga", "friend_add_noactive" )

g_pButtonFriend_add:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(19,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend_add:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend_add:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonFriend_add:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(19,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonFriend_add:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_OPEN"] )

-------------파티초대



g_pButtonparty = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonparty )
g_pButtonparty:SetName( "party" )
g_pButtonparty:SetNormalTex( "DLG_UI_BUTTON10.tga", "party_normal" )
g_pButtonparty:SetOverTex( "DLG_UI_BUTTON10.tga", "party_over" )
g_pButtonparty:SetDownTex( "DLG_UI_BUTTON10.tga", "party_over" )
g_pButtonparty:SetDisableTex( "DLG_UI_Common_Texture09.tga", "party_noactive" )
g_pButtonparty:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(91,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(91,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(91+1,427+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(91,427)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PARTY"] )



--[[
-------------파티요청
g_pButtonparty_demand = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonparty_demand )
g_pButtonparty_demand:SetName( "party_demand" )
g_pButtonparty_demand:SetNormalTex( "DLG_UI_BUTTON10.tga", "party_demand_normal" )

g_pButtonparty_demand:SetOverTex( "DLG_UI_BUTTON10.tga", "party_demand_over" )

g_pButtonparty_demand:SetDownTex( "DLG_UI_BUTTON10.tga", "party_demand_over" )

g_pButtonparty_demand:SetDisableTex( "DLG_UI_Common_Texture09.tga", "party_demand_noactive" )

g_pButtonparty_demand:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(162,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty_demand:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty_demand:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(162+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonparty_demand:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(162,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonparty_demand:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PARTY_DEMAND"] )
--]]









-------------사제맺기

-- 해외팀 주석 처리 ( 같은게 밑에 또 있음 하나 제거 )
--[[
g_pButtondisciple = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondisciple )
g_pButtondisciple:SetName( "disciple" )
g_pButtondisciple:SetNormalTex( "DLG_UI_BUTTON10.tga", "disciple_normal" )

g_pButtondisciple:SetOverTex( "DLG_UI_BUTTON10.tga", "disciple_over" )

g_pButtondisciple:SetDownTex( "DLG_UI_BUTTON10.tga", "disciple_over" )

g_pButtondisciple:SetDisableTex( "DLG_UI_Common_Texture09.tga", "DISCIPLE_NOACTIVE" )

g_pButtondisciple:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(233,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(233,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(233+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtondisciple:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(233,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtondisciple:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_DISCIPLE"] )
--]]





--------------------------         하단  버튼 (대전)       -------------------------------
--[[
-------------친구찾기


g_pButtonFriend_add = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonFriend_add )
g_pButtonFriend_add:SetName( "Button_Friend_add" )
g_pButtonFriend_add:SetNormalTex( "DLG_UI_Button10.tga", "friend_add_Normal" )

g_pButtonFriend_add:SetOverTex( "DLG_UI_Button10.tga", "friend_add_over" )

g_pButtonFriend_add:SetDownTex( "DLG_UI_Button10.tga", "friend_add_over" )

g_pButtonFriend_add:SetDisableTex( "DLG_UI_Common_Texture09.tga", "friend_add_noactive" )

g_pButtonFriend_add:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(19,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend_add:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend_add:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonFriend_add:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(19,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonFriend_add:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_OPEN"] )
--]]

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










-------------사제맺기



g_pButtondisciple = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondisciple )
g_pButtondisciple:SetName( "disciple" )
g_pButtondisciple:SetNormalTex( "DLG_UI_BUTTON10.tga", "disciple_normal" )

g_pButtondisciple:SetOverTex( "DLG_UI_BUTTON10.tga", "disciple_over" )

g_pButtondisciple:SetDownTex( "DLG_UI_BUTTON10.tga", "disciple_over" )

g_pButtondisciple:SetDisableTex( "DLG_UI_Common_Texture09.tga", "DISCIPLE_NOACTIVE" )

g_pButtondisciple:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(233,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(233,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(233+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtondisciple:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(233,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtondisciple:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_DISCIPLE"] )







-------------새로 고침


g_pButtonReturn = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonReturn )
g_pButtonReturn:SetName( "Return" )
g_pButtonReturn:SetNormalTex( "DLG_UI_BUTTON10.tga", "return_normal" )

g_pButtonReturn:SetOverTex( "DLG_UI_BUTTON10.tga", "return_over" )

g_pButtonReturn:SetDownTex( "DLG_UI_BUTTON10.tga", "return_over" )

g_pButtonReturn:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(213,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReturn:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(213,89)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReturn:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(213+1,89+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReturn:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_UPDATE_FIELD_USER"] )
