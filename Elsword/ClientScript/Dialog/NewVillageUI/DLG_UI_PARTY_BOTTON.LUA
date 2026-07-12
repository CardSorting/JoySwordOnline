-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Party_Button" )
g_pUIDialog:SetPos( 800, 180 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )

-----던전 버튼
g_pRadioButton_DUNGEON = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pRadioButton_DUNGEON )

--g_pRadioButton_DUNGEON:SetFixOverByCheck( true ) 
--g_pRadioButton_DUNGEON:SetShowOffBGByCheck( true )

g_pRadioButton_DUNGEON:SetName( "g_pRadioButton_DUNGEON" )
g_pRadioButton_DUNGEON:SetNormalTex( "DLG_UI_Button19.TGA", "DUNGEON_NORMAL" )
g_pRadioButton_DUNGEON:SetOverTex( "DLG_UI_Button19.TGA", "DUNGEON_OVER" )
g_pRadioButton_DUNGEON:SetCheckedTex( "DLG_UI_Button19.TGA", "DUNGEON_DOWN" )
g_pRadioButton_DUNGEON:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(9,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--[[
g_pRadioButton_DUNGEON:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(9,8-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_DUNGEON:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(9,8-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(8+86,8+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]
g_pRadioButton_DUNGEON:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(9,8-2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_DUNGEON:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_SELECT_DUNGEON_MENU"] )
g_pRadioButton_DUNGEON:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_SELECT_DUNGEON_MENU"] )

---------던전 대기 중
g_pButton_WaitingForDungeonMatch = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_WaitingForDungeonMatch )
g_pButton_WaitingForDungeonMatch:SetName( "DungeonMatchWaiting" )

-- g_pButton_WaitingForDungeonMatch:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_WaitingForDungeonMatch:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_WaitingForDungeonMatch:SetNormalTex( "DLG_UI_Button19.tga", "OK_NORMAL" )
g_pButton_WaitingForDungeonMatch:SetOverTex( "DLG_UI_Button19.tga", "OK_OVER" )
g_pButton_WaitingForDungeonMatch:SetDownTex( "DLG_UI_Button19.tga", "OK_OVER" )

g_pButton_WaitingForDungeonMatch:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(9,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WaitingForDungeonMatch:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(9,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WaitingForDungeonMatch:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(9,8-2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_WaitingForDungeonMatch:SetShowEnable( false, false )
--g_pButton_WaitingForDungeonMatch:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_START"] )

-------대전버튼
g_pRadioButton_PVP = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pRadioButton_PVP )

--g_pRadioButton_PVP:SetFixOverByCheck( true ) 
--g_pRadioButton_PVP:SetShowOffBGByCheck( true )

g_pRadioButton_PVP:SetName( "g_pRadioButton_CAHRGE" )
g_pRadioButton_PVP:SetNormalTex( "DLG_UI_Button19.TGA", "PVP_NORMAL" )
g_pRadioButton_PVP:SetOverTex( "DLG_UI_Button19.TGA", "PVP_OVER" )
g_pRadioButton_PVP:SetCheckedTex( "DLG_UI_Button19.TGA", "PVP_DOWN" )
g_pRadioButton_PVP:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(95,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pRadioButton_PVP:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(95-1,8-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_PVP:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(95-1-2,8-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(95+86,8+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]
g_pRadioButton_PVP:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(95+1-2,8-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_PVP:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_SELECT_PVP_MENU"] )
g_pRadioButton_PVP:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_SELECT_PVP_MENU"] )


--{{ 오현빈 // 2012-07-17 // 퀘스트 가이드 Q마크
g_pStatic_Quest = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Quest )
g_pStatic_Quest:SetName( "QuestGuide" )
g_pStatic_Quest:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture() --0 던전
g_pStatic_Quest:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.TGA", "Quset_Notice_Small" )
g_pPicture:SetPoint
{
	ADD_SIZE_X = - 10;
	ADD_SIZE_Y = - 10;
	"LEFT_TOP		= D3DXVECTOR2(0,-2)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
--}} 오현빈 // 2012-07-17 // 퀘스트 가이드 Q마크

---------던전 매치 취소
g_pButton_CancelForDungeonMatch = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_CancelForDungeonMatch )
g_pButton_CancelForDungeonMatch:SetName( "DungeonMatchCancel" )

-- g_pButton_CancelForDungeonMatch:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_CancelForDungeonMatch:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_CancelForDungeonMatch:SetNormalTex( "DLG_UI_Button19.tga", "CANCLE_NORMAL" )
g_pButton_CancelForDungeonMatch:SetOverTex( "DLG_UI_Button19.tga", "CANCLE_OVER" )
g_pButton_CancelForDungeonMatch:SetDownTex( "DLG_UI_Button19.tga", "CANCLE_OVER" )

g_pButton_CancelForDungeonMatch:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(95,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CancelForDungeonMatch:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(95,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CancelForDungeonMatch:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(95+1-2,8-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_CancelForDungeonMatch:SetShowEnable( false, false )
g_pButton_CancelForDungeonMatch:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_PARTY_MATCH_CANCEL"] )