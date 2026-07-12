-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PetGameState" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_2"] )

--------------- Static
g_pStatic_Pat_GAGE_BAR = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_GAGE_BAR )
g_pStatic_Pat_GAGE_BAR:SetName( "g_pStatic_Pat_GAGE_BAR" )



---------------PAT BG
g_pPicture_Pat_GAGE_BAR_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_GAGE_BAR:AddPicture( g_pPicture_Pat_GAGE_BAR_BG2 )
g_pPicture_Pat_GAGE_BAR_BG2:SetTex( "DLG_UI_Common_Texture41.TGA", "Pat_IMG_BG" )
g_pPicture_Pat_GAGE_BAR_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(15,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------PAT 
g_pPicture_Pat_GAGE_BAR_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_GAGE_BAR:AddPicture( g_pPicture_Pat_GAGE_BAR_BG2 )
g_pPicture_Pat_GAGE_BAR_BG2:SetTex( "DLG_UI_Common_Texture41.TGA", "Pat_PETTE_ANCIENT_PPORU_03" )
g_pPicture_Pat_GAGE_BAR_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,139-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
---------------PAT SKILL 
g_pPicture_Pat_GAGE_BAR_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_GAGE_BAR:AddPicture( g_pPicture_Pat_GAGE_BAR_BG2 )
g_pPicture_Pat_GAGE_BAR_BG2:SetTex( "DLG_UI_Common_Texture41.TGA", "PAT_SKILL_INVENTORY" )
g_pPicture_Pat_GAGE_BAR_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

-- 공격 스킬
g_pButton_Pat_Aura_Skill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Aura_Skill )
g_pButton_Pat_Aura_Skill:SetName( "Pat_Btn_Attack_Skill" )

g_pButton_Pat_Aura_Skill:SetNormalTex( "DLG_UI_Common_Texture41.tga", "PAT_SKILL_INVENTORY" )
g_pButton_Pat_Aura_Skill:SetOverTex( "DLG_UI_Common_Texture41.tga", "PAT_SKILL_INVENTORY" )
g_pButton_Pat_Aura_Skill:SetDownTex( "DLG_UI_Common_Texture41.tga", "PAT_SKILL_INVENTORY" )

g_pButton_Pat_Aura_Skill:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(5,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetDownPoint
{	
 	"LEFT_TOP		= D3DXVECTOR2(5,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------- BAR BG
g_pPicture_Pat_GAGE_BAR_BG = g_pUIDialog:CreatePicture()
g_pStatic_Pat_GAGE_BAR:AddPicture( g_pPicture_Pat_GAGE_BAR_BG )
g_pPicture_Pat_GAGE_BAR_BG:SetTex( "DLG_UI_Common_Texture41.TGA", "Pat_BAR_BG_S" )
g_pPicture_Pat_GAGE_BAR_BG:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(5,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------- BAR BG2
g_pPicture_Pat_GAGE_BAR_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_GAGE_BAR:AddPicture( g_pPicture_Pat_GAGE_BAR_BG2 )
g_pPicture_Pat_GAGE_BAR_BG2:SetTex( "DLG_UI_Common_Texture41.TGA", "Pat_BAR_BG_S" )
g_pPicture_Pat_GAGE_BAR_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------- GREEN BAR
g_pPicture_Pat_GAGE_BAR_GRREN = g_pUIDialog:CreatePicture()
g_pStatic_Pat_GAGE_BAR:AddPicture( g_pPicture_Pat_GAGE_BAR_GRREN )
g_pPicture_Pat_GAGE_BAR_GRREN:SetTex( "DLG_UI_Common_Texture41.TGA", "Pat_GREEN_BAR_S" )
g_pPicture_Pat_GAGE_BAR_GRREN:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(7,212)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Pat_GAGE_BAR_GRREN:SetIndex(1)

--------------- BLUE BAR
g_pPicture_Pat_GAGE_BAR_BLUE = g_pUIDialog:CreatePicture()
g_pStatic_Pat_GAGE_BAR:AddPicture( g_pPicture_Pat_GAGE_BAR_BLUE )
g_pPicture_Pat_GAGE_BAR_BLUE:SetTex( "DLG_UI_Common_Texture41.TGA", "Pat__BLUE_BAR_S" )
g_pPicture_Pat_GAGE_BAR_BLUE:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,220)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Pat_GAGE_BAR_BLUE:SetIndex(2)