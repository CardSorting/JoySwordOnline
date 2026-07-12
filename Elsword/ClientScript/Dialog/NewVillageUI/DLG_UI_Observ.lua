-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetEnableMoveByDrag( true )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )
g_pUIDialog:SetCloseCustomUIEventID( X2_HERO_MATCH_UI_MSG["XHMUM_CLOSE"] )



g_pStaticObeserver = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticObeserver )
g_pStaticObeserver:SetName( "Obeserver" )


---------BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Large_Top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Large_Middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 465,
	"LEFT_TOP		= D3DXVECTOR2(0,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Large_Bottom" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,492)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Medium_Top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Medium_Middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 358,
	"LEFT_TOP		= D3DXVECTOR2(13,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Medium_Bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,418)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------BG3

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Small_Top" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(21,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Small_Middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 302,
	"LEFT_TOP		= D3DXVECTOR2(21,99)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Small_Bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(21,407)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------title
----------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title03.tga", "USER_MENU" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(125,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
-------------------------BAR(실제 길이 2px)

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(25,148)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 100,
	"LEFT_TOP		= D3DXVECTOR2(76,148)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(184,148)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(236,148)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(310,148)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

----가로 라인 예시---
g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_Y = 300,
	"LEFT_TOP		= D3DXVECTOR2(72,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_Y = 300,
	"LEFT_TOP		= D3DXVECTOR2(180,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line8:SetPoint
{
     ADD_SIZE_Y = 300,
	"LEFT_TOP		= D3DXVECTOR2(232,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line9 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line9 )

g_pPicture_line9:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line9:SetPoint
{
     ADD_SIZE_Y = 300,
	"LEFT_TOP		= D3DXVECTOR2(306,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

--------------------다음줄 부터+29
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(25,148+29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 100,
	"LEFT_TOP		= D3DXVECTOR2(76,148+29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(184,148+29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(236,148+29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(310,148+29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----29*2
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(25,148+29*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 100,
	"LEFT_TOP		= D3DXVECTOR2(76,148+29*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(184,148+29*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(236,148+29*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(310,148+29*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----29*3
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(25,148+29*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 100,
	"LEFT_TOP		= D3DXVECTOR2(76,148+29*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(184,148+29*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(236,148+29*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(310,148+29*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----29*4
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(25,148+29*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 100,
	"LEFT_TOP		= D3DXVECTOR2(76,148+29*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(184,148+29*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(236,148+29*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(310,148+29*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----29*5
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(25,148+29*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 100,
	"LEFT_TOP		= D3DXVECTOR2(76,148+29*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(184,148+29*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(236,148+29*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(310,148+29*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----29*6
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(25,148+29*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 100,
	"LEFT_TOP		= D3DXVECTOR2(76,148+29*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(184,148+29*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(236,148+29*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(310,148+29*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----29*7
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(25,148+29*7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 100,
	"LEFT_TOP		= D3DXVECTOR2(76,148+29*7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(184,148+29*7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(236,148+29*7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(310,148+29*7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----29*8
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(25,148+29*8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 100,
	"LEFT_TOP		= D3DXVECTOR2(76,148+29*8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 44,
	"LEFT_TOP		= D3DXVECTOR2(184,148+29*8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(236,148+29*8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticObeserver:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 67,
	"LEFT_TOP		= D3DXVECTOR2(310,148+29*8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--------------------------------스크롤 바 -----------------------------------------------
g_pControlList = g_pUIDialog:CreateControlList()
g_pUIDialog:AddControl( g_pControlList )
g_pControlList:SetName( "ControlList" )

g_pControlList:SetYScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pControlList:SetYScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pControlList:SetYScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pControlList:SetYScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pControlList:SetYScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pControlList:SetYScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

g_pScrollBar = g_pControlList:InitYScrollBar()
g_pControlList:SetYScrollBarPos( 382, 110 )
g_pControlList:SetYScrollBarSize( 20, 304 )
--g_pControlList:SetYScrollBarSize( 0, 0 )
g_pControlList:SetScrollOffset( 0, 29 )
g_pControlList:SetPos( 0 , 0 )

g_pControlList:SetViewSize( 5, 9, true )


--------------------------------------------------------총인원+로그인 인원+유저 입력창--------------------------------------------------------
------------------------------    총인원    ------------------------------
g_pStaticAllPerson = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAllPerson )
g_pStaticAllPerson:SetName( "g_pStaticAllPerson" )

-------------총인원 Bg
g_pPicturecri = g_pUIDialog:CreatePicture()
g_pStaticAllPerson:AddPicture( g_pPicturecri )
g_pPicturecri:SetTex( "DLG_UI_Title03.TGA", "All_Person" )
g_pPicturecri:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(25,70)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStatic_Person = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Person )
g_pStatic_Person:SetName( "Static_Person" )
g_pStatic_Person:AddString
{
	 -- MSG 			= "[00000]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(70,70)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------------------------------    로그인 인원    ------------------------------
g_pStaticLoginPerson = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLoginPerson )
g_pStaticLoginPerson:SetName( "g_pStaticLoginPerson" )

-------------총인원 Bg
g_pPicturecri = g_pUIDialog:CreatePicture()
g_pStaticLoginPerson:AddPicture( g_pPicturecri )
g_pPicturecri:SetTex( "DLG_UI_Title03.TGA", "Login_Person" )
g_pPicturecri:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(135,70)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStatic_LoginPerson = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_LoginPerson )
g_pStatic_LoginPerson:SetName( "Static_LoginPerson" )
g_pStatic_LoginPerson:AddString
{
	 -- MSG 			= "[00000]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(135+55,70)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-------------------------------------------------------- 유저 네임 입력--------------------------------------------------------
-- g_pStaticLoginPerson = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStaticLoginPerson )
-- g_pStaticLoginPerson:SetName( "g_pStaticLoginPerson" )

-- -------------유저네임 입력 Bg
-- g_pPicturecri = g_pUIDialog:CreatePicture()
-- g_pStaticLoginPerson:AddPicture( g_pPicturecri )
-- g_pPicturecri:SetTex( "DLG_UI_Button20_NEW.TGA", "Bg_Chatbox" )
-- g_pPicturecri:SetPoint
-- {
	-- "LEFT_TOP	= D3DXVECTOR2(271,65)",
	-- "COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME	= 0.0,
-- }

-- ---유저 네임 텍스트 입력 박스
-- g_pIMEPartyName = g_pUIDialog:CreateIMEEditBox()
-- g_pUIDialog:AddControl( g_pIMEPartyName )
-- g_pIMEPartyName:SetName( "IMEPartyName" )
-- g_pIMEPartyName:SetTextPoint
-- {
	-- USE_TEXTURE_SIZE= FALSE,
	-- "LEFT_TOP				= D3DXVECTOR2( 281, 70 )",
	-- "RIGHT_BOTTOM		= D3DXVECTOR2( 388,84 )",
	-- "COLOR					= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME			= 0.0,
-- }
-- g_pIMEPartyName:SetFont( XF_DODUM_11_NORMAL )
-- g_pIMEPartyName:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
-- g_pIMEPartyName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
-- g_pIMEPartyName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
-- g_pIMEPartyName:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
-- g_pIMEPartyName:SetCustomMsgEnter( USER_MENU_UI_MSG["UMUI_INVITE_PARTY_NAME"] )



------------------------------------------------첫번째 줄(전체/닉네임/서버/로그인/대회채널 접속여부---------------------------------
----전체---
g_pStatic_ALL = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ALL )
g_pStatic_ALL:SetName( "Static_ALL" )
g_pStatic_ALL:AddString
{
	MSG 			= STR_ID_2596,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(34,108)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
----닉네임---
g_pStatic_Nickname = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Nickname )
g_pStatic_Nickname:SetName( "Static_Nickname" )
g_pStatic_Nickname:AddString
{
	 -- MSG 			= "닉네임",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(106,108)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
----서버---
g_pStatic_Server = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Server )
g_pStatic_Server:SetName( "Static_Server" )
g_pStatic_Server:AddString
{
	 -- MSG 			= "서버",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(194,108)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
----로그인---
g_pStatic_Login = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Login )
g_pStatic_Login:SetName( "Static_Login" )
g_pStatic_Login:AddString
{
	 -- MSG 			= "로그인",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(248,108)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----로그인 정렬   버튼
g_pButtonAllign = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAllign )
g_pButtonAllign:SetName( "Login_Allign" )
g_pButtonAllign:SetNormalTex( "DLG_UI_Button20_NEW.tga", "DropBox_Normal" )
g_pButtonAllign:SetOverTex( "DLG_UI_Button20_NEW.tga", "DropBox_Over" )
g_pButtonAllign:SetDownTex( "DLG_UI_Button20_NEW.tga", "DropBox_Over" )

g_pButtonAllign:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(239,126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAllign:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(239,126)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAllign:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(239+1,126+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonAllign:SetCustomMsgMouseUp( X2_HERO_MATCH_UI_MSG["UIM_EXIT"] )

----로그인(ALL)---
g_pStatic_LoginAll = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_LoginAll )
g_pStatic_LoginAll:SetName( "Static_LoginAll" )
g_pStatic_LoginAll:AddString
{
	 -- MSG 			= "(ALL)",
	FONT_INDEX		= XUF_DODUM_11_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(244,130)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----대회채널 접속 여부---
g_pStatic_Contact = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Contact )
g_pStatic_Contact:SetName( "Static_Contact" )
g_pStatic_Contact:AddString
{
	 -- MSG 			= "대회채널/n접속여부",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(312,108)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--------------------------------------------------------1번째 플레이어 내용-----------------
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "Option_Window_Graphic" )

-- --------------------------1번 전체 체크창
-- -----체크박스
-- g_pPicture_box = g_pUIDialog:CreatePicture()
-- g_pStatic1st:AddPicture( g_pPicture_box )
-- g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

-- g_pPicture_box:SetPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(41,156)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -------체크 표시
-- g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
-- g_pCheckBoxsecret:SetName( "st_check" )
-- g_pUIDialog:AddControl( g_pCheckBoxsecret )
-- g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
-- g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

-- g_pCheckBoxsecret:SetBGPoint
-- {
	-- USE_TEXTURE_SIZE	= FALSE,
	-- "LEFT_TOP		= D3DXVECTOR2(41,156)",
 	-- "RIGHT_BOTTOM		= D3DXVECTOR2(72-30+176+12,156+7)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pCheckBoxsecret:SetCheckPoint
-- {    
 	-- "LEFT_TOP		= D3DXVECTOR2(41-2,156-2)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ----닉네임 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "st_Nickname" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "오오미지리것소",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(83,157)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }

-- ----서버 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "st_Server" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "솔레스",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(189,157)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }


-- -------라디오 버튼
-- ---로그인 라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "st_login" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(262+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ---대회채널 접속여부  라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "st_channel" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(336+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- --------------------------------------------------------2번째 플레이어 내용-----------------
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "Option_Window_Graphic" )

-- --------------------------2번 전체 체크창
-- -----체크박스
-- g_pPicture_box = g_pUIDialog:CreatePicture()
-- g_pStatic1st:AddPicture( g_pPicture_box )
-- g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

-- g_pPicture_box:SetPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -------체크 표시
-- g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
-- g_pCheckBoxsecret:SetName( "2st_check" )
-- g_pUIDialog:AddControl( g_pCheckBoxsecret )
-- g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
-- g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

-- g_pCheckBoxsecret:SetBGPoint
-- {
	-- USE_TEXTURE_SIZE	= FALSE,
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29)",
 	-- "RIGHT_BOTTOM		= D3DXVECTOR2(72-30+176+12,264)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pCheckBoxsecret:SetCheckPoint
-- {    
 	-- "LEFT_TOP		= D3DXVECTOR2(41-2,156-2+29)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ----닉네임 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "2st_Nickname" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "오오미지리것소",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(83,157+29)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }

-- ----서버 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "2st_Server" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "솔레스",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(189,157+29)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }


-- -------라디오 버튼
-- ---로그인 라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "2st_login" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(262+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ---대회채널 접속여부  라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "2st_channel" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(336+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- --------------------------------------------------------3번째 플레이어 내용-----------------
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "Option_Window_Graphic" )

-- --------------------------2번 전체 체크창
-- -----체크박스
-- g_pPicture_box = g_pUIDialog:CreatePicture()
-- g_pStatic1st:AddPicture( g_pPicture_box )
-- g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

-- g_pPicture_box:SetPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*2)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -------체크 표시
-- g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
-- g_pCheckBoxsecret:SetName( "3st_check" )
-- g_pUIDialog:AddControl( g_pCheckBoxsecret )
-- g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
-- g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

-- g_pCheckBoxsecret:SetBGPoint
-- {
	-- USE_TEXTURE_SIZE	= FALSE,
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*2)",
 	-- "RIGHT_BOTTOM		= D3DXVECTOR2(72-30+176+12,264)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pCheckBoxsecret:SetCheckPoint
-- {    
 	-- "LEFT_TOP		= D3DXVECTOR2(41-2,156-2+29*2)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ----닉네임 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "3st_Nickname" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "오오미지리것소",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(83,157+29*2)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }

-- ----서버 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "3st_Server" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "솔레스",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(189,157+29*2)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }


-- -------라디오 버튼
-- ---로그인 라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "3st_login" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*2)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*2)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*2)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(262+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*2)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ---대회채널 접속여부  라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "3st_channel" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*2)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*2)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*2)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(336+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*2)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- --------------------------------------------------------4번째 플레이어 내용-----------------
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "Option_Window_Graphic" )

-- --------------------------4번 전체 체크창
-- -----체크박스
-- g_pPicture_box = g_pUIDialog:CreatePicture()
-- g_pStatic1st:AddPicture( g_pPicture_box )
-- g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

-- g_pPicture_box:SetPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*3)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -------체크 표시
-- g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
-- g_pCheckBoxsecret:SetName( "4st_check" )
-- g_pUIDialog:AddControl( g_pCheckBoxsecret )
-- g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
-- g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

-- g_pCheckBoxsecret:SetBGPoint
-- {
	-- USE_TEXTURE_SIZE	= FALSE,
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*3)",
 	-- "RIGHT_BOTTOM		= D3DXVECTOR2(72-30+176+12,264)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pCheckBoxsecret:SetCheckPoint
-- {    
 	-- "LEFT_TOP		= D3DXVECTOR2(41-2,156-2+29*3)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ----닉네임 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "4st_Nickname" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "오오미지리것소",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(83,157+29*3)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }

-- ----서버 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "4st_Server" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "솔레스",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(189,157+29*3)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }


-- -------라디오 버튼
-- ---로그인 라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "4st_login" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*3)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*3)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*3)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(262+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*3)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ---대회채널 접속여부  라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "4st_channel" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*3)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*3)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*3)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(336+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*3)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- --------------------------------------------------------5번째 플레이어 내용-----------------
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "Option_Window_Graphic" )

