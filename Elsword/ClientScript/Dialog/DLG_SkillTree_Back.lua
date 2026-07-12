-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Skill_Tree_Back" )
g_pUIDialog:SetPos( 0, -52  )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_2"] )




g_pStaticSkill_Tree_Back = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_Back )
g_pStaticSkill_Tree_Back:SetName( "StaticSkill_Tree" )



----(훈련설명 창) 
g_pPictureSkill_Tree_Back1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Back:AddPicture( g_pPictureSkill_Tree_Back1 )
g_pPictureSkill_Tree_Back1:SetTex( "DLG_Background_New_Skill_Tree.dds", "SkillTree_BG" )
g_pPictureSkill_Tree_Back1:SetPoint
{
    ADD_SIZE_X = 512,
    ADD_SIZE_Y = 256,
 	"LEFT_TOP  = D3DXVECTOR2(0,0)",
 	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 	CHANGE_TIME  = 0.0,
}


g_pPictureSkill_Tree_Back1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Back:AddPicture( g_pPictureSkill_Tree_Back1 )

g_pPictureSkill_Tree_Back1:SetTex( "DLG_Common_Texture01.TGA", "Round_White1" )

g_pPictureSkill_Tree_Back1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,50)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.2)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSkill_Tree_Back2 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Back:AddPicture( g_pPictureSkill_Tree_Back2 )

g_pPictureSkill_Tree_Back2:SetTex( "DLG_Common_Texture01.TGA", "Round_White4" )

g_pPictureSkill_Tree_Back2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(997,50)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.2)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_Tree_Back3 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Back:AddPicture( g_pPictureSkill_Tree_Back3 )

g_pPictureSkill_Tree_Back3:SetTex( "DLG_Common_Texture01.TGA", "Round_White2" )

g_pPictureSkill_Tree_Back3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,476)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.2)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_Tree_Back4 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Back:AddPicture( g_pPictureSkill_Tree_Back4 )

g_pPictureSkill_Tree_Back4:SetTex( "DLG_Common_Texture01.TGA", "Round_White3" )

g_pPictureSkill_Tree_Back4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(997,475)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.2)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSkill_Tree_Back5 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Back:AddPicture( g_pPictureSkill_Tree_Back5 )

g_pPictureSkill_Tree_Back5:SetTex( "DLG_Common_Texture01.TGA", "White" )

g_pPictureSkill_Tree_Back5:SetPoint
{
    ADD_SIZE_X = 972,
    ADD_SIZE_Y = 435,
	"LEFT_TOP		= D3DXVECTOR2(24,50)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.2)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_Tree_Back6 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Back:AddPicture( g_pPictureSkill_Tree_Back6 )

g_pPictureSkill_Tree_Back6:SetTex( "DLG_Common_Texture01.TGA", "White" )

g_pPictureSkill_Tree_Back6:SetPoint
{
    ADD_SIZE_X = 9,
    ADD_SIZE_Y = 414,
	"LEFT_TOP		= D3DXVECTOR2(14,61)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.2)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_Tree_Back7 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Back:AddPicture( g_pPictureSkill_Tree_Back7 )

g_pPictureSkill_Tree_Back7:SetTex( "DLG_Common_Texture01.TGA", "White" )

g_pPictureSkill_Tree_Back7:SetPoint
{
    ADD_SIZE_X = 9,
    ADD_SIZE_Y = 414,
	"LEFT_TOP		= D3DXVECTOR2(997,60)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.2)",
	CHANGE_TIME		= 0.0,
}


