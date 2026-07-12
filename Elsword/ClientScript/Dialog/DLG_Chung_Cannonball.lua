-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

------------캐논볼 static
g_pStatic_Chung_Cannonball_0 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Chung_Cannonball_0 )
g_pStatic_Chung_Cannonball_0:SetName( "Static_Chung_Cannonball_0" )
g_pStatic_Chung_Cannonball_0:SetShow( false )

--------------------캐논볼1
g_pPicture_Chung_Cannonball_bg = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_bg )

g_pPicture_Chung_Cannonball_bg:SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_bg" )

g_pPicture_Chung_Cannonball_bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------포탄
---------1
g_pPicture_Chung_Cannonball_1 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_1 )

g_pPicture_Chung_Cannonball_1 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_1" )

g_pPicture_Chung_Cannonball_1 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_1:SetShow(false)

--------2
g_pPicture_Chung_Cannonball_2 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_2 )

g_pPicture_Chung_Cannonball_2 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_2" )

g_pPicture_Chung_Cannonball_2 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453,136)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_2:SetShow(false)

------3
g_pPicture_Chung_Cannonball_3 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_3 )

g_pPicture_Chung_Cannonball_3 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_3" )

g_pPicture_Chung_Cannonball_3 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453,128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_3:SetShow(false)

--------4
g_pPicture_Chung_Cannonball_4 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_4 )

g_pPicture_Chung_Cannonball_4 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_4" )

g_pPicture_Chung_Cannonball_4 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_4:SetShow(false)

-------5
g_pPicture_Chung_Cannonball_5 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_5 )

g_pPicture_Chung_Cannonball_5 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_5" )

g_pPicture_Chung_Cannonball_5 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453,112)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_5:SetShow(false)

------6
g_pPicture_Chung_Cannonball_6 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_6 )

g_pPicture_Chung_Cannonball_6 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_6" )

g_pPicture_Chung_Cannonball_6 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_6:SetShow(false)

--------------------------------------------캐논볼2 static

g_pStatic_Chung_Cannonball_1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Chung_Cannonball_1 )
g_pStatic_Chung_Cannonball_1:SetName( "Static_Chung_Cannonball_1" )
g_pStatic_Chung_Cannonball_1:SetShow( false )

--------------------캐논볼2
g_pPicture_Chung_Cannonball_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_bg2 )

g_pPicture_Chung_Cannonball_bg2:SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_bg" )

g_pPicture_Chung_Cannonball_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----------포탄2
---------2-1
g_pPicture_Chung_Cannonball_1 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_1 )

g_pPicture_Chung_Cannonball_1 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_1" )

g_pPicture_Chung_Cannonball_1 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_1:SetShow(false)

--------2-2
g_pPicture_Chung_Cannonball_2 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_2 )

g_pPicture_Chung_Cannonball_2 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_2" )

g_pPicture_Chung_Cannonball_2 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,136)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_2:SetShow(false)

--------2-3
g_pPicture_Chung_Cannonball_3 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_3 )

g_pPicture_Chung_Cannonball_3 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_3" )

g_pPicture_Chung_Cannonball_3 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_3:SetShow(false)

----------2-4
g_pPicture_Chung_Cannonball_4 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_4 )

g_pPicture_Chung_Cannonball_4 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_4" )

g_pPicture_Chung_Cannonball_4 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_4:SetShow(false)

---------2-5
g_pPicture_Chung_Cannonball_5 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_5 )

g_pPicture_Chung_Cannonball_5 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_5" )

g_pPicture_Chung_Cannonball_5 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,112)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_5:SetShow(false)

-------2-6
g_pPicture_Chung_Cannonball_6 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_6 )

g_pPicture_Chung_Cannonball_6 :SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_6" )

g_pPicture_Chung_Cannonball_6 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Chung_Cannonball_6:SetShow(false)

--------------------------------------------캐논볼3 static

g_pStatic_Chung_Cannonball_Ex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Chung_Cannonball_Ex )
g_pStatic_Chung_Cannonball_Ex:SetName( "Static_Chung_Cannonball_Ex" )
g_pStatic_Chung_Cannonball_Ex:SetShow( false )

--------------------캐논볼Ex
g_pPicture_Chung_Cannonball_bgEx = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pPicture_Chung_Cannonball_bgEx )

g_pPicture_Chung_Cannonball_bgEx:SetTex( "DLG_UI_Character04.tga", "Chung_cannonball_bg" )

g_pPicture_Chung_Cannonball_bgEx:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----------포탄Ex
---------Ex-1
g_pPicture_Chung_Cannonball_Ex1 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pPicture_Chung_Cannonball_Ex1 )

g_pPicture_Chung_Cannonball_Ex1 :SetTex( "DLG_UI_Common_Texture45.tga", "Chung_cannonball_ver2_1" )

g_pPicture_Chung_Cannonball_Ex1 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------Ex-2
g_pPicture_Chung_Cannonball_Ex2 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pPicture_Chung_Cannonball_Ex2 )

g_pPicture_Chung_Cannonball_Ex2 :SetTex( "DLG_UI_Common_Texture45.tga", "Chung_cannonball_ver2_2" )

g_pPicture_Chung_Cannonball_Ex2 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,136)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------2-3
g_pPicture_Chung_Cannonball_Ex3 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pPicture_Chung_Cannonball_Ex3 )

g_pPicture_Chung_Cannonball_Ex3 :SetTex( "DLG_UI_Common_Texture45.tga", "Chung_cannonball_ver2_3" )

g_pPicture_Chung_Cannonball_Ex3 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----------2-4
g_pPicture_Chung_Cannonball_Ex4 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pPicture_Chung_Cannonball_Ex4 )

g_pPicture_Chung_Cannonball_Ex4 :SetTex( "DLG_UI_Common_Texture45.tga", "Chung_cannonball_ver2_4" )

g_pPicture_Chung_Cannonball_Ex4 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---------2-5
g_pPicture_Chung_Cannonball_Ex5 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pPicture_Chung_Cannonball_Ex5 )

g_pPicture_Chung_Cannonball_Ex5 :SetTex( "DLG_UI_Common_Texture45.tga", "Chung_cannonball_ver2_5" )

g_pPicture_Chung_Cannonball_Ex5 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,112)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------2-6
g_pPicture_Chung_Cannonball_Ex6 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pPicture_Chung_Cannonball_Ex6 )

g_pPicture_Chung_Cannonball_Ex6 :SetTex( "DLG_UI_Common_Texture45.tga", "Chung_cannonball_ver2_6" )

g_pPicture_Chung_Cannonball_Ex6 :SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(453+27,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





