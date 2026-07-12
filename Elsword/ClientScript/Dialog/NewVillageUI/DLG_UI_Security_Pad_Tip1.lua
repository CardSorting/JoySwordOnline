-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

RELATIVE_POS_X = 215

g_pStatic_pass_tip1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_pass_tip1 )
g_pStatic_pass_tip1:SetName( "g_pStatic_pass_tip1" )
g_pStatic_pass_tip1:SetShow(false)

----------BG
--------------------------------
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass_tip1:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )

g_pPicture_bg1:SetPoint
{
ADD_SIZE_X = -277-10+1+51-1,
ADD_SIZE_Y = -12,
	"LEFT_TOP		= D3DXVECTOR2(0+RELATIVE_POS_X,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass_tip1:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )

g_pPicture_bg1:SetPoint
{
ADD_SIZE_X = -277-10+1+51-1,
ADD_SIZE_Y = 100+110+10-1+80+6,
	"LEFT_TOP		= D3DXVECTOR2(0+RELATIVE_POS_X,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass_tip1:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )

g_pPicture_bg1:SetPoint
{
ADD_SIZE_X = -277-10+1+51-1,
ADD_SIZE_Y = -12,
	"LEFT_TOP		= D3DXVECTOR2(0+RELATIVE_POS_X,0+210+22+80+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----------BG2
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_pass_tip1:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_top" )

g_pPicture_bg2:SetPoint
{
ADD_SIZE_X = -265+4+53-1-1,
ADD_SIZE_Y = -7,
	"LEFT_TOP		= D3DXVECTOR2(0+10-1+RELATIVE_POS_X,0+45+52-15-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_pass_tip1:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_middle" )

g_pPicture_bg2:SetPoint
{
        ADD_SIZE_X = -265+4+53-1-1,
		ADD_SIZE_Y = 20+150-10+2-30+35-30+35+60,
	"LEFT_TOP		= D3DXVECTOR2(0+10-1+RELATIVE_POS_X,0+55+52-22-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_pass_tip1:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
   ADD_SIZE_X = -265+4+53-1-1,
   ADD_SIZE_Y = -7,
	"LEFT_TOP		= D3DXVECTOR2(0+10-1+RELATIVE_POS_X,0+220-2+52-30+35-22-30+60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


	--분할 라인
	
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_pass_tip1:AddPicture( g_pPicture_line )

g_pPicture_line:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "pet_bg_bar" )

g_pPicture_line:SetPoint
{
ADD_SIZE_X = -100-45+53-1-1,
ADD_SIZE_Y = -8,
    "LEFT_TOP		= D3DXVECTOR2(0+15-2+RELATIVE_POS_X,0+50+30+230)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--보안 패드 타이틀

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass_tip1:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_title03.TGA", "secu_pad_tip" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0+10+RELATIVE_POS_X,0+10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------------------
--보안패드 사용 툴팁

g_pStatic_pass_tip1:AddString
{ 
    MSG    = STR_ID_12528,

FONT_INDEX  = XUF_DODUM_13_SEMIBOLD,
 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 SORT_FLAG  = DRAW_TEXT["DT_LEFT"],
 "POS    = D3DXVECTOR2(13+RELATIVE_POS_X,65)",
 "COLOR   = D3DXCOLOR(0.3,0.3,0.3,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
--보안패드 사용 툴팁_2
g_pStatic_pass_tip1:AddString
{ 
    MSG    = STR_ID_12529,

FONT_INDEX  = XUF_DODUM_13_SEMIBOLD,
 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 SORT_FLAG  = DRAW_TEXT["DT_LEFT"],
 "POS    = D3DXVECTOR2(13+RELATIVE_POS_X,65+70)",
 "COLOR   = D3DXCOLOR(0.3,0.3,0.3,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

--보안패드 사용 툴팁_3
g_pStatic_pass_tip1:AddString
{ 
    MSG    = STR_ID_12530,

 FONT_INDEX  = XUF_DODUM_13_SEMIBOLD,
 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 SORT_FLAG  = DRAW_TEXT["DT_LEFT"],
 "POS    = D3DXVECTOR2(13+RELATIVE_POS_X,65+70+70)",
 "COLOR   = D3DXCOLOR(0.3,0.3,0.3,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
--[[
--보안패드 사용 툴팁_4 빨강
g_pStatic_pass_tip1:AddString
{ 
    MSG    = STR_ID_12531,

 FONT_INDEX  = XUF_DODUM_13_SEMIBOLD,
 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 SORT_FLAG  = DRAW_TEXT["DT_LEFT"],
 "POS    = D3DXVECTOR2(13+RELATIVE_POS_X,65+70+70)",
 "COLOR   = D3DXCOLOR(1.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",

 --]]