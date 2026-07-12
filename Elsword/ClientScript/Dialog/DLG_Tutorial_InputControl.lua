-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





g_pUIDialog:SetName( "DLG_Tutorial_InputControl" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )



g_pStatic_Key_Guide = g_pUIDialog:CreateStatic()
g_pStatic_Key_Guide:SetName( "Static_Key_Guide" )
g_pUIDialog:AddControl( g_pStatic_Key_Guide )


g_pPicture_Key_Guide = g_pUIDialog:CreatePicture()
g_pStatic_Key_Guide:AddPicture( g_pPicture_Key_Guide )
g_pPicture_Key_Guide:SetTex( "DLG_UI_Common_Texture05.tga", "Command_Guide" )
g_pPicture_Key_Guide:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(450,-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


--[[
g_pStaticPVPGameState_Key_BG = g_pUIDialog:CreateStatic()
g_pStaticPVPGameState_Key_BG:SetName( "StaticPVPGameState_Key_BG" )
g_pUIDialog:AddControl( g_pStaticPVPGameState_Key_BG )


g_pPictureTutorial_Key_BG = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key_BG:AddPicture( g_pPictureTutorial_Key_BG )
g_pPictureTutorial_Key_BG:SetTex( "DLG_Keyboard.tga", "Key_BG" )
g_pPictureTutorial_Key_BG:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,


	"LEFT_TOP		= D3DXVECTOR2(482,658)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}






g_pStaticPVPGameState_Key = g_pUIDialog:CreateStatic()
g_pStaticPVPGameState_Key:SetName( "Static_InputControl" )
g_pUIDialog:AddControl( g_pStaticPVPGameState_Key )



g_pPictureTutorial_Z_Key_Normal = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Z_Key_Normal )

g_pPictureTutorial_Z_Key_Normal:SetTex( "DLG_Keyboard.tga", "Z_Key_Normal" )

g_pPictureTutorial_Z_Key_Normal:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(667,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Z_Key_Over = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Z_Key_Over )

g_pPictureTutorial_Z_Key_Over:SetTex( "DLG_Keyboard.tga", "Z_Key_Over" )

g_pPictureTutorial_Z_Key_Over:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(667,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_X_Key_Normal = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_X_Key_Normal )

g_pPictureTutorial_X_Key_Normal:SetTex( "DLG_Keyboard.tga", "X_Key_Normal" )

g_pPictureTutorial_X_Key_Normal:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(722,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_X_Key_Over = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_X_Key_Over )

g_pPictureTutorial_X_Key_Over:SetTex( "DLG_Keyboard.tga", "X_Key_Over" )

g_pPictureTutorial_X_Key_Over:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(722,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





g_pPictureTutorial_Left_Key_Normal = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Left_Key_Normal )

g_pPictureTutorial_Left_Key_Normal:SetTex( "DLG_Keyboard.tga", "Left_Key_Normal" )

g_pPictureTutorial_Left_Key_Normal:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(849,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Left_Key_Over = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Left_Key_Over )

g_pPictureTutorial_Left_Key_Over:SetTex( "DLG_Keyboard.tga", "Left_Key_Over" )

g_pPictureTutorial_Left_Key_Over:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(849,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Right_Key_Normal = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Right_Key_Normal )

g_pPictureTutorial_Right_Key_Normal:SetTex( "DLG_Keyboard.tga", "Right_Key_Normal" )

g_pPictureTutorial_Right_Key_Normal:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(959,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Right_Key_Over = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Right_Key_Over )

g_pPictureTutorial_Right_Key_Over:SetTex( "DLG_Keyboard.tga", "Right_Key_Over" )

g_pPictureTutorial_Right_Key_Over:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(959,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureTutorial_Up_Key_Normal = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Up_Key_Normal )

g_pPictureTutorial_Up_Key_Normal:SetTex( "DLG_Keyboard.tga", "Up_Key_Normal" )

g_pPictureTutorial_Up_Key_Normal:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(904,631)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Up_Key_Over = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Up_Key_Over )

g_pPictureTutorial_Up_Key_Over:SetTex( "DLG_Keyboard.tga", "Up_Key_Over" )

g_pPictureTutorial_Up_Key_Over:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(904,631)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Down_Key_Normal = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Down_Key_Normal )

g_pPictureTutorial_Down_Key_Normal:SetTex( "DLG_Keyboard.tga", "Down_Key_Normal" )

g_pPictureTutorial_Down_Key_Normal:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(904,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Down_Key_Over = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Down_Key_Over )

g_pPictureTutorial_Down_Key_Over:SetTex( "DLG_Keyboard.tga", "Down_Key_Over" )

g_pPictureTutorial_Down_Key_Over:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(904,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

















g_pPictureTutorial_Dash_Key = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Dash_Key )

g_pPictureTutorial_Dash_Key:SetTex( "DLG_Keyboard.tga", "Dash_Key" )

g_pPictureTutorial_Dash_Key:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(502,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Dash = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Dash )

g_pPictureTutorial_Dash:SetTex( "DLG_Keyboard.tga", "Dash" )

g_pPictureTutorial_Dash:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,731)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureTutorial_Attack2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Attack2 )

g_pPictureTutorial_Attack2:SetTex( "DLG_Keyboard.tga", "Attack2" )

g_pPictureTutorial_Attack2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(655,731)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Attack1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Attack1 )

g_pPictureTutorial_Attack1:SetTex( "DLG_Keyboard.tga", "Attack1" )

g_pPictureTutorial_Attack1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(720,731)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Move = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Move )

g_pPictureTutorial_Move:SetTex( "DLG_Keyboard.tga", "Move" )

g_pPictureTutorial_Move:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(909,731)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureTutorial_Jump = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState_Key:AddPicture( g_pPictureTutorial_Jump )

g_pPictureTutorial_Jump:SetTex( "DLG_Keyboard.tga", "Jump" )

g_pPictureTutorial_Jump:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(908,668)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--]]






g_pStatic_Tutorial_Message = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Tutorial_Message )
g_pStatic_Tutorial_Message:SetName( "Static_Tutorial_Message" )



g_pPictureTutorial_Effect = g_pUIDialog:CreatePicture()
g_pStatic_Tutorial_Message:AddPicture( g_pPictureTutorial_Effect )
g_pPictureTutorial_Effect:SetTex( "DLG_Keyboard.tga", "Effect" )

g_pPictureTutorial_Effect:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(181,245)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(857,310)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





























-- STATIC, skill tree list,   FOLD
g_pStatic_Skill_List_Fold = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Skill_List_Fold )
g_pStatic_Skill_List_Fold:SetName( "Static_Skill_List_Fold" )



g_pPictureTutorial_Tab_Key = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Fold:AddPicture( g_pPictureTutorial_Tab_Key )

g_pPictureTutorial_Tab_Key:SetTex( "DLG_Keyboard.tga", "Tab_Key" )

g_pPictureTutorial_Tab_Key:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(961,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureTutorial_Skill_List = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Fold:AddPicture( g_pPictureTutorial_Skill_List )

g_pPictureTutorial_Skill_List:SetTex( "DLG_Keyboard.tga", "Command_List" )

g_pPictureTutorial_Skill_List:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(905,269)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}























-- STATIC, skill tree list,  UNFOLD
g_pStatic_Skill_List_Unfold = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Skill_List_Unfold )
g_pStatic_Skill_List_Unfold:SetName( "Static_Skill_List_Unfold" )
g_pStatic_Skill_List_Unfold:SetShow( false )




g_pPictureTutorial_Tab_Key = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Tab_Key )

g_pPictureTutorial_Tab_Key:SetTex( "DLG_Keyboard.tga", "Tab_Key" )

g_pPictureTutorial_Tab_Key:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(961,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureTutorial_Skill_List = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List )

g_pPictureTutorial_Skill_List:SetTex( "DLG_Keyboard.tga", "Command_List" )

g_pPictureTutorial_Skill_List:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(905,269)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}




g_pPictureTutorial_Skill_List1 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List1 )

g_pPictureTutorial_Skill_List1:SetTex( "DLG_Keyboard.tga", "Win1" )

g_pPictureTutorial_Skill_List1:SetPoint
{
	ADD_SIZE_X = 1,
   	"LEFT_TOP		= D3DXVECTOR2(754,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Skill_List2 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List2 )

g_pPictureTutorial_Skill_List2:SetTex( "DLG_Keyboard.tga", "Win2" )

g_pPictureTutorial_Skill_List2:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(1006,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Skill_List3 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List3 )

g_pPictureTutorial_Skill_List3:SetTex( "DLG_Keyboard.tga", "Win3" )

g_pPictureTutorial_Skill_List3:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(754,619)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Skill_List4 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List4 )

g_pPictureTutorial_Skill_List4:SetTex( "DLG_Keyboard.tga", "Win4" )

g_pPictureTutorial_Skill_List4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(1006,619)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureTutorial_Skill_List5 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List5 )

g_pPictureTutorial_Skill_List5:SetTex( "DLG_Keyboard.tga", "Win5" )

g_pPictureTutorial_Skill_List5:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(761,296)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1006,626)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureTutorial_Skill_List6 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List6 )

g_pPictureTutorial_Skill_List6:SetTex( "DLG_Keyboard.tga", "Win5" )

g_pPictureTutorial_Skill_List6:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(754,303)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(761,619)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureTutorial_Skill_List7 = g_pUIDialog:CreatePicture()
g_pStatic_Skill_List_Unfold:AddPicture( g_pPictureTutorial_Skill_List7 )

g_pPictureTutorial_Skill_List7:SetTex( "DLG_Keyboard.tga", "Win5" )

g_pPictureTutorial_Skill_List7:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(1006,303)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1014,619)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}







