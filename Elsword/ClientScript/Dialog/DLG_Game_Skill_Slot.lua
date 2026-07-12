-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Game_Skill_Slot" )
g_pUIDialog:SetPos( 0, 100 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER[ "XDL_NORMAL_2" ] )





g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Empty_Slot" )





-- 빈 슬롯 1
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture01.TGA", "Empty_Slot" )
g_pPicture:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(200,0)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}


-- 빈 슬롯 2
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture01.TGA", "EMPTY_SLOT" )
g_pPicture:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(265,0)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}


-- 빈 슬롯 3
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture01.TGA", "Empty_Slot" )
g_pPicture:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(329,0)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

-- 빈 슬롯 4
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture01.TGA", "Empty_Slot" )
g_pPicture:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(393,0)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}











g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Slot_1" )



-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(203+1, 3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(203+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(268+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(268+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(332+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(332+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(396+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}



g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Level_1" )



-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(203+1, 3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(203+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(268+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(268+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(329+1,0+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(332+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(396+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


---- 스킬 마우스업 메시지를 받기 위한 버튼 4개입니다. 스킬 아이콘이 있는 위치에 똑같이 맞춰주세요.

g_pButton_opacity1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1 )
g_pButton_opacity1:SetName( "opacity1" )
g_pButton_opacity1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(203+1, 3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(203+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(203+1, 3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(203+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(203+1, 3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(203+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
g_pButton_opacity1:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )
g_pButton_opacity1:AddDummyInt(0)
g_pButton_opacity1:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity1:ChangeMouseOverSound_LUA( "" )


g_pButton_opacity2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity2 )
g_pButton_opacity2:SetName( "opacity2" )
g_pButton_opacity2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(268+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(268+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2:SetOverPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(268+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(268+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(268+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(268+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
g_pButton_opacity2:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )
g_pButton_opacity2:AddDummyInt(1)
g_pButton_opacity2:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity2:ChangeMouseOverSound_LUA( "" )

g_pButton_opacity3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity3 )
g_pButton_opacity3:SetName( "opacity3" )
g_pButton_opacity3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity3:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity3:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity3:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(329+1,0+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(332+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity3:SetOverPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(329+1,0+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(332+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity3:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(329+1,0+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(332+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity3:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
g_pButton_opacity3:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )
g_pButton_opacity3:AddDummyInt(2)
g_pButton_opacity3:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity3:ChangeMouseOverSound_LUA( "" )

g_pButton_opacity4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity4 )
g_pButton_opacity4:SetName( "opacity4" )
g_pButton_opacity4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity4:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity4:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity4:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(396+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity4:SetOverPoint
{
   USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(396+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity4:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(396+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity4:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
g_pButton_opacity4:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )
g_pButton_opacity4:AddDummyInt(3)
g_pButton_opacity4:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity4:ChangeMouseOverSound_LUA( "" )

-----------------------------------------------------------


-- CB 2차

	-- 'A'
	
	
		g_pPicture = g_pUIDialog:CreatePicture()
	g_pStatic:AddPicture( g_pPicture )
	g_pPicture:SetTex( "DLG_Common_New_Texture01.TGA", "skill_b_normal" )
	g_pPicture:SetPoint
	{
	     ADD_SIZE_X=-5,
	     ADD_SIZE_Y=-5,
		"LEFT_TOP			= D3DXVECTOR2(120+12,1+10-7)",
		"COLOR				= D3DXCOLOR(0.5,0.5,0.5,0.7)",
		CHANGE_TIME			= 0.0,
	}
	
	g_pPicture = g_pUIDialog:CreatePicture()
	g_pStatic:AddPicture( g_pPicture )
	g_pPicture:SetTex( "DLG_Common_New_Texture01.TGA", "skill_a_over" )
	g_pPicture:SetPoint
	{
	     ADD_SIZE_X=-5,
	     ADD_SIZE_Y=-5,
		"LEFT_TOP			= D3DXVECTOR2(122,1-2)",
		"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME			= 0.0,
	}
	
	






g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Slot_2" )



-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(203+1, 3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(203+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(268+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(268+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(332+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(332+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(396+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}



g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Level_2" )



-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(203+1, 3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(203+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(268+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(268+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(329+1,0+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(332+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "NoAlphaImage.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(396+1,3+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396+50-1, 3+50-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


------------------------------------



g_pStatic_Key = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Key )
g_pStatic_Key:SetName( "Static_Skill_Shortcut_Key" )

g_pPicture_Key1 = g_pUIDialog:CreatePicture()
g_pStatic_Key:AddPicture( g_pPicture_Key1 )
g_pPicture_Key1:SetTex( "DLG_UI_Common_Texture01.tga", "Skill_A" )
g_pPicture_Key1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(234-1, 1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Key2 = g_pUIDialog:CreatePicture()
g_pStatic_Key:AddPicture( g_pPicture_Key2 )
g_pPicture_Key2:SetTex( "DLG_UI_Common_Texture01.tga", "Skill_S" )
g_pPicture_Key2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(299-1, 1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Key3 = g_pUIDialog:CreatePicture()
g_pStatic_Key:AddPicture( g_pPicture_Key3 )
g_pPicture_Key3:SetTex( "DLG_UI_Common_Texture01.tga", "Skill_D" )
g_pPicture_Key3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(364-1, 1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Key4 = g_pUIDialog:CreatePicture()
g_pStatic_Key:AddPicture( g_pPicture_Key4 )
g_pPicture_Key4:SetTex( "DLG_UI_Common_Texture01.tga", "Skill_C" )
g_pPicture_Key4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(428-1, 1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-- 'B'


g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_New_Texture01.TGA", "skill_a_normal" )
g_pPicture:SetPoint
{
    ADD_SIZE_X=-5,
	ADD_SIZE_Y=-5,
	"LEFT_TOP			= D3DXVECTOR2(120+12,1+10-7)",
	"COLOR				= D3DXCOLOR(0.5,0.5,0.5,0.7)",
	CHANGE_TIME			= 0.0,
}

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_New_Texture01.TGA", "skill_b_over_blue" )
g_pPicture:SetPoint
{
    ADD_SIZE_X=-5,
	ADD_SIZE_Y=-5,
	"LEFT_TOP			= D3DXVECTOR2(121,1-2)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


--[[ 스킬 레벨업 표시방식 변경 : 이 스태틱은 필요없어짐
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Level_Up" )

g_pStatic:AddString
{
--	 MSG    		 = STR_ID_2596,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(228,170 - 100 - 13)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic:AddString
{
--	 MSG    		 = STR_ID_2596,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(293,170 - 100 - 13)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic:AddString
{
--	 MSG    		 = STR_ID_2596,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(356,170 - 100 - 13)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic:AddString
{
--	 MSG    		 = STR_ID_2596,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(421,170 - 100 - 13)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Cool_Time_Fade" )




-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(203, 3)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(203+50, 3+50)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)

-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(268,3)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(268+50, 3+50)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)

-- 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(332,3)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(332+50, 3+50)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(396,3)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396+50, 3+50)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)







g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Cool_Time" )

g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(228,170 - 100 - 13 - 35)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(293,170 - 100 - 13 - 35)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(356,170 - 100 - 13 - 35)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(421,170 - 100 - 13 - 35)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


-----파괴의 검사 스킬 활성화
g_pStatic_EL_SKILL_R = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EL_SKILL_R )
g_pStatic_EL_SKILL_R:SetName( "Static_EL_SKILL_R" )


-- 슬롯 1
g_pPicture_EL_SKILL_R_1 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_1)
g_pPicture_EL_SKILL_R_1:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_1:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(200-3,0-3)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 2
g_pPicture_EL_SKILL_R_2 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_2)
g_pPicture_EL_SKILL_R_2:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_2:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(200-3+65,0-3)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

-- 슬롯 3
g_pPicture_EL_SKILL_R_3 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_3)
g_pPicture_EL_SKILL_R_3:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_3:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(200-3+65+64,0-3)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 4
g_pPicture_EL_SKILL_R_4 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_4)
g_pPicture_EL_SKILL_R_4:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_4:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(200-3+65+64+64,0-3)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

-----활력의 검사 스킬 활성화
g_pStatic_EL_SKILL_B = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EL_SKILL_B )
g_pStatic_EL_SKILL_B:SetName( "Static_EL_SKILL_B" )


-- 슬롯 1
g_pPicture_EL_SKILL_B_1 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_1)
g_pPicture_EL_SKILL_B_1:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_1:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(200-3,0-4)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 2
g_pPicture_EL_SKILL_B_2 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_2)
g_pPicture_EL_SKILL_B_2:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_2:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(200-3+65,0-4)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

-- 슬롯 3
g_pPicture_EL_SKILL_B_3 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_3)
g_pPicture_EL_SKILL_B_3:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_3:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(200-3+65+64,0-4)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 4
g_pPicture_EL_SKILL_B_4 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_4)
g_pPicture_EL_SKILL_B_4:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_4:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(200-3+65+64+64,0-4)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}