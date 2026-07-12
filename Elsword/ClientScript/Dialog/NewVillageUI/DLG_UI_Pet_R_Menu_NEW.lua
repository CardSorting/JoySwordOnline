-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )
g_pUIDialog:SetCloseCustomUIEventID( USER_MENU_UI_MSG["UMUI_EXIT"] )

--------------- Static 
g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "PetPopUp" )

--BAR
g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 0 )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 1 )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 1 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 2 )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 2 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 3 )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 3 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 4 )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 4 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

--------------- 펫 아이콘
g_pStaticFaceImage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFaceImage )
g_pStaticFaceImage:SetName( "Pet_image" )

g_pPicture_elsword = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicture_elsword )
g_pPicture_elsword:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "ELSWORD_ICON" )
g_pPicture_elsword:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 11, 12 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

--------------- 펫이름
Static_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( Static_name )
Static_name:SetName( "pet_name" )

Static_name:AddString
{
	--MSG	 			= "펫이름",
	FONT_INDEX	= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(34,15)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-------------- 펫이름 밑 가로 바
--[[g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticone :AddPicture( g_pPicturebar )
g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicturebar:SetPoint
{
	ADD_SIZE_X = 151,
	"LEFT_TOP		= D3DXVECTOR2(6,34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--]]
------------------------- 우클릭 메뉴 전체
--------------- 소환 해제
--[[g_pButton_Pat_R_Cancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_R_Cancel )
g_pButton_Pat_R_Cancel:SetName( "Pat_R_Cancel" )
g_pButton_Pat_R_Cancel:SetNormalTex( "DLG_UI_BUTTON16.tga", "PAT_R_CANCEL_NORMAL" )
g_pButton_Pat_R_Cancel:SetOverTex( "DLG_UI_BUTTON16.tga", "PAT_R_CANCEL_OVER" )
g_pButton_Pat_R_Cancel:SetDownTex( "DLG_UI_BUTTON16.tga", "PAT_R_CANCEL_OVER" )
g_pButton_Pat_R_Cancel:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 60, 47 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Cancel:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 13, 42 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Cancel:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2( 13+1, 42+1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Cancel:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_SUMMON_CANCEL"] )
 
 --------------- 기본 정보
g_pButton_Pat_R_Basic_Infor = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_R_Basic_Infor )
g_pButton_Pat_R_Basic_Infor:SetName( "Pat_R_Basic_Infor" )
g_pButton_Pat_R_Basic_Infor:SetNormalTex( "DLG_UI_BUTTON16.tga", "PAT_R_BASIC_INFOR_NORMAL" )
g_pButton_Pat_R_Basic_Infor:SetOverTex( "DLG_UI_BUTTON16.tga", "PAT_R_BASIC_INFOR_OVER" )
g_pButton_Pat_R_Basic_Infor:SetDownTex( "DLG_UI_BUTTON16.tga", "PAT_R_BASIC_INFOR_OVER" )
g_pButton_Pat_R_Basic_Infor:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 60, 67 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Basic_Infor:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 13, 62 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Basic_Infor:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2( 13+1, 62+1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Basic_Infor:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_BASIC_INFO"] )
 
--------------- 성향
g_pButton_Pat_R_Propensity = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_R_Propensity )
g_pButton_Pat_R_Propensity:SetName( "Pat_R_Propensity" )
g_pButton_Pat_R_Propensity:SetNormalTex( "DLG_UI_BUTTON16.tga", "PAT_R_PROPENSITY_NORMAL" )
g_pButton_Pat_R_Propensity:SetOverTex( "DLG_UI_BUTTON16.tga", "PAT_R_PROPENSITY_OVER" )
g_pButton_Pat_R_Propensity:SetDownTex( "DLG_UI_BUTTON16.tga", "PAT_R_PROPENSITY_OVER" )
g_pButton_Pat_R_Propensity:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 72, 87 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Propensity:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 13, 82 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Propensity:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2( 13+1, 82+1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Propensity:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_DETAIL"] )
 
--------------- 펫 소지품
g_pButton_Pat_R_Things = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_R_Things )
g_pButton_Pat_R_Things:SetName( "Pat_R_Things" )
g_pButton_Pat_R_Things:SetNormalTex( "DLG_UI_BUTTON16.tga", "PAT_R_THINGS_NORMAL" )
g_pButton_Pat_R_Things:SetOverTex( "DLG_UI_BUTTON16.tga", "PAT_R_THINGS_OVER" )
g_pButton_Pat_R_Things:SetDownTex( "DLG_UI_BUTTON16.tga", "PAT_R_THINGS_OVER" )
g_pButton_Pat_R_Things:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(60,107)",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Things:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(13,102)",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Things:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2( 13+1, 102+1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Things:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_INVEN"] )
 
--------------- 먹이주기
g_pButton_Pat_R_Food_Give = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_R_Food_Give )
g_pButton_Pat_R_Food_Give:SetName( "Pat_R_Food_Give" )
g_pButton_Pat_R_Food_Give:SetNormalTex( "DLG_UI_BUTTON16.tga", "PAT_R_FOOD_GIVE_NORMAL" )
g_pButton_Pat_R_Food_Give:SetOverTex( "DLG_UI_BUTTON16.tga", "PAT_R_FOOD_GIVE_OVER" )
g_pButton_Pat_R_Food_Give:SetDownTex( "DLG_UI_BUTTON16.tga", "PAT_R_FOOD_GIVE_OVER" )
g_pButton_Pat_R_Food_Give:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 60, 127 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Food_Give:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 13, 122 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Food_Give:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2( 13+1, 122+1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Food_Give:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["FCUM_FOOD"] )
--]]

--------------- 버튼 글씨
g_pStaticText = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticText )
g_pStaticText:SetName( "PetPopUpGage" )
g_pStaticText:SetShowEnable( false, false )

-----먹이주기
g_pStaticText:AddString
{ 
    --MSG 				= "먹이주기",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticText:AddString
{ 
    --MSG 				= "기본정보",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 + 21 * 1 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticText:AddString
{ 
    --MSG 				= "성향",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 + 21 * 2 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR	= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticText:AddString
{ 
    --MSG 				= "펫소지품",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 + 21 * 3 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticText:AddString
{ 
    --MSG 				= "소환해제",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 + 21 * 4 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

--------------- 먹이주기
g_pButton_Pet_R_Feeding = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_R_Feeding )
g_pButton_Pet_R_Feeding:SetName( "Pet_R_Feeding" )
g_pButton_Pet_R_Feeding:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Feeding:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Feeding:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Feeding:SetShowEnable( false, false )
g_pButton_Pet_R_Feeding:SetNormalPoint
{
	ADD_SIZE_X	= 30,
	"LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Feeding:SetOverPoint
{
	ADD_SIZE_X	= 30,
	"LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Feeding:SetDownPoint
{
     ADD_SIZE_X 	= 28,
     ADD_SIZE_Y 	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Feeding:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["FCUM_FOOD"] )

--------------- 기본 정보
g_pButton_Pet_R_Basic_Info = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_R_Basic_Info )
g_pButton_Pet_R_Basic_Info:SetName( "Pet_R_Basic_Info" )
g_pButton_Pet_R_Basic_Info:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Basic_Info:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Basic_Info:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Basic_Info:SetShowEnable( false, false )
g_pButton_Pet_R_Basic_Info:SetNormalPoint
{
	ADD_SIZE_X	= 30,
	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Basic_Info:SetOverPoint
{
	ADD_SIZE_X	= 30,
	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Basic_Info:SetDownPoint
{
     ADD_SIZE_X	= 28,
     ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0,  37 + 21 * 1  + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Basic_Info:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_BASIC_INFO"] )

--------------- 성향
g_pButton_Pet_R_Propensity = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_R_Propensity )
g_pButton_Pet_R_Propensity:SetName( "Pet_R_Propensity" )
g_pButton_Pet_R_Propensity:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Propensity:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Propensity:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Propensity:SetShowEnable( false, false )
g_pButton_Pet_R_Propensity:SetNormalPoint
{
	ADD_SIZE_X	= 30,
	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 2  )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Propensity:SetOverPoint
{
	ADD_SIZE_X	= 30,
	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 2 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Propensity:SetDownPoint
{
     ADD_SIZE_X	= 28,
     ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 2 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Propensity:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_DETAIL"] )

--------------- 펫소지품
g_pButton_Pet_R_Inven = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_R_Inven )
g_pButton_Pet_R_Inven:SetName( "Pet_R_Inven" )
g_pButton_Pet_R_Inven:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Inven:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Inven:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Inven:SetShowEnable( false, false )
g_pButton_Pet_R_Inven:SetNormalPoint
{
	ADD_SIZE_X	= 30,
	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 3 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Inven:SetOverPoint
{
	ADD_SIZE_X	= 30,
	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 3 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Inven:SetDownPoint
{
     ADD_SIZE_X	= 28,
     ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 3 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Inven:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_INVEN"] )

--------------- 소환 해제
g_pButton_Pet_R_Dissmiss = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_R_Dissmiss )
g_pButton_Pet_R_Dissmiss:SetName( "Pet_R_Dissmiss" )
g_pButton_Pet_R_Dissmiss:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Dissmiss:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Dissmiss:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButton_Pet_R_Dissmiss:SetShowEnable( false, false )
g_pButton_Pet_R_Dissmiss:SetNormalPoint
{
	ADD_SIZE_X	= 30,
	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 4 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Dissmiss:SetOverPoint
{
	ADD_SIZE_X	= 30,
	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 4 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Dissmiss:SetDownPoint
{
     ADD_SIZE_X	= 28,
     ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 21 * 4 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButton_Pet_R_Dissmiss:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_SUMMON_CANCEL"] )