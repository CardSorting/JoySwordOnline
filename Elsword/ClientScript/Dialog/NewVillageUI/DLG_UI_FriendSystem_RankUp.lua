-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetPos( 600, 500 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


g_pStaticRankup = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRankup )
g_pStaticRankup:SetName( "Rankup" )


---------BG
g_pPicture_bg = g_pUIDialog:CreatePicture() --0
g_pStaticRankup:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_RANKUP_BACK" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------초상화 부분

g_pPicture_title1 = g_pUIDialog:CreatePicture() --1
g_pStaticRankup:AddPicture( g_pPicture_title1 )
g_pPicture_title1:SetTex( "DLG_UI_Common_Texture70_NEW.tga", "ARA_SD_MEDIUM" )

g_pPicture_title1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(11,55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------대전/던전&필드 포인트로 랭크 업 시,

g_pPicture_upper1 = g_pUIDialog:CreatePicture() --2
g_pStaticRankup:AddPicture( g_pPicture_upper1 )
g_pPicture_upper1:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "BG_RankUp_DungeonField" )

g_pPicture_upper1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(73,75)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------지역&길드로 랭크 업 시,

g_pPicture_under1 = g_pUIDialog:CreatePicture() --3
g_pStaticRankup:AddPicture( g_pPicture_under1 )
g_pPicture_under1:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "BG_RankUp_Guild" )

g_pPicture_under1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(73,90)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

----------------------------근성도 표시
-------------근성도 100000자리

g_pPicture_100000_1 = g_pUIDialog:CreatePicture() --4
g_pStaticRankup:AddPicture( g_pPicture_100000_1 )
g_pPicture_100000_1:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_9" )

