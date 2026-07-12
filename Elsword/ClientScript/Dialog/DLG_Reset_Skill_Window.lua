-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Reset_Skill_Window" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_TREE_REMOVE_SKILL_CANCEL"] )


--------------1번스킬창-------------------

g_pStaticSkill_Reset_Window1= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Reset_Window1)
g_pStaticSkill_Reset_Window1:SetName( "StaticSkill_Reset_Window1" )





g_pPictureSkill_Reset_Bg1= g_pUIDialog:CreatePicture()
g_pStaticSkill_Reset_Window1:AddPicture( g_pPictureSkill_Reset_Bg1)

g_pPictureSkill_Reset_Bg1:SetTex( "DLG_Common_New_Texture55.tga", "RESET_SKILL1"  )

g_pPictureSkill_Reset_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_Reset_Bg1= g_pUIDialog:CreatePicture()
g_pStaticSkill_Reset_Window1:AddPicture( g_pPictureSkill_Reset_Bg1)

g_pPictureSkill_Reset_Bg1:SetTex( "DLG_Common_New_Texture55.tga", "RESET_SKILL2"  )

g_pPictureSkill_Reset_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,157)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------2번스킬창-------------------

g_pStaticSkill_Reset_Window2= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Reset_Window2)
g_pStaticSkill_Reset_Window2:SetName( "g_pStaticSkill_Reset_Window2" )



g_pPictureSkill_Reset_Bg1= g_pUIDialog:CreatePicture()
g_pStaticSkill_Reset_Window2:AddPicture( g_pPictureSkill_Reset_Bg1)

g_pPictureSkill_Reset_Bg1:SetTex( "DLG_Common_New_Texture55.tga", "RESET_SKILL1"  )

g_pPictureSkill_Reset_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_Reset_Bg1= g_pUIDialog:CreatePicture()
g_pStaticSkill_Reset_Window2:AddPicture( g_pPictureSkill_Reset_Bg1)

g_pPictureSkill_Reset_Bg1:SetTex( "DLG_Common_New_Texture55.tga", "RESET_SKILL3"  )

g_pPictureSkill_Reset_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,157)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------3번스킬창-------------------

g_pStaticSkill_Reset_Window3= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Reset_Window3)
g_pStaticSkill_Reset_Window3:SetName( "g_pStaticSkill_Reset_Window3" )


g_pPictureSkill_Reset_Bg1= g_pUIDialog:CreatePicture()
g_pStaticSkill_Reset_Window3:AddPicture( g_pPictureSkill_Reset_Bg1)

g_pPictureSkill_Reset_Bg1:SetTex( "DLG_Common_New_Texture55.tga", "RESET_SKILL1"  )

g_pPictureSkill_Reset_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_Reset_Bg1= g_pUIDialog:CreatePicture()
g_pStaticSkill_Reset_Window3:AddPicture( g_pPictureSkill_Reset_Bg1)

g_pPictureSkill_Reset_Bg1:SetTex( "DLG_Common_New_Texture55.tga", "RESET_SKILL4"  )

g_pPictureSkill_Reset_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,157)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureSkill_Study_Bg3= g_pUIDialog:CreatePicture()
g_pStaticSkill_Reset_Window3:AddPicture( g_pPictureSkill_Study_Bg3)

g_pPictureSkill_Study_Bg3:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_Arrow1"  )

g_pPictureSkill_Study_Bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,-29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------4번스킬창-------------------

g_pStaticSkill_Reset_Window4= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Reset_Window4)
g_pStaticSkill_Reset_Window4:SetName( "g_pStaticSkill_Reset_Window4" )


g_pPictureSkill_Reset_Bg1= g_pUIDialog:CreatePicture()
g_pStaticSkill_Reset_Window4:AddPicture( g_pPictureSkill_Reset_Bg1)

g_pPictureSkill_Reset_Bg1:SetTex( "DLG_Common_New_Texture55.tga", "RESET_SKILL1"  )

g_pPictureSkill_Reset_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_Reset_Bg1= g_pUIDialog:CreatePicture()
g_pStaticSkill_Reset_Window4:AddPicture( g_pPictureSkill_Reset_Bg1)

g_pPictureSkill_Reset_Bg1:SetTex( "DLG_Common_New_Texture55.tga", "RESET_SKILL4"  )

g_pPictureSkill_Reset_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,157)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureSkill_Study_Bg3= g_pUIDialog:CreatePicture()
g_pStaticSkill_Reset_Window4:AddPicture( g_pPictureSkill_Study_Bg3)

g_pPictureSkill_Study_Bg3:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_Arrow2"  )

g_pPictureSkill_Study_Bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(243,-29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pStaticNeed_Sp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNeed_Sp )
g_pStaticNeed_Sp:SetName( "Staticget_Sp" )

g_pStaticNeed_Sp:AddString
{
	-- MSG    = "999999",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG  = DRAW_TEXT["DT_RIGHT"],
	"POS    = D3DXVECTOR2(146,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


 
 
 
g_pStaticMy_Sp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMy_Sp )
g_pStaticMy_Sp:SetName( "Statictotal_Sp" )

g_pStaticMy_Sp:AddString
{
	-- MSG    = "999999",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG  = DRAW_TEXT["DT_RIGHT"],
	"POS    = D3DXVECTOR2(146,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	
}



	g_pStaticNewitem_Font = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticNewitem_Font )
	g_pStaticNewitem_Font:SetName( "g_pStaticNewitem_Font" )

	g_pStaticNewitem_Font:AddString
	{
		MSG 			= STR_ID_1155,
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(240,55)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


 



g_pButtonSkill_Reset1_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill_Reset1_X )
g_pButtonSkill_Reset1_X:SetName( "ButtonSkill_Reset1_X" )
g_pButtonSkill_Reset1_X:SetNormalTex( "DLG_Common_New_Texture13.tga", "Button_X_Normal" )

g_pButtonSkill_Reset1_X:SetOverTex( "DLG_Common_New_Texture13.tga", "Button_X_Over" )

g_pButtonSkill_Reset1_X:SetDownTex( "DLG_Common_New_Texture13.tga", "Button_X_Normal" )

g_pButtonSkill_Reset1_X:SetNormalPoint
{

       ADD_SIZE_X = -10,
    ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(384-118+17,72-54-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset1_X:SetOverPoint
{
     ADD_SIZE_X = -10,
    ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(384-118+17,72-54-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset1_X:SetDownPoint
{
    ADD_SIZE_X = -12,
    ADD_SIZE_Y = -12,
 	"LEFT_TOP		= D3DXVECTOR2(385-118+17,73-54-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset1_X:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_TREE_REMOVE_SKILL_CANCEL"] )






g_pButtonSkill_Reset1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill_Reset1 )
g_pButtonSkill_Reset1:SetName( "ButtonSkill_Reset1" )
g_pButtonSkill_Reset1:SetNormalTex( "DLG_Common_New_Texture55.tga", "Reset_skill_BUTTON_normal" )

g_pButtonSkill_Reset1:SetOverTex( "DLG_Common_New_Texture55.tga", "Reset_skill_BUTTON_Over" )

g_pButtonSkill_Reset1:SetDownTex( "DLG_Common_New_Texture55.tga", "Reset_skill_BUTTON_Over" )

g_pButtonSkill_Reset1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(192,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(192,82)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset1:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(193,83)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset1:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_TREE_REMOVE_SKILL_OK"] )


