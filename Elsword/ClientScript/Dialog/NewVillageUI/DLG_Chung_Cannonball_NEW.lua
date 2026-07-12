-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

------------캐논볼 static
g_pStatic_Chung_Cannonball_0 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Chung_Cannonball_0 )
g_pStatic_Chung_Cannonball_0:SetName( "Static_Chung_Cannonball_0" )
g_pStatic_Chung_Cannonball_0:SetShow( false )


---테두리
g_pPicture_Chung_Cannonball_bg = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_bg )
g_pPicture_Chung_Cannonball_bg:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_BG" )
g_pPicture_Chung_Cannonball_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(86-1+14,66-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------포탄
---------1
g_pPicture_Chung_Cannonball_1 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_1 )
g_pPicture_Chung_Cannonball_1 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_1" )
g_pPicture_Chung_Cannonball_1 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(102-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------2
g_pPicture_Chung_Cannonball_2 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_2 )
g_pPicture_Chung_Cannonball_2 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_2" )
g_pPicture_Chung_Cannonball_2 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
------3
g_pPicture_Chung_Cannonball_3 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_3 )
g_pPicture_Chung_Cannonball_3 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_3" )
g_pPicture_Chung_Cannonball_3 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(138-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------4
g_pPicture_Chung_Cannonball_4 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_4 )
g_pPicture_Chung_Cannonball_4 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_4" )
g_pPicture_Chung_Cannonball_4 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(138+18-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------5
g_pPicture_Chung_Cannonball_5 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_5 )
g_pPicture_Chung_Cannonball_5 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_5" )
g_pPicture_Chung_Cannonball_5 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(138+36-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
------6
g_pPicture_Chung_Cannonball_6 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_0:AddPicture( g_pPicture_Chung_Cannonball_6 )
g_pPicture_Chung_Cannonball_6 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_6" )
g_pPicture_Chung_Cannonball_6 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(138+54-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------------------------------캐논볼2 static
g_pStatic_Chung_Cannonball_1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Chung_Cannonball_1 )
g_pStatic_Chung_Cannonball_1:SetName( "Static_Chung_Cannonball_1" )
g_pStatic_Chung_Cannonball_1:SetShow( false )


---테두리
g_pPicture_Chung_Cannonball_bg = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_bg )
g_pPicture_Chung_Cannonball_bg:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_BG_1" )
g_pPicture_Chung_Cannonball_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(86-1+14,66-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----------포탄2
---------7
g_pPicture_Chung_Cannonball_7 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_7 )
g_pPicture_Chung_Cannonball_7 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_1" )
g_pPicture_Chung_Cannonball_7 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------8
g_pPicture_Chung_Cannonball_8 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_8 )
g_pPicture_Chung_Cannonball_8 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_2" )
g_pPicture_Chung_Cannonball_8 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21+18-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------9
g_pPicture_Chung_Cannonball_9 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_9 )
g_pPicture_Chung_Cannonball_9 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_3" )
g_pPicture_Chung_Cannonball_9 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21+36-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----------10
g_pPicture_Chung_Cannonball_10 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_10 )
g_pPicture_Chung_Cannonball_10 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_4" )
g_pPicture_Chung_Cannonball_10 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21+54-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---------11
g_pPicture_Chung_Cannonball_11 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_11 )
g_pPicture_Chung_Cannonball_11 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_5" )
g_pPicture_Chung_Cannonball_11 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21+72-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------12
g_pPicture_Chung_Cannonball_12 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_1:AddPicture( g_pPicture_Chung_Cannonball_12 )
g_pPicture_Chung_Cannonball_12 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_6" )
g_pPicture_Chung_Cannonball_12 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21+90-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------------------------------캐논볼 EX static -- 택틱컬 투르퍼 용
g_pStatic_Chung_Cannonball_Ex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Chung_Cannonball_Ex )
g_pStatic_Chung_Cannonball_Ex:SetName( "Static_Chung_Cannonball_Ex" )
g_pStatic_Chung_Cannonball_Ex:SetShow( false )

---테두리
g_pStatic_Chung_Cannonball_Ex_BG = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pStatic_Chung_Cannonball_Ex_BG )
g_pStatic_Chung_Cannonball_Ex_BG:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_BG_1" )
g_pStatic_Chung_Cannonball_Ex_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(86-1+14,66-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----------포탄2
---------1
g_pStatic_Chung_Cannonball_Ex_1 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pStatic_Chung_Cannonball_Ex_1 )
g_pStatic_Chung_Cannonball_Ex_1 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_VER2_1" )
g_pStatic_Chung_Cannonball_Ex_1 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------2
g_pStatic_Chung_Cannonball_Ex_2 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pStatic_Chung_Cannonball_Ex_2 )
g_pStatic_Chung_Cannonball_Ex_2 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_VER2_2" )
g_pStatic_Chung_Cannonball_Ex_2 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21+18-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------3
g_pStatic_Chung_Cannonball_Ex_3 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pStatic_Chung_Cannonball_Ex_3 )
g_pStatic_Chung_Cannonball_Ex_3 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_VER2_3" )
g_pStatic_Chung_Cannonball_Ex_3 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21+36-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----------4
g_pStatic_Chung_Cannonball_Ex_4 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pStatic_Chung_Cannonball_Ex_4 )
g_pStatic_Chung_Cannonball_Ex_4 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_VER2_4" )
g_pStatic_Chung_Cannonball_Ex_4 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21+54-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---------5
g_pStatic_Chung_Cannonball_Ex_5 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pStatic_Chung_Cannonball_Ex_5 )
g_pStatic_Chung_Cannonball_Ex_5 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_VER2_5" )
g_pStatic_Chung_Cannonball_Ex_5 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21+72-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------6
g_pStatic_Chung_Cannonball_Ex_6 = g_pUIDialog:CreatePicture()
g_pStatic_Chung_Cannonball_Ex:AddPicture( g_pStatic_Chung_Cannonball_Ex_6 )
g_pStatic_Chung_Cannonball_Ex_6 :SetTex( "DLG_UI_Common_Texture63_NEW.tga", "CANNONBALL_VER2_6" )
g_pStatic_Chung_Cannonball_Ex_6 :SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(120+72+21+90-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