g_pPicture_100000_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(118,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
-------------근성도 10000자리

g_pPicture_10000_1 = g_pUIDialog:CreatePicture() --5
g_pStaticRankup:AddPicture( g_pPicture_10000_1 )
g_pPicture_10000_1:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_9" )

g_pPicture_10000_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(118+16,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------근성도 1000자리

g_pPicture_1000_1 = g_pUIDialog:CreatePicture() --6
g_pStaticRankup:AddPicture( g_pPicture_1000_1 )
g_pPicture_1000_1:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_9" )

g_pPicture_1000_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(118+16*2,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------근성도 100자리

g_pPicture_100_1 = g_pUIDialog:CreatePicture() --7
g_pStaticRankup:AddPicture( g_pPicture_100_1 )
g_pPicture_100_1:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_9" )

g_pPicture_100_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(118+16*3,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------근성도 10자리

g_pPicture_10_1 = g_pUIDialog:CreatePicture() --8
g_pStaticRankup:AddPicture( g_pPicture_10_1 )
g_pPicture_10_1:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_9" )

g_pPicture_10_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(118+16*4,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------근성도 1자리

g_pPicture_1_1 = g_pUIDialog:CreatePicture() --9
g_pStaticRankup:AddPicture( g_pPicture_1_1 )
g_pPicture_1_1:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_9" )

g_pPicture_1_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(118+16*5,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



--------------------------------------------------------소제목 모음--------------------------------------------------------
------------------------------   검색창   ------------------------------
g_pStaticSubtitle = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSubtitle )
g_pStaticSubtitle:SetName( "subtitle" )

-------------근성도  타이틀
g_pPicturecri1 = g_pUIDialog:CreatePicture() --0
g_pStaticSubtitle:AddPicture( g_pPicturecri1 )
g_pPicturecri1:SetTex( "DLG_UI_Title03.TGA", "STitle_SP" )
g_pPicturecri1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(80-7,53)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


------------------------------    유저 아이디 부분    ------------------------------
g_pStatic_Id1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Id1 )
g_pStatic_Id1:SetName( "id1" )
g_pStatic_Id1:AddString
{
	 -- MSG 			= "[유저아이디]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(131,81)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------랭크 다운 유저 표시창---------------------------------------------

---------BG
g_pPicture_bg = g_pUIDialog:CreatePicture() --10
g_pStaticRankup:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Small2_Top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(40,130)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture() --11
g_pStaticRankup:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Small2_Middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 53,   
	"LEFT_TOP		= D3DXVECTOR2(40,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture() --12
g_pStaticRankup:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_Small2_Bottom" )

g_pPicture_bg:SetPoint
{ 
	"LEFT_TOP		= D3DXVECTOR2(40,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------BG2
g_pPicture_bg = g_pUIDialog:CreatePicture() --13
g_pStaticRankup:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_M151px_Top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(40+72,130+9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture() --14
g_pStaticRankup:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_M151px_Middle" )

g_pPicture_bg:SetPoint
{
     ADD_SIZE_Y = 36, 
	"LEFT_TOP		= D3DXVECTOR2(40+72,140+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture() --15
g_pStaticRankup:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_Bg_01.TGA", "BG_M151px_Bottom" )

g_pPicture_bg:SetPoint
{ 
	"LEFT_TOP		= D3DXVECTOR2(40+72,189)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------초상화 부분

g_pPicture_title2 = g_pUIDialog:CreatePicture() --16
g_pStaticRankup:AddPicture( g_pPicture_title2 )
g_pPicture_title2:SetTex( "DLG_UI_Common_Texture70_NEW.tga", "ARA_SD_MEDIUM" )

g_pPicture_title2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(12+46,58+90)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------길드 포인트로 랭크 업 시,

g_pPicture_under2 = g_pUIDialog:CreatePicture() --17
g_pStaticRankup:AddPicture( g_pPicture_under2 )
g_pPicture_under2:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "BG_RankUp_Guild" )

g_pPicture_under2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(73+46,90+90)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------던전&필드 포인트로 랭크 업 시,

g_pPicture_upper2 = g_pUIDialog:CreatePicture() --18
g_pStaticRankup:AddPicture( g_pPicture_upper2 )
g_pPicture_upper2:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "BG_RankUp_DungeonField" )

g_pPicture_upper2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(73+46,75+90)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

----------------------------근성도 표시

-------------근성도 100000자리

g_pPicture_100000_2 = g_pUIDialog:CreatePicture() --19
g_pStaticRankup:AddPicture( g_pPicture_100000_2 )
g_pPicture_100000_2:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_8" )

g_pPicture_100000_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(164,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------근성도 10000자리

g_pPicture_10000_2 = g_pUIDialog:CreatePicture() --20
g_pStaticRankup:AddPicture( g_pPicture_10000_2 )
g_pPicture_10000_2:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_8" )

g_pPicture_10000_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(164+16,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------근성도 1000자리

g_pPicture_1000_2 = g_pUIDialog:CreatePicture() --21
g_pStaticRankup:AddPicture( g_pPicture_1000_2 )
g_pPicture_1000_2:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_9" )

g_pPicture_1000_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(164+16*2,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------근성도 100자리

g_pPicture_100_2 = g_pUIDialog:CreatePicture() --22
g_pStaticRankup:AddPicture( g_pPicture_100_2 )
g_pPicture_100_2:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_9" )

g_pPicture_100_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(164+16*3,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------근성도 10자리

g_pPicture_10_2 = g_pUIDialog:CreatePicture() --23
g_pStaticRankup:AddPicture( g_pPicture_10_2 )
g_pPicture_10_2:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_9" )

g_pPicture_10_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(164+16*4,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------근성도 1자리

g_pPicture_1_2 = g_pUIDialog:CreatePicture() --24
g_pStaticRankup:AddPicture( g_pPicture_1_2 )
g_pPicture_1_2:SetTex( "DLG_UI_Common_Texture_Bg_01.tga", "Will_9" )

g_pPicture_1_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(164+16*5,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



--------------------------------------------------------소제목 모음--------------------------------------------------------
------------------------------   검색창   ------------------------------

-------------근성도
g_pPicturecri2 = g_pUIDialog:CreatePicture() --1
g_pStaticSubtitle:AddPicture( g_pPicturecri2 )
g_pPicturecri2:SetTex( "DLG_UI_Title03.TGA", "STitle_SP" )
g_pPicturecri2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(75+46-2,144)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


------------------------------    유저 아이디 부분    ------------------------------
g_pStatic_Id2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Id2 )
g_pStatic_Id2:SetName( "id2" )
g_pStatic_Id2:AddString
{
	 -- MSG 			= "[유저아이디]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(131+46,83+90)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}