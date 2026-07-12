-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 임규수 일본 변경 ( 전체적으로 )
g_pUIDialog:SetName( "DLG_Title_System" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( TITLE_MANAGER_UI_MSG["TMUI_CLOSE"] )

d_TEXT_POS_X=50;


----BG
g_pStatictitle_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatictitle_window )
g_pStatictitle_window:SetName( "g_pStatictitle_window" )

--------1)제일 바닥 배경
g_pPicturetitle_window_BG1 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG1 )

g_pPicturetitle_window_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW1_TOP" )

g_pPicturetitle_window_BG1:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturetitle_window_BG2 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG2 )

g_pPicturetitle_window_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW1_MIDDLE" )

g_pPicturetitle_window_BG2:SetPoint
{
     ADD_SIZE_Y = 583,
	 ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(0,16 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturetitle_window_BG3 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG3 )

g_pPicturetitle_window_BG3:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW1_BOTTOM" )

g_pPicturetitle_window_BG3:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(0,600 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------2)TOP_회색벼경

g_pPicturetitle_window_BG4 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG4 )

g_pPicturetitle_window_BG4:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW2_TOP" )

g_pPicturetitle_window_BG4:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(14,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG5 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG5 )

g_pPicturetitle_window_BG5:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW2_MIDDLE" )

g_pPicturetitle_window_BG5:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
   ADD_SIZE_Y = 210,
	"LEFT_TOP		= D3DXVECTOR2(14,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturetitle_window_BG6 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG6 )

g_pPicturetitle_window_BG6:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW2_BOTTOM" )

g_pPicturetitle_window_BG6:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(14,277-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------3)BOTTOM_회색배경

g_pPicturetitle_window_BG7 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG7 )

g_pPicturetitle_window_BG7:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW2_TOP" )

g_pPicturetitle_window_BG7:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(14,318-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturetitle_window_BG8 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG8 )

g_pPicturetitle_window_BG8:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW2_MIDDLE" )

g_pPicturetitle_window_BG8:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
   ADD_SIZE_Y = 232,
	"LEFT_TOP		= D3DXVECTOR2(14,327-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturetitle_window_BG8 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG8 )

g_pPicturetitle_window_BG8:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW2_BOTTOM" )

g_pPicturetitle_window_BG8:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(14,549)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------4) TOP_하얀색배경

g_pPicturetitle_window_BG10 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG10 )

g_pPicturetitle_window_BG10:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW3_TOP" )

g_pPicturetitle_window_BG10:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(18,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturetitle_window_BG11 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG11 )

g_pPicturetitle_window_BG11:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW3_MIDDLE" )

g_pPicturetitle_window_BG11:SetPoint
{
    ADD_SIZE_Y = 201,
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(18,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG12 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG12 )

g_pPicturetitle_window_BG12:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW3_BOTTOM" )

g_pPicturetitle_window_BG12:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(18,274-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------------5)BOTTOM_하얀색 배경

g_pPicturetitle_window_BG13 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG13 )

g_pPicturetitle_window_BG13:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW3_TOP" )

g_pPicturetitle_window_BG13:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(18,322-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG14 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG14 )

g_pPicturetitle_window_BG14:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW3_MIDDLE" )

g_pPicturetitle_window_BG14:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
  ADD_SIZE_Y = 223,
	"LEFT_TOP		= D3DXVECTOR2(18,333-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG15 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG15 )

g_pPicturetitle_window_BG15:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW3_BOTTOM" )

g_pPicturetitle_window_BG15:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(18,546)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------------6)TOP_칭호 타이틀배경

g_pPicturetitle_window_BG17 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG17 )

g_pPicturetitle_window_BG17:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW4_TOP" )

g_pPicturetitle_window_BG17:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(137,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG18 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG18 )

g_pPicturetitle_window_BG18:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW4_MIDDLE" )

g_pPicturetitle_window_BG18:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
  ADD_SIZE_Y = 86,
	"LEFT_TOP		= D3DXVECTOR2(137,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG19 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG19 )

g_pPicturetitle_window_BG19:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW4_BOTTOM" )

