-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticopen = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticopen )
g_pStaticopen:SetName( "open" )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_DIALOG_EXIT"] )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 3, 4, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 314, 421, 0 ) ) -- Size

---------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "open_bg1_top" )
g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(3,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "open_bg1_middle" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 443-50,
	"LEFT_TOP		= D3DXVECTOR2(3,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "open_bg1_bottom" )
g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(3,458-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
    ADD_SIZE_X = 292,
	"LEFT_TOP		= D3DXVECTOR2(12,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------------BG2
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "open_bg2_top" )
g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,102-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "open_bg2_middle" )
g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 294,
	"LEFT_TOP		= D3DXVECTOR2(16,111-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "open_bg2_bottom" )
g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,406-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_line1 )
g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_line1:SetPoint
{
    ADD_SIZE_X = 292,
	"LEFT_TOP		= D3DXVECTOR2(12,47-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------------  TITLE
g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_title )
g_pPicture_title:SetTex( "DLG_UI_Title03.tga", "Get_item" )
g_pPicture_title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------------------------  FEEL

-- g_pPicture_feel = g_pUIDialog:CreatePicture()
-- g_pStaticopen:AddPicture( g_pPicture_feel )
-- g_pPicture_feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )
-- g_pPicture_feel:SetPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(20,52)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }


-- g_pStatic_feel = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic_feel )
-- g_pStatic_feel:SetName( "Static_Personal_Shop_Name_Up" )
-- g_pStatic_feel:AddString
-- {
	--MSG 			= STR_ID_1365,
	-- FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(39,54)",
	-- "COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	-- "OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
-- }

-------------------------SLOT   BG 1
g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg4 )
g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "slot_bg_left" )
g_pPicture_bg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,107-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg4 )
g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "slot_bg_middle" )
g_pPicture_bg4:SetPoint
{
    ADD_SIZE_X = 262,
	"LEFT_TOP		= D3DXVECTOR2(29,107-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg4 )
g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "slot_bg_right" )
g_pPicture_bg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(291,107-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------------SLOT   BG 2
g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg5 )
g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "slot_bg_left" )
g_pPicture_bg5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,208-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg5 )
g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "slot_bg_middle" )
g_pPicture_bg5:SetPoint
{
    ADD_SIZE_X = 262,
	"LEFT_TOP		= D3DXVECTOR2(29,208-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg5 )
g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "slot_bg_right" )
g_pPicture_bg5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(291,208-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------------SLOT   BG 3
g_pPicture_bg6 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg6 )
g_pPicture_bg6:SetTex( "DLG_UI_Common_Texture01.TGA", "slot_bg_left" )
g_pPicture_bg6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,309-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg6 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg6 )
g_pPicture_bg6:SetTex( "DLG_UI_Common_Texture01.TGA", "slot_bg_middle" )
g_pPicture_bg6:SetPoint
{
    ADD_SIZE_X = 262,
	"LEFT_TOP		= D3DXVECTOR2(29,309-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg6 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg6 )
g_pPicture_bg6:SetTex( "DLG_UI_Common_Texture01.TGA", "slot_bg_right" )
g_pPicture_bg6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(291,309-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------------------------------------------------SLOT1
g_pPicture_bg7 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg7 )
g_pPicture_bg7:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )
g_pPicture_bg7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(29,116-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------    BOX
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )
g_pPicture_box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,143-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )
g_pPicture_box1:SetPoint
{
    ADD_SIZE_X = 119,
	"LEFT_TOP		= D3DXVECTOR2(86,143-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )
g_pPicture_box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206,143-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------

g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box2 )
g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )
g_pPicture_box2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(230,143-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box2 )
g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )
g_pPicture_box2:SetPoint
{
    ADD_SIZE_X = 49,
	"LEFT_TOP		= D3DXVECTOR2(235,143-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box2 )
g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )
g_pPicture_box2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(285,143-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box3 )
g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )
g_pPicture_box3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,175-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box3 )
g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )
g_pPicture_box3:SetPoint
{
    ADD_SIZE_X = 144,
	"LEFT_TOP		= D3DXVECTOR2(86,175-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box3 )
g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )
g_pPicture_box3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(231,175-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------bar

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_line2 )
g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_line2:SetPoint
{
    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(29,169-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------  ED

g_pPicture_ed1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_ed1 )
g_pPicture_ed1:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )
g_pPicture_ed1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,147-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_ed2 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_ed2 )
g_pPicture_ed2:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )
g_pPicture_ed2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,179-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_ed3 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_ed3 )
g_pPicture_ed3:SetTex( "DLG_UI_Title01.TGA", "total_money" )
g_pPicture_ed3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(37-5,179-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------------------------------------------------------------------  SLOT2
g_pPicture_bg8 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg8 )
g_pPicture_bg8:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )
g_pPicture_bg8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(29,217-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------------    BOX

g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box4 )
g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )
g_pPicture_box4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,244-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box4 )
g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )
g_pPicture_box4:SetPoint
{
    ADD_SIZE_X = 119,
	"LEFT_TOP		= D3DXVECTOR2(86,244-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box4 )
g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )
g_pPicture_box4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206,244-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------
g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box5 )
g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )
g_pPicture_box5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(230,244-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box5 )
g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )
g_pPicture_box5:SetPoint
{
    ADD_SIZE_X = 49,
	"LEFT_TOP		= D3DXVECTOR2(235,244-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box5 )
g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )
g_pPicture_box5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(285,244-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------
g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box3 )
g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )
g_pPicture_box3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,276-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box3 )
g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )
g_pPicture_box3:SetPoint
{
    ADD_SIZE_X = 144,
	"LEFT_TOP		= D3DXVECTOR2(86,276-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box3 )
g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )
g_pPicture_box3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(231,276-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------bar
g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_line3 )
g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_line3:SetPoint
{
    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(29,270-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------  ED
g_pPicture_ed1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_ed1 )
g_pPicture_ed1:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )
g_pPicture_ed1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,248-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_ed2 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_ed2 )
g_pPicture_ed2:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )
g_pPicture_ed2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,280-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_ed3 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_ed3 )
g_pPicture_ed3:SetTex( "DLG_UI_Title01.TGA", "total_money" )
g_pPicture_ed3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(37-5,280-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------------------------------------------- SLOT3
g_pPicture_bg9 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg9 )
g_pPicture_bg9:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )
g_pPicture_bg9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(29,318-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------------    BOX
g_pPicture_box7 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box7 )
g_pPicture_box7:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )
g_pPicture_box7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,345-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box7 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box7 )
g_pPicture_box7:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )
g_pPicture_box7:SetPoint
{
    ADD_SIZE_X = 119,
	"LEFT_TOP		= D3DXVECTOR2(86,345-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box7 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box7 )
g_pPicture_box7:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )
g_pPicture_box7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206,345-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------
g_pPicture_box8 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box8 )
g_pPicture_box8:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )
g_pPicture_box8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(230,345-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box8 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box8 )
g_pPicture_box8:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )
g_pPicture_box8:SetPoint
{
    ADD_SIZE_X = 49,
	"LEFT_TOP		= D3DXVECTOR2(235,345-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box8 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box8 )
g_pPicture_box8:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )
g_pPicture_box8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(285,345-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------
g_pPicture_box9 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box9 )
g_pPicture_box9:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )
g_pPicture_box9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,377-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box9 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box9 )
g_pPicture_box9:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )
g_pPicture_box9:SetPoint
{
    ADD_SIZE_X = 144,
	"LEFT_TOP		= D3DXVECTOR2(86,377-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box9 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_box9 )
g_pPicture_box9:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )
g_pPicture_box9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(231,377-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------bar

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_line4 )
g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_line4:SetPoint
{
    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(29,371-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------  ED
g_pPicture_ed1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_ed1 )
g_pPicture_ed1:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )
g_pPicture_ed1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,349-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_ed2 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_ed2 )
g_pPicture_ed2:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )
g_pPicture_ed2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,381-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_ed3 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_ed3 )
g_pPicture_ed3:SetTex( "DLG_UI_Title01.TGA", "total_money" )
g_pPicture_ed3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(37-5,381-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









--------------------   개당가격
g_pStatic_such = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_such )
g_pStatic_such:SetName( "such" )
g_pStatic_such:AddString
{
	MSG 			= STR_ID_1246,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(124,130-50)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_such = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_such )
g_pStatic_such:SetName( "such" )

g_pStatic_such:AddString
{
	MSG 			= STR_ID_1246,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(124,231-50)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_such = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_such )
g_pStatic_such:SetName( "such" )

g_pStatic_such:AddString
{
	MSG 			= STR_ID_1246,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(124,332-50)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


-----------------  수량


g_pStatic_many = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_many )
g_pStatic_many:SetName( "many1" )

