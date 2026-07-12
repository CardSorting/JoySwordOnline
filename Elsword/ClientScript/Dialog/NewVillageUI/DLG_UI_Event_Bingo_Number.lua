-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--[[
비활성화 0~80	: DLG_UI_Common_Texture_Event_04.tga
활성화 0~80		: DLG_UI_Common_Texture_Event_05.tga
비활성화 81~99	: DLG_UI_Common_Texture_Event_06.tga
활성화 81~99	: DLG_UI_Common_Texture_Event_06.tga

BG_BINGO_NUMBER_NORMAL_00
BG_BINGO_NUMBER_OVER_00
--]]
g_pStatic_Number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Number )
g_pStatic_Number:SetName( "Bingo_Number" )
g_pStatic_Number:SetShow(true)

--0-0
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166,344)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------1행
--0-1
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53,344)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--0-2
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*2,344)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--0-3
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*3,344)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--0-4
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*4,344)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------2행
--1-0
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166,344+53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--1-1
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53,344+53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--1-2
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*2,344+53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--1-3
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*3,344+53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--1-4
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*4,344+53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------3행
--2-0
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166,344+53*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--2-1
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53,344+53*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--2-2
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*2,344+53*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--2-3
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*3,344+53*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--2-4
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*4,344+53*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------4행
--3-0
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166,344+53*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--3-1
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53,344+53*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--3-2
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*2,344+53*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--3-3
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*3,344+53*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--3-4
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*4,344+53*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------5행
--4-0
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166,344+53*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--4-1
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53,344+53*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--4-2
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*2,344+53*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--4-3
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*3,344+53*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--4-4
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Number:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_BINGO_NUMBER_NORMAL_85" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(166+53*4,344+53*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}