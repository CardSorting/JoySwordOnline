-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_PlayGuide" )
g_pUIDialog:SetPos( 325+25, 346 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_OPTION"] )





g_pStaticF12Guide_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF12Guide_Window )
g_pStaticF12Guide_Window:SetName( "F12Guide_Window" )


g_pPictureF12Guide_Window = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_Window:AddPicture( g_pPictureF12Guide_Window )

g_pPictureF12Guide_Window:SetTex( "DLG_UI_Button12.tga", "f12_window1" )

g_pPictureF12Guide_Window:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(394-90,240-55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureF12Guide_Window2 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_Window:AddPicture( g_pPictureF12Guide_Window2 )

g_pPictureF12Guide_Window2:SetTex( "DLG_Common_New_Texture32.tga", "f12_window2" )

g_pPictureF12Guide_Window2:SetPoint
{

	ADD_SIZE_X = 223,
	"LEFT_TOP		= D3DXVECTOR2(466-90,208-55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureF12Guide_Window3 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_Window:AddPicture( g_pPictureF12Guide_Window3 )

g_pPictureF12Guide_Window3:SetTex( "DLG_Common_New_Texture32.tga", "f12_window3" )

g_pPictureF12Guide_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(660-60,208-55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureF12Guide_Window_off = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_Window:AddPicture( g_pPictureF12Guide_Window_off )

g_pPictureF12Guide_Window_off:SetTex( "DLG_Common_New_Texture32.tga", "f12_off" )

g_pPictureF12Guide_Window_off:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512-115,304-55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



--[[
-- DLG_UI_BookButton.lua에 있음
g_pPictureF12Guide_Book = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_Window:AddPicture( g_pPictureF12Guide_Book )

g_pPictureF12Guide_Book:SetTex( "DLG_UI_Button12.tga", "play_guide" )

g_pPictureF12Guide_Book:SetPoint
{

      ADD_SIZE_X = -30,
    ADD_SIZE_Y = -50,
	"LEFT_TOP		= D3DXVECTOR2(561,195-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
g_pPictureF12Guide_Book = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_Window:AddPicture( g_pPictureF12Guide_Book )

g_pPictureF12Guide_Book:SetTex( "DLG_UI_Button12.tga", "book_over" )

g_pPictureF12Guide_Book:SetPoint
{

      ADD_SIZE_X = -30,
    ADD_SIZE_Y = -50,
	"LEFT_TOP		= D3DXVECTOR2(565,195-17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--]]

---오른쪽으로 이동하세요 카운트가 0이 되면 패널티를 받습니다---
g_pStaticF12Guide_help1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF12Guide_help1 )
g_pStaticF12Guide_help1:SetName( "F12Guide_help1" )




g_pPictureF12Guide_help1 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_help1:AddPicture( g_pPictureF12Guide_help1 )

g_pPictureF12Guide_help1:SetTex( "DLG_Common_New_Texture32.tga", "help1" )

g_pPictureF12Guide_help1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453-120,255-55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



---문을 파괴하여 다음 스테이지로 이동하세요---

g_pStaticF12Guide_help2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF12Guide_help2 )
g_pStaticF12Guide_help2:SetName( "F12Guide_help2" )




g_pPictureF12Guide_help2 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_help2:AddPicture( g_pPictureF12Guide_help2 )

g_pPictureF12Guide_help2:SetTex( "DLG_Common_New_Texture32.tga", "help2" )

g_pPictureF12Guide_help2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(478-115,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



---벌집을 파괴하면 벌이 나오지 않아요---

g_pStaticF12Guide_help3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF12Guide_help3 )
g_pStaticF12Guide_help3:SetName( "F12Guide_help3" )




g_pPictureF12Guide_help3 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_help3:AddPicture( g_pPictureF12Guide_help3 )

g_pPictureF12Guide_help3:SetTex( "DLG_Common_New_Texture32.tga", "help3" )

g_pPictureF12Guide_help3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(502-115,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



---mp가 부족하여 마법을 사용할수 없습니다---

g_pStaticF12Guide_help4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF12Guide_help4 )
g_pStaticF12Guide_help4:SetName( "F12Guide_help4" )




g_pPictureF12Guide_help4 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_help4:AddPicture( g_pPictureF12Guide_help4 )

g_pPictureF12Guide_help4:SetTex( "DLG_Common_New_Texture32.tga", "help4" )

g_pPictureF12Guide_help4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(478-115,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



---모든 몬스터를 쓰러뜨리면 문을 파괴할수 있어요---

g_pStaticF12Guide_help5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF12Guide_help5 )
g_pStaticF12Guide_help5:SetName( "F12Guide_help5" )




g_pPictureF12Guide_help5 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_help5:AddPicture( g_pPictureF12Guide_help5 )

g_pPictureF12Guide_help5:SetTex( "DLG_Common_New_Texture32.tga", "help5" )

g_pPictureF12Guide_help5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(482-110,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




---mp가 부족하여 활을 사용할수 없습니다---

g_pStaticF12Guide_help6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF12Guide_help6 )
g_pStaticF12Guide_help6:SetName( "F12Guide_help6" )




g_pPictureF12Guide_help6 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_help6:AddPicture( g_pPictureF12Guide_help6 )

g_pPictureF12Guide_help6:SetTex( "DLG_Common_New_Texture32.tga", "help6" )

g_pPictureF12Guide_help6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(483-115,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




---공격버튼을 길게 누르면 필살기를 사용할수 잇습니다---

g_pStaticF12Guide_help7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF12Guide_help7 )
g_pStaticF12Guide_help7:SetName( "F12Guide_help7" )




g_pPictureF12Guide_help7 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_help7:AddPicture( g_pPictureF12Guide_help7 )

g_pPictureF12Guide_help7:SetTex( "DLG_Common_New_Texture32.tga", "help7" )

g_pPictureF12Guide_help7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(472-115,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




---mp가 부족하여 시즈모드를 사용할수 없습니다---

g_pStaticF12Guide_help8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF12Guide_help8 )
g_pStaticF12Guide_help8:SetName( "F12Guide_help8" )




g_pPictureF12Guide_help8 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_help8:AddPicture( g_pPictureF12Guide_help8 )

g_pPictureF12Guide_help8:SetTex( "DLG_Common_New_Texture32.tga", "help8" )

g_pPictureF12Guide_help8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(472-115,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}







---------------   a s d  필살기



g_pStaticF12Guide_help9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF12Guide_help9 )
g_pStaticF12Guide_help9:SetName( "F12Guide_help9" )




g_pPictureF12Guide_help9 = g_pUIDialog:CreatePicture()
g_pStaticF12Guide_help9:AddPicture( g_pPictureF12Guide_help9 )

g_pPictureF12Guide_help9:SetTex( "DLG_Common_New_Texture71.tga", "new_asd" )

g_pPictureF12Guide_help9:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(472-113,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}