-- --------------------------5번 전체 체크창
-- -----체크박스
-- g_pPicture_box = g_pUIDialog:CreatePicture()
-- g_pStatic1st:AddPicture( g_pPicture_box )
-- g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

-- g_pPicture_box:SetPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*4)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -------체크 표시
-- g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
-- g_pCheckBoxsecret:SetName( "5st_check" )
-- g_pUIDialog:AddControl( g_pCheckBoxsecret )
-- g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
-- g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

-- g_pCheckBoxsecret:SetBGPoint
-- {
	-- USE_TEXTURE_SIZE	= FALSE,
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*4)",
 	-- "RIGHT_BOTTOM		= D3DXVECTOR2(72-30+176+12,264)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pCheckBoxsecret:SetCheckPoint
-- {    
 	-- "LEFT_TOP		= D3DXVECTOR2(41-2,156-2+29*4)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ----닉네임 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "5st_Nickname" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "오오미지리것소",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(83,157+29*4)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }

-- ----서버 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "5st_Server" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "솔레스",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(189,157+29*4)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }


-- -------라디오 버튼
-- ---로그인 라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "5st_login" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*4)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*4)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*4)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(262+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*4)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ---대회채널 접속여부  라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "5st_channel" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*4)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*4)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*4)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(336+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*4)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- --------------------------------------------------------6번째 플레이어 내용-----------------
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "Option_Window_Graphic" )

