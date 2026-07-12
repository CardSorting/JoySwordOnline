-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_MSG["STUCM_UNSEAL_SKILL_CANCLE"] )
g_pUIDialog:AddDummyInt(-10)		-- 슬롯 한가운데에서 열릴 위치의 X Offset
g_pUIDialog:AddDummyInt(-176)		-- 슬롯 한가운데에서 열릴 위치의 Y Offset


g_pStaticSkill_Purchase = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Purchase )
g_pStaticSkill_Purchase:SetName( "g_pStaticSkill_Purchase" )


g_pPicture_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Purchase:AddPicture( g_pPicture_Bg1 )
g_pPicture_Bg1:SetTex( "DLG_UI_Common_Texture09.TGA", "window_top" )

g_pPicture_Bg1:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Purchase:AddPicture( g_pPicture_Bg1 )
g_pPicture_Bg1:SetTex( "DLG_UI_Common_Texture09.TGA", "window_center" )

g_pPicture_Bg1:SetPoint
{
    ADD_SIZE_Y = 118,   
	"LEFT_TOP		= D3DXVECTOR2(0,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Purchase:AddPicture( g_pPicture_Bg1 )
g_pPicture_Bg1:SetTex( "DLG_UI_Common_Texture09.TGA", "window_bottom" )

g_pPicture_Bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Purchase:AddPicture( g_pPicture_Bg2 )
g_pPicture_Bg2:SetTex( "DLG_UI_Common_Texture09.TGA", "bg_gray_top" )

g_pPicture_Bg2:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(15,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Purchase:AddPicture( g_pPicture_Bg2 )
g_pPicture_Bg2:SetTex( "DLG_UI_Common_Texture09.TGA", "bg_gray_center" )

g_pPicture_Bg2:SetPoint
{
    ADD_SIZE_Y = 57,   
	"LEFT_TOP		= D3DXVECTOR2(15,23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Purchase:AddPicture( g_pPicture_Bg2 )
g_pPicture_Bg2:SetTex( "DLG_UI_Common_Texture09.TGA", "bg_gray_bottom" )

g_pPicture_Bg2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(15,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Purchase:AddPicture( g_pPicture_Bg3 )
g_pPicture_Bg3:SetTex( "DLG_UI_Common_Texture09.TGA", "bg_w_left" )

g_pPicture_Bg3:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(16,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Purchase:AddPicture( g_pPicture_Bg3 )
g_pPicture_Bg3:SetTex( "DLG_UI_Common_Texture09.TGA", "bg_w_center" )

g_pPicture_Bg3:SetPoint
{
    ADD_SIZE_X = 155,   
	"LEFT_TOP		= D3DXVECTOR2(28,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Purchase:AddPicture( g_pPicture_Bg3 )
g_pPicture_Bg3:SetTex( "DLG_UI_Common_Texture09.TGA", "bg_w_right" )

g_pPicture_Bg3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(185,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






----------바로구입  버튼 ------------

g_pButtonSkill_Purchase = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill_Purchase )
g_pButtonSkill_Purchase:SetName( "Skill_Purchase" )
g_pButtonSkill_Purchase:SetNormalTex( "DLG_UI_Button11.tga", "purchase_normal" )
g_pButtonSkill_Purchase:SetOverTex( "DLG_UI_Button11.tga", "purchase_over" )
g_pButtonSkill_Purchase:SetDownTex( "DLG_UI_Button11.tga", "purchase_over" )

g_pButtonSkill_Purchase:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(12,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Purchase:SetOverPoint
{

 
	"LEFT_TOP		= D3DXVECTOR2(12,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Purchase:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(12+1,90+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Purchase:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_UNSEAL_SKILL_BUY"] )


----------취소  버튼 ------------

g_pButtonCancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCancel )
g_pButtonCancel:SetName( "Plus" )
g_pButtonCancel:SetNormalTex( "DLG_UI_Button11.tga", "cancel_normal" )
g_pButtonCancel:SetOverTex( "DLG_UI_Button11.tga", "cancel_over" )
g_pButtonCancel:SetDownTex( "DLG_UI_Button11.tga", "cancel_over" )

g_pButtonCancel:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(104,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetOverPoint
{

 
	"LEFT_TOP		= D3DXVECTOR2(104,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(104+1,90+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_UNSEAL_SKILL_CANCLE"] )




-----스킬 가격----
g_pStaticPrice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPrice )
g_pStaticPrice:SetName( "StaticPrice" )

g_pStaticPrice:AddString
{
	--MSG 			= "(3500캐시)",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(60,119)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}





-----도움말----
g_pStaticNotice1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNotice1 )
g_pStaticNotice1:SetName( "StaticNotice1" )

g_pStaticNotice1:AddString
{
	--MSG 			= "선택한 스킬을 익히려면",
	MSG 			= STR_ID_2692,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(52,28)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticNotice2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNotice2 )
g_pStaticNotice2:SetName( "StaticRequireItemName" )

g_pStaticNotice2:AddString
{
	--MSG 			= "룬 블레이드 봉인 해제서",    -- 아이템 이름은 프로그램에서 써준다( X2UISkillTree::OpenSkillUnsealInformDLG 참조 )
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(104,47)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticNotice3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNotice3 )
g_pStaticNotice3:SetName( "StaticNotice3" )

g_pStaticNotice3:AddString
{
	--MSG			= "가 필요합니다."
	MSG 			= STR_ID_2693,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(70,64)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pPicture_Notice = g_pUIDialog:CreatePicture()
g_pStaticSkill_Purchase:AddPicture( g_pPicture_Notice )
g_pPicture_Notice:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_Notice:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(32,26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
