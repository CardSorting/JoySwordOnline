-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_First_Loading_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )





g_pStaticFirst_Loading = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFirst_Loading )
g_pStaticFirst_Loading:SetName( "First_Loading_Back" )




g_pPictureFirst_Loading_BG0 = g_pUIDialog:CreatePicture()
g_pStaticFirst_Loading:AddPicture( g_pPictureFirst_Loading_BG0 )

g_pPictureFirst_Loading_BG0:SetTex( "DLG_First_Loading0.TGA", "DLG_First_Loading0" )

g_pPictureFirst_Loading_BG0:SetPoint
{
    
	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(512,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureFirst_Loading_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFirst_Loading:AddPicture( g_pPictureFirst_Loading_BG1 )

g_pPictureFirst_Loading_BG1:SetTex( "DLG_First_Loading1.TGA", "DLG_First_Loading1" )

g_pPictureFirst_Loading_BG1:SetPoint
{
    
	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------------------------------GAUGE

g_pStaticFirst_Loading_Front = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFirst_Loading_Front )
g_pStaticFirst_Loading_Front:SetName( "First_Loading" )
g_pStaticFirst_Loading_Front:SetOffsetPos( 0, 0 )



g_pStaticFirst_Loading_Front:AddString
{
	MSG 				= STR_ID_992,
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_RIGHT"],
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
	"POS 				= D3DXVECTOR2(1000,730)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
-------게이지 
g_pPictureFirst_Loading_Gauge = g_pUIDialog:CreatePicture()
g_pStaticFirst_Loading_Front:AddPicture( g_pPictureFirst_Loading_Gauge )

--g_pPictureFirst_Loading_Gauge:SetTex( "DLG_First_Loading2.tga", "Gauge" )

g_pPictureFirst_Loading_Gauge:SetTex( "DLG_First_Loading2.TGA", "Gauge" )
g_pPictureFirst_Loading_Gauge:SetPoint
{
    
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(0,761)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------게이지 라인
g_pPictureFirst_Loading_Gauge_Line0 = g_pUIDialog:CreatePicture()
g_pStaticFirst_Loading_Front:AddPicture( g_pPictureFirst_Loading_Gauge_Line0 )

g_pPictureFirst_Loading_Gauge_Line0:SetTex( "DLG_First_Loading2.tga", "Gauge_Line0" )

g_pPictureFirst_Loading_Gauge_Line0:SetPoint
{
    

	"LEFT_TOP		= D3DXVECTOR2(0,761)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureFirst_Loading_Gauge_Line1 = g_pUIDialog:CreatePicture()
g_pStaticFirst_Loading_Front:AddPicture( g_pPictureFirst_Loading_Gauge_Line1 )

g_pPictureFirst_Loading_Gauge_Line1:SetTex( "DLG_First_Loading2.tga", "Gauge_Line1" )

g_pPictureFirst_Loading_Gauge_Line1:SetPoint
{
    
	ADD_SIZE_X = 995,
	"LEFT_TOP		= D3DXVECTOR2(10,761)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureFirst_Loading_Gauge_Line2 = g_pUIDialog:CreatePicture()
g_pStaticFirst_Loading_Front:AddPicture( g_pPictureFirst_Loading_Gauge_Line2 )

g_pPictureFirst_Loading_Gauge_Line2:SetTex( "DLG_First_Loading2.tga", "Gauge_Line2" )

g_pPictureFirst_Loading_Gauge_Line2:SetPoint
{
    

	"LEFT_TOP		= D3DXVECTOR2(0+1014,761)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- g_pPictureFirst_Loading_Gauge_Line2 = g_pUIDialog:CreatePicture()
-- g_pStaticFirst_Loading_Front:AddPicture( g_pPictureFirst_Loading_Gauge_Line2 )

-- g_pPictureFirst_Loading_Gauge_Line2:SetTex( "DLG_First_Loading2.tga", "Gauge_Line2" )

-- g_pPictureFirst_Loading_Gauge_Line2:SetPoint
-- {
    
	-- USE_TEXTURE_SIZE	= FALSE,

	-- "LEFT_TOP		= D3DXVECTOR2(237,666)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(796,671)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
--[[

 g_pPictureFirst_Loading_Gauge_Line3 = g_pUIDialog:CreatePicture()
 g_pStaticFirst_Loading_Front:AddPicture( g_pPictureFirst_Loading_Gauge_Line3 )

 g_pPictureFirst_Loading_Gauge_Line3:SetTex( "DLG_First_Loading2.tga", "Gauge_Line2" )

 g_pPictureFirst_Loading_Gauge_Line3:SetPoint
 {
	
	USE_TEXTURE_SIZE	= FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(237,699)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(796,704)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
 }
--]]




-- 클라이언트 버전 표시
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Client_Version" )

g_pStatic:AddString
{
	MSG 			= STR_ID_1,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2( 6, 730 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	
