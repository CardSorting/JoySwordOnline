-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Party_Button" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )


-----던전 버튼
g_pCheckBox_DUNGEON = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pCheckBox_DUNGEON )

--g_pCheckBox_DUNGEON:SetFixOverByCheck( true ) 
--g_pCheckBox_DUNGEON:SetShowOffBGByCheck( true )

g_pCheckBox_DUNGEON:SetName( "g_pCheckBox_DUNGEON" )
g_pCheckBox_DUNGEON:SetNormalTex( "DLG_UI_Button19_NEW.TGA", "DUNGEON_NORMAL" )
g_pCheckBox_DUNGEON:SetOverTex( "DLG_UI_Button19_NEW.TGA", "DUNGEON_OVER" )
g_pCheckBox_DUNGEON:SetDisableTex( "DLG_UI_Button20.TGA", "DUNGEON_INACTIVITY" )
g_pCheckBox_DUNGEON:SetCheckedTex( "DLG_UI_Button19_NEW.TGA", "DUNGEON_DOWN" )
g_pCheckBox_DUNGEON:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_DUNGEON:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(794,95)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_DUNGEON:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_SELECT_DUNGEON_MENU"] )
g_pCheckBox_DUNGEON:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_SELECT_DUNGEON_MENU"] )


---------던전 대기 중
g_pButton_WaitingForDungeonMatch = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_WaitingForDungeonMatch )
g_pButton_WaitingForDungeonMatch:SetName( "DungeonMatchWaiting" )

-- g_pButton_WaitingForDungeonMatch:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_WaitingForDungeonMatch:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_WaitingForDungeonMatch:SetNormalTex( "DLG_UI_Button19_NEW.tga", "DUNGEON_STAY" )
g_pButton_WaitingForDungeonMatch:SetOverTex( "DLG_UI_Button19_NEW.tga", "DUNGEON_STAY" )
g_pButton_WaitingForDungeonMatch:SetDownTex( "DLG_UI_Button19_NEW.tga", "DUNGEON_STAY" )