g_pStatic_many:AddString
{
	MSG 			= STR_ID_12137,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(248,130-50)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_many = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_many )
g_pStatic_many:SetName( "many2" )

g_pStatic_many:AddString
{
	MSG 			= STR_ID_12137,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(248,231-50)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_many = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_many )
g_pStatic_many:SetName( "many3" )

g_pStatic_many:AddString
{
	MSG 			= STR_ID_12137,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(248,332-50)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


--------------------------------   아이템 명    --------------------------------


g_pStatic_item1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item1 )
g_pStatic_item1:SetName( "Static_Item_Name1" )

g_pStatic_item1:AddString
{
	-- MSG 			= "＋5엘리트 크샨베르크",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(81,117-50)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}


g_pStatic_item2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item2 )
g_pStatic_item2:SetName( "Static_Item_Name2" )

g_pStatic_item2:AddString
{
	-- MSG 			= "＋5엘리트 크샨베르크",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(81,218-50)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}


g_pStatic_item3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item3 )
g_pStatic_item3:SetName( "Static_Item_Name3" )

g_pStatic_item3:AddString
{
	-- MSG 			= "＋5엘리트 크샨베르크",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(81,319-50)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}


---------------------  곱하기    -------------------


g_pStatic_double = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_double )
g_pStatic_double:SetName( "double" )

g_pStatic_double:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_15_BOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(213,145-50)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_double = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_double )
g_pStatic_double:SetName( "double" )

g_pStatic_double:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_15_BOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(213,245-50)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_double = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_double )
g_pStatic_double:SetName( "double" )

g_pStatic_double:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_15_BOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(213,346-50)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------     가격 수치    ------------


g_pStatic_price1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_price1 )
g_pStatic_price1:SetName( "Static_Item_Price1" )

g_pStatic_price1:AddString
{
	-- MSG 			= "200,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(194,148-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"COLOR			= D3DXCOLOR(0.9,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_price2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_price2 )
g_pStatic_price2:SetName( "Static_Item_Price2" )

g_pStatic_price2:AddString
{
	-- MSG 			= "200,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(194,249-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_price3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_price3 )
g_pStatic_price3:SetName( "Static_Item_Price3" )

g_pStatic_price3:AddString
{
	-- MSG 			= "200,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(194,350-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",


}

----------------------  수량   -------------------


g_pStatic_many1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_many1 )
g_pStatic_many1:SetName( "Static_Item_Num1" )

g_pStatic_many1:AddString
{
	MSG 			= STR_ID_1248,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(272,148-50)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_many2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_many2 )
g_pStatic_many2:SetName( "Static_Item_Num2" )

g_pStatic_many2:AddString
{
	MSG 			= STR_ID_1248,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(272,249-50)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_many3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_many3 )
g_pStatic_many3:SetName( "Static_Item_Num3" )

g_pStatic_many3:AddString
{
	MSG 			= STR_ID_1248,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(272,350-50)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",


}


---------------총 ED   -----------------


g_pStatic_total1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_total1 )
g_pStatic_total1:SetName( "Static_Item_TotalED1" )

