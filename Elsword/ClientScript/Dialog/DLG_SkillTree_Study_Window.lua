-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Learn_Skill" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_TREE_GET_SKILL_CANCEL"] )


g_pStaticSkill_Study_Window1= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Study_Window1)
g_pStaticSkill_Study_Window1:SetName( "StaticSkill_Study_Window1" )




--------------1번스킬창-------------------
g_pPictureSkill_Study_Bg1= g_pUIDialog:CreatePicture()
g_pStaticSkill_Study_Window1:AddPicture( g_pPictureSkill_Study_Bg1)

g_pPictureSkill_Study_Bg1:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_BG1"  )

g_pPictureSkill_Study_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSkill_Study_Bg2= g_pUIDialog:CreatePicture()
g_pStaticSkill_Study_Window1:AddPicture( g_pPictureSkill_Study_Bg2)

g_pPictureSkill_Study_Bg2:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_BG2"  )

g_pPictureSkill_Study_Bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pStaticSkill_Study_Window2= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Study_Window2)
g_pStaticSkill_Study_Window2:SetName( "StaticSkill_Study_Window2" )




--------------2번스킬창-------------------
g_pPictureSkill_Study_Bg1_2= g_pUIDialog:CreatePicture()
g_pStaticSkill_Study_Window2:AddPicture( g_pPictureSkill_Study_Bg1_2)

g_pPictureSkill_Study_Bg1_2:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_BG3"  )

g_pPictureSkill_Study_Bg1_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSkill_Study_Bg2_2= g_pUIDialog:CreatePicture()
g_pStaticSkill_Study_Window2:AddPicture( g_pPictureSkill_Study_Bg2_2)

g_pPictureSkill_Study_Bg2_2:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_BG2"  )

g_pPictureSkill_Study_Bg2_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pStaticSkill_Study_Window3= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Study_Window3)
g_pStaticSkill_Study_Window3:SetName( "StaticSkill_Study_Window3" )




--------------3번스킬창-------------------
g_pPictureSkill_Study_Bg1_3= g_pUIDialog:CreatePicture()
g_pStaticSkill_Study_Window3:AddPicture( g_pPictureSkill_Study_Bg1_3)

g_pPictureSkill_Study_Bg1_3:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_BG4"  )

g_pPictureSkill_Study_Bg1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSkill_Study_Bg2_3= g_pUIDialog:CreatePicture()
g_pStaticSkill_Study_Window3:AddPicture( g_pPictureSkill_Study_Bg2_3)

g_pPictureSkill_Study_Bg2_3:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_BG2"  )

g_pPictureSkill_Study_Bg2_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSkill_Study_Bg3= g_pUIDialog:CreatePicture()
g_pStaticSkill_Study_Window3:AddPicture( g_pPictureSkill_Study_Bg3)

g_pPictureSkill_Study_Bg3:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_Arrow2"  )

g_pPictureSkill_Study_Bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(243,-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pStaticSkill_Study_Window4= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Study_Window4)
g_pStaticSkill_Study_Window4:SetName( "StaticSkill_Study_Window4" )




--------------4번스킬창-------------------
g_pPictureSkill_Study_Bg1_4= g_pUIDialog:CreatePicture()
g_pStaticSkill_Study_Window4:AddPicture( g_pPictureSkill_Study_Bg1_4)

g_pPictureSkill_Study_Bg1_4:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_BG4"  )

g_pPictureSkill_Study_Bg1_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSkill_Study_Bg2_4= g_pUIDialog:CreatePicture()
g_pStaticSkill_Study_Window4:AddPicture( g_pPictureSkill_Study_Bg2_4)

g_pPictureSkill_Study_Bg2_4:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_BG2"  )

g_pPictureSkill_Study_Bg2_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSkill_Study_Bg3_4= g_pUIDialog:CreatePicture()
g_pStaticSkill_Study_Window4:AddPicture( g_pPictureSkill_Study_Bg3_4)

g_pPictureSkill_Study_Bg3_4:SetTex( "DLG_Common_New_Texture27.tga", "Skill_Tree_Study_Arrow1"  )

g_pPictureSkill_Study_Bg3_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









g_pStaticNeed_Sp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNeed_Sp )
g_pStaticNeed_Sp:SetName( "StaticNeed_Sp" )

g_pStaticNeed_Sp:AddString
{
	-- MSG    = "999999",
	FONT_INDEX  = XUF_DODUM_11_NORMAL,
	SORT_FLAG  = DRAW_TEXT["DT_RIGHT"],
	"POS    = D3DXVECTOR2(146,62)",
	"COLOR   = D3DXCOLOR(0.35,0.4,0.35,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


 
 
 
g_pStaticMy_Sp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMy_Sp )
g_pStaticMy_Sp:SetName( "StaticMy_Sp" )

g_pStaticMy_Sp:AddString
{
	-- MSG    = "999999",
	FONT_INDEX  = XUF_DODUM_11_NORMAL,
	SORT_FLAG  = DRAW_TEXT["DT_RIGHT"],
	"POS    = D3DXVECTOR2(146,62+36)",
	"COLOR   = D3DXCOLOR(0.35,0.4,0.35,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

 



g_pButtonSkill_Study1_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill_Study1_X )
g_pButtonSkill_Study1_X:SetName( "ButtonSkill_Study1_X" )
g_pButtonSkill_Study1_X:SetNormalTex( "DLG_Common_New_Texture13.tga", "Button_X_Normal" )

g_pButtonSkill_Study1_X:SetOverTex( "DLG_Common_New_Texture13.tga", "Button_X_Over" )

g_pButtonSkill_Study1_X:SetDownTex( "DLG_Common_New_Texture13.tga", "Button_X_Normal" )

g_pButtonSkill_Study1_X:SetNormalPoint
{

       ADD_SIZE_X = -10,
    ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(384-118,72-54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Study1_X:SetOverPoint
{
     ADD_SIZE_X = -10,
    ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(384-118,72-54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Study1_X:SetDownPoint
{
    ADD_SIZE_X = -12,
    ADD_SIZE_Y = -12,
 	"LEFT_TOP		= D3DXVECTOR2(385-118,73-54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Study1_X:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_TREE_GET_SKILL_CANCEL"] )





g_pButtonSkill_Study1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill_Study1 )
g_pButtonSkill_Study1:SetName( "ButtonSkill_Study1" )
g_pButtonSkill_Study1:SetNormalTex( "DLG_Common_New_Texture27.tga", "SKILL_TREE_STUDY_BUTTON_NORMAL" )

g_pButtonSkill_Study1:SetOverTex( "DLG_Common_New_Texture27.tga", "SKILL_TREE_STUDY_BUTTON_Over" )

g_pButtonSkill_Study1:SetDownTex( "DLG_Common_New_Texture27.tga", "SKILL_TREE_STUDY_BUTTON_Over" )

g_pButtonSkill_Study1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(177,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Study1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(177,54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Study1:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(178,55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Study1:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_TREE_GET_SKILL_OK"] )


