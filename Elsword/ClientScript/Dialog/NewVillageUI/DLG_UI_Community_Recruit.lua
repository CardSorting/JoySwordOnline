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



g_pStaticReferee = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticReferee )
g_pStaticReferee:SetName( "Referee" )



-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line8:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line9 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line9 )

g_pPicture_line9:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line9:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line10 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line10 )

g_pPicture_line10:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line10:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line11 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line11 )

g_pPicture_line11:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line11:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line12 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line12 )

g_pPicture_line12:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line12:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line13 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line13 )

g_pPicture_line13:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line13:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,324)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line14 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line14 )

g_pPicture_line14:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line14:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,324)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line15 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line15 )

g_pPicture_line15:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line15:SetPoint
{
     ADD_SIZE_X = 155,
	"LEFT_TOP		= D3DXVECTOR2(27,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line16 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line16 )

g_pPicture_line16:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line16:SetPoint
{
     ADD_SIZE_X = 99,
	"LEFT_TOP		= D3DXVECTOR2(188,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line17 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line17 )

g_pPicture_line17:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line17:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line18 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line18 )

g_pPicture_line18:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line18:SetPoint
{
     ADD_SIZE_Y = 14,
	"LEFT_TOP		= D3DXVECTOR2(185,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line19 = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_line19 )

g_pPicture_line19:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line19:SetPoint
{
     ADD_SIZE_Y = 244,
	"LEFT_TOP		= D3DXVECTOR2(185,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

---------------------분류
--[[
g_pPicture_lv = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_lv )

g_pPicture_lv:SetTex( "DLG_UI_Title02.TGA", "lv" )

g_pPicture_lv:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(43-16,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
--]]



-------------------------------------------------------  닉테임

g_pPicture_nickname = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_nickname )

g_pPicture_nickname:SetTex( "DLG_UI_Title01_A.TGA", "nickname" )

g_pPicture_nickname:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(96-16-22,123-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-------------------------------------------------상태


g_pPicture_state = g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicture_state )

g_pPicture_state:SetTex( "DLG_UI_Title01_A.TGA", "state" )

g_pPicture_state:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(217-13,123-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


-----------------------------------           캐릭터 뷰  1                  ---------------------------------------



g_pStatic_User1_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User1_lv )
g_pStatic_User1_lv:SetName( "User1_lv" )

g_pStatic_User1_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,149-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "name1" )

g_pStatic_name1:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78-19,149-4)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state1 )
g_pStatic_state1:SetName( "state1" )

g_pStatic_state1:AddString
{
	--MSG 			= STR_ID_1254,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232-10,149+5)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






----------------------------------------         캐릭터 뷰  2             ----------------------------

g_pStatic_User2_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User2_lv )
g_pStatic_User2_lv:SetName( "User2_lv" )

g_pStatic_User2_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,178-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStatic_name2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name2 )
g_pStatic_name2:SetName( "name2" )

g_pStatic_name2:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78-19,178-4)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state2 )
g_pStatic_state2:SetName( "state2" )

g_pStatic_state2:AddString
{
	--MSG 			= STR_ID_1255,
	FONT_INDEX		= XUF_DODUM_11_NORAML,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232-10,178+5)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





----------------------------------------------------  캐릭터 뷰  3 -----------------------------------






g_pStatic_User3_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User3_lv )
g_pStatic_User3_lv:SetName( "User3_lv" )

g_pStatic_User3_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,210-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






g_pStatic_name3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name3 )
g_pStatic_name3:SetName( "name3" )

g_pStatic_name3:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78-19,210-4)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state3 )
g_pStatic_state3:SetName( "state3" )

g_pStatic_state3:AddString
{
	--MSG 			= STR_ID_1256,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232-10,210+5)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






--------------------------------------------------  캐릭터 뷰  4 --------------------------------------

g_pStatic_User4_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User4_lv )
g_pStatic_User4_lv:SetName( "User4_lv" )

g_pStatic_User4_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,241-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_name4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name4 )
g_pStatic_name4:SetName( "name4" )

g_pStatic_name4:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78-19,241-4)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state4 )
g_pStatic_state4:SetName( "state4" )

g_pStatic_state4:AddString
{
	--MSG 			= STR_ID_1262,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232-10,241+5)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------------------------     캐릭터 뷰  5     ------------------------------------
g_pStatic_User5_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User5_lv )
g_pStatic_User5_lv:SetName( "User5_lv" )

g_pStatic_User5_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,272-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_name5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name5 )
g_pStatic_name5:SetName( "name5" )

g_pStatic_name5:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78-19,272-4)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state5 )
g_pStatic_state5:SetName( "state5" )

g_pStatic_state5:AddString
{
	--MSG 			= STR_ID_1262,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232-10,272+5)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
------------------------------------------     캐릭터 뷰  6         --------------------------------------

g_pStatic_User6_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User6_lv )
g_pStatic_User6_lv:SetName( "User6_lv" )

g_pStatic_User6_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,301-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_name6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name6 )
g_pStatic_name6:SetName( "name6" )

g_pStatic_name6:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78-19,301-4)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state6 )
g_pStatic_state6:SetName( "state6" )

g_pStatic_state6:AddString
{
	--MSG 			= STR_ID_1262,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232-10,301+5)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