g_pStatic_total1:AddString
{
	-- MSG 			= "3,000,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(217,179-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"COLOR			= D3DXCOLOR(0.9,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_total2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_total2 )
g_pStatic_total2:SetName( "Static_Item_TotalED2" )

g_pStatic_total2:AddString
{
	-- MSG 			= "4,000,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(217,280-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"COLOR			= D3DXCOLOR(0.9,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_total3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_total3 )
g_pStatic_total3:SetName( "Static_Item_TotalED3" )

g_pStatic_total3:AddString
{
	-- MSG 			= "5,000,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(217,381-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"COLOR			= D3DXCOLOR(0.9,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}


-----------------------------   물품받기
g_pButtonreGet_itemS1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonreGet_itemS1 )
g_pButtonreGet_itemS1:SetName( "Button_Get_itemS1" )
g_pButtonreGet_itemS1:SetNormalTex( "DLG_UI_BUTTON12.tga", "Get_itemS_NORMAL" )
g_pButtonreGet_itemS1:SetOverTex( "DLG_UI_BUTTON12.tga", "Get_itemS_OVER" )
g_pButtonreGet_itemS1:SetDownTex( "DLG_UI_BUTTON12.tga", "Get_itemS_OVER" )
g_pButtonreGet_itemS1:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(240,175-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonreGet_itemS1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(238,173-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonreGet_itemS1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(238+1,173+1-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonreGet_itemS1:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_AGENCY_TAKE_ITEM"] )
g_pButtonreGet_itemS1:AddDummyInt( 0 )

g_pButtonreGet_itemS2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonreGet_itemS2 )
g_pButtonreGet_itemS2:SetName( "Button_Get_itemS2" )
g_pButtonreGet_itemS2:SetNormalTex( "DLG_UI_BUTTON12.tga", "Get_itemS_NORMAL" )
g_pButtonreGet_itemS2:SetOverTex( "DLG_UI_BUTTON12.tga", "Get_itemS_OVER" )
g_pButtonreGet_itemS2:SetDownTex( "DLG_UI_BUTTON12.tga", "Get_itemS_OVER" )
g_pButtonreGet_itemS2:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(240,276-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonreGet_itemS2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(238,274-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonreGet_itemS2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(238+1,274+1-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonreGet_itemS2:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_AGENCY_TAKE_ITEM"] )
g_pButtonreGet_itemS2:AddDummyInt( 1 )



g_pButtonreGet_itemS3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonreGet_itemS3 )
g_pButtonreGet_itemS3:SetName( "Button_Get_itemS3" )
g_pButtonreGet_itemS3:SetNormalTex( "DLG_UI_BUTTON12.tga", "Get_itemS_NORMAL" )
g_pButtonreGet_itemS3:SetOverTex( "DLG_UI_BUTTON12.tga", "Get_itemS_OVER" )
g_pButtonreGet_itemS3:SetDownTex( "DLG_UI_BUTTON12.tga", "Get_itemS_OVER" )
g_pButtonreGet_itemS3:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(240,377-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonreGet_itemS3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(238,375-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonreGet_itemS3:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(238+1,375+1-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonreGet_itemS3:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_AGENCY_TAKE_ITEM"] )
g_pButtonreGet_itemS3:AddDummyInt( 2 )



---------------------------------EXIT
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(279,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(275,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(275+1,12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_DIALOG_EXIT"] )



--- << 버튼
g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Button_ArrowL" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )
g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )
g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )
g_pButtonL_arrow:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(19,426-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,425-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,425+1-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_BUY_PREV_PAGE"] )


--->>  버튼
g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Button_ArrowR" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )
g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )
g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )
g_pButtonR_arrow:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(96,427-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(95,426-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(95+1,426+1-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_BUY_NEXT_PAGE"] )

-----페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicturepage)
g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )
g_pPicturepage:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(36,425-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----페이지 번호
g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "Static_Page_Number" )
g_pStaticnumber:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(64,430-50)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



-------------------------  물품 받기
g_pButtonsell = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonsell )
g_pButtonsell:SetName( "Button_Sell_Begin" )

g_pButtonsell:SetNormalTex( "DLG_UI_BUTTON16.tga", "BTN_NORMAL" )

g_pButtonsell:SetOverTex( "DLG_UI_BUTTON16.tga", "BTN_over" )

g_pButtonsell:SetDownTex( "DLG_UI_BUTTON16.tga", "BTN_over" )

g_pButtonsell:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(214+4,417+4-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsell:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(214,417-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsell:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(214+1,417+1-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsell:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_AGENCY_TAKE_ITEM"] )
g_pButtonsell:AddDummyInt( -1 )



g_pStatic_Btn_Sell = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Btn_Sell )
g_pStatic_Btn_Sell:SetName( "Static_Btn_Sell" )
g_pStatic_Btn_Sell:AddString
{
	MSG 			= STR_ID_12138,
	--MSG 			= "물품 받기",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(259+2,428+2-50)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Btn_Sell:AddString
{
	MSG 			= STR_ID_12138,
	--MSG 			= "물품 받기",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(259,428-50)",
	"COLOR			= D3DXCOLOR(0.0,0.9,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--[[
----------판매종료

g_pButtonend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonend )
g_pButtonend:SetName( "Button_Sell_End" )
g_pButtonend:SetNormalTex( "DLG_UI_BUTTON16.tga", "BTN_NORMAL" )
g_pButtonend:SetOverTex( "DLG_UI_BUTTON16.tga", "BTN_over" )
g_pButtonend:SetDownTex( "DLG_UI_BUTTON16.tga", "BTN_over" )
g_pButtonend:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(214+4,417+4-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonend:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(214,417-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonend:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(214+1,417+1-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonend:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_SELL_EXIT"] )


g_pStatic_Btn_End = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Btn_End )
g_pStatic_Btn_End:SetName( "Static_Btn_End" )
g_pStatic_Btn_End:AddString
{
	MSG 			= STR_ID_4966,
	--MSG 			= "판매종료",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(259+2,428+2-50)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Btn_End:AddString
{
	MSG 			= STR_ID_4966,
	--MSG 			= "판매종료",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(259,428-50)",
	"COLOR			= D3DXCOLOR(0.0,0.9,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]
------------ 아이템 슬롯

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )
pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 0,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 30, 117-50)",
	"SIZE		= D3DXVECTOR2( 47,47 )",

}
pItemSlot:SetClickable( false )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 1,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 30, 218-50)",
	"SIZE		= D3DXVECTOR2( 47,47 )",

}
pItemSlot:SetClickable( false )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 2,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 30, 319-50)",
	"SIZE		= D3DXVECTOR2( 47,47 )",

}
pItemSlot:SetClickable( false )



----------확성기 버튼 1
-- g_pStatic_Button_M01 = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic_Button_M01 )
-- g_pStatic_Button_M01:SetName( "Static_Button_M01" )
-- g_pPicture_M1 = g_pUIDialog:CreatePicture()
-- g_pStatic_Button_M01:AddPicture( g_pPicture_M1 )
-- g_pPicture_M1:SetTex( "DLG_UI_BUTTON16.TGA", "BTN01" )
-- g_pPicture_M1:SetPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(132,419)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

------------------
-- g_pButton_M01 = g_pUIDialog:CreateButton()
-- g_pUIDialog:AddControl( g_pButton_M01 )
-- g_pButton_M01:SetName( "Button_M01" )

-- g_pButton_M01:SetNormalTex( "DLG_UI_BUTTON16.tga", "BTN_M_OVER" )

-- g_pButton_M01:SetOverTex( "DLG_UI_BUTTON16.tga", "BTN_M_OVER" )

-- g_pButton_M01:SetDownTex( "DLG_UI_BUTTON16.tga", "BTN_M_OVER" )

-- g_pButton_M01:SetNormalPoint
-- {

    -- "LEFT_TOP		= D3DXVECTOR2(131,418)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButton_M01:SetOverPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(131,418)",

	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButton_M01:SetDownPoint
-- {
     -- ADD_SIZE_X = -2,
     -- ADD_SIZE_Y = -2,
 	-- "LEFT_TOP		= D3DXVECTOR2(131+1,418+1)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButton_M01:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_USE_MEGAPHONE1"] )


---------------------

-- g_pStatic_Button_M01:AddString
-- {
    -- MSG 			= "x20",
	-- FONT_INDEX		= XUF_DODUM_11_NORMAL,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(144,444)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- "OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }


--------확성기 버튼 2

-- g_pStatic_Button_M02 = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic_Button_M02 )
-- g_pStatic_Button_M02:SetName( "Static_Button_M02" )

-- g_pPicture_M1 = g_pUIDialog:CreatePicture()
-- g_pStatic_Button_M02:AddPicture( g_pPicture_M1 )

-- g_pPicture_M1:SetTex( "DLG_UI_BUTTON16.TGA", "BTN02" )

-- g_pPicture_M1:SetPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(174,419)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }


------------------

-- g_pButton_M02 = g_pUIDialog:CreateButton()
-- g_pUIDialog:AddControl( g_pButton_M02 )
-- g_pButton_M02:SetName( "Button_M02" )

-- g_pButton_M02:SetNormalTex( "DLG_UI_BUTTON16.tga", "BTN_M_OVER" )

-- g_pButton_M02:SetOverTex( "DLG_UI_BUTTON16.tga", "BTN_M_OVER" )

-- g_pButton_M02:SetDownTex( "DLG_UI_BUTTON16.tga", "BTN_M_OVER" )

-- g_pButton_M02:SetNormalPoint
-- {

    -- "LEFT_TOP		= D3DXVECTOR2(173,418)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButton_M02:SetOverPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(173,418)",

	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButton_M02:SetDownPoint
-- {
     -- ADD_SIZE_X = -2,
     -- ADD_SIZE_Y = -2,
 	-- "LEFT_TOP		= D3DXVECTOR2(173+1,418+1)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pButton_M02:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_USE_MEGAPHONE2"] )


---------------------

-- g_pStatic_Button_M02:AddString
-- {
    -- MSG 			= "x20",
	-- FONT_INDEX		= XUF_DODUM_11_NORMAL,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(186,444)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- "OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }
