-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





g_pUIDialog:SetName( "DLG_SkillTree_Skill_Slot" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_3"] )









g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Slot" )


g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Server_Select3.TGA", "invisible" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24 - 55 - 3+506 -4,461 + 132-24-1 )",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24 - 3+506 -4,461 + 132 +55-24-1 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
	

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Server_Select3.TGA", "invisible" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24+508 -4,461 + 132-24-1 )",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24+55+508 -4,461 + 132+55-24 -1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
	

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Server_Select3.TGA", "invisible" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP			= D3DXVECTOR2(234 - 24+509-4, 461 + 132-24-1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(234 - 24+55+509-4, 461 + 132 +55-24-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}


g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Server_Select3.TGA", "invisible" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24 - 55 - 3+506-4, 461 + 132 + 55 + 3-22-1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24 - 3+506-4, 461 + 132 +55+ 55 + 3-22-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
	

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Server_Select3.TGA", "invisible" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24+508-4, 461 + 132+ 55 + 3-22-1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24+55+508-4, 461 + 132+55 + 55 + 3-22-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
	

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Server_Select3.TGA", "invisible" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP			= D3DXVECTOR2(234 - 24+509-4,461 + 132 + 55 + 3-22-1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(234 - 24+55+509-4,461 + 132 +55 + 55 + 3-22-1)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}








-- 스킬 탈착용 안 보이는 버튼 
g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Skill_Slot_1" )
g_pButton:SetNormalTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetOverTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetDownTex( "DLG_Room_Button0.TGA", "Invisible" )

g_pButton:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24 - 55 - 3+506,461 + 132-24)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24 - 3+506,461 + 132 +55-24)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24 - 55 - 3+506,461 + 132-24)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24 - 3+506,461 + 132 +55-24)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24 - 55 - 3+506,461 + 132-24)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24 - 3+506,461 + 132 +55-24)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_1"] )
g_pButton:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_1_OVER"] )
g_pButton:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_OUT"] )




g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Skill_Slot_2" )
g_pButton:SetNormalTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetOverTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetDownTex( "DLG_Room_Button0.TGA", "Invisible" )

g_pButton:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24+508,461 + 132-24)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24+55+508,461 + 132+55)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24+508,461 + 132-24)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24+55+508,461 + 132+55-24)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24+508,461 + 132-24)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24+55+508,461 + 132+55-24)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_2"] )
g_pButton:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_2_OVER"] )
g_pButton:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_OUT"] )





g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Skill_Slot_3" )
g_pButton:SetNormalTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetOverTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetDownTex( "DLG_Room_Button0.TGA", "Invisible" )

g_pButton:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(234 - 24+509,461 + 132-24)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(234 - 24+55+509,461 + 132 +55-24)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(234 - 24+509,461 + 132-24)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(234 - 24+55+509,461 + 132 +55-24)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(234 - 24+509,461 + 132-24)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(234 - 24+55+509,461 + 132 +55-24)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_3"] )
g_pButton:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_3_OVER"] )
g_pButton:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_OUT"] )








g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Skill_Slot_4" )
g_pButton:SetNormalTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetOverTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetDownTex( "DLG_Room_Button0.TGA", "Invisible" )

g_pButton:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24 - 55 - 3+506,461 + 132 + 55 +3-22)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24 - 3+506,461 + 132 +55 + 55 + 3-22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24 - 55 - 3+506,461 + 132 + 55 +3-22)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24 - 3+506,461 + 132 +55 + 55 +3-22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24 - 55 - 3+506,461 + 132 + 55 +3-22)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24 - 3+506,461 + 132 +55 + 55 +3-22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_4"] )
g_pButton:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_4_OVER"] )
g_pButton:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_OUT"] )


g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Skill_Slot_5" )
g_pButton:SetNormalTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetOverTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetDownTex( "DLG_Room_Button0.TGA", "Invisible" )

g_pButton:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24+508,461 + 132 +55 +3-22)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24+55+508,461 + 132+55 +55 +3-22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24+508,461 + 132 +55 +3-22)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24+55+508,461 + 132+55 +55 +3-22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(175 - 24+508,461 + 132 +55 +3-22)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(175 - 24+55+508,461 + 132+55 +55 +3-22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_5"] )
g_pButton:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_5_OVER"] )
g_pButton:SetCustomMsgMouseOut(  SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_OUT"] )




g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Skill_Slot_6" )
g_pButton:SetNormalTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetOverTex( "DLG_Room_Button0.TGA", "Invisible" )
g_pButton:SetDownTex( "DLG_Room_Button0.TGA", "Invisible" )

g_pButton:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(234 - 24+509,461 + 132 +55 +3-22)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(234 - 24+55+509,461 + 132 +55 +55 +3-22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(234 - 24+509,461 + 132 +55 +3-22)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(234 - 24+55+509,461 + 132 +55 +55 +3-22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(234 - 24+509,461 + 132 +55 +3-22)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(234 - 24+55+509,461 + 132 +55 +55 +3-22)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_6"] )
g_pButton:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_6_OVER"] )
g_pButton:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_SLOT_UNEQUIP_OUT"] )