----------------------------------------  캐릭터 뷰  7-------------------------------

g_pStatic_User7_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User7_lv )
g_pStatic_User7_lv:SetName( "User7_lv" )

g_pStatic_User7_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,332-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_name7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name7 )
g_pStatic_name7:SetName( "name7" )

g_pStatic_name7:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78-19,332-4)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state7 )
g_pStatic_state7:SetName( "state7" )

g_pStatic_state7:AddString
{
	--MSG 			= STR_ID_1262,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232-10,332+5)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
---------------------------------------------------  캐릭터 뷰  8   ---------------------------------

g_pStatic_User8_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User8_lv )
g_pStatic_User8_lv:SetName( "User8_lv" )

g_pStatic_User8_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,363-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_name8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name8 )
g_pStatic_name8:SetName( "name8" )

g_pStatic_name8:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78-19,363-4)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state8 )
g_pStatic_state8:SetName( "state8" )

g_pStatic_state8:AddString
{
	--MSG 			= STR_ID_1262,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232-10,363+5)",
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
	  ADD_SIZE_X = 140,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetOverPoint
{
    ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetDownPoint
{
      ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,141+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonUser1:AddDummyInt(1)
g_pButtonUser1:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )


g_pButtonUser2= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser2)
g_pButtonUser2:SetName( "User2" )
g_pButtonUser2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser2:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser2:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser2:SetNormalPoint
{
	  ADD_SIZE_X = 140,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetOverPoint
{
    ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,172)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetDownPoint
{
      ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,172+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonUser2:AddDummyInt(2)
g_pButtonUser2:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )


g_pButtonUser3= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser3)
g_pButtonUser3:SetName( "User3" )
g_pButtonUser3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser3:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser3:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser3:SetNormalPoint
{
	  ADD_SIZE_X = 140,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,203)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:SetOverPoint
{
    ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,203)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:SetDownPoint
{
      ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,203+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonUser3:AddDummyInt(3)
g_pButtonUser3:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )


g_pButtonUser4= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser4)
g_pButtonUser4:SetName( "User4" )
g_pButtonUser4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser4:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser4:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser4:SetNormalPoint
{
	ADD_SIZE_X = 140,
     	ADD_SIZE_Y = 25,
    	"LEFT_TOP		= D3DXVECTOR2(26,234)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:SetOverPoint
{
     	ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,234)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:SetDownPoint
{
   	ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,234+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:AddDummyInt(4)
g_pButtonUser4:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )


g_pButtonUser5= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser5)
g_pButtonUser5:SetName( "User5" )
g_pButtonUser5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser5:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser5:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser5:SetNormalPoint
{
	  ADD_SIZE_X = 140,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:SetOverPoint
{
     ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,265)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:SetDownPoint
{
      ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,265+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:AddDummyInt(5)
g_pButtonUser5:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )


g_pButtonUser6= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser6)
g_pButtonUser6:SetName( "User6" )
g_pButtonUser6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser6:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser6:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser6:SetNormalPoint
{
	  ADD_SIZE_X = 140,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:SetOverPoint
{
     ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,296)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:SetDownPoint
{
      ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,296+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:AddDummyInt(6)
g_pButtonUser6:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )


g_pButtonUser7= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser7)
g_pButtonUser7:SetName( "User7" )
g_pButtonUser7:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser7:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser7:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser7:SetNormalPoint
{
	  ADD_SIZE_X = 140,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,327)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:SetOverPoint
{
     ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,327)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:SetDownPoint
{
      ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,327+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:AddDummyInt(7)
g_pButtonUser7:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )


g_pButtonUser8= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser8)
g_pButtonUser8:SetName( "User8" )
g_pButtonUser8:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser8:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser8:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser8:SetNormalPoint
{
	  ADD_SIZE_X = 140,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,358)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:SetOverPoint
{
     ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,358)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:SetDownPoint
{
      ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,358+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:AddDummyInt(8)
g_pButtonUser8:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )


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
g_pButtonL_arrow:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_REFEREE_PREV_PAGE"] )

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
g_pButtonR_arrow:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_REFEREE_NEXT_PAGE"] )

-----페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticReferee:AddPicture( g_pPicturepage)

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
	"POS 			= D3DXVECTOR2(156,396+7)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}








--------------------------         하단  버튼        -------------------------------

-------------친구맺기



g_pButtonfriend_add = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonfriend_add )
g_pButtonfriend_add:SetName( "Referee_Button_Friend_add" )
g_pButtonfriend_add:SetNormalTex( "DLG_UI_BUTTON10.tga", "friend_add_normal" )

g_pButtonfriend_add:SetOverTex( "DLG_UI_BUTTON10.tga", "friend_add_over" )

g_pButtonfriend_add:SetDownTex( "DLG_UI_BUTTON10.tga", "friend_add_over" )

g_pButtonfriend_add:SetDisableTex( "DLG_UI_Common_Texture09.tga", "friend_add_noactive" )

g_pButtonfriend_add:SetNormalPoint
{
	 
    "LEFT_TOP		= D3DXVECTOR2(19,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend_add:SetOverPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(19,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend_add:SetDownPoint
{
       ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonfriend_add:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(19,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonfriend_add:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_OPEN"] )
