-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- #ifdef SERV_UNIT_WAIT_DELETE

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

---------------------- 최종 삭제 버튼

-------------------------------캐릭터 삭제 대기 문구

g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "StaticUnitSelectDeleteInfo" )
g_pStatic_name1:SetShow(false)

g_pStatic_name1:AddString
{
	--MSG 			= STR_ID_16109,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pPictureSkill_BG01 = g_pUIDialog:CreatePicture()
g_pStatic_name1:AddPicture( g_pPictureSkill_BG01 )

g_pPictureSkill_BG01:SetTex( "DLG_UI_Common_Texture06_A.tga", "Black_BG_Top" )

g_pPictureSkill_BG01:SetPoint
{
   --ADD_SIZE_X = 367,
   ADD_SIZE_X = -90,
	"LEFT_TOP		= D3DXVECTOR2(5,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_BG02 = g_pUIDialog:CreatePicture()
g_pStatic_name1:AddPicture( g_pPictureSkill_BG02 )

g_pPictureSkill_BG02:SetTex( "DLG_UI_Common_Texture06_A.tga", "Black_BG_Middle" )

g_pPictureSkill_BG02:SetPoint
{
   --ADD_SIZE_X = 367,
   ADD_SIZE_X = -90,
   ADD_SIZE_Y = 264,
	"LEFT_TOP		= D3DXVECTOR2(5,0+14+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSkill_BG03 = g_pUIDialog:CreatePicture()
g_pStatic_name1:AddPicture( g_pPictureSkill_BG03 )

g_pPictureSkill_BG03:SetTex( "DLG_UI_Common_Texture06_A.tga", "Black_BG_Bottom" )

g_pPictureSkill_BG03:SetPoint
{
   --ADD_SIZE_X = 367,
   ADD_SIZE_X = -90,
	"LEFT_TOP		= D3DXVECTOR2(5,290-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "StaticUnitSelectDeleteInfoName" )
g_pStatic_name1:SetShow(false)
g_pStatic_name1:AddString
{
	--MSG 			= STR_ID_16109,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(80,275)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



----------------------------------------------------------------------------------------------------------

g_pButtonFinalDelete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonFinalDelete )
g_pButtonFinalDelete:SetName( "final_delete_unit" )
g_pButtonFinalDelete:SetNormalTex( "DLG_UI_New_Delete_Unit.tga", "DELETE_NORMAL" )

g_pButtonFinalDelete:SetOverTex( "DLG_UI_New_Delete_Unit.tga", "DELETE_OVER" )

g_pButtonFinalDelete:SetDownTex( "DLG_UI_New_Delete_Unit.tga", "DELETE_DOWN" )
g_pButtonFinalDelete:SetDisableTex( "DLG_UI_New_Delete_Unit.TGA", "DELETE_GREY_NORMAL" )

g_pButtonFinalDelete:SetNormalPoint
{
	
    --"LEFT_TOP		= D3DXVECTOR2(150,200)",
	"LEFT_TOP		= D3DXVECTOR2(25,240-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFinalDelete:SetOverPoint
{

	--"LEFT_TOP		= D3DXVECTOR2(150-3,200-3)",
	"LEFT_TOP		= D3DXVECTOR2(25-3,240-3-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFinalDelete:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	--"LEFT_TOP		= D3DXVECTOR2(150,200)",
	"LEFT_TOP		= D3DXVECTOR2(25,240-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFinalDelete:SetDisablePoint
{
	
    --"LEFT_TOP		= D3DXVECTOR2(150,200)",
	"LEFT_TOP		= D3DXVECTOR2(25,240-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFinalDelete:SetShow(false)
g_pButtonFinalDelete:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_FINAL_DELETE_UNIT"] )
--g_pButtonFinalDelete:SetCustomMsgMouseOver( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_UNIT_BUTTON_OVER"] )
--g_pButtonFinalDelete:SetCustomMsgMouseDblClk( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_UNIT_BUTTON_UP"] )



---------------------- 복구 버튼


g_pButtonRestore = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRestore )
g_pButtonRestore:SetName( "restore_unit" )
g_pButtonRestore:SetNormalTex( "DLG_UI_New_Delete_Unit.tga", "RESTORE_NORMAL" )

g_pButtonRestore:SetOverTex( "DLG_UI_New_Delete_Unit.tga", "RESTORE_OVER" )

g_pButtonRestore:SetDownTex( "DLG_UI_New_Delete_Unit.tga", "RESTORE_DOWN" )

g_pButtonRestore:SetNormalPoint
{
	
    --"LEFT_TOP		= D3DXVECTOR2(65,200+1)",
	"LEFT_TOP		= D3DXVECTOR2(25+87,240+1-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRestore:SetOverPoint
{

	--"LEFT_TOP		= D3DXVECTOR2(65-4,200-3)",
	"LEFT_TOP		= D3DXVECTOR2(25+87-4,240-3-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRestore:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	--"LEFT_TOP		= D3DXVECTOR2(65-5+3,200-4+3)",
	"LEFT_TOP		= D3DXVECTOR2(25+87-5+3,240-4+3-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRestore:SetShow(false)
g_pButtonRestore:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_RESTORE_UNIT"] )
--g_pButtonRestore:SetCustomMsgMouseOver( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_UNIT_BUTTON_OVER"] )
--g_pButtonRestore:SetCustomMsgMouseDblClk( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_UNIT_BUTTON_UP"] )



--[[
--------------------------------캐릭터 삭제 배경
g_pPicture_RedBG = g_pUIDialog:CreatePicture()
g_pStatic_name1:AddPicture( g_pPicture_RedBG )
g_pPicture_RedBG:SetTex( "DLG_UI_New_Delete_Unit.TGA", "RED_BG" )

g_pPicture_RedBG:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,125)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

-- #endif SERV_UNIT_WAIT_DELETE