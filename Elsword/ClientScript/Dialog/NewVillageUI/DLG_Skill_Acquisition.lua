-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.







g_pUIDialog:SetName( "DLG_SKILL_UNSEALED" )
g_pUIDialog:SetPos( 381, 226 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )





g_pStaticSkill_Acquisition = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Acquisition )
g_pStaticSkill_Acquisition:SetName( "g_pStaticSkill_Acquisition" )


--------------------------배경-----------------------------------------------------

-----------BG01

g_pPictureSkill_BG_top = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_top )
g_pPictureSkill_BG_top:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG01_TOP" )

g_pPictureSkill_BG_top:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_BG_middle = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_middle )
g_pPictureSkill_BG_middle:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG01_middle" )

g_pPictureSkill_BG_middle:SetPoint
{
     ADD_SIZE_Y = 198,
	"LEFT_TOP		= D3DXVECTOR2(0,23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSkill_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_bottom)
g_pPictureSkill_BG_bottom:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG01_bottom" )

g_pPictureSkill_BG_bottom:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------BG02

g_pPictureSkill_BG_top = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_top )
g_pPictureSkill_BG_top:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG02_TOP" )

g_pPictureSkill_BG_top:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_BG_middle = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_middle )
g_pPictureSkill_BG_middle:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG02_middle" )

g_pPictureSkill_BG_middle:SetPoint
{
     ADD_SIZE_Y = 120,
	"LEFT_TOP		= D3DXVECTOR2(18,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSkill_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_bottom)
g_pPictureSkill_BG_bottom:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG02_bottom" )

g_pPictureSkill_BG_bottom:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------BG03

g_pPictureSkill_BG_top = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_top )
g_pPictureSkill_BG_top:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG03_TOP" )

g_pPictureSkill_BG_top:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(20,77)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_BG_middle = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_middle )
g_pPictureSkill_BG_middle:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG03_middle" )

g_pPictureSkill_BG_middle:SetPoint
{
     ADD_SIZE_Y = 115,
	"LEFT_TOP		= D3DXVECTOR2(20,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSkill_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_bottom)
g_pPictureSkill_BG_bottom:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG03_bottom" )

g_pPictureSkill_BG_bottom:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(20,209)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------BG04

g_pPictureSkill_BG_top = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_top )
g_pPictureSkill_BG_top:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG04_LEFT" )

g_pPictureSkill_BG_top:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(29,159)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_BG_middle = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_middle )
g_pPictureSkill_BG_middle:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG04_CENTER" )

g_pPictureSkill_BG_middle:SetPoint
{
     ADD_SIZE_X = 176,
	"LEFT_TOP		= D3DXVECTOR2(35,159)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSkill_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_bottom)
g_pPictureSkill_BG_bottom:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG04_RIGHT" )

g_pPictureSkill_BG_bottom:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(213,159)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pStaticSkill_Acquisition_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Acquisition_Slot )
g_pStaticSkill_Acquisition_Slot:SetName( "g_pStaticSkill_Acquisition_Slot" )




-----------Skill_SLOT

g_pPictureSkill_SLOT = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition_Slot:AddPicture( g_pPictureSkill_SLOT )
g_pPictureSkill_SLOT:SetTex( "DLG_UI_Common_Texture11.TGA", "Skill_slot2" )

g_pPictureSkill_SLOT:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(94,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------Skill

g_pPictureSkill = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition_Slot:AddPicture( g_pPictureSkill )
g_pPictureSkill:SetTex( "DLG_Skill_RavenActive_02.TGA", "SI_SA_RST_SHOCKWAVE" )

g_pPictureSkill:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(94+4,90+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticSkill_Acquisition = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Acquisition )
g_pStaticSkill_Acquisition:SetName( "g_pStaticSkill_Acquisition22" )

------------------------------타이틀

g_pPictureTitle_BG= g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureTitle_BG )

g_pPictureTitle_BG:SetTex( "DLG_UI_Common_Texture11.TGA", "Star_BG" )

g_pPictureTitle_BG:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(-4,-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTitle= g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureTitle )

g_pPictureTitle:SetTex( "DLG_UI_Common_Texture11.TGA", "Skill_Title" )

g_pPictureTitle:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(36,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 181,
	"LEFT_TOP		= D3DXVECTOR2(33,182)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}





------------------------Notice
g_pStatic_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Notice )
g_pStatic_Notice:SetName( "Static_Notice" )

g_pPicture_Notice = g_pUIDialog:CreatePicture()
g_pStatic_Notice:AddPicture( g_pPicture_Notice )

g_pPicture_Notice:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_Notice:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(51+20,163)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Notice:AddString
{
	MSG 			= STR_ID_3847,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(70+22,165-1)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}





g_pStatic_Skill_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Skill_Name )
g_pStatic_Skill_Name:SetName( "Static_Skill_Name" )

g_pStatic_Skill_Name:AddString
{
	MSG 			= STR_ID_EMPTY,		-- skill name
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(127,187)",
	"COLOR			= D3DXCOLOR(1.0,0.7,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.1,0.0,1.0)",
}