-- --------------------------6번 전체 체크창
-- -----체크박스
-- g_pPicture_box = g_pUIDialog:CreatePicture()
-- g_pStatic1st:AddPicture( g_pPicture_box )
-- g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

-- g_pPicture_box:SetPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*5)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -------체크 표시
-- g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
-- g_pCheckBoxsecret:SetName( "6st_check" )
-- g_pUIDialog:AddControl( g_pCheckBoxsecret )
-- g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
-- g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

-- g_pCheckBoxsecret:SetBGPoint
-- {
	-- USE_TEXTURE_SIZE	= FALSE,
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*5)",
 	-- "RIGHT_BOTTOM		= D3DXVECTOR2(72-30+176+12,264)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pCheckBoxsecret:SetCheckPoint
-- {    
 	-- "LEFT_TOP		= D3DXVECTOR2(41-2,156-2+29*5)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ----닉네임 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "6st_Nickname" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "오오미지리것소",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(83,157+29*5)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }

-- ----서버 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "6st_Server" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "솔레스",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(189,157+29*5)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }


-- -------라디오 버튼
-- ---로그인 라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "6st_login" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*5)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*5)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*5)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(262+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*5)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ---대회채널 접속여부  라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "6st_channel" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*5)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*5)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*5)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(336+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*5)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- --------------------------------------------------------7번째 플레이어 내용-----------------
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "Option_Window_Graphic" )

-- --------------------------7번 전체 체크창
-- -----체크박스
-- g_pPicture_box = g_pUIDialog:CreatePicture()
-- g_pStatic1st:AddPicture( g_pPicture_box )
-- g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

-- g_pPicture_box:SetPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*6)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -------체크 표시
-- g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
-- g_pCheckBoxsecret:SetName( "7st_check" )
-- g_pUIDialog:AddControl( g_pCheckBoxsecret )
-- g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
-- g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

-- g_pCheckBoxsecret:SetBGPoint
-- {
	-- USE_TEXTURE_SIZE	= FALSE,
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*6)",
 	-- "RIGHT_BOTTOM		= D3DXVECTOR2(72-30+176+12,264)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pCheckBoxsecret:SetCheckPoint
-- {    
 	-- "LEFT_TOP		= D3DXVECTOR2(41-2,156-2+29*6)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ----닉네임 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "7st_Nickname" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "오오미지리것소",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(83,157+29*6)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }

-- ----서버 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "7st_Server" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "솔레스",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(189,157+29*6)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }


-- -------라디오 버튼
-- ---로그인 라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "7st_login" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*6)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*6)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*6)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(262+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*6)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ---대회채널 접속여부  라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "7st_channel" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*6)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*6)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*6)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(336+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*6)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- --------------------------------------------------------8번째 플레이어 내용-----------------
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "Option_Window_Graphic" )

