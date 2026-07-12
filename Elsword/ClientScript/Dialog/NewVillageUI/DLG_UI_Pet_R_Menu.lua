-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )
--g_pUIDialog:SetCloseCustomUIEventID( USER_MENU_UI_MSG["UMUI_EXIT"] )

--------------- Static 
g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "PetPopUp" )



--------------- BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_middle" )
g_pPicture_bg:SetIndex(1)
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 105,
	"LEFT_TOP		= D3DXVECTOR2(0,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_bottom" )
g_pPicture_bg:SetIndex(2)
g_pPicture_bg:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0,150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------- BG2

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_middle" )
g_pPicture_bg2:SetIndex(3)
g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 100,
	"LEFT_TOP		= D3DXVECTOR2(10,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_bottom" )
g_pPicture_bg2:SetIndex(4)
g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------- 펫 아이콘


g_pStaticFaceImage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFaceImage )
g_pStaticFaceImage:SetName( "Pet_image" )


g_pPicture_elsword = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicture_elsword )

g_pPicture_elsword:SetTex( "DLG_UI_Common_Texture02.TGA", "elsword_base" )

g_pPicture_elsword:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------- 펫이름

Static_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( Static_name )
Static_name:SetName( "pet_name" )

Static_name:AddString
{
	MSG 			= "펫이름",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(34,15)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
	


	
-------------- 펫이름 밑 가로 바
g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticone :AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 151,
	"LEFT_TOP		= D3DXVECTOR2(6,34)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





------------------------- 우클릭 메뉴 전체
--------------- 소환 해제

g_pButton_Pat_R_Cancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_R_Cancel )
g_pButton_Pat_R_Cancel:SetName( "Pat_R_Cancel" )

g_pButton_Pat_R_Cancel:SetNormalTex( "DLG_UI_BUTTON16.tga", "PAT_R_CANCEL_NORMAL" )
g_pButton_Pat_R_Cancel:SetOverTex( "DLG_UI_BUTTON16.tga", "PAT_R_CANCEL_OVER" )
g_pButton_Pat_R_Cancel:SetDownTex( "DLG_UI_BUTTON16.tga", "PAT_R_CANCEL_OVER" )

g_pButton_Pat_R_Cancel:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Cancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Cancel:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
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
	
    "LEFT_TOP		= D3DXVECTOR2(60,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Basic_Infor:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Basic_Infor:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,62+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
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
	
    "LEFT_TOP		= D3DXVECTOR2(72,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Propensity:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Propensity:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,82+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
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
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Things:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Things:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,102+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
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
	
    "LEFT_TOP		= D3DXVECTOR2(60,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Food_Give:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Food_Give:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,122+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Food_Give:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["FCUM_FOOD"] )



--------------- 먹이주기 (펫 소지품이 없을 때 올라간 위치)

g_pButton_Pat_R_Food_Give2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_R_Food_Give2 )
g_pButton_Pat_R_Food_Give2:SetName( "Pat_R_Food_Give2" )

g_pButton_Pat_R_Food_Give2:SetNormalTex( "DLG_UI_BUTTON16.tga", "PAT_R_FOOD_GIVE_NORMAL" )
g_pButton_Pat_R_Food_Give2:SetOverTex( "DLG_UI_BUTTON16.tga", "PAT_R_FOOD_GIVE_OVER" )
g_pButton_Pat_R_Food_Give2:SetDownTex( "DLG_UI_BUTTON16.tga", "PAT_R_FOOD_GIVE_OVER" )

g_pButton_Pat_R_Food_Give2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60,107)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Food_Give2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Food_Give2:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,102+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_R_Food_Give2:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["FCUM_FOOD"] )
g_pButton_Pat_R_Food_Give2:SetShowEnable(false, false)

