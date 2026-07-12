-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "Game_My_Score" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_2"] )


g_pStatic_My_Score = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_My_Score )
g_pStatic_My_Score:SetName( "Static_My_Help" )

	
--[[
-- 'HELP' 
g_pPicture_Help = g_pUIDialog:CreatePicture()
g_pStatic_My_Score:AddPicture( g_pPicture_Help )
g_pPicture_Help:SetTex2( "HQ_F1_Help.TGA" )
g_pPicture_Help:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(64,32)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


g_pStatic_My_Score = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_My_Score )
g_pStatic_My_Score:SetName( "Static_My_Score" )

	



-- 'Total Score'
g_pPicture_Total_Score = g_pUIDialog:CreatePicture()
g_pStatic_My_Score:AddPicture( g_pPicture_Total_Score )
g_pPicture_Total_Score:SetTex2( "DLG_My_Unit_Score.TGA" )
g_pPicture_Total_Score:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(222,9)",
	
		USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(222,9)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(222 + 114,9 + 21)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStatic_My_Stone = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_My_Stone )
g_pStatic_My_Stone:SetName( "Static_My_Stone" )


g_pPictureBase_Info_Stone_Icon = g_pUIDialog:CreatePicture()
g_pStatic_My_Stone:AddPicture( g_pPictureBase_Info_Stone_Icon )

g_pPictureBase_Info_Stone_Icon:SetTex( "DLG_Common_Texture09.TGA", "Stone_Icon" )

g_pPictureBase_Info_Stone_Icon:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(135 - 5,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_My_Stone:AddString
{
	-- MSG    		= "20",
 	FONT_INDEX      = XUF_DODUM_15_BOLD,
 	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	"POS            = D3DXVECTOR2(184 - 5,14)",
 	"COLOR          = D3DXCOLOR(1,1,1,1)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_My_Stone:AddString
{
	MSG    		= STR_ID_2595,
 	FONT_INDEX      = XUF_DODUM_15_BOLD,
 	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	"POS            = D3DXVECTOR2(172 - 5,14)",
 	"COLOR          = D3DXCOLOR(1,1,1,1)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--[[
-- 'ED'
g_pPicture_ED = g_pUIDialog:CreatePicture()
g_pStatic_My_Score:AddPicture( g_pPicture_ED )
g_pPicture_ED:SetTex2( "HQ_ED.tga" )
g_pPicture_ED:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(480,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]