g_pButton_WaitingForDungeonMatch:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(794,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WaitingForDungeonMatch:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(794,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WaitingForDungeonMatch:SetDownPoint
{
	
 	"LEFT_TOP		= D3DXVECTOR2(794,96)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_WaitingForDungeonMatch:SetShowEnable( false , false )
--g_pButton_WaitingForDungeonMatch:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_START"] )




---------던전 매치 취소
g_pButton_CancelForDungeonMatch = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_CancelForDungeonMatch )
g_pButton_CancelForDungeonMatch:SetName( "DungeonMatchCancel" )

--g_pButton_CancelForDungeonMatch:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
--g_pButton_CancelForDungeonMatch:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_CancelForDungeonMatch:SetNormalTex( "DLG_UI_Button19_NEW.tga", "STAY_CANCEL" )
g_pButton_CancelForDungeonMatch:SetOverTex( "DLG_UI_Button19_NEW.tga", "STAY_CANCEL_OVER" )
g_pButton_CancelForDungeonMatch:SetDownTex( "DLG_UI_Button19_NEW.tga", "STAY_CANCEL_OVER" )

g_pButton_CancelForDungeonMatch:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(907,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CancelForDungeonMatch:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(907,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CancelForDungeonMatch:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(907,96)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_CancelForDungeonMatch:SetShowEnable( false , false )
g_pButton_CancelForDungeonMatch:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_PARTY_MATCH_CANCEL"] )


-------대전버튼
g_pCheckBox_PVP = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pCheckBox_PVP )

--g_pCheckBox_PVP:SetFixOverByCheck( true ) 
--g_pCheckBox_PVP:SetShowOffBGByCheck( true )

g_pCheckBox_PVP:SetName( "g_pCheckBox_PVP" )
g_pCheckBox_PVP:SetNormalTex( "DLG_UI_Button19_NEW.TGA", "PVP_NORMAL" )
g_pCheckBox_PVP:SetOverTex( "DLG_UI_Button19_NEW.TGA", "PVP_OVER" )
g_pCheckBox_PVP:SetDisableTex( "DLG_UI_Button20.TGA", "PVP_INACTIVITY" )
g_pCheckBox_PVP:SetCheckedTex( "DLG_UI_Button19_NEW.TGA", "PVP_DOWN" )
g_pCheckBox_PVP:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(907,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_PVP:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(907,96)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBox_PVP:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_SELECT_PVP_MENU"] )
g_pCheckBox_PVP:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_SELECT_PVP_MENU"] )


---------대전 대기 중
g_pButton_WaitingForPvpMatch = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_WaitingForPvpMatch )
g_pButton_WaitingForPvpMatch:SetName( "PvpMatchWaiting" )

-- g_pButton_WaitingForPvpMatch:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_WaitingForPvpMatch:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_WaitingForPvpMatch:SetNormalTex( "DLG_UI_Button19_NEW.tga", "PVP_STAY" )
g_pButton_WaitingForPvpMatch:SetOverTex( "DLG_UI_Button19_NEW.tga", "PVP_STAY" )
g_pButton_WaitingForPvpMatch:SetDownTex( "DLG_UI_Button19_NEW.tga", "PVP_STAY" )

g_pButton_WaitingForPvpMatch:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(907,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WaitingForPvpMatch:SetOverPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(907,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WaitingForPvpMatch:SetDownPoint
{
	"LEFT_TOP		= D3DXVECTOR2(907,96)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_WaitingForPvpMatch:SetShowEnable( false , false )

---------대전 매치 취소
g_pButton_CancelForPvpMatch = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_CancelForPvpMatch )
g_pButton_CancelForPvpMatch:SetName( "PvpMatchCancel" )

-- g_pButton_CancelForPvpMatch:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_CancelForPvpMatch:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_CancelForPvpMatch:SetNormalTex( "DLG_UI_Button19_NEW.tga", "STAY_CANCEL" )
g_pButton_CancelForPvpMatch:SetOverTex( "DLG_UI_Button19_NEW.tga", "STAY_CANCEL_OVER" )
g_pButton_CancelForPvpMatch:SetDownTex( "DLG_UI_Button19_NEW.tga", "STAY_CANCEL_OVER" )

g_pButton_CancelForPvpMatch:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(794,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CancelForPvpMatch:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(794,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CancelForPvpMatch:SetDownPoint
{
	"LEFT_TOP		= D3DXVECTOR2(794,96)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_CancelForPvpMatch:SetShowEnable( false , false )
g_pButton_CancelForPvpMatch:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_CANCEL_MATCH"] )


--------STATIC
g_pStatic_DUNGEON_STAY = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_DUNGEON_STAY )
g_pStatic_DUNGEON_STAY:SetName( "DUNGEON_STAY" )


--------던전 대기 안내_BG
g_pPicture_DUNGEON_STAY_BG = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON_STAY:AddPicture( g_pPicture_DUNGEON_STAY_BG )
g_pPicture_DUNGEON_STAY_BG:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "DUNGEON_STAY" )
g_pPicture_DUNGEON_STAY_BG:SetPoint
{
 	ADD_SIZE_X = 31,
	ADD_SIZE_Y = 8,   
	"LEFT_TOP		= D3DXVECTOR2(821-24,51-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStatic_DUNGEON_STAY:AddString
{ 
    MSG 			= "2분 미만  /",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_HVCENTER"],
	"POS 			= D3DXVECTOR2(834+35,58+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}
g_pStatic_DUNGEON_STAY:AddString
{ 
    MSG 			= "00 : 00 : 00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(987-14,58)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}

g_pStatic_DUNGEON_STAY:AddString
{ 
    MSG 			= "모집 현황 /",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(833-24,58+17+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}
g_pStatic_DUNGEON_STAY:AddString
{ 
    MSG 			= "2 / 6",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(958+5,58+17+2)",
	"COLOR			= D3DXCOLOR(0.9,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}
g_pStatic_DUNGEON_STAY:SetShow( false )


--------STATIC
g_pStatic_PVP_STAY = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_PVP_STAY )
g_pStatic_PVP_STAY:SetName( "PVP_STAY" )

--------대전 대기 안내_BG
g_pPicture_PVP_STAY_BG = g_pUIDialog:CreatePicture()
g_pStatic_PVP_STAY:AddPicture( g_pPicture_PVP_STAY_BG )
g_pPicture_PVP_STAY_BG:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "PVP_STAY" )
g_pPicture_PVP_STAY_BG:SetPoint
{
   	ADD_SIZE_X = 31,
	ADD_SIZE_Y = 8, 
	"LEFT_TOP		= D3DXVECTOR2(821-24,51-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStatic_PVP_STAY:AddString
{ 
    MSG 			= "2분 미만  /",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_HVCENTER"],
	"POS 			= D3DXVECTOR2(834+35,58+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}
g_pStatic_PVP_STAY:AddString
{ 
    MSG 			= "00 : 00 : 00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(987-14,58)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}

g_pStatic_PVP_STAY:AddString
{ 
    MSG 			= "모집 현황 /",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(833-24,58+17+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}
g_pStatic_PVP_STAY:AddString
{ 
    MSG 			= "2 / 6",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(958+5,58+17+2)",
	"COLOR			= D3DXCOLOR(0.9,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}
g_pStatic_PVP_STAY:SetShow( false )

--{{ 오현빈 // 2012-07-17 // 퀘스트 가이드 Q마크
g_pStatic_Quest = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Quest )
g_pStatic_Quest:SetName( "ButtonQuestGuide" )
g_pStatic_Quest:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture() --0 던전
g_pStatic_Quest:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.TGA", "Quset_Notice_Small" )
g_pPicture:SetPoint
{
	ADD_SIZE_X = - 10;
	ADD_SIZE_Y = - 10;
	"LEFT_TOP		= D3DXVECTOR2(788,90)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
--}} 오현빈 // 2012-07-17 // 퀘스트 가이드 Q마크