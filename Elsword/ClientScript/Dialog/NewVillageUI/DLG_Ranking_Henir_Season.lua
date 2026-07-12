-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticRankInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankInfo )
g_pStaticRankInfo:SetName( "staticRankInfo" )
g_pUIDialog:SetFront( true )

g_pUIDialog:SetCloseCustomUIEventID( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 460, 493, 0 ) ) -- Size

for	index = 0, 4 do
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( 54,162 + index * 50, 0 ) )
end



----------------------- 타이틀

g_pPicture_ranking = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_ranking )

g_pPicture_ranking:SetTex( "DLG_UI_Title02.TGA", "ranking" )

g_pPicture_ranking:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(18,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-------------공통
-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(3,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 442,
	"LEFT_TOP		= D3DXVECTOR2(3,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_BG1)

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_bottom" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(3,468)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----gray_bg
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_TOP" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2= g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_middle" )

g_pPicture_bg2:SetPoint
{
     ADD_SIZE_Y = 402,
	"LEFT_TOP		= D3DXVECTOR2(17,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg2= g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_bottom" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,462)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------공통
----리스트창 BG

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "bg_top" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "bg_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 360,
	"LEFT_TOP		= D3DXVECTOR2(18,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "bg_bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(18,458)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------공통
-----리스트창 Top5

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "bg_gray_top" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(28,150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "bg_gray_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 235,
	"LEFT_TOP		= D3DXVECTOR2(28,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "bg_gray_bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,393)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------공통
-----리스트창 My

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "bg_gray_top" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(28,408)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "bg_gray_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(28,414)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "bg_gray_bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,454)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

-------------헤니르&시즌 대전
---순위표시-1번째 플레이어 위치
g_pStaticRankOthers1	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankOthers1 )
g_pStaticRankOthers1:SetName( "StaticRankOthers1" )

g_pPictureRank1_100		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers1:AddPicture( g_pPictureRank1_100 )
g_pPictureRank1_100:SetTex2( "PC_0.dds" )
g_pPictureRank1_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36, 161 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36, 161 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRank1_10		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers1:AddPicture( g_pPictureRank1_10 )
g_pPictureRank1_10:SetTex2( "PC_0.dds" )
g_pPictureRank1_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54, 161 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54, 161 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRank1_1		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers1:AddPicture( g_pPictureRank1_1 )
g_pPictureRank1_1:SetTex2( "PC_0.dds" )
g_pPictureRank1_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72, 161 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72, 161 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----2

g_pStaticRankOthers2	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankOthers2 )
g_pStaticRankOthers2:SetName( "StaticRankOthers2" )

g_pPictureRank2_100		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers2:AddPicture( g_pPictureRank2_100 )
g_pPictureRank2_100:SetTex2( "PC_0.dds" )
g_pPictureRank2_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36, 210 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36, 210 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRank2_10		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers2:AddPicture( g_pPictureRank2_10 )
g_pPictureRank2_10:SetTex2( "PC_0.dds" )
g_pPictureRank2_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54, 210 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54, 210 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRank2_1		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers2:AddPicture( g_pPictureRank2_1 )
g_pPictureRank2_1:SetTex2( "PC_0.dds" )
g_pPictureRank2_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72,210 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72,210 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------3

g_pStaticRankOthers3	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankOthers3 )
g_pStaticRankOthers3:SetName( "StaticRankOthers3" )

g_pPictureRank3_100		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers3:AddPicture( g_pPictureRank3_100 )
g_pPictureRank3_100:SetTex2( "PC_0.dds" )
g_pPictureRank3_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36, 259 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36, 259 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRank3_10		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers3:AddPicture( g_pPictureRank3_10 )
g_pPictureRank3_10:SetTex2( "PC_0.dds" )
g_pPictureRank3_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54, 259 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54, 259 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRank3_1		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers3:AddPicture( g_pPictureRank3_1 )
g_pPictureRank3_1:SetTex2( "PC_0.dds" )
g_pPictureRank3_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72, 259 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72, 259 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----4

g_pStaticRankOthers4	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankOthers4 )
g_pStaticRankOthers4:SetName( "StaticRankOthers4" )

g_pPictureRank4_100		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers4:AddPicture( g_pPictureRank4_100 )
g_pPictureRank4_100:SetTex2( "PC_0.dds" )
g_pPictureRank4_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36, 308 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36, 308 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRank4_10		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers4:AddPicture( g_pPictureRank4_10 )
g_pPictureRank4_10:SetTex2( "PC_0.dds" )
g_pPictureRank4_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54, 308 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54, 308 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRank4_1		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers4:AddPicture( g_pPictureRank4_1 )
g_pPictureRank4_1:SetTex2( "PC_0.dds" )
g_pPictureRank4_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72, 308 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72, 308 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------5

g_pStaticRankOthers5	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankOthers5 )
g_pStaticRankOthers5:SetName( "StaticRankOthers5" )

g_pPictureRank5_100		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers5:AddPicture( g_pPictureRank5_100 )
g_pPictureRank5_100:SetTex2( "PC_0.dds" )
g_pPictureRank5_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36, 357 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36, 357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRank5_10		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers5:AddPicture( g_pPictureRank5_10 )
g_pPictureRank5_10:SetTex2( "PC_0.dds" )
g_pPictureRank5_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54, 357 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54, 357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRank5_1		=	g_pUIDialog:CreatePicture()
g_pStaticRankOthers5:AddPicture( g_pPictureRank5_1 )
g_pPictureRank5_1:SetTex2( "PC_0.dds" )
g_pPictureRank5_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72, 357 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72, 357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
---------나의 순위

g_pStatic_My_Score = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_My_Score )
g_pStatic_My_Score:SetName( "Static_My_Score" )

g_pStatic_My_Score:AddString
{
	MSG 			= "알수없음",  --순위밖일 경우
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(63,169+49+49+49+49+60)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]
---------------------클래스&클래스 이니셜_레벨 표시-1번째 플레이어
------클래스(BLACK)
g_pStaticClass1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClass1 )
g_pStaticClass1:SetName( "Static_Class1" )

g_pPictureClass1 = g_pUIDialog:CreatePicture()
g_pStaticClass1:AddPicture( g_pPictureClass1 )

g_pPictureClass1:SetTex( "DLG_PVP_State_Info0.tga", "ElswordStateSmall" )

g_pPictureClass1:SetPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10,

 	"LEFT_TOP		= D3DXVECTOR2(100,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInitial1 = g_pUIDialog:CreatePicture()
g_pStaticClass1:AddPicture( g_pPictureInitial1 )

g_pPictureInitial1:SetTex( "DLG_UI_Common_Texture11.tga", "Class_S" )

g_pPictureInitial1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(131,186)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLevel_1_10 = g_pUIDialog:CreatePicture()
g_pStaticClass1:AddPicture( g_pPictureLevel_1_10 )

g_pPictureLevel_1_10:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureLevel_1_10:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(100,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLevel_1_1 = g_pUIDialog:CreatePicture()
g_pStaticClass1:AddPicture( g_pPictureLevel_1_1 )

g_pPictureLevel_1_1:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureLevel_1_1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(106,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------2번째 플레이어

g_pStaticClass2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClass2 )
g_pStaticClass2:SetName( "Static_Class2" )

g_pPictureClass2 = g_pUIDialog:CreatePicture()
g_pStaticClass2:AddPicture( g_pPictureClass2 )

g_pPictureClass2:SetTex( "DLG_PVP_State_Info0.tga", "ElswordStateSmall" )

g_pPictureClass2:SetPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10,

 	"LEFT_TOP		= D3DXVECTOR2(100,156+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInitial2 = g_pUIDialog:CreatePicture()
g_pStaticClass2:AddPicture( g_pPictureInitial2 )

g_pPictureInitial2:SetTex( "DLG_UI_Common_Texture11.tga", "Class_S" )

g_pPictureInitial2:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(131,235)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLevel_2_10 = g_pUIDialog:CreatePicture()
g_pStaticClass2:AddPicture( g_pPictureLevel_2_10 )

g_pPictureLevel_2_10:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureLevel_2_10:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(100,205)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLevel_2_1 = g_pUIDialog:CreatePicture()
g_pStaticClass2:AddPicture( g_pPictureLevel_2_1 )

g_pPictureLevel_2_1:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureLevel_2_1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(106,205)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------3번째 플레이어

g_pStaticClass3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClass3 )
g_pStaticClass3:SetName( "Static_Class3" )

g_pPictureClass3 = g_pUIDialog:CreatePicture()
g_pStaticClass3:AddPicture( g_pPictureClass3 )

g_pPictureClass3:SetTex( "DLG_PVP_State_Info0.tga", "ElswordStateSmall")

g_pPictureClass3:SetPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10,

 	"LEFT_TOP		= D3DXVECTOR2(100,156+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInitial3 = g_pUIDialog:CreatePicture()
g_pStaticClass3:AddPicture( g_pPictureInitial3 )

g_pPictureInitial3:SetTex( "DLG_UI_Common_Texture11.tga", "Class_S" )

g_pPictureInitial3:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(131,284)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLevel_3_10 = g_pUIDialog:CreatePicture()
g_pStaticClass3:AddPicture( g_pPictureLevel_3_10 )

g_pPictureLevel_3_10:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureLevel_3_10:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(100,254)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLevel_3_1 = g_pUIDialog:CreatePicture()
g_pStaticClass3:AddPicture( g_pPictureLevel_3_1 )

g_pPictureLevel_3_1:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureLevel_3_1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(106,254)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------------------4번째 플레이어

g_pStaticClass4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClass4 )
g_pStaticClass4:SetName( "Static_Class4" )

g_pPictureClass4 = g_pUIDialog:CreatePicture()
g_pStaticClass4:AddPicture( g_pPictureClass4 )

g_pPictureClass4:SetTex( "DLG_PVP_State_Info0.tga", "ElswordStateSmall" )

g_pPictureClass4:SetPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10,

 	"LEFT_TOP		= D3DXVECTOR2(100,156+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInitial4 = g_pUIDialog:CreatePicture()
g_pStaticClass4:AddPicture( g_pPictureInitial4 )

g_pPictureInitial4:SetTex( "DLG_UI_Common_Texture11.tga", "Class_S" )

g_pPictureInitial4:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(131,333)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLevel_4_10 = g_pUIDialog:CreatePicture()
g_pStaticClass4:AddPicture( g_pPictureLevel_4_10 )

g_pPictureLevel_4_10:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureLevel_4_10:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(100,303)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLevel_4_1 = g_pUIDialog:CreatePicture()
g_pStaticClass4:AddPicture( g_pPictureLevel_4_1 )

g_pPictureLevel_4_1:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureLevel_4_1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(106,303)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------------------5번째 플레이어

g_pStaticClass5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClass5 )
g_pStaticClass5:SetName( "Static_Class5" )

g_pPictureClass5 = g_pUIDialog:CreatePicture()
g_pStaticClass5:AddPicture( g_pPictureClass5 )

g_pPictureClass5:SetTex( "DLG_PVP_State_Info0.tga", "ElswordStateSmall" )

g_pPictureClass5:SetPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10,

 	"LEFT_TOP		= D3DXVECTOR2(100,156+49+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInitial5 = g_pUIDialog:CreatePicture()
g_pStaticClass5:AddPicture( g_pPictureInitial5 )

g_pPictureInitial5:SetTex( "DLG_UI_Common_Texture11.tga", "Class_S" )

g_pPictureInitial5:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(131,382)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLevel_5_10 = g_pUIDialog:CreatePicture()
g_pStaticClass5:AddPicture( g_pPictureLevel_5_10 )

g_pPictureLevel_5_10:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureLevel_5_10:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(100,352)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLevel_5_1 = g_pUIDialog:CreatePicture()
g_pStaticClass5:AddPicture( g_pPictureLevel_5_1 )

g_pPictureLevel_5_1:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureLevel_5_1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(106,352)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------------------

--[[
g_pPictureBlack2 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPictureBlack2 )

g_pPictureBlack2:SetTex( "DLG_UI_Common_Texture09.TGA", "black" )

g_pPictureBlack2:SetPoint
{
ADD_SIZE_X = 40,
ADD_SIZE_Y = 40,

 	"LEFT_TOP		= D3DXVECTOR2(100,156+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBlack3 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPictureBlack3 )

g_pPictureBlack3:SetTex( "DLG_UI_Common_Texture09.TGA", "black" )

g_pPictureBlack3:SetPoint
{
ADD_SIZE_X = 40,
ADD_SIZE_Y = 40,

 	"LEFT_TOP		= D3DXVECTOR2(100,156+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBlack4 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPictureBlack4 )

g_pPictureBlack4:SetTex( "DLG_UI_Common_Texture09.TGA", "black" )

g_pPictureBlack4:SetPoint
{
ADD_SIZE_X = 40,
ADD_SIZE_Y = 40,

 	"LEFT_TOP		= D3DXVECTOR2(100,156+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBlack5 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPictureBlack5 )

g_pPictureBlack5:SetTex( "DLG_UI_Common_Texture09.TGA", "black" )

g_pPictureBlack5:SetPoint
{
ADD_SIZE_X = 40,
ADD_SIZE_Y = 40,

 	"LEFT_TOP		= D3DXVECTOR2(100,156+49+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBlack6 = g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPictureBlack6 )

g_pPictureBlack6:SetTex( "DLG_UI_Common_Texture09.TGA", "black" )

g_pPictureBlack6:SetPoint
{
ADD_SIZE_X = 40,
ADD_SIZE_Y = 40,

 	"LEFT_TOP		= D3DXVECTOR2(100,156+49+49+49+49+62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------


---메뉴 버튼

---헤니르 탭 버튼(+324)
g_pRadioButtonHenir = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonHenir )

g_pRadioButtonHenir:SetFixOverByCheck( true )
g_pRadioButtonHenir:SetShowOffBGByCheck( true )

g_pRadioButtonHenir:SetName( "RadioButton_Henir" )

g_pRadioButtonHenir:SetNormalTex( "DLG_UI_Button11.tga", "Rank_henir_normal" )
g_pRadioButtonHenir:SetOverTex( "DLG_UI_Button11.tga", "Rank_henir_over" )
g_pRadioButtonHenir:SetCheckedTex( "DLG_UI_Button11.tga", "Rank_henir_down" )


g_pRadioButtonHenir:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+324,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+324,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23+324,53)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(75+30+324,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26+324,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetGroupID( 1 )
g_pRadioButtonHenir:SetChecked( true )
g_pRadioButtonHenir:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_HENIR_TAP"] )

---시즌 대전 탭 버튼(+165
g_pRadioButtonVS = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonVS )

g_pRadioButtonVS:SetFixOverByCheck( true )
g_pRadioButtonVS:SetShowOffBGByCheck( true )

g_pRadioButtonVS:SetName( "RadioButton_VS" )

g_pRadioButtonVS:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Tap_Season_Normal" )
g_pRadioButtonVS:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Tap_Season_Over" )
g_pRadioButtonVS:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "Bt_Tap_Season_OverTap" )


g_pRadioButtonVS:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+80+165,53+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonVS:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+80+165-1,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonVS:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23+80+165,53)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(23+80+165+78,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonVS:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26+80+165,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonVS:SetGroupID( 1 )
g_pRadioButtonVS:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_PVP_TAP"] )

---던전 & 필드  탭 버튼(-132)
g_pRadioButtonLevel = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonLevel )

g_pRadioButtonLevel:SetFixOverByCheck( true )
g_pRadioButtonLevel:SetShowOffBGByCheck( true )

g_pRadioButtonLevel:SetName( "RadioButton_DungeonField" )

g_pRadioButtonLevel:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Tap_Dungeon_Normal" )
g_pRadioButtonLevel:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Tap_Dungeon_Over" )
g_pRadioButtonLevel:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "Bt_Tap_Dungeon_OverTap" )


g_pRadioButtonLevel:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+80+52-132,53+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonLevel:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+80+52-132,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonLevel:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23+80+52-132,53)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(23+80+52-132+78,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonLevel:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26+80+52-132,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonLevel:SetGroupID( 1 )
g_pRadioButtonLevel:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_DUNGEON_FIELD_TAP"] )

---주간대전  탭 버튼
g_pRadioButtonLevel = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonLevel )

g_pRadioButtonLevel:SetFixOverByCheck( true )
g_pRadioButtonLevel:SetShowOffBGByCheck( true )

g_pRadioButtonLevel:SetName( "RadioButton_WeekPvp" )

g_pRadioButtonLevel:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Tap_Week_Normal" )
g_pRadioButtonLevel:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Tap_Week_Over" )
g_pRadioButtonLevel:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "Bt_Tap_Week_OverTap" )


g_pRadioButtonLevel:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+80+52-50,53+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonLevel:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+80+52-50-1,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonLevel:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23+80+52-50,53)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(23+80+52-50+78,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonLevel:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26+80+52-50,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonLevel:SetGroupID( 1 )
g_pRadioButtonLevel:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_WEEK_PVP_TAP"] )


---이벤트 
g_pRadioButtonEvent = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonEvent )

g_pRadioButtonEvent:SetFixOverByCheck( true )
g_pRadioButtonEvent:SetShowOffBGByCheck( true )

g_pRadioButtonEvent:SetName( "RadioButton_Event" )

g_pRadioButtonEvent:SetNormalTex( "DLG_UI_Button11.tga", "Rank_Event_normal" )
g_pRadioButtonEvent:SetOverTex( "DLG_UI_Button11.tga", "Rank_Event_over" )
g_pRadioButtonEvent:SetCheckedTex( "DLG_UI_Button11.tga", "Rank_Event_down" )

g_pRadioButtonEvent:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+80+52+52,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonEvent:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23+80+52+52,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonEvent:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23+80+52+52,53)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(75+80+52+52+3,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonEvent:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26+80+52+52,49)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonLevel:SetGroupID( 1 )
g_pRadioButtonEvent:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_EVENT_TAP"] )

--기본으로 보이지 않게 설정
g_pRadioButtonEvent:SetShow( False )
g_pRadioButtonEvent:SetEnable( False )


-------서브버튼
----일일
g_pRadioButtonDay = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonDay )

g_pRadioButtonDay:SetFixOverByCheck( true )
g_pRadioButtonDay:SetShowOffBGByCheck( true )

g_pRadioButtonDay:SetName( "RadioButton_Day" )

g_pRadioButtonDay:SetNormalTex( "DLG_UI_Button11.tga", "sub_day_Normal" )
g_pRadioButtonDay:SetOverTex( "DLG_UI_Button11.tga", "sub_day_over" )
g_pRadioButtonDay:SetCheckedTex( "DLG_UI_Button11.tga", "sub_day_over" )


g_pRadioButtonDay:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(37,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDay:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(37-1,98-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDay:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(37-1,98-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(37-1+36,98-1+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDay:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(37-1,98-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDay:SetGroupID( 2 )
g_pRadioButtonDay:SetChecked( true )
g_pRadioButtonDay:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_DAY_RADIO_BUTTON"] )

------- 주간
g_pRadioButtonWeek = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonWeek )

g_pRadioButtonWeek:SetFixOverByCheck( true )
g_pRadioButtonWeek:SetShowOffBGByCheck( true )

g_pRadioButtonWeek:SetName( "RadioButton_Week" )

g_pRadioButtonWeek:SetNormalTex( "DLG_UI_Button11.tga", "sub_week_Normal" )
g_pRadioButtonWeek:SetOverTex( "DLG_UI_Button11.tga", "sub_week_over" )
g_pRadioButtonWeek:SetCheckedTex( "DLG_UI_Button11.tga", "sub_week_over" )


g_pRadioButtonWeek:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(82,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeek:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(82-1,98-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeek:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(82-1,98-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(82-1+36,98-1+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeek:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(82-1,98-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeek:SetGroupID( 2 )
g_pRadioButtonWeek:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_WEEK_RADIO_BUTTON"] )

------- 월간
g_pRadioButtonMonth = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonMonth )

g_pRadioButtonMonth:SetFixOverByCheck( true )
g_pRadioButtonMonth:SetShowOffBGByCheck( true )

g_pRadioButtonMonth:SetName( "RadioButton_Month" )

g_pRadioButtonMonth:SetNormalTex( "DLG_UI_Button11.tga", "sub_Month_Normal" )
g_pRadioButtonMonth:SetOverTex( "DLG_UI_Button11.tga", "sub_Month_over" )
g_pRadioButtonMonth:SetCheckedTex( "DLG_UI_Button11.tga", "sub_Month_over" )


g_pRadioButtonMonth:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(127,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonMonth:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(127-1,98-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonMonth:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(127-1,98-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(127-1+36,98-1+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonMonth:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(127-1,98-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonMonth:SetGroupID( 2 )
g_pRadioButtonMonth:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_MONTH_RADIO_BUTTON"] )


--------서브메뉴_이벤트

------- 던전
g_pRadioButtonDungeon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonDungeon )

g_pRadioButtonDungeon:SetFixOverByCheck( true )
g_pRadioButtonDungeon:SetShowOffBGByCheck( true )

g_pRadioButtonDungeon:SetName( "RadioButton_EventDungeon" )

g_pRadioButtonDungeon:SetNormalTex( "DLG_UI_Button11.tga", "sub_Dungeon_Normal" )
g_pRadioButtonDungeon:SetOverTex( "DLG_UI_Button11.tga", "sub_Dungeon_over" )
g_pRadioButtonDungeon:SetCheckedTex( "DLG_UI_Button11.tga", "sub_Dungeon_over" )

--기본으로 보이지 않게 설정
g_pRadioButtonDungeon:SetShow( False )
g_pRadioButtonDungeon:SetEnable( False )

g_pRadioButtonDungeon:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(37,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDungeon:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(37-1,98-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDungeon:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(37-1,98-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(37-1+36,98-1+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDungeon:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(37-1,98-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDungeon:SetGroupID( 3 )
g_pRadioButtonDungeon:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_EVENT_DUNGEON_BUTTON"] )



----헤니르
g_pRadioButtonHenir = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonHenir )

g_pRadioButtonHenir:SetFixOverByCheck( true )
g_pRadioButtonHenir:SetShowOffBGByCheck( true )

g_pRadioButtonHenir:SetName( "RadioButton_EventHenir" )

g_pRadioButtonHenir:SetNormalTex( "DLG_UI_Button11.tga", "sub_Henir_Normal" )
g_pRadioButtonHenir:SetOverTex( "DLG_UI_Button11.tga", "sub_Henir_over" )
g_pRadioButtonHenir:SetCheckedTex( "DLG_UI_Button11.tga", "sub_Henir_over" )

--기본으로 보이지 않게 설정
g_pRadioButtonHenir:SetShow( False )
g_pRadioButtonHenir:SetEnable( False )


g_pRadioButtonHenir:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84-1,98-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(84-1,98-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(84-1+81,98-1+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(84-1,98-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetGroupID( 3 )
g_pRadioButtonHenir:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_EVENT_HENIR_BUTTON"] )



------- 대전(킬수)
g_pRadioButtonKill = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonKill )

g_pRadioButtonKill:SetFixOverByCheck( true )
g_pRadioButtonKill:SetShowOffBGByCheck( true )

g_pRadioButtonKill:SetName( "RadioButton_EventKill" )

g_pRadioButtonKill:SetNormalTex( "DLG_UI_Button11.tga", "sub_VS_Kill_Normal" )
g_pRadioButtonKill:SetOverTex( "DLG_UI_Button11.tga", "sub_VS_Kill_over" )
g_pRadioButtonKill:SetCheckedTex( "DLG_UI_Button11.tga", "sub_VS_Kill_over" )

--기본으로 보이지 않게 설정
g_pRadioButtonKill:SetShow( False )
g_pRadioButtonKill:SetEnable( False )

g_pRadioButtonKill:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(176,97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonKill:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(176-1,97-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonKill:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(176-1,97-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(176-1+52,97-1+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonKill:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(176-1,97-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonKill:SetGroupID( 3 )
g_pRadioButtonKill:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_EVENT_KILL_BUTTON"] )


------- 대전(죽은수)
g_pRadioButtonDeath = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonDeath )

g_pRadioButtonDeath:SetFixOverByCheck( true )
g_pRadioButtonDeath:SetShowOffBGByCheck( true )

g_pRadioButtonDeath:SetName( "RadioButton_EventDeath" )

g_pRadioButtonDeath:SetNormalTex( "DLG_UI_Button11.tga", "sub_VS_Death_Normal" )
g_pRadioButtonDeath:SetOverTex( "DLG_UI_Button11.tga", "sub_VS_Death_over" )
g_pRadioButtonDeath:SetCheckedTex( "DLG_UI_Button11.tga", "sub_VS_Death_over" )

--기본으로 보이지 않게 설정
g_pRadioButtonDeath:SetShow( False )
g_pRadioButtonDeath:SetEnable( False )

g_pRadioButtonDeath:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(240,97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDeath:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(240-1,97-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDeath:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(240-1,97-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(240-1+62,97-1+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDeath:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(240-1,97-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDeath:SetGroupID( 3 )
g_pRadioButtonDeath:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_EVENT_DEATH_BUTTON"] )


-------------------MyInfo--------------------------------------
g_pStaticMyScore = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMyScore )
g_pStaticMyScore:SetName( "g_pStaticMyScore" )

g_pStaticMyScore:AddString
{
	MSG 			= "100",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(63,169+49+49+49+49+60)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticMyClass = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMyClass )
g_pStaticMyClass:SetName( "Static_My_Class" )

g_pPictureMyClass = g_pUIDialog:CreatePicture()
g_pStaticMyClass:AddPicture( g_pPictureMyClass )

g_pPictureMyClass:SetTex( "DLG_PVP_State_Info0.tga", "ElswordStateSmall" )

g_pPictureMyClass:SetPoint
{
ADD_SIZE_X = -10,
ADD_SIZE_Y = -10,

 	"LEFT_TOP		= D3DXVECTOR2(100,156+49+49+49+49+62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureMyInitial = g_pUIDialog:CreatePicture()
g_pStaticMyClass:AddPicture( g_pPictureMyInitial )

g_pPictureMyInitial:SetTex( "DLG_UI_Common_Texture11.tga", "Class_S" )

g_pPictureMyInitial:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(131,382 + 62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureMyLevel_10 = g_pUIDialog:CreatePicture()
g_pStaticMyClass:AddPicture( g_pPictureMyLevel_10 )

g_pPictureMyLevel_10:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureMyLevel_10:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(100,352 + 62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureMyLevel_1 = g_pUIDialog:CreatePicture()
g_pStaticMyClass:AddPicture( g_pPictureMyLevel_1 )

g_pPictureMyLevel_1:SetTex( "DLG_UI_Common_Texture02.tga", "zero" )

g_pPictureMyLevel_1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(106,352 + 62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMyNickName = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMyNickName )
g_pStaticMyNickName:SetName( "g_pStaticMyNickName" )

g_pStaticMyNickName:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(217,169+49+49+49+49+62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Clear_Stage_My = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Stage_My )
g_pStatic_Clear_Stage_My:SetName( "Static_Clear_Stage_My" )

g_pStatic_Clear_Stage_My:AddString
{
	MSG 			= "STAGE 23",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,160+49+49+49+49+62)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Clear_Time_My = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Time_My )
g_pStatic_Clear_Time_My:SetName( "Static_Clear_Time_My" )

g_pStatic_Clear_Time_My:AddString
{
	MSG 			= "01:23:34",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,180+49+49+49+49+62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

--- 마우스 업 용 버튼
g_pButtonMyOpacity = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMyOpacity )
g_pButtonMyOpacity:SetName( "ButtonMyOpacity" )
g_pButtonMyOpacity:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMyOpacity:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMyOpacity:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonMyOpacity:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49+49+49+62)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+49+49+62+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMyOpacity:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49+49+49+62)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+49+49+62+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMyOpacity:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49+49+49+62)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+49+49+62+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonMyOpacity:SetGuideDesc( STR_ID_2573 )

----
g_pStaticMyPvpEmblem = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMyPvpEmblem )
g_pStaticMyPvpEmblem:SetName( "Static_My_Pvp_Emblem" )

g_pPictureBlack6 = g_pUIDialog:CreatePicture()
g_pStaticMyPvpEmblem:AddPicture( g_pPictureBlack6 )

g_pPictureBlack6:SetTex( "DLG_Common_Emblem00.tga", "PE_RANK_E" )

g_pPictureBlack6:SetPoint
{
--ADD_SIZE_X = 22,
--ADD_SIZE_Y = 24,

 	"LEFT_TOP		= D3DXVECTOR2(300,164+49+49+49+49+62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_Win_My = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Win_My )
g_pStatic_Win_My:SetName( "Static_Win_My" )

g_pStatic_Win_My:AddString
{
	MSG 			= "5256 승",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403,179+49+49+49+49+62)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Lose_My = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Lose_My )
g_pStatic_Lose_My:SetName( "Static_Lose_My" )

g_pStatic_Lose_My:AddString
{
	MSG 			= "1800",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403-18,161+49+49+49+49+62)",
	"COLOR			= D3DXCOLOR(1.0,0.3,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

g_pStatic_EXP_My = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EXP_My )
g_pStatic_EXP_My:SetName( "Static_EXP_My" )

g_pStatic_EXP_My:AddString
{
	MSG 			= "30,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(358,169+49+49+49+49+62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-------Others Info-------------------------

------------닉네임
g_pStaticNickName1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNickName1 )
g_pStaticNickName1:SetName( "g_pStaticNickName1" )

g_pStaticNickName1:AddString
{
	MSG 			= "최대한여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(217,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticNickName2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNickName2 )
g_pStaticNickName2:SetName( "g_pStaticNickName2" )

g_pStaticNickName2:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(217,169+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticNickName3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNickName3 )
g_pStaticNickName3:SetName( "g_pStaticNickName3" )

g_pStaticNickName3:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(217,169+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticNickName4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNickName4 )
g_pStaticNickName4:SetName( "g_pStaticNickName4" )

g_pStaticNickName4:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(217,169+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticNickName5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNickName5 )
g_pStaticNickName5:SetName( "g_pStaticNickName5" )

g_pStaticNickName5:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(217,169+49+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





-------------oldbar
g_pStaticBar = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBar )
g_pStaticBar:SetName( "staticOldBar" )

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticBar:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 404,
	"LEFT_TOP		= D3DXVECTOR2(25,124)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticBar:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 404,
	"LEFT_TOP		= D3DXVECTOR2(25,402)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticBar:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(29,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticBar:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(29,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticBar:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(29,298)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticBar:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(29,347)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-------------new bar
g_pStaticBar1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBar1 )
g_pStaticBar1:SetName( "staticNewBar" )

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 404,
	"LEFT_TOP		= D3DXVECTOR2(25,124)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----첫번째 플레이어 라인
----세로 라인
g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(110,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(161,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(211-15,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(310,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
----가로
g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 394,
	"LEFT_TOP		= D3DXVECTOR2(30,186)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----두번째 플레이어 라인
----세로 라인
g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(110,154+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line8:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(161,154+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line9 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line9 )

g_pPicture_line9:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line9:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(211-15,154+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line10 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line10 )

g_pPicture_line10:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line10:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(310,154+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
----가로
g_pPicture_line11 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line11 )

g_pPicture_line11:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line11:SetPoint
{
     ADD_SIZE_X = 394,
	"LEFT_TOP		= D3DXVECTOR2(30,186+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----세번째 플레이어 라인
----세로 라인
g_pPicture_line12 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line12 )

g_pPicture_line12:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line12:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(110,154+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line13 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line13 )

g_pPicture_line13:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line13:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(161,154+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line14 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line14 )

g_pPicture_line14:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line14:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(211-15,154+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line15 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line15 )

g_pPicture_line15:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line15:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(310,154+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
----가로
g_pPicture_line16 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line16 )

g_pPicture_line16:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line16:SetPoint
{
     ADD_SIZE_X = 394,
	"LEFT_TOP		= D3DXVECTOR2(30,186+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----네번째 플레이어 라인
----세로 라인
g_pPicture_line17 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line17 )

g_pPicture_line17:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line17:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(110,154+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line18 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line18 )

g_pPicture_line18:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line18:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(161,154+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line19 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line19 )

g_pPicture_line19:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line19:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(211-15,154+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line20 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line20 )

g_pPicture_line20:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line20:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(310,154+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
----가로
g_pPicture_line21 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line21 )

g_pPicture_line21:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line21:SetPoint
{
     ADD_SIZE_X = 394,
	"LEFT_TOP		= D3DXVECTOR2(30,186+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----다섯번째 플레이어 라인
----세로 라인
g_pPicture_line22 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line22 )

g_pPicture_line22:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line22:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(110,154+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line23 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line23 )

g_pPicture_line23:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line23:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(161,154+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line24 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line24 )

g_pPicture_line24:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line24:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(211-15,154+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line25 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line25 )

g_pPicture_line25:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line25:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(310,154+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
----가로
g_pPicture_line26 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line26 )

g_pPicture_line26:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line26:SetPoint
{
     ADD_SIZE_X = 394,
	"LEFT_TOP		= D3DXVECTOR2(30,186+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----여섯번째 플레이어 라인
----세로 라인
g_pPicture_line27 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line27 )

g_pPicture_line27:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line27:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(110,154+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line28 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line28 )

g_pPicture_line28:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line28:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(161,154+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line29 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line29 )

g_pPicture_line29:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line29:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(211-15,154+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line30 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line30 )

g_pPicture_line30:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line30:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(310,154+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
----가로
g_pPicture_line31 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line31 )

g_pPicture_line31:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line31:SetPoint
{
     ADD_SIZE_X = 394,
	"LEFT_TOP		= D3DXVECTOR2(30,186+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----일곱번째 플레이어 라인
----세로 라인
g_pPicture_line32 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line32 )

g_pPicture_line32:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line32:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(110,154+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line33 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line33 )

g_pPicture_line33:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line33:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(161,154+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line34 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line34 )

g_pPicture_line34:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line34:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(211-15,154+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line35 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line35 )

g_pPicture_line35:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line35:SetPoint
{
     ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(310,154+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-----My 플레이어 라인
----세로 라인
g_pPicture_line36 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line36 )

g_pPicture_line36:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line36:SetPoint
{
     ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(110,154+35*6+47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line37 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line37 )

g_pPicture_line37:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line37:SetPoint
{
     ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(161,154+35*6+47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line38 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line38 )

g_pPicture_line38:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line38:SetPoint
{
     ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(211-15,154+35*6+47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line39 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line39 )

g_pPicture_line39:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line39:SetPoint
{
     ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(310,154+35*6+47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
----가로
g_pPicture_line40 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line40 )

g_pPicture_line40:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line40:SetPoint
{
     ADD_SIZE_X = 394,
	"LEFT_TOP		= D3DXVECTOR2(30,186+35*5+72)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

----세로 라인
g_pPicture_line41 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line41 )

g_pPicture_line41:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line41:SetPoint
{
     ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(110,154+35*6+47+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line42 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line42 )

g_pPicture_line42:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line42:SetPoint
{
     ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(161,154+35*6+47+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line43 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line43 )

g_pPicture_line43:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line43:SetPoint
{
     ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(211-15,154+35*6+47+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line44 = g_pUIDialog:CreatePicture()
g_pStaticBar1:AddPicture( g_pPicture_line44 )

g_pPicture_line44:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line44:SetPoint
{
     ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(310,154+35*6+47+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(411+4,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(407+4,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(407+4+1,11+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )

--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Button_Larrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(335-45,368-272)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(335-45,367-272)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(335-45+1,367-272+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_PUSH_PREV_PAGE"] )


--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Button_Rarrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(412,368-272)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(411,367-272)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(411+1,367-272+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_PUSH_NEXT_PAGE"] )

-----페이지
g_pPicture_page= g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPicture_page)

g_pPicture_page:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_RankSearch" )

g_pPicture_page:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(352-40,366-272)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------페이지 번호
g_pStatic_number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_number )
g_pStatic_number:SetName( "Static_PageNumber" )

g_pStatic_number:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(325+50,100)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pIME_EditPageSearch = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_EditPageSearch )
g_pIME_EditPageSearch:SetName( "PageSearch" )
g_pIME_EditPageSearch:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(325,100)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(325+30,100+15)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_EditPageSearch:SetFont( XF_DODUM_11_NORMAL )
g_pIME_EditPageSearch:SetTextColor( 0.3, 0.3, 0.3, 1.0 )
g_pIME_EditPageSearch:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditPageSearch:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_EditPageSearch:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditPageSearch:SetByteLimit(4)
g_pIME_EditPageSearch:SetOnlyNumMode( true )

g_pIME_EditPageSearch:SetCustomMsgEnter( UI_RANKING_INFO_CUSTOM_MSG["URICM_PAGE_SEARCH_ENTER"] )
g_pIME_EditPageSearch:SetCustomMsgFocusIn( UI_RANKING_INFO_CUSTOM_MSG["URICM_PAGE_SEARCH_FOCUS"] )
g_pIME_EditPageSearch:SetCustomMsgChange( UI_RANKING_INFO_CUSTOM_MSG["URICM_PAGE_SERACH_CHANGE"] )


g_pButtonPageInv= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageInv )
g_pButtonPageInv:SetName( "PageInv" )

g_pButtonPageInv:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonPageInv:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonPageInv:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonPageInv:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(318,95)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(318+80, 95+25)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageInv:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(318,95)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(318+80, 95+25)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageInv:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(318,95)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(318+80, 95+25)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageInv:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_PAGE_SEARCH_FOCUS"] )



---도움말
g_pPictureNotice= g_pUIDialog:CreatePicture()
g_pStaticRankInfo:AddPicture( g_pPictureNotice)

g_pPictureNotice:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureNotice:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(102,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
g_pStaticNotice= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNotice )
g_pStaticNotice:SetName( "g_pStaticNotice" )
--]]


-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------	
--------헤니르&시즌 대전 전용
--------- 세부항목
g_pCommonStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pCommonStatic )
g_pCommonStatic:SetName( "g_pCommonStatic" )

g_pCommonStatic:AddString
{
	MSG 			= "자기정보와 1~100위 까지의 정보만 제공합니다.",
		 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(121,21)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",

}


g_pCommonStatic:AddString
{
	MSG 			= "순위",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(64,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pCommonStatic:AddString
{
	MSG 			= "직업",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(121,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pCommonStatic:AddString
{
	MSG 			= "닉네임",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(217,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

--------대전,필드 && 주간 대전 전용
--------- 세부항목
g_pStaticCommonF = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCommonF )
g_pStaticCommonF:SetName( "CommonF" )

g_pStaticCommonF:AddString
{
	-- MSG 			= "순위",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(62,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticCommonF:AddString
{
	-- MSG 			= "직업",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(124,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticCommonF:AddString
{
	-- MSG 			= "성별",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(175-8,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticCommonF:AddString
{
	-- MSG 			= "닉네임",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(246-13,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticDnFd = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDnFd )
g_pStaticDnFd:SetName( "DnFd" )
g_pStaticDnFd:AddString
{
	-- MSG 			= "근성",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(356,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticWeekPvp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWeekPvp )
g_pStaticWeekPvp:SetName( "WeekPvp" )
g_pStaticWeekPvp:AddString
{
	-- MSG 			= "주간 누적 AP",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(331,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

------------------라디오 버튼
----지역 솔팅 버튼
g_pRadioButtonArea = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonArea )
g_pRadioButtonArea:SetFixOverByCheck( true ) 
g_pRadioButtonArea:SetShowOffBGByCheck( true )
g_pRadioButtonArea:SetName( "category_area" )
g_pRadioButtonArea:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Sort_Local_InActive" )
g_pRadioButtonArea:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Sort_Local_Active" )
g_pRadioButtonArea:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "Bt_Sort_Local_Active" )

g_pRadioButtonArea:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(34,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArea:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(34,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArea:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(34,98)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(34+31,98+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArea:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(34,98)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArea:SetGroupID( 4 )
g_pRadioButtonArea:SetChecked( true )
g_pRadioButtonArea:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_AREA_RADIO_BUTTON"] )

----길드 솔팅 버튼
g_pRadioButtonGuild = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonGuild )
g_pRadioButtonGuild:SetFixOverByCheck( true ) 
g_pRadioButtonGuild:SetShowOffBGByCheck( true )
g_pRadioButtonGuild:SetName( "category_guild" )
g_pRadioButtonGuild:SetNormalTex( "DLG_UI_Button20_NEW.tga", "Bt_Sort_Guild_Inactive" )
g_pRadioButtonGuild:SetOverTex( "DLG_UI_Button20_NEW.tga", "Bt_Sort_Guild_Active" )
g_pRadioButtonGuild:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "Bt_Sort_Guild_Active" )

g_pRadioButtonGuild:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(68,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(68,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(68,98)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(68+31,98+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(68,98)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild:SetGroupID( 4 )
g_pRadioButtonGuild:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_GUILD_RADIO_BUTTON"] )


-----친구 거르기 체크박스
----친구 찾기 스트링
g_pStaticCommonF:AddString
{	
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(125-3,100)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-----체크 표시
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticCommonF:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(106,100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 박스
g_pCheckBoxFriendCheck = g_pUIDialog:CreateCheckBox()
g_pCheckBoxFriendCheck:SetName( "friendcheck" )
g_pUIDialog:AddControl( g_pCheckBoxFriendCheck )
g_pCheckBoxFriendCheck:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxFriendCheck:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxFriendCheck:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(106,100)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(106+15,100+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxFriendCheck:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(106-2,100-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxFriendCheck:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_FRINED_CHECK"] )
g_pCheckBoxFriendCheck:SetCustomMsgUnChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_FRINED_CHECK"] )


-----캐릭터 거르기 체크박스
----캐릭터 찾기 스트링
g_pStaticCommonF:AddString
{	
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(125+90-3,100)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
-----체크 표시
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticCommonF:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(106+90,100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 박스
g_pCheckBoxFriendCheck = g_pUIDialog:CreateCheckBox()
g_pCheckBoxFriendCheck:SetName( "charactercheck" )
g_pUIDialog:AddControl( g_pCheckBoxFriendCheck )
g_pCheckBoxFriendCheck:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxFriendCheck:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxFriendCheck:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(106+90,100)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(106+15+100,100+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxFriendCheck:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(106-2+90,100-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxFriendCheck:SetCustomMsgChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_CHARACTER_CHECK"] )
g_pCheckBoxFriendCheck:SetCustomMsgUnChecked( UI_RANKING_INFO_CUSTOM_MSG["URICM_SELECT_CHARACTER_CHECK"] )
-------------------------------------------------------------------
-------------------------헤니르의시공----------------------------
-------------------------------------------------------------------


g_pHenirStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pHenirStatic )
g_pHenirStatic:SetName( "g_pHenirStatic" )

g_pHenirStatic:AddString
{
	MSG 			= "스테이지/소요시간",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360-15,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


------------스테이지/시간
----스테이지
g_pStatic_Clear_Stage1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Stage1 )
g_pStatic_Clear_Stage1:SetName( "Static_Clear_Stage1" )

g_pStatic_Clear_Stage1:AddString
{
	MSG 			= "STAGE 53",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,160)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Clear_Stage2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Stage2 )
g_pStatic_Clear_Stage2:SetName( "Static_Clear_Stage2" )

g_pStatic_Clear_Stage2:AddString
{
	MSG 			= "STAGE 43",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,160+49)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Clear_Stage3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Stage3 )
g_pStatic_Clear_Stage3:SetName( "Static_Clear_Stage3" )

g_pStatic_Clear_Stage3:AddString
{
	MSG 			= "STAGE 33",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,160+49+49)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Clear_Stage4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Stage4 )
g_pStatic_Clear_Stage4:SetName( "Static_Clear_Stage4" )

g_pStatic_Clear_Stage4:AddString
{
	MSG 			= "STAGE 23",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,160+49+49+49)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Clear_Stage5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Stage5 )
g_pStatic_Clear_Stage5:SetName( "Static_Clear_Stage5" )

g_pStatic_Clear_Stage5:AddString
{
	MSG 			= "STAGE 13",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,160+49+49+49+49)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----시간
g_pStatic_Clear_Time1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Time1 )
g_pStatic_Clear_Time1:SetName( "Static_Clear_Time1" )

g_pStatic_Clear_Time1:AddString
{
	MSG 			= "01:23:34",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,180)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

g_pStatic_Clear_Time2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Time2 )
g_pStatic_Clear_Time2:SetName( "Static_Clear_Time2" )

g_pStatic_Clear_Time2:AddString
{
	MSG 			= "01:23:34",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,180+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

g_pStatic_Clear_Time3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Time3 )
g_pStatic_Clear_Time3:SetName( "Static_Clear_Time3" )

g_pStatic_Clear_Time3:AddString
{
	MSG 			= "01:23:34",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,180+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

g_pStatic_Clear_Time4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Time4 )
g_pStatic_Clear_Time4:SetName( "Static_Clear_Time4" )

g_pStatic_Clear_Time4:AddString
{
	MSG 			= "01:23:34",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,180+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

g_pStatic_Clear_Time5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Clear_Time5 )
g_pStatic_Clear_Time5:SetName( "Static_Clear_Time5" )

g_pStatic_Clear_Time5:AddString
{
	MSG 			= "01:23:34",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,180+49+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

-------------------------------------------------- 마우스 오버 용 버튼
g_pButton_opacity1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1 )
g_pButton_opacity1:SetName( "opacity1" )
g_pButton_opacity1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity1:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity1:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )

----

g_pButton_opacity2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity2 )
g_pButton_opacity2:SetName( "opacity2" )
g_pButton_opacity2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity2:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity2:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )


----

g_pButton_opacity3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity3 )
g_pButton_opacity3:SetName( "opacity3" )
g_pButton_opacity3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity3:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity3:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity3:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity3:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity3:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity3:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity3:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity3:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )


----

g_pButton_opacity4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity4 )
g_pButton_opacity4:SetName( "opacity4" )
g_pButton_opacity4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity4:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity4:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity4:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity4:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity4:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity4:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity4:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity4:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )



----

g_pButton_opacity5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity5 )
g_pButton_opacity5:SetName( "opacity5" )
g_pButton_opacity5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity5:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity5:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity5:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity5:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity5:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 160+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80, 160+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity5:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity5:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity5:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )



g_pPvpStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pPvpStatic )
g_pPvpStatic:SetName( "g_pPvpStatic" )

g_pPvpStatic:AddString
{
	MSG 			= "대전랭크",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(312,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPvpStatic:AddString
{
	MSG 			= "랭킹점수/승",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(386,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-------------------------------------------------------------------
-------------------------대전-------------------------------------
-------------------------------------------------------------------


------나의대전 랭크(BLACK)
g_pStaticPvpEmblem1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPvpEmblem1 )
g_pStaticPvpEmblem1:SetName( "Static_Pvp_Emblem1" )

g_pPictureBlack1 = g_pUIDialog:CreatePicture()
g_pStaticPvpEmblem1:AddPicture( g_pPictureBlack1 )

g_pPictureBlack1:SetTex( "DLG_Common_Emblem00.tga", "PE_RANK_E" )

g_pPictureBlack1:SetPoint
{
--ADD_SIZE_X = 22,
--ADD_SIZE_Y = 24,

 	"LEFT_TOP		= D3DXVECTOR2(300,164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPvpEmblem2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPvpEmblem2 )
g_pStaticPvpEmblem2:SetName( "Static_Pvp_Emblem2" )

g_pPictureBlack2 = g_pUIDialog:CreatePicture()
g_pStaticPvpEmblem2:AddPicture( g_pPictureBlack2 )

g_pPictureBlack2:SetTex( "DLG_Common_Emblem00.tga", "PE_RANK_E" )

g_pPictureBlack2:SetPoint
{
--ADD_SIZE_X = 22,
--ADD_SIZE_Y = 24,

 	"LEFT_TOP		= D3DXVECTOR2(300,164+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPvpEmblem3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPvpEmblem3 )
g_pStaticPvpEmblem3:SetName( "Static_Pvp_Emblem3" )

g_pPictureBlack3 = g_pUIDialog:CreatePicture()
g_pStaticPvpEmblem3:AddPicture( g_pPictureBlack3 )

g_pPictureBlack3:SetTex( "DLG_Common_Emblem00.tga", "PE_RANK_E" )

g_pPictureBlack3:SetPoint
{
--ADD_SIZE_X = 22,
--ADD_SIZE_Y = 24,

 	"LEFT_TOP		= D3DXVECTOR2(300,164+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPvpEmblem4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPvpEmblem4 )
g_pStaticPvpEmblem4:SetName( "Static_Pvp_Emblem4" )

g_pPictureBlack4 = g_pUIDialog:CreatePicture()
g_pStaticPvpEmblem4:AddPicture( g_pPictureBlack4 )

g_pPictureBlack4:SetTex( "DLG_Common_Emblem00.tga", "PE_RANK_E" )

g_pPictureBlack4:SetPoint
{
--ADD_SIZE_X = 22,
--ADD_SIZE_Y = 24,

 	"LEFT_TOP		= D3DXVECTOR2(300,164+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPvpEmblem5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPvpEmblem5 )
g_pStaticPvpEmblem5:SetName( "Static_Pvp_Emblem5" )

g_pPictureBlack5 = g_pUIDialog:CreatePicture()
g_pStaticPvpEmblem5:AddPicture( g_pPictureBlack5 )

g_pPictureBlack5:SetTex( "DLG_Common_Emblem00.tga", "PE_RANK_E" )

g_pPictureBlack5:SetPoint
{
--ADD_SIZE_X = 22,
--ADD_SIZE_Y = 24,

 	"LEFT_TOP		= D3DXVECTOR2(300,164+49+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------랭킹점수/승수
-----랭킹점수
g_pStatic_Lose1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Lose1 )
g_pStatic_Lose1:SetName( "Static_Lose1" )

g_pStatic_Lose1:AddString
{
	MSG 			= "1800",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403-18,161)",
	"COLOR			= D3DXCOLOR(1.0,0.3,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

g_pStatic_Lose2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Lose2 )
g_pStatic_Lose2:SetName( "Static_Lose2" )

g_pStatic_Lose2:AddString
{
	MSG 			= "1800",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403-18,161+49)",
	"COLOR			= D3DXCOLOR(1.0,0.3,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

g_pStatic_Lose3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Lose3 )
g_pStatic_Lose3:SetName( "Static_Lose3" )

g_pStatic_Lose3:AddString
{
	MSG 			= "1800",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403-18,161+49+49)",
	"COLOR			= D3DXCOLOR(1.0,0.3,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

g_pStatic_Lose4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Lose4 )
g_pStatic_Lose4:SetName( "Static_Lose4" )

g_pStatic_Lose4:AddString
{
	MSG 			= "1800",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403-18,161+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,0.3,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

g_pStatic_Lose5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Lose5 )
g_pStatic_Lose5:SetName( "Static_Lose5" )

g_pStatic_Lose5:AddString
{
	MSG 			= "1800",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403-18,161+49+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,0.3,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.0,0.0,1.0)",
}

-----승수
g_pStatic_Win1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Win1 )
g_pStatic_Win1:SetName( "Static_Win1" )

g_pStatic_Win1:AddString
{
	MSG 			= "295500 승",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403,179)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Win2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Win2 )
g_pStatic_Win2:SetName( "Static_Win2" )

g_pStatic_Win2:AddString
{
	MSG 			= "21200 승",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403,179+49)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Win3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Win3 )
g_pStatic_Win3:SetName( "Static_Win3" )

g_pStatic_Win3:AddString
{
	MSG 			= "12345 승",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403,179+49+49)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Win4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Win4 )
g_pStatic_Win4:SetName( "Static_Win4" )

g_pStatic_Win4:AddString
{
	MSG 			= "10324 승",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403,179+49+49+49)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Win5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Win5 )
g_pStatic_Win5:SetName( "Static_Win5" )

g_pStatic_Win5:AddString
{
	MSG 			= "4560 승",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(403,179+49+49+49+49)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticExp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticExp )
g_pStaticExp:SetName( "g_pStaticExp" )

g_pStaticExp:AddString
{
	MSG 			= "EXP",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360,131)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-------------------------------------------------------------------
------------------------레벨--------------------------------------
-------------------------------------------------------------------

------------EXP
g_pStatic_EXP1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EXP1 )
g_pStatic_EXP1:SetName( "Static_EXP1" )

g_pStatic_EXP1:AddString
{
	MSG 			= "2,100,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(358,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_EXP2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EXP2 )
g_pStatic_EXP2:SetName( "Static_EXP2" )

g_pStatic_EXP2:AddString
{
	MSG 			= "2,100,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(358,169+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_EXP3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EXP3 )
g_pStatic_EXP3:SetName( "Static_EXP3" )

g_pStatic_EXP3:AddString
{
	MSG 			= "2,100,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(358,169+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_EXP4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EXP4 )
g_pStatic_EXP4:SetName( "Static_EXP4" )

g_pStatic_EXP4:AddString
{
	MSG 			= "2,100,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(358,169+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_EXP5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EXP5 )
g_pStatic_EXP5:SetName( "Static_EXP5" )

g_pStatic_EXP5:AddString
{
	MSG 			= "2,100,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(358,169+49+49+49+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




--[[
---------나의 순위
g_pStatic_My_Score = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_My_Score )
g_pStatic_My_Score:SetName( "Static_My_Score" )

g_pStatic_My_Score:AddString
{
	MSG 			= "알수없음",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(63,169+49+49+49+49+60)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--]]



-----이벤트용 세부항목(점수)--------------
-- g_pStaticScore = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStaticScore )
-- g_pStaticScore:SetName( "g_pStaticScore" )

-- g_pStaticScore:AddString
-- {
	-- MSG 			= "점수",
	-- FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	-- SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	-- "POS 			= D3DXVECTOR2(360,131)",
	-- "COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	-- "OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
-- }


-------(지인 시스템) 랭킹 게시판 개편 내용물 모음
----직업 (클래스 사진)
-------1
g_pStaticClassF_1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClassF_1 )
g_pStaticClassF_1:SetName( "Static_ClassF_1" )

g_pPictureClassF_1 = g_pUIDialog:CreatePicture()
g_pStaticClassF_1:AddPicture( g_pPictureClassF_1 )

g_pPictureClassF_1:SetTex( "DLG_UI_Common_Texture70_NEW.tga", "ARA_SD_ICON" )

g_pPictureClassF_1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(127,160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------2
g_pStaticClassF_2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClassF_2 )
g_pStaticClassF_2:SetName( "Static_ClassF_2" )

g_pPictureClassF_2 = g_pUIDialog:CreatePicture()
g_pStaticClassF_2:AddPicture( g_pPictureClassF_2 )

g_pPictureClassF_2:SetTex( "DLG_UI_Common_Texture70_NEW.tga", "ARA_SD_ICON" )

g_pPictureClassF_2:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(127,160+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------3
g_pStaticClassF_3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClassF_3 )
g_pStaticClassF_3:SetName( "Static_ClassF_3" )

g_pPictureClassF_3 = g_pUIDialog:CreatePicture()
g_pStaticClassF_3:AddPicture( g_pPictureClassF_3 )

g_pPictureClassF_3:SetTex( "DLG_UI_Common_Texture70_NEW.tga", "ARA_SD_ICON" )

g_pPictureClassF_3:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(127,160+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------4
g_pStaticClassF_4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClassF_4 )
g_pStaticClassF_4:SetName( "Static_ClassF_4" )

g_pPictureClassF_4 = g_pUIDialog:CreatePicture()
g_pStaticClassF_4:AddPicture( g_pPictureClassF_4 )

g_pPictureClassF_4:SetTex( "DLG_UI_Common_Texture70_NEW.tga", "ARA_SD_ICON" )

g_pPictureClassF_4:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(127,160+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------5
g_pStaticClassF_5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClassF_5 )
g_pStaticClassF_5:SetName( "Static_ClassF_5" )

g_pPictureClassF_5 = g_pUIDialog:CreatePicture()
g_pStaticClassF_5:AddPicture( g_pPictureClassF_5 )

g_pPictureClassF_5:SetTex( "DLG_UI_Common_Texture70_NEW.tga", "ARA_SD_ICON" )

g_pPictureClassF_5:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(127,160+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------6
g_pStaticClassF_6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClassF_6 )
g_pStaticClassF_6:SetName( "Static_ClassF_6" )

g_pPictureClassF_6 = g_pUIDialog:CreatePicture()
g_pStaticClassF_6:AddPicture( g_pPictureClassF_6 )

g_pPictureClassF_6:SetTex( "DLG_UI_Common_Texture70_NEW.tga", "ARA_SD_ICON" )

g_pPictureClassF_6:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(127,160+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------7
g_pStaticClassF_7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClassF_7 )
g_pStaticClassF_7:SetName( "Static_ClassF_7" )

g_pPictureClassF_7 = g_pUIDialog:CreatePicture()
g_pStaticClassF_7:AddPicture( g_pPictureClassF_7 )

g_pPictureClassF_7:SetTex( "DLG_UI_Common_Texture70_NEW.tga", "ARA_SD_ICON" )

g_pPictureClassF_7:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(127,160+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------8 (내 정보 상단 순위)
g_pStaticClassF_8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClassF_8 )
g_pStaticClassF_8:SetName( "Static_ClassF_8" )

g_pPictureClassF_8 = g_pUIDialog:CreatePicture()
g_pStaticClassF_8:AddPicture( g_pPictureClassF_8 )

g_pPictureClassF_8:SetTex( "DLG_UI_Common_Texture70_NEW.tga", "ARA_SD_ICON" )

g_pPictureClassF_8:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(127,160+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------9 (내 정보)
g_pStaticClassF_9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClassF_9 )
g_pStaticClassF_9:SetName( "Static_ClassF_9" )

g_pPictureClassF_9 = g_pUIDialog:CreatePicture()
g_pStaticClassF_9:AddPicture( g_pPictureClassF_9 )

g_pPictureClassF_9:SetTex( "DLG_UI_Common_Texture68_NEW.tga", "ARA_ICON" )

g_pPictureClassF_9:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(127,160+35*6+45+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------(지인 시스템) 랭킹 게시판 개편 내용물 모음
----성별
-------1
g_pStaticGender1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGender1 )
g_pStaticGender1:SetName( "Static_Gender1" )

g_pPictureGender1 = g_pUIDialog:CreatePicture()
g_pStaticGender1:AddPicture( g_pPictureGender1 )

g_pPictureGender1:SetTex( "DLG_UI_Button20_NEW.tga", "Bt_Male" )

g_pPictureGender1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(178-7,159)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------2
g_pStaticGender2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGender2 )
g_pStaticGender2:SetName( "Static_Gender2" )

g_pPictureGender2 = g_pUIDialog:CreatePicture()
g_pStaticGender2:AddPicture( g_pPictureGender2 )

g_pPictureGender2:SetTex( "DLG_UI_Button20_NEW.tga", "Bt_Male" )

g_pPictureGender2:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(178-7,159+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------3
g_pStaticGender3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGender3 )
g_pStaticGender3:SetName( "Static_Gender3" )

g_pPictureGender3 = g_pUIDialog:CreatePicture()
g_pStaticGender3:AddPicture( g_pPictureGender3 )

g_pPictureGender3:SetTex( "DLG_UI_Button20_NEW.tga", "Bt_Male" )

g_pPictureGender3:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(178-7,159+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------4
g_pStaticGender4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGender4 )
g_pStaticGender4:SetName( "Static_Gender4" )

g_pPictureGender4 = g_pUIDialog:CreatePicture()
g_pStaticGender4:AddPicture( g_pPictureGender4 )

g_pPictureGender4:SetTex( "DLG_UI_Button20_NEW.tga", "Bt_Male" )

g_pPictureGender4:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(178-7,159+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------5
g_pStaticGender5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGender5 )
g_pStaticGender5:SetName( "Static_Gender5" )

g_pPictureGender5 = g_pUIDialog:CreatePicture()
g_pStaticGender5:AddPicture( g_pPictureGender5 )

g_pPictureGender5:SetTex( "DLG_UI_Button20_NEW.tga", "Bt_Male" )

g_pPictureGender5:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(178-7,159+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------6
g_pStaticGender6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGender6 )
g_pStaticGender6:SetName( "Static_Gender6" )

g_pPictureGender6 = g_pUIDialog:CreatePicture()
g_pStaticGender6:AddPicture( g_pPictureGender6 )

g_pPictureGender6:SetTex( "DLG_UI_Button20_NEW.tga", "Bt_Male" )

g_pPictureGender6:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(178-7,159+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------7
g_pStaticGender7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGender7 )
g_pStaticGender7:SetName( "Static_Gender7" )

g_pPictureGender7 = g_pUIDialog:CreatePicture()
g_pStaticGender7:AddPicture( g_pPictureGender7 )

g_pPictureGender7:SetTex( "DLG_UI_Button20_NEW.tga", "Bt_Male" )

g_pPictureGender7:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(178-7,159+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------8 (내 정보 상단 순위)
g_pStaticGender8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGender8 )
g_pStaticGender8:SetName( "Static_Gender8" )

g_pPictureGender8 = g_pUIDialog:CreatePicture()
g_pStaticGender8:AddPicture( g_pPictureGender8 )

g_pPictureGender8:SetTex( "DLG_UI_Button20_NEW.tga", "Bt_Male" )

g_pPictureGender8:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(178-7,159+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------9 (내 정보)
g_pStaticGender9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGender9 )
g_pStaticGender9:SetName( "Static_Gender9" )

g_pPictureGender9 = g_pUIDialog:CreatePicture()
g_pStaticGender9:AddPicture( g_pPictureGender9 )

g_pPictureGender9:SetTex( "DLG_UI_Button20_NEW.tga", "Bt_FeMale" )

g_pPictureGender9:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(178-7,159+35*6+45+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------(지인 시스템) 랭킹 게시판 개편 내용물 모음
--------------스트링
----아이디_1
g_pStatic1st_F = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic1st_F )
g_pStatic1st_F:SetName( "Id_F_1" )
g_pStatic1st_F:AddString
{
	-- MSG 			= "아이디 여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-27,161)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----아이디_2
g_pStatic2st_F = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic2st_F )
g_pStatic2st_F:SetName( "Id_F_2" )
g_pStatic2st_F:AddString
{
	-- MSG 			= "아이디 여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-27,161+35)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----아이디_3
g_pStatic3st_F = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic3st_F )
g_pStatic3st_F:SetName( "Id_F_3" )
g_pStatic3st_F:AddString
{
	-- MSG 			= "아이디 여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-27,161+35*2)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----아이디_4
g_pStatic4st_F = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic4st_F )
g_pStatic4st_F:SetName( "Id_F_4" )
g_pStatic4st_F:AddString
{
	-- MSG 			= "아이디 여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-27,161+35*3)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----아이디_5
g_pStatic5st_F = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic5st_F )
g_pStatic5st_F:SetName( "Id_F_5" )
g_pStatic5st_F:AddString
{
	-- MSG 			= "아이디 여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-27,161+35*4)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----아이디_6
g_pStatic6st_F = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic6st_F )
g_pStatic6st_F:SetName( "Id_F_6" )
g_pStatic6st_F:AddString
{
	-- MSG 			= "아이디 여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-27,161+35*5)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----아이디_7
g_pStatic7st_F = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic7st_F )
g_pStatic7st_F:SetName( "Id_F_7" )
g_pStatic7st_F:AddString
{
	-- MSG 			= "아이디 여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-27,161+35*6)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----아이디_8 (내정보 상위 순위)
g_pStatic8st_F = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic8st_F )
g_pStatic8st_F:SetName( "Id_F_8" )
g_pStatic8st_F:AddString
{
	-- MSG 			= "아이디 여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-27,161+35*6+42)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----아이디_9 (내정보)
g_pStatic9st_F = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic9st_F )
g_pStatic9st_F:SetName( "Id_F_9" )
g_pStatic9st_F:AddString
{
	-- MSG 			= "아이디 여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227-27,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


-------(지인 시스템) 랭킹 게시판 개편 내용물 모음
-------순위표시 1번째 플레이어 위치
-------천 단위 자리
g_pStaticRankF1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankF1 )
g_pStaticRankF1:SetName( "Static_RankF1" )

g_pPicture_rankingF1_1000 = g_pUIDialog:CreatePicture()
g_pStaticRankF1:AddPicture( g_pPicture_rankingF1_1000 )
g_pPicture_rankingF1_1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF1_1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_rankingF1_100 = g_pUIDialog:CreatePicture()
g_pStaticRankF1:AddPicture( g_pPicture_rankingF1_100 )
g_pPicture_rankingF1_100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF1_100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_rankingF1_10 = g_pUIDialog:CreatePicture()
g_pStaticRankF1:AddPicture( g_pPicture_rankingF1_10 )
g_pPicture_rankingF1_10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF1_10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*2,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_rankingF1_1 = g_pUIDialog:CreatePicture()
g_pStaticRankF1:AddPicture( g_pPicture_rankingF1_1 )
g_pPicture_rankingF1_1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF1_1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*3,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------순위표시 2번째 플레이어 위치
-------천 단위 자리
g_pStaticRankF2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankF2 )
g_pStaticRankF2:SetName( "Static_RankF2" )

g_pPicture_rankingF2_1000 = g_pUIDialog:CreatePicture()
g_pStaticRankF2:AddPicture( g_pPicture_rankingF2_1000 )
g_pPicture_rankingF2_1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF2_1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38,161+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_rankingF2_100 = g_pUIDialog:CreatePicture()
g_pStaticRankF2:AddPicture( g_pPicture_rankingF2_100 )
g_pPicture_rankingF2_100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF2_100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17,161+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_rankingF2_10 = g_pUIDialog:CreatePicture()
g_pStaticRankF2:AddPicture( g_pPicture_rankingF2_10 )
g_pPicture_rankingF2_10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF2_10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*2,161+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_rankingF2_1 = g_pUIDialog:CreatePicture()
g_pStaticRankF2:AddPicture( g_pPicture_rankingF2_1 )
g_pPicture_rankingF2_1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF2_1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*3,161+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------순위표시 3번째 플레이어 위치
-------천 단위 자리
g_pStaticRankF3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankF3 )
g_pStaticRankF3:SetName( "Static_RankF3" )

g_pPicture_rankingF3_1000 = g_pUIDialog:CreatePicture()
g_pStaticRankF3:AddPicture( g_pPicture_rankingF3_1000 )
g_pPicture_rankingF3_1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF3_1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38,161+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_rankingF3_100 = g_pUIDialog:CreatePicture()
g_pStaticRankF3:AddPicture( g_pPicture_rankingF3_100 )
g_pPicture_rankingF3_100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF3_100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17,161+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_rankingF3_10 = g_pUIDialog:CreatePicture()
g_pStaticRankF3:AddPicture( g_pPicture_rankingF3_10 )
g_pPicture_rankingF3_10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF3_10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*2,161+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_rankingF3_1 = g_pUIDialog:CreatePicture()
g_pStaticRankF3:AddPicture( g_pPicture_rankingF3_1 )
g_pPicture_rankingF3_1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF3_1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*3,161+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------순위표시 4번째 플레이어 위치
-------천 단위 자리
g_pStaticRankF4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankF4 )
g_pStaticRankF4:SetName( "Static_RankF4" )

g_pPicture_rankingF4_1000 = g_pUIDialog:CreatePicture()
g_pStaticRankF4:AddPicture( g_pPicture_rankingF4_1000 )
g_pPicture_rankingF4_1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF4_1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38,161+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_rankingF4_100 = g_pUIDialog:CreatePicture()
g_pStaticRankF4:AddPicture( g_pPicture_rankingF4_100 )
g_pPicture_rankingF4_100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF4_100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17,161+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_rankingF4_10 = g_pUIDialog:CreatePicture()
g_pStaticRankF4:AddPicture( g_pPicture_rankingF4_10 )
g_pPicture_rankingF4_10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF4_10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*2,161+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_rankingF4_1 = g_pUIDialog:CreatePicture()
g_pStaticRankF4:AddPicture( g_pPicture_rankingF4_1 )
g_pPicture_rankingF4_1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF4_1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*3,161+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------순위표시 5번째 플레이어 위치
-------천 단위 자리
g_pStaticRankF5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankF5 )
g_pStaticRankF5:SetName( "Static_RankF5" )

g_pPicture_rankingF5_1000 = g_pUIDialog:CreatePicture()
g_pStaticRankF5:AddPicture( g_pPicture_rankingF5_1000 )
g_pPicture_rankingF5_1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF5_1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38,161+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_rankingF5_100 = g_pUIDialog:CreatePicture()
g_pStaticRankF5:AddPicture( g_pPicture_rankingF5_100 )
g_pPicture_rankingF5_100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF5_100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17,161+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_rankingF5_10 = g_pUIDialog:CreatePicture()
g_pStaticRankF5:AddPicture( g_pPicture_rankingF5_10 )
g_pPicture_rankingF5_10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF5_10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*2,161+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_rankingF5_1 = g_pUIDialog:CreatePicture()
g_pStaticRankF5:AddPicture( g_pPicture_rankingF5_1 )
g_pPicture_rankingF5_1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF5_1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*3,161+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------순위표시 6번째 플레이어 위치
-------천 단위 자리
g_pStaticRankF6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankF6 )
g_pStaticRankF6:SetName( "Static_RankF6" )

g_pPicture_rankingF6_1000 = g_pUIDialog:CreatePicture()
g_pStaticRankF6:AddPicture( g_pPicture_rankingF6_1000 )
g_pPicture_rankingF6_1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF6_1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38,161+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_rankingF6_100 = g_pUIDialog:CreatePicture()
g_pStaticRankF6:AddPicture( g_pPicture_rankingF6_100 )
g_pPicture_rankingF6_100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF6_100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17,161+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_rankingF6_10 = g_pUIDialog:CreatePicture()
g_pStaticRankF6:AddPicture( g_pPicture_rankingF6_10 )
g_pPicture_rankingF6_10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF6_10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*2,161+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_rankingF6_1 = g_pUIDialog:CreatePicture()
g_pStaticRankF6:AddPicture( g_pPicture_rankingF6_1 )
g_pPicture_rankingF6_1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF6_1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*3,161+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------순위표시 7번째 플레이어 위치
-------천 단위 자리
g_pStaticRankF7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankF7 )
g_pStaticRankF7:SetName( "Static_RankF7" )

g_pPicture_rankingF7_1000 = g_pUIDialog:CreatePicture()
g_pStaticRankF7:AddPicture( g_pPicture_rankingF7_1000 )
g_pPicture_rankingF7_1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF7_1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38,161+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_rankingF7_100 = g_pUIDialog:CreatePicture()
g_pStaticRankF7:AddPicture( g_pPicture_rankingF7_100 )
g_pPicture_rankingF7_100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF7_100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17,161+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_rankingF7_10 = g_pUIDialog:CreatePicture()
g_pStaticRankF7:AddPicture( g_pPicture_rankingF7_10 )
g_pPicture_rankingF7_10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF7_10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*2,161+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_rankingF7_1 = g_pUIDialog:CreatePicture()
g_pStaticRankF7:AddPicture( g_pPicture_rankingF7_1 )
g_pPicture_rankingF7_1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF7_1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*3,161+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------순위표시 8번째 플레이어 위치 (내 정보 상위 순위)
-------천 단위 자리
g_pStaticRankF8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankF8 )
g_pStaticRankF8:SetName( "Static_RankF8" )

g_pPicture_rankingF8_1000 = g_pUIDialog:CreatePicture()
g_pStaticRankF8:AddPicture( g_pPicture_rankingF8_1000 )
g_pPicture_rankingF8_1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF8_1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38,161+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_rankingF8_100 = g_pUIDialog:CreatePicture()
g_pStaticRankF8:AddPicture( g_pPicture_rankingF8_100 )
g_pPicture_rankingF8_100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF8_100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17,161+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_rankingF8_10 = g_pUIDialog:CreatePicture()
g_pStaticRankF8:AddPicture( g_pPicture_rankingF8_10 )
g_pPicture_rankingF8_10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF8_10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*2,161+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_rankingF8_1 = g_pUIDialog:CreatePicture()
g_pStaticRankF8:AddPicture( g_pPicture_rankingF8_1 )
g_pPicture_rankingF8_1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF8_1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*3,161+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------순위표시 9번째 플레이어 위치 (내 정보)
-------천 단위 자리
g_pStaticRankF9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankF9 )
g_pStaticRankF9:SetName( "Static_RankF9" )

g_pPicture_rankingF9_1000 = g_pUIDialog:CreatePicture()
g_pStaticRankF9:AddPicture( g_pPicture_rankingF9_1000 )
g_pPicture_rankingF9_1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF9_1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_rankingF9_100 = g_pUIDialog:CreatePicture()
g_pStaticRankF9:AddPicture( g_pPicture_rankingF9_100 )
g_pPicture_rankingF9_100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF9_100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_rankingF9_10 = g_pUIDialog:CreatePicture()
g_pStaticRankF9:AddPicture( g_pPicture_rankingF9_10 )
g_pPicture_rankingF9_10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF9_10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*2,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_rankingF9_1 = g_pUIDialog:CreatePicture()
g_pStaticRankF9:AddPicture( g_pPicture_rankingF9_1 )
g_pPicture_rankingF9_1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Rank_9" )
g_pPicture_rankingF9_1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(38+17*3,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------(지인 시스템) 랭킹 게시판 개편 내용물 모음
-------근성포인트 1번째 플레이어 위치
-------십만 단위 자리
g_pStaticStrong1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStrong1 )
g_pStaticStrong1:SetName( "Static_Strong1" )

g_pPicture_1st_strong100000 = g_pUIDialog:CreatePicture()
g_pStaticStrong1:AddPicture( g_pPicture_1st_strong100000 )
g_pPicture_1st_strong100000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong100000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------만 단위 자리

g_pPicture_1st_strong10000 = g_pUIDialog:CreatePicture()
g_pStaticStrong1:AddPicture( g_pPicture_1st_strong10000 )
g_pPicture_1st_strong10000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong10000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------천 단위 자리
g_pPicture_1st_strong1000 = g_pUIDialog:CreatePicture()
g_pStaticStrong1:AddPicture( g_pPicture_1st_strong1000 )
g_pPicture_1st_strong1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*2,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_1st_strong100 = g_pUIDialog:CreatePicture()
g_pStaticStrong1:AddPicture( g_pPicture_1st_strong100 )
g_pPicture_1st_strong100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*3,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_1st_strong10 = g_pUIDialog:CreatePicture()
g_pStaticStrong1:AddPicture( g_pPicture_1st_strong10 )
g_pPicture_1st_strong10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*4,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_1st_strong1 = g_pUIDialog:CreatePicture()
g_pStaticStrong1:AddPicture( g_pPicture_1st_strong1 )
g_pPicture_1st_strong1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*5,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------근성포인트 2번째 플레이어 위치
-------십만 단위 자리
g_pStaticStrong2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStrong2 )
g_pStaticStrong2:SetName( "Static_Strong2" )

g_pPicture_1st_strong100000 = g_pUIDialog:CreatePicture()
g_pStaticStrong2:AddPicture( g_pPicture_1st_strong100000 )
g_pPicture_1st_strong100000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong100000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321,161+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------만 단위 자리

g_pPicture_1st_strong10000 = g_pUIDialog:CreatePicture()
g_pStaticStrong2:AddPicture( g_pPicture_1st_strong10000 )
g_pPicture_1st_strong10000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong10000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16,161+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------천 단위 자리
g_pPicture_1st_strong1000 = g_pUIDialog:CreatePicture()
g_pStaticStrong2:AddPicture( g_pPicture_1st_strong1000 )
g_pPicture_1st_strong1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*2,161+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_1st_strong100 = g_pUIDialog:CreatePicture()
g_pStaticStrong2:AddPicture( g_pPicture_1st_strong100 )
g_pPicture_1st_strong100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*3,161+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_1st_strong10 = g_pUIDialog:CreatePicture()
g_pStaticStrong2:AddPicture( g_pPicture_1st_strong10 )
g_pPicture_1st_strong10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*4,161+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_1st_strong1 = g_pUIDialog:CreatePicture()
g_pStaticStrong2:AddPicture( g_pPicture_1st_strong1 )
g_pPicture_1st_strong1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*5,161+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------근성포인트 3번째 플레이어 위치
-------십만 단위 자리
g_pStaticStrong3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStrong3 )
g_pStaticStrong3:SetName( "Static_Strong3" )

g_pPicture_1st_strong100000 = g_pUIDialog:CreatePicture()
g_pStaticStrong3:AddPicture( g_pPicture_1st_strong100000 )
g_pPicture_1st_strong100000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong100000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321,161+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------만 단위 자리

g_pPicture_1st_strong10000 = g_pUIDialog:CreatePicture()
g_pStaticStrong3:AddPicture( g_pPicture_1st_strong10000 )
g_pPicture_1st_strong10000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong10000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16,161+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------천 단위 자리
g_pPicture_1st_strong1000 = g_pUIDialog:CreatePicture()
g_pStaticStrong3:AddPicture( g_pPicture_1st_strong1000 )
g_pPicture_1st_strong1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*2,161+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_1st_strong100 = g_pUIDialog:CreatePicture()
g_pStaticStrong3:AddPicture( g_pPicture_1st_strong100 )
g_pPicture_1st_strong100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*3,161+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_1st_strong10 = g_pUIDialog:CreatePicture()
g_pStaticStrong3:AddPicture( g_pPicture_1st_strong10 )
g_pPicture_1st_strong10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*4,161+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_1st_strong1 = g_pUIDialog:CreatePicture()
g_pStaticStrong3:AddPicture( g_pPicture_1st_strong1 )
g_pPicture_1st_strong1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*5,161+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------근성포인트 4번째 플레이어 위치
-------십만 단위 자리
g_pStaticStrong4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStrong4 )
g_pStaticStrong4:SetName( "Static_Strong4" )

g_pPicture_1st_strong100000 = g_pUIDialog:CreatePicture()
g_pStaticStrong4:AddPicture( g_pPicture_1st_strong100000 )
g_pPicture_1st_strong100000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong100000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321,161+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------만 단위 자리

g_pPicture_1st_strong10000 = g_pUIDialog:CreatePicture()
g_pStaticStrong4:AddPicture( g_pPicture_1st_strong10000 )
g_pPicture_1st_strong10000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong10000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16,161+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------천 단위 자리
g_pPicture_1st_strong1000 = g_pUIDialog:CreatePicture()
g_pStaticStrong4:AddPicture( g_pPicture_1st_strong1000 )
g_pPicture_1st_strong1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*2,161+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_1st_strong100 = g_pUIDialog:CreatePicture()
g_pStaticStrong4:AddPicture( g_pPicture_1st_strong100 )
g_pPicture_1st_strong100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*3,161+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_1st_strong10 = g_pUIDialog:CreatePicture()
g_pStaticStrong4:AddPicture( g_pPicture_1st_strong10 )
g_pPicture_1st_strong10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*4,161+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_1st_strong1 = g_pUIDialog:CreatePicture()
g_pStaticStrong4:AddPicture( g_pPicture_1st_strong1 )
g_pPicture_1st_strong1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*5,161+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------근성포인트 5번째 플레이어 위치
-------십만 단위 자리
g_pStaticStrong5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStrong5 )
g_pStaticStrong5:SetName( "Static_Strong5" )

g_pPicture_1st_strong100000 = g_pUIDialog:CreatePicture()
g_pStaticStrong5:AddPicture( g_pPicture_1st_strong100000 )
g_pPicture_1st_strong100000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong100000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321,161+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------만 단위 자리

g_pPicture_1st_strong10000 = g_pUIDialog:CreatePicture()
g_pStaticStrong5:AddPicture( g_pPicture_1st_strong10000 )
g_pPicture_1st_strong10000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong10000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16,161+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------천 단위 자리
g_pPicture_1st_strong1000 = g_pUIDialog:CreatePicture()
g_pStaticStrong5:AddPicture( g_pPicture_1st_strong1000 )
g_pPicture_1st_strong1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*2,161+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_1st_strong100 = g_pUIDialog:CreatePicture()
g_pStaticStrong5:AddPicture( g_pPicture_1st_strong100 )
g_pPicture_1st_strong100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*3,161+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_1st_strong10 = g_pUIDialog:CreatePicture()
g_pStaticStrong5:AddPicture( g_pPicture_1st_strong10 )
g_pPicture_1st_strong10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*4,161+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_1st_strong1 = g_pUIDialog:CreatePicture()
g_pStaticStrong5:AddPicture( g_pPicture_1st_strong1 )
g_pPicture_1st_strong1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*5,161+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------근성포인트 6번째 플레이어 위치
-------십만 단위 자리
g_pStaticStrong6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStrong6 )
g_pStaticStrong6:SetName( "Static_Strong6" )

g_pPicture_1st_strong100000 = g_pUIDialog:CreatePicture()
g_pStaticStrong6:AddPicture( g_pPicture_1st_strong100000 )
g_pPicture_1st_strong100000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong100000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321,161+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------만 단위 자리

g_pPicture_1st_strong10000 = g_pUIDialog:CreatePicture()
g_pStaticStrong6:AddPicture( g_pPicture_1st_strong10000 )
g_pPicture_1st_strong10000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong10000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16,161+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------천 단위 자리
g_pPicture_1st_strong1000 = g_pUIDialog:CreatePicture()
g_pStaticStrong6:AddPicture( g_pPicture_1st_strong1000 )
g_pPicture_1st_strong1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*2,161+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_1st_strong100 = g_pUIDialog:CreatePicture()
g_pStaticStrong6:AddPicture( g_pPicture_1st_strong100 )
g_pPicture_1st_strong100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*3,161+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_1st_strong10 = g_pUIDialog:CreatePicture()
g_pStaticStrong6:AddPicture( g_pPicture_1st_strong10 )
g_pPicture_1st_strong10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*4,161+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_1st_strong1 = g_pUIDialog:CreatePicture()
g_pStaticStrong6:AddPicture( g_pPicture_1st_strong1 )
g_pPicture_1st_strong1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*5,161+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------근성포인트 7번째 플레이어 위치
-------십만 단위 자리
g_pStaticStrong7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStrong7 )
g_pStaticStrong7:SetName( "Static_Strong7" )

g_pPicture_1st_strong100000 = g_pUIDialog:CreatePicture()
g_pStaticStrong7:AddPicture( g_pPicture_1st_strong100000 )
g_pPicture_1st_strong100000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong100000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321,161+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------만 단위 자리

g_pPicture_1st_strong10000 = g_pUIDialog:CreatePicture()
g_pStaticStrong7:AddPicture( g_pPicture_1st_strong10000 )
g_pPicture_1st_strong10000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong10000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16,161+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------천 단위 자리
g_pPicture_1st_strong1000 = g_pUIDialog:CreatePicture()
g_pStaticStrong7:AddPicture( g_pPicture_1st_strong1000 )
g_pPicture_1st_strong1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*2,161+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_1st_strong100 = g_pUIDialog:CreatePicture()
g_pStaticStrong7:AddPicture( g_pPicture_1st_strong100 )
g_pPicture_1st_strong100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*3,161+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_1st_strong10 = g_pUIDialog:CreatePicture()
g_pStaticStrong7:AddPicture( g_pPicture_1st_strong10 )
g_pPicture_1st_strong10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*4,161+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_1st_strong1 = g_pUIDialog:CreatePicture()
g_pStaticStrong7:AddPicture( g_pPicture_1st_strong1 )
g_pPicture_1st_strong1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*5,161+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------근성포인트 8번째 플레이어 위치 (내 정보 상위 순위)
-------십만 단위 자리
g_pStaticStrong8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStrong8 )
g_pStaticStrong8:SetName( "Static_Strong8" )

g_pPicture_1st_strong100000 = g_pUIDialog:CreatePicture()
g_pStaticStrong8:AddPicture( g_pPicture_1st_strong100000 )
g_pPicture_1st_strong100000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong100000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321,161+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------만 단위 자리

g_pPicture_1st_strong10000 = g_pUIDialog:CreatePicture()
g_pStaticStrong8:AddPicture( g_pPicture_1st_strong10000 )
g_pPicture_1st_strong10000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong10000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16,161+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------천 단위 자리
g_pPicture_1st_strong1000 = g_pUIDialog:CreatePicture()
g_pStaticStrong8:AddPicture( g_pPicture_1st_strong1000 )
g_pPicture_1st_strong1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*2,161+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_1st_strong100 = g_pUIDialog:CreatePicture()
g_pStaticStrong8:AddPicture( g_pPicture_1st_strong100 )
g_pPicture_1st_strong100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*3,161+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_1st_strong10 = g_pUIDialog:CreatePicture()
g_pStaticStrong8:AddPicture( g_pPicture_1st_strong10 )
g_pPicture_1st_strong10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*4,161+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_1st_strong1 = g_pUIDialog:CreatePicture()
g_pStaticStrong8:AddPicture( g_pPicture_1st_strong1 )
g_pPicture_1st_strong1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*5,161+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------근성포인트 9번째 플레이어 위치 (내 정보)
-------십만 단위 자리
g_pStaticStrong9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStrong9 )
g_pStaticStrong9:SetName( "Static_Strong9" )

g_pPicture_1st_strong100000 = g_pUIDialog:CreatePicture()
g_pStaticStrong9:AddPicture( g_pPicture_1st_strong100000 )
g_pPicture_1st_strong100000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong100000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------만 단위 자리

g_pPicture_1st_strong10000 = g_pUIDialog:CreatePicture()
g_pStaticStrong9:AddPicture( g_pPicture_1st_strong10000 )
g_pPicture_1st_strong10000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_0" )
g_pPicture_1st_strong10000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------천 단위 자리
g_pPicture_1st_strong1000 = g_pUIDialog:CreatePicture()
g_pStaticStrong9:AddPicture( g_pPicture_1st_strong1000 )
g_pPicture_1st_strong1000:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1000:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*2,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------백 단위 자리
g_pPicture_1st_strong100 = g_pUIDialog:CreatePicture()
g_pStaticStrong9:AddPicture( g_pPicture_1st_strong100 )
g_pPicture_1st_strong100:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong100:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*3,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------십 단위 자리
g_pPicture_1st_strong10 = g_pUIDialog:CreatePicture()
g_pStaticStrong9:AddPicture( g_pPicture_1st_strong10 )
g_pPicture_1st_strong10:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*4,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------일 단위 자리
g_pPicture_1st_strong1 = g_pUIDialog:CreatePicture()
g_pStaticStrong9:AddPicture( g_pPicture_1st_strong1 )
g_pPicture_1st_strong1:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "Will_9" )
g_pPicture_1st_strong1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(321+16*5,161+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----------------------------------------------------------------------------------------
-------------------   캐릭터 리스트 각 투명 버튼 ------------------------------

------------------ 캐릭터 1 투명 버튼 ---------------------------------

g_pButtonUser1= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser1)
g_pButtonUser1:SetName( "User1" )

-- g_pButtonUser1:SetNormalTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonUser1:SetOverTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser1:SetDownTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )

g_pButtonUser1:SetNormalPoint
{
	ADD_SIZE_X = 400 - 20,
    ADD_SIZE_Y = 25,
	 
    "LEFT_TOP		= D3DXVECTOR2(34,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetOverPoint
{
	ADD_SIZE_X = 2 - 10,
	
	"LEFT_TOP		= D3DXVECTOR2(34,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetDownPoint
{
    ADD_SIZE_X = -10,
    ADD_SIZE_Y = -2,
	 
 	"LEFT_TOP		= D3DXVECTOR2(34+2,156+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:AddDummyInt(1)
--g_pButtonUser1:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
--g_pButtonUser1:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )
g_pButtonUser1:SetCustomMsgMouseRightUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_OPEN_POPUP_MENU"] )

------------------ 캐릭터 2 투명 버튼 ---------------------------------

g_pButtonUser2= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser2)
g_pButtonUser2:SetName( "User2" )

-- g_pButtonUser2:SetNormalTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonUser2:SetOverTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser2:SetDownTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )

g_pButtonUser2:SetNormalPoint
{
	ADD_SIZE_X = 400 - 20,
    ADD_SIZE_Y = 25,
	
    "LEFT_TOP		= D3DXVECTOR2(34,156+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetOverPoint
{
	ADD_SIZE_X = 2 - 10,
	
	"LEFT_TOP		= D3DXVECTOR2(34,156+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetDownPoint
{
    ADD_SIZE_X = -10,
    ADD_SIZE_Y = -2,
	 
 	"LEFT_TOP		= D3DXVECTOR2(34+2,156+2+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:AddDummyInt(2)
--g_pButtonUser2:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
--g_pButtonUser2:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )
g_pButtonUser2:SetCustomMsgMouseRightUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_OPEN_POPUP_MENU"] )

------------------ 캐릭터 3 투명 버튼 ---------------------------------

g_pButtonUser3= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser3)
g_pButtonUser3:SetName( "User3" )

-- g_pButtonUser3:SetNormalTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonUser3:SetOverTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser3:SetDownTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )

g_pButtonUser3:SetNormalPoint
{
	ADD_SIZE_X = 400 - 20,
    ADD_SIZE_Y = 25,
	
    "LEFT_TOP		= D3DXVECTOR2(34,156+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:SetOverPoint
{
	ADD_SIZE_X = 2 - 10,
	
	"LEFT_TOP		= D3DXVECTOR2(34,156+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:SetDownPoint
{
    ADD_SIZE_X = -10,
    ADD_SIZE_Y = -2,
	 
 	"LEFT_TOP		= D3DXVECTOR2(34+2,156+2+35*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:AddDummyInt(3)
--g_pButtonUser3:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
--g_pButtonUser3:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )
g_pButtonUser3:SetCustomMsgMouseRightUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_OPEN_POPUP_MENU"] )

------------------ 캐릭터 4 투명 버튼 ---------------------------------

g_pButtonUser4= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser4)
g_pButtonUser4:SetName( "User4" )

-- g_pButtonUser4:SetNormalTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonUser4:SetOverTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser4:SetDownTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )

g_pButtonUser4:SetNormalPoint
{
	ADD_SIZE_X = 400 - 20,
    ADD_SIZE_Y = 25,
	
    "LEFT_TOP		= D3DXVECTOR2(34,156+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:SetOverPoint
{
	ADD_SIZE_X = 2 - 10,
	
	"LEFT_TOP		= D3DXVECTOR2(34,156+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:SetDownPoint
{
    ADD_SIZE_X = -10,
    ADD_SIZE_Y = -2,
	 
 	"LEFT_TOP		= D3DXVECTOR2(34+2,156+2+35*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser4:AddDummyInt(4)
--g_pButtonUser4:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
--g_pButtonUser4:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )
g_pButtonUser4:SetCustomMsgMouseRightUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_OPEN_POPUP_MENU"] )

------------------ 캐릭터 5 투명 버튼 ---------------------------------

g_pButtonUser5= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser5 )
g_pButtonUser5:SetName( "User5" )

-- g_pButtonUser5:SetNormalTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonUser5:SetOverTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser5:SetDownTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )

g_pButtonUser5:SetNormalPoint
{
	ADD_SIZE_X = 400 - 20,
    ADD_SIZE_Y = 25,
	
    "LEFT_TOP		= D3DXVECTOR2(34,156+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:SetOverPoint
{
	ADD_SIZE_X = 2 - 10,
	
	"LEFT_TOP		= D3DXVECTOR2(34,156+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:SetDownPoint
{
    ADD_SIZE_X = -10,
    ADD_SIZE_Y = -2,
	 
 	"LEFT_TOP		= D3DXVECTOR2(34+2,156+2+35*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser5:AddDummyInt(5)
--g_pButtonUser5:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
--g_pButtonUser5:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )
g_pButtonUser5:SetCustomMsgMouseRightUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_OPEN_POPUP_MENU"] )

------------------ 캐릭터 6 투명 버튼 ---------------------------------

g_pButtonUser6= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser6 )
g_pButtonUser6:SetName( "User6" )

-- g_pButtonUser6:SetNormalTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonUser6:SetOverTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser6:SetDownTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )

g_pButtonUser6:SetNormalPoint
{
	ADD_SIZE_X = 400 - 20,
    ADD_SIZE_Y = 25,
	
    "LEFT_TOP		= D3DXVECTOR2(34,156+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:SetOverPoint
{
	ADD_SIZE_X = 2 - 10,
	
	"LEFT_TOP		= D3DXVECTOR2(34,156+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:SetDownPoint
{
    ADD_SIZE_X = -10,
    ADD_SIZE_Y = -2,
	 
 	"LEFT_TOP		= D3DXVECTOR2(34+2,156+2+35*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser6:AddDummyInt(6)
--g_pButtonUser6:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
--g_pButtonUser6:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )
g_pButtonUser6:SetCustomMsgMouseRightUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_OPEN_POPUP_MENU"] )

------------------ 캐릭터 7 투명 버튼 ---------------------------------

g_pButtonUser7= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser7 )
g_pButtonUser7:SetName( "User7" )

-- g_pButtonUser7:SetNormalTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser7:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonUser7:SetOverTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser7:SetDownTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )

g_pButtonUser7:SetNormalPoint
{
	ADD_SIZE_X = 400 - 20,
    ADD_SIZE_Y = 25,
	
    "LEFT_TOP		= D3DXVECTOR2(34,156+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:SetOverPoint
{
	ADD_SIZE_X = 2 - 10,
	
	"LEFT_TOP		= D3DXVECTOR2(34,156+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:SetDownPoint
{
    ADD_SIZE_X = -10,
    ADD_SIZE_Y = -2,
	 
 	"LEFT_TOP		= D3DXVECTOR2(34+2,156+2+35*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser7:AddDummyInt(7)
--g_pButtonUser7:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
--g_pButtonUser7:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )
g_pButtonUser7:SetCustomMsgMouseRightUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_OPEN_POPUP_MENU"] )

------------------ 캐릭터 8 투명 버튼 (내 정보 상위 순위) ---------------------------------

g_pButtonUser8= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser8 )
g_pButtonUser8:SetName( "User8" )

-- g_pButtonUser8:SetNormalTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser8:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonUser8:SetOverTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser8:SetDownTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )

g_pButtonUser8:SetNormalPoint
{
	ADD_SIZE_X = 400 - 20,
    ADD_SIZE_Y = 25,
	
    "LEFT_TOP		= D3DXVECTOR2(34,156+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:SetOverPoint
{
	ADD_SIZE_X = 2 - 10,
	
	"LEFT_TOP		= D3DXVECTOR2(34,156+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:SetDownPoint
{
    ADD_SIZE_X = -10,
    ADD_SIZE_Y = -2,
	 
 	"LEFT_TOP		= D3DXVECTOR2(34+2,156+2+35*6+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser8:AddDummyInt(8)
--g_pButtonUser8:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
--g_pButtonUser8:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )
g_pButtonUser8:SetCustomMsgMouseRightUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_OPEN_POPUP_MENU"] )

------------------ 캐릭터 9 투명 버튼 (내 정보) ---------------------------------

g_pButtonUser9= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser9 )
g_pButtonUser9:SetName( "User9" )

-- g_pButtonUser9:SetNormalTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser9:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonUser9:SetOverTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )
g_pButtonUser9:SetDownTex( "DLG_UI_Title03.tga", "Bt_User_Click_Over" )

g_pButtonUser9:SetNormalPoint
{
	ADD_SIZE_X = 400 - 20,
    ADD_SIZE_Y = 25,
	
    "LEFT_TOP		= D3DXVECTOR2(34,156+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser9:SetOverPoint
{
	ADD_SIZE_X = 2 - 10,
	
	"LEFT_TOP		= D3DXVECTOR2(34,156+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser9:SetDownPoint
{
    ADD_SIZE_X = -10,
    ADD_SIZE_Y = -2,
	 
 	"LEFT_TOP		= D3DXVECTOR2(34+2,156+2+35*6+42+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser9:AddDummyInt(9)
--g_pButtonUser9:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
--g_pButtonUser9:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_EXIT"] )
g_pButtonUser9:SetCustomMsgMouseRightUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_OPEN_POPUP_MENU"] )