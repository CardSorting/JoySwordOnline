-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticUser_Room = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Room )
g_pStaticUser_Room:SetName( "StaticUser_Room" )




g_pPictureUser_Room_Title = g_pUIDialog:CreatePicture()
g_pStaticUser_Room:AddPicture( g_pPictureUser_Room_Title )

g_pPictureUser_Room_Title:SetTex( "DLG_Unit_State.TGA", "Unit_Room_Title" )

g_pPictureUser_Room_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Room_Menu_Bar1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Room:AddPicture( g_pPictureUser_Room_Menu_Bar1 )

g_pPictureUser_Room_Menu_Bar1:SetTex( "DLG_Unit_State.TGA", "Unit_Room_Title_Bar1" )

g_pPictureUser_Room_Menu_Bar1:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(312,19)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(847,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Room_Menu_Bar2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Room:AddPicture( g_pPictureUser_Room_Menu_Bar2 )

g_pPictureUser_Room_Menu_Bar2:SetTex( "DLG_Unit_State.TGA", "Unit_Room_Title_Bar2" )

g_pPictureUser_Room_Menu_Bar2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(847,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pRadioButtonUnit_State_MyInfo = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_State_MyInfo )
g_pRadioButtonUnit_State_MyInfo:SetFixOverByCheck( true )
g_pRadioButtonUnit_State_MyInfo:SetShowOffBGByCheck( true )
g_pRadioButtonUnit_State_MyInfo:SetName( "RadioButtonUnit_State_MyInfo" )
g_pRadioButtonUnit_State_MyInfo:SetNormalTex( "DLG_Unit_State.TGA", "My_Info_Normal" )
g_pRadioButtonUnit_State_MyInfo:SetOverTex( "DLG_Unit_State.TGA", "My_Info_Over" )
g_pRadioButtonUnit_State_MyInfo:SetCheckedTex( "DLG_Unit_State.TGA", "My_Info_Down" )


g_pRadioButtonUnit_State_MyInfo:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(323,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_MyInfo:SetBGMouseOverPoint
{
	ADD_SIZE_X = 7,
    ADD_SIZE_Y = 7,

	"LEFT_TOP		= D3DXVECTOR2(323 - 4,25 - 4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_MyInfo:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(323,24)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(401,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_MyInfo:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(321,21)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_MyInfo:SetGroupID( 1 )
g_pRadioButtonUnit_State_MyInfo:SetChecked( true )
g_pRadioButtonUnit_State_MyInfo:SetCustomMsgChecked( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_MY_STATE"] )




g_pRadioButtonUnit_State_Inventory = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_State_Inventory )
g_pRadioButtonUnit_State_Inventory:SetFixOverByCheck( true )
g_pRadioButtonUnit_State_Inventory:SetShowOffBGByCheck( true )
g_pRadioButtonUnit_State_Inventory:SetName( "RadioButtonUnit_State_Inventory" )
g_pRadioButtonUnit_State_Inventory:SetNormalTex( "DLG_Unit_State.TGA", "Inventory_Normal" )
g_pRadioButtonUnit_State_Inventory:SetOverTex( "DLG_Unit_State.TGA", "Inventory_Over" )
g_pRadioButtonUnit_State_Inventory:SetCheckedTex( "DLG_Unit_State.TGA", "Inventory_Down" )


g_pRadioButtonUnit_State_Inventory:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(437,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Inventory:SetBGMouseOverPoint
{
	ADD_SIZE_X = 7,
    ADD_SIZE_Y = 7,

	"LEFT_TOP		= D3DXVECTOR2(437 - 4,25 - 4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Inventory:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(437,25)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(545,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Inventory:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(425,21)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Inventory:SetGroupID( 1 )
g_pRadioButtonUnit_State_Inventory:SetCustomMsgChecked( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_INVENTORY"] )








g_pRadioButtonUnit_State_Skill_Tree = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_State_Skill_Tree )
g_pRadioButtonUnit_State_Skill_Tree:SetFixOverByCheck( true )
g_pRadioButtonUnit_State_Skill_Tree:SetShowOffBGByCheck( true )
g_pRadioButtonUnit_State_Skill_Tree:SetName( "RadioButtonUnit_State_Skill_Tree" )
g_pRadioButtonUnit_State_Skill_Tree:SetNormalTex( "DLG_Unit_State.TGA", "Skill_Tree_Normal" )
g_pRadioButtonUnit_State_Skill_Tree:SetOverTex( "DLG_Unit_State.TGA", "Skill_Tree_Over" )
g_pRadioButtonUnit_State_Skill_Tree:SetCheckedTex( "DLG_Unit_State.TGA", "Skill_Tree_Down" )


g_pRadioButtonUnit_State_Skill_Tree:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(574,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Skill_Tree:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(574,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Skill_Tree:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(574,25)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(678,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Skill_Tree:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(569,20)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Skill_Tree:SetGroupID( 1 )
g_pRadioButtonUnit_State_Skill_Tree:SetCustomMsgChecked( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_SKILL_TREE"] )




g_pRadioButtonUnit_State_Quest = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_State_Quest )
g_pRadioButtonUnit_State_Quest:SetFixOverByCheck( true )
g_pRadioButtonUnit_State_Quest:SetShowOffBGByCheck( true )
g_pRadioButtonUnit_State_Quest:SetName( "RadioButtonUnit_State_Quest" )
g_pRadioButtonUnit_State_Quest:SetNormalTex( "DLG_Unit_State.TGA", "Quest_Normal" )
g_pRadioButtonUnit_State_Quest:SetOverTex( "DLG_Unit_State.TGA", "Quest_Over" )
g_pRadioButtonUnit_State_Quest:SetCheckedTex( "DLG_Unit_State.TGA", "Quest_Down" )


g_pRadioButtonUnit_State_Quest:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(708,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Quest:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(708,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Quest:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(708,25)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(784,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Quest:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(706,22)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Quest:SetGroupID( 1 )
g_pRadioButtonUnit_State_Quest:SetCustomMsgChecked( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_QUEST"] )




g_pRadioButtonUnit_State_Store = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonUnit_State_Store )
g_pRadioButtonUnit_State_Store:SetEnable( false )
g_pRadioButtonUnit_State_Store:SetFixOverByCheck( true )
g_pRadioButtonUnit_State_Store:SetShowOffBGByCheck( true )
g_pRadioButtonUnit_State_Store:SetName( "Store" )
g_pRadioButtonUnit_State_Store:SetNormalTex( "DLG_Unit_State.TGA", "Store_Normal" )
g_pRadioButtonUnit_State_Store:SetOverTex( "DLG_Unit_State.TGA", "Store_Over" )
g_pRadioButtonUnit_State_Store:SetCheckedTex( "DLG_Unit_State.TGA", "Store_Down" )
g_pRadioButtonUnit_State_Store:SetEnable(false)				-- 클베 1차
g_pRadioButtonUnit_State_Store:SetShow(false)				-- 클베 1차


g_pRadioButtonUnit_State_Store:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(813,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Store:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(813,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Store:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(813,25)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(868,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Store:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(810,22)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonUnit_State_Store:SetGroupID( 1 )