-- --------------------------8번 전체 체크창
-- -----체크박스
-- g_pPicture_box = g_pUIDialog:CreatePicture()
-- g_pStatic1st:AddPicture( g_pPicture_box )
-- g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

-- g_pPicture_box:SetPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*7)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -------체크 표시
-- g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
-- g_pCheckBoxsecret:SetName( "8st_check" )
-- g_pUIDialog:AddControl( g_pCheckBoxsecret )
-- g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
-- g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

-- g_pCheckBoxsecret:SetBGPoint
-- {
	-- USE_TEXTURE_SIZE	= FALSE,
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*7)",
 	-- "RIGHT_BOTTOM		= D3DXVECTOR2(72-30+176+12,264)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pCheckBoxsecret:SetCheckPoint
-- {    
 	-- "LEFT_TOP		= D3DXVECTOR2(41-2,156-2+29*7)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ----닉네임 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "8st_Nickname" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "오오미지리것소",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(83,157+29*7)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }

-- ----서버 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "8st_Server" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "솔레스",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(189,157+29*7)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }


-- -------라디오 버튼
-- ---로그인 라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "8st_login" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*7)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*7)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*7)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(262+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*7)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ---대회채널 접속여부  라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "8st_channel" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*7)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*7)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*7)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(336+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*7)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- --------------------------------------------------------9번째 플레이어 내용-----------------
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "Option_Window_Graphic" )