g_pPicturetitle_window_BG19:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(137,150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------7)TOP_칭호 옵션 배경
g_pPicturetitle_window_BG20 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG20 )

g_pPicturetitle_window_BG20:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW5_TOP" )

g_pPicturetitle_window_BG20:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(25,159)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG21 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG21 )

g_pPicturetitle_window_BG21:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW5_MIDDLE" )

g_pPicturetitle_window_BG21:SetPoint
{
  ADD_SIZE_Y = 93,
  ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(25,164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG22 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG22 )

g_pPicturetitle_window_BG22:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW5_BOTTOM" )

g_pPicturetitle_window_BG22:SetPoint
{
	ADD_SIZE_X = d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(25,269-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------------------8)BOTTOM_마을 리스트 배경
g_pPicturetitle_window_BG23 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG23 )

g_pPicturetitle_window_BG23:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW6_LEFT" )

g_pPicturetitle_window_BG23:SetPoint
{
    ADD_SIZE_Y = 11,
	"LEFT_TOP		= D3DXVECTOR2(26,330-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG24 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG24 )

g_pPicturetitle_window_BG24:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW6_MIDDLE" )

g_pPicturetitle_window_BG24:SetPoint
{
    ADD_SIZE_Y = 11,
	ADD_SIZE_X = 74,
	"LEFT_TOP		= D3DXVECTOR2(31,330-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG25 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG25 )

g_pPicturetitle_window_BG25:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW6_RIGHT" )

g_pPicturetitle_window_BG25:SetPoint
{
    ADD_SIZE_Y = 11,
	"LEFT_TOP		= D3DXVECTOR2(106,330-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------------------------9)BOTTOM_칭호리스트 배경
g_pPicturetitle_window_BG26 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG26 )

g_pPicturetitle_window_BG26:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW6_LEFT" )

g_pPicturetitle_window_BG26:SetPoint
{
    ADD_SIZE_Y = 11,
	"LEFT_TOP		= D3DXVECTOR2(115,330-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG27 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG27 )

g_pPicturetitle_window_BG27:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW6_MIDDLE" )

g_pPicturetitle_window_BG27:SetPoint
{
    ADD_SIZE_Y = 11,
    ADD_SIZE_X = 210+d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(120,330-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturetitle_window_BG28 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG28 )

g_pPicturetitle_window_BG28:SetTex( "DLG_UI_Common_Texture04.TGA", "WINDOW6_RIGHT" )

g_pPicturetitle_window_BG28:SetPoint
{
    ADD_SIZE_Y = 11,
	"LEFT_TOP		= D3DXVECTOR2(331+d_TEXT_POS_X,330-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






------------TITLE
g_pPicturetitle = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle )

g_pPicturetitle:SetTex( "DLG_UI_Title01.TGA", "TITLE_window" )

g_pPicturetitle:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(15,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------------칭호 이미지
g_pPictureimage = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPictureimage )
g_pPictureimage:SetTex2( "Title_Empty.tga" )
g_pPictureimage:SetPoint
{
    USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(27,73)",
	--"RIGHT_BOTTOM	= D3DXVECTOR2(121, 150)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(27 + 105, 73 + 70)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,	
}
g_pPictureimage:SetIndex(1)




----습득한 칭호......

g_pPicturetitle_window_BG29 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BG29 )

g_pPicturetitle_window_BG29:SetTex( "DLG_Common_New_Texture68.TGA", "PICKUP" )

g_pPicturetitle_window_BG29:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(240+d_TEXT_POS_X,301-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------- 버튼 줄 나누기

g_pPictureBar1 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPictureBar1 )

g_pPictureBar1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPictureBar1:SetPoint
{
	ADD_SIZE_X = 192+d_TEXT_POS_X,
	"LEFT_TOP		= D3DXVECTOR2(140,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPictureBar2 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPictureBar2 )

g_pPictureBar2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPictureBar2:SetPoint
{
	ADD_SIZE_X = 284, 
	"LEFT_TOP		= D3DXVECTOR2(28,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}
--]]
g_pPictureBar3 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPictureBar3 )

g_pPictureBar3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPictureBar3:SetPoint
{
	ADD_SIZE_X = 340+d_TEXT_POS_X, 
	"LEFT_TOP		= D3DXVECTOR2(10,290-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}
-- 구분
g_pPictureBar4 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPictureBar4 )

g_pPictureBar4:SetTex( "DLG_UI_Common_Texture01.TGA", "gray_bar" )

g_pPictureBar4:SetPoint
{
	ADD_SIZE_X = 76,
	ADD_SIZE_Y = -1,
	"LEFT_TOP		= D3DXVECTOR2(30,355-12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}
-- 구분
g_pPictureBar5 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPictureBar5 )

g_pPictureBar5:SetTex( "DLG_UI_Common_Texture01.TGA", "gray_bar" )

g_pPictureBar5:SetPoint
{
	ADD_SIZE_X = 76,
	ADD_SIZE_Y = -1,
	"LEFT_TOP		= D3DXVECTOR2(30,496+10+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}
-- 구분
g_pPictureBar6 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPictureBar6 )

g_pPictureBar6:SetTex( "DLG_UI_Common_Texture01.TGA", "gray_bar" )

g_pPictureBar6:SetPoint
{
	ADD_SIZE_X = 76,
    ADD_SIZE_Y = -1,	
	"LEFT_TOP		= D3DXVECTOR2(30,519+2+6+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}




---체크 박스

g_pPicturetitle_window_BOX = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPicturetitle_window_BOX )

g_pPicturetitle_window_BOX:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicturetitle_window_BOX:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(219+d_TEXT_POS_X,300-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------버        튼

------  전체

g_pButtonall= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonall)
g_pButtonall:SetName( "TitleGroup0" )
g_pButtonall:SetNormalTex( "DLG_UI_Button06.tga", "ALL_NORMAL" )

g_pButtonall:SetOverTex( "DLG_UI_Button06.tga", "ALL_OVER" )

g_pButtonall:SetDownTex( "DLG_UI_Button06.tga", "ALL_OVER" )

g_pButtonall:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(45+13+1,334-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonall:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(45+13+1+1,334-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonall:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(45+13+1+1+1,334+1-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonall:AddDummyInt( 0 )
g_pButtonall:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )

------루벤

g_pButtonruven= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonruven)
g_pButtonruven:SetName( "TitleGroup1" )
g_pButtonruven:SetNormalTex( "DLG_UI_Button06.tga", "RUBEN_NORMAL" )

g_pButtonruven:SetOverTex( "DLG_UI_Button06.tga", "RUBEN_OVER" )

g_pButtonruven:SetDownTex( "DLG_UI_Button06.tga", "RUBEN_OVER" )

g_pButtonruven:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(45+4+1,361-4-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonruven:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(45+4+1+1,361-4-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonruven:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(45+4+1+1+1,361-4+1-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonruven:AddDummyInt( 1 )
g_pButtonruven:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )

------  엘더


g_pButtoneldu= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoneldu)
g_pButtoneldu:SetName( "TitleGroup2" )
g_pButtoneldu:SetNormalTex( "DLG_UI_Button06.tga", "ELDU_NORMAL" )

g_pButtoneldu:SetOverTex( "DLG_UI_Button06.tga", "ELDU_OVER" )

g_pButtoneldu:SetDownTex( "DLG_UI_Button06.tga", "ELDU_OVER" )

g_pButtoneldu:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(46+4+1+3,384-6+2-12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoneldu:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(46+4+1+1+3,384-6+2+1-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoneldu:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(46+4+1+1+1+3,384-6+2+1+1-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoneldu:AddDummyInt( 2 )
g_pButtoneldu:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )

--------베스마

g_pButtonbesma= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonbesma)
g_pButtonbesma:SetName( "TitleGroup3" )
g_pButtonbesma:SetNormalTex( "DLG_UI_Button06.tga", "BESMA_NORMAL" )

g_pButtonbesma:SetOverTex( "DLG_UI_Button06.tga", "BESMA_OVER" )

g_pButtonbesma:SetDownTex( "DLG_UI_Button06.tga", "BESMA_OVER" )

g_pButtonbesma:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(46+4-3+1,407-6+2-13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonbesma:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(45+4-2+1,406-6+3-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonbesma:SetDownPoint 
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(45+4+1-3+1+1,406+1-6+3-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonbesma:AddDummyInt( 3 )
g_pButtonbesma:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )

-------알테라

g_pButtonaltera= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonaltera)
g_pButtonaltera:SetName( "TitleGroup4" )
g_pButtonaltera:SetNormalTex( "DLG_UI_Button06.tga", "ALTERA_NORMAL" )

g_pButtonaltera:SetOverTex( "DLG_UI_Button06.tga", "ALTERA_OVER" )

g_pButtonaltera:SetDownTex( "DLG_UI_Button06.tga", "ALTERA_OVER" )


g_pButtonaltera:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(46+4+1,430-7+4-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonaltera:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(46+4+1,430-7+4-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonaltera:SetDownPoint 
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(46+4+1+1,430-7+4+1-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonaltera:AddDummyInt( 4 )
g_pButtonaltera:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )


-------페이타

g_pButtonPeita= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPeita)
g_pButtonPeita:SetName( "TitleGroup5" )
g_pButtonPeita:SetNormalTex( "DLG_UI_Button11.tga", "Peita_NORMAL" )

g_pButtonPeita:SetOverTex( "DLG_UI_Button11.tga", "Peita_OVER" )

g_pButtonPeita:SetDownTex( "DLG_UI_Button11.tga", "Peita_OVER" )


g_pButtonPeita:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(45+4+1+1+1+2,429+1+23-1-18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPeita:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(45+4+2+1+2,429+23-1+1-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPeita:SetDownPoint 
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(45+4+1+2+1+2,429+1+23-1+1-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPeita:AddDummyInt( 5 )
g_pButtonPeita:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )






-------벨더

g_pButton_velder= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_velder)
g_pButton_velder:SetName( "TitleGroup8" )
g_pButton_velder:SetNormalTex( "DLG_UI_Button17.tga", "VELDER_NORMAL" )

g_pButton_velder:SetOverTex( "DLG_UI_Button17.tga", "VELDER_OVER" )

g_pButton_velder:SetDownTex( "DLG_UI_Button17.tga", "VELDER_OVER" )

g_pButton_velder:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(46+4-2+1,323+23+22+22+22+22+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_velder:SetOverPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(46+4-1-3+2+1,323+23+22+22+22+22+22-1-1+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_velder:SetDownPoint 
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(46+4-3+2+1,323+23+22+22+22+22+22-1+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}

g_pButton_velder:AddDummyInt( 8 )
g_pButton_velder:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )

-------하멜

g_pButton_hamel= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_hamel)
g_pButton_hamel:SetName( "TitleGroup9" )
g_pButton_hamel:SetNormalTex( "DLG_UI_Button17.tga", "HAMEL_NORMAL" )

g_pButton_hamel:SetOverTex( "DLG_UI_Button17.tga", "HAMEL_OVER" )

g_pButton_hamel:SetDownTex( "DLG_UI_Button17.tga", "HAMEL_OVER" )

g_pButton_hamel:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(46+6,323+23+22+22+22+22+22+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_hamel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(46-1+6,323+23+22+22+22+22+22+22-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_hamel:SetDownPoint 
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(46+6,323+23+22+22+22+22+22+22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_hamel:AddDummyInt( 9 )
g_pButton_hamel:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )

-------샌더

g_pButton_sander= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_sander)
g_pButton_sander:SetName( "TitleGroup11" )
g_pButton_sander:SetNormalTex( "DLG_UI_Button17.tga", "SANDER_NORMAL" )

g_pButton_sander:SetOverTex( "DLG_UI_Button17.tga", "SANDER_OVER" )

g_pButton_sander:SetDownTex( "DLG_UI_Button17.tga", "SANDER_OVER" )

g_pButton_sander:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(46+4,323+23+22+22+22+22+22+22+22-1-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sander:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(46+4,323+23+22+22+22+22+22+22+22+1-1-1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sander:SetDownPoint 
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(46+4,323+23+22+22+22+22+22+22+22+1-1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_sander:AddDummyInt( 11 )
g_pButton_sander:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )


------- 랭크

g_pButtonpvp= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonpvp)
g_pButtonpvp:SetName( "TitleGroup6" )
g_pButtonpvp:SetNormalTex( "DLG_UI_Button11.tga", "RANK_NORMAL" )

g_pButtonpvp:SetOverTex( "DLG_UI_Button11.tga", "RANK_OVER" )

g_pButtonpvp:SetDownTex( "DLG_UI_Button11.tga", "RANK_OVER" )

g_pButtonpvp:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(45+1,504-2+2+3+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonpvp:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(45+1,503-2+2+1+3+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonpvp:SetDownPoint 
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(45+1+1+1,503+1-2+2+1+3+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonpvp:AddDummyInt( 6 )
g_pButtonpvp:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )

----- 이벤트


g_pButtonevent= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonevent)
g_pButtonevent:SetName( "TitleGroup7" )
g_pButtonevent:SetNormalTex( "DLG_UI_Button06.tga", "EVENT_NORMAL" )

g_pButtonevent:SetOverTex( "DLG_UI_Button06.tga", "EVENT_OVER" )

g_pButtonevent:SetDownTex( "DLG_UI_Button06.tga", "EVENT_OVER" )

g_pButtonevent:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(46+3+1,523-1+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonevent:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(46+3+1+1,523+1-1+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonevent:SetDownPoint 
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(46+3+1+1+1,523+1+1-1+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonevent:AddDummyInt( 7 )
g_pButtonevent:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_TAB"] )





---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "enter" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(324+d_TEXT_POS_X,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(320+d_TEXT_POS_X,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(320+1+d_TEXT_POS_X,10+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_CLOSE"] )



----- 장착하기 버튼


g_pButtonequip = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonequip )
g_pButtonequip:SetName( "equip" )
g_pButtonequip:SetNormalTex( "DLG_UI_Button07.tga", "EQUIP_NORMAL" )

g_pButtonequip:SetOverTex( "DLG_UI_Button07.tga", "EQUIP_OVER" )

g_pButtonequip:SetDownTex( "DLG_UI_Button07.tga", "EQUIP_OVER" )

g_pButtonequip:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(117+d_TEXT_POS_X-35,564)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonequip:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(113+d_TEXT_POS_X-35,560)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonequip:SetDownPoint
{
    
    ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,	
 	"LEFT_TOP		= D3DXVECTOR2(113+1+d_TEXT_POS_X-35,560+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonequip:SetCustomMsgMouseUp( TITLE_MANAGER_UI_MSG["TMUI_ATTACH"] )



---체크

	g_pCheckBoxtitle_window_Slot1 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxtitle_window_Slot1:SetName( "g_pCheckBoxtitle_window_Slot1" )
	g_pUIDialog:AddControl( g_pCheckBoxtitle_window_Slot1 )

	g_pCheckBoxtitle_window_Slot1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxtitle_window_Slot1:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxtitle_window_Slot1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(219+d_TEXT_POS_X,300-11)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(219+15+d_TEXT_POS_X,300+15-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxtitle_window_Slot1:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(217+d_TEXT_POS_X,298-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxtitle_window_Slot1:SetCustomMsgChecked( TITLE_MANAGER_UI_MSG["TMUI_CHECK_TAKE"] )
g_pCheckBoxtitle_window_Slot1:SetCustomMsgUnChecked( TITLE_MANAGER_UI_MSG["TMUI_CHECK_TAKE"] )


---------칭호 타이틀
------- TEXT 한줄

    g_pStatictitle_window_Font1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatictitle_window_Font1 )
	g_pStatictitle_window_Font1:SetName( "g_pStatictitle_window_Font1" )

	g_pStatictitle_window_Font1:AddString
	{
		MSG 			= STR_ID_1175,
     FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(21,297-11)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

------- 칭호 명

    g_pStatictitle_window_Font1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatictitle_window_Font1 )
	g_pStatictitle_window_Font1:SetName( "title_name" )

	g_pStatictitle_window_Font1:AddString
	{
		MSG 			= STR_ID_1176,
     FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(142,62)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
---- 칭호 설명
    g_pStatictitle_window_Font1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatictitle_window_Font1 )
	g_pStatictitle_window_Font1:SetName( "title_import" )

	g_pStatictitle_window_Font1:AddString
	{
		MSG 			= STR_ID_1177,
     FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(142,85)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	

--[[	
	---------착용 효과



	g_pStatictitle_window_Font1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatictitle_window_Font1 )
	g_pStatictitle_window_Font1:SetName( "title_ability" )

	g_pStatictitle_window_Font1:AddString
	{
		MSG 			= STR_ID_1178,
     FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(29,205)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
--]]	

------스크롤바

g_pPictureScroll_BG1 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPictureScroll_BG1 )

g_pPictureScroll_BG1:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )

g_pPictureScroll_BG1:SetPoint
{
     ADD_SIZE_Y = 113-11,
	"LEFT_TOP		= D3DXVECTOR2(314+d_TEXT_POS_X,160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureScroll_BG2 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPictureScroll_BG2 )

g_pPictureScroll_BG2:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )

g_pPictureScroll_BG2:SetPoint
{
     ADD_SIZE_Y = 212,
	"LEFT_TOP		= D3DXVECTOR2(314+d_TEXT_POS_X,331)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--#ifdef TITLE_DESCRIPTION_RENEWAL
g_pPictureScroll_BG3 = g_pUIDialog:CreatePicture()
g_pStatictitle_window:AddPicture( g_pPictureScroll_BG3 )

g_pPictureScroll_BG3:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )

g_pPictureScroll_BG3:SetPoint
{
     ADD_SIZE_Y = 113-51,
	"LEFT_TOP		= D3DXVECTOR2(314+d_TEXT_POS_X,160-74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--#endif //TITLE_DESCRIPTION_RENEWAL
	
----리스트 박스 1

g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "TitleDesc" )

g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["2002L_KOG"],
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )

g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pListBox:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 21 )
g_pListBox:SetPos( 109-92, 159 )
g_pListBox:SetSize( 205+92+d_TEXT_POS_X,115-11 )
--g_pListBox:SetScrollBarPos(109-92+348,159)

g_pListBox:AddItem("[획득조건]")
g_pListBox:AddItem("앤의 선물 퀘스트 클리어")
g_pListBox:AddItem("")
g_pListBox:AddItem("[착용효과]")
g_pListBox:AddItem("물리공격력:+12")
g_pListBox:AddItem("마법공격력:+12")






---------------리스트 박스 2

g_pListBoxTitle = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBoxTitle )
g_pListBoxTitle:SetName( "TitleList" )

g_pListBoxTitle:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["2002L_KOG"],
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBoxTitle:SetTextTex( "DLG_Common_New_Texture62.tga", "Select_Bar" )

g_pListBoxTitle:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBoxTitle:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pListBoxTitle:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pListBoxTitle:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pListBoxTitle:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pListBoxTitle:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pListBoxTitle:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBoxTitle:InitScrollBar()
g_pListBoxTitle:SetScrollBarWidth( 21 )
g_pListBoxTitle:SetPos( 75+36, 330-11 )
--g_pListBoxTitle:SetSize( 239-35+d_TEXT_POS_X,216+11 )
g_pListBoxTitle:SetSize( 239-35+d_TEXT_POS_X,216+11 )
--g_pListBoxTitle:SetScrollBarPos(75+36+228+25,330-11)

g_pListBoxTitle:SetCustomMsgSelection( TITLE_MANAGER_UI_MSG["TMUI_LIST_SELECT"] )
g_pListBoxTitle:SetCustomMsgSelectionByRButton( TITLE_MANAGER_UI_MSG["TMUI_LIST_SELECT"] )
g_pListBoxTitle:SetCustomMsgItemDoubleClick( TITLE_MANAGER_UI_MSG["TMUI_ATTACH"] )

--#ifdef TITLE_DESCRIPTION_RENEWAL
----리스트 박스 3
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "MainTitle" )

g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["2002L_KOG"],
	"POS 			= D3DXVECTOR2(70,0)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )

g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pListBox:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 20 )
g_pListBox:SetPos( 109-92+113, 159-74 )
g_pListBox:SetSize( 205+92-113+d_TEXT_POS_X,115-50 )
--#endif //TITLE_DESCRIPTION_RENEWAL