-- --------------------------9번 전체 체크창
-- -----체크박스
-- g_pPicture_box = g_pUIDialog:CreatePicture()
-- g_pStatic1st:AddPicture( g_pPicture_box )
-- g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

-- g_pPicture_box:SetPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*8)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- -------체크 표시
-- g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
-- g_pCheckBoxsecret:SetName( "9st_check" )
-- g_pUIDialog:AddControl( g_pCheckBoxsecret )
-- g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
-- g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

-- g_pCheckBoxsecret:SetBGPoint
-- {
	-- USE_TEXTURE_SIZE	= FALSE,
	-- "LEFT_TOP		= D3DXVECTOR2(41,156+29*8)",
 	-- "RIGHT_BOTTOM		= D3DXVECTOR2(72-30+176+12,264)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pCheckBoxsecret:SetCheckPoint
-- {    
 	-- "LEFT_TOP		= D3DXVECTOR2(41-2,156-2+29*8)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ----닉네임 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "9st_Nickname" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "오오미지리것소",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(83,157+29*8)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }

-- ----서버 부분---
-- g_pStatic1st = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic1st )
-- g_pStatic1st:SetName( "9st_Server" )
-- g_pStatic1st:AddString
-- {
	 -- -- MSG 			= "솔레스",
	-- FONT_INDEX		= XUF_DODUM_13_BOLD,
	-- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(189,157+29*8)",
	-- "COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	-- "OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
-- }


-- -------라디오 버튼
-- ---로그인 라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "9st_login" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*8)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*8)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*8)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(262+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(262,154+29*8)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- ---대회채널 접속여부  라디오 버튼
-- g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButtonlow )
-- g_pRadioButtonlow:SetFixOverByCheck( true ) 
-- g_pRadioButtonlow:SetShowOffBGByCheck( true )
-- g_pRadioButtonlow:SetName( "9st_channel" )
-- g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
-- g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
-- g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

-- g_pRadioButtonlow:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*8)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetBGMouseOverPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*8)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*8)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(336+14,154+15)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButtonlow:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(336,154+29*8)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

-----EXIT  버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(400,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(400-4,15-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(400-3,15-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX:SetCustomMsgMouseUp( X2_HERO_MATCH_UI_MSG["XHMUM_CLOSE"] )



-----공지 유저 추가하기   버튼
g_pButtonObserverAdd = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonObserverAdd )
g_pButtonObserverAdd:SetName( "Observer_Add" )
g_pButtonObserverAdd:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_UserAdd" )
g_pButtonObserverAdd:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_UserAdd_Over" )
g_pButtonObserverAdd:SetDownTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_UserAdd_Over" )

g_pButtonObserverAdd:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(22,443)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonObserverAdd:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,443)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonObserverAdd:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(22+1,443+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonObserverAdd:SetCustomMsgMouseUp( X2_HERO_MATCH_UI_MSG["XHMUM_ADD_USER"] )

-----공지 유저 제거하기   버튼
g_pButtonObserverDelete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonObserverDelete )
g_pButtonObserverDelete:SetName( "Observer_Delete" )
g_pButtonObserverDelete:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_UserDelete" )
g_pButtonObserverDelete:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_UserDelete_Over" )
g_pButtonObserverDelete:SetDownTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_UserDelete_Over" )

g_pButtonObserverDelete:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(121,443)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonObserverDelete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(121,443)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonObserverDelete:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(121+1,443+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonObserverDelete:SetCustomMsgMouseUp( X2_HERO_MATCH_UI_MSG["XHMUM_DELETE_USER"] )


-----공지 유저 제거하기   버튼
g_pButtonViewCheat = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonViewCheat )
g_pButtonViewCheat:SetName( "View_Cheat" )
g_pButtonViewCheat:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_ViewCheat" )
g_pButtonViewCheat:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_ViewCheat_Over" )
g_pButtonViewCheat:SetDownTex( "DLG_UI_Button20_NEW.tga", "Bt_Observer_ViewCheat_Over" )

g_pButtonViewCheat:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(324,443)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonViewCheat:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(324,443)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonViewCheat:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(324+1,443+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonViewCheat:SetCustomMsgMouseUp( X2_HERO_MATCH_UI_MSG["XHMUM_SHOW_COMMAND"] )