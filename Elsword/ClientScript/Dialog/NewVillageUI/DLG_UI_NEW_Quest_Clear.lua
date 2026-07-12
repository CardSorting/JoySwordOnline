-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticclear = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticclear )
g_pStaticclear:SetName( "g_pStaticclear" )

g_pUIDialog:SetPos( 100,100 )

g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

-----------bg1
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture08.TGA", "quest_clear_bg1_top" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture08.TGA", "quest_clear_bg1_middle" )

g_pPicture_bg1:SetPoint
{
     ADD_SIZE_Y = 360 ,
	"LEFT_TOP		= D3DXVECTOR2(0,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_bg1)

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture08.TGA", "quest_clear_bg1_bottom" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,374)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----------bg2

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "quest_clear_bg2_top" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "quest_clear_bg2_middle" )

g_pPicture_bg2:SetPoint
{
     ADD_SIZE_Y = 243 ,
	"LEFT_TOP		= D3DXVECTOR2(14,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture08.TGA", "quest_clear_bg2_bottom" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,323)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-----------bg3

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture08.TGA", "quest_clear_bg3_top" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture08.TGA", "quest_clear_bg3_middle" )

g_pPicture_bg3:SetPoint
{
     ADD_SIZE_Y = 236 ,
	"LEFT_TOP		= D3DXVECTOR2(18,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture08.TGA", "quest_clear_bg3_bottom" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------------TITLE


g_pPicture_title1 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_title1 )

g_pPicture_title1:SetTex( "DLG_Common_New_Texture45.TGA", "quest_complete" )

g_pPicture_title1:SetPoint
{
    ADD_SIZE_X = -85,
	ADD_SIZE_Y =  -35,
	"LEFT_TOP		= D3DXVECTOR2(-7,-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








-------------------------  bar


g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 216,
	"LEFT_TOP		= D3DXVECTOR2(22,110)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 216,
	"LEFT_TOP		= D3DXVECTOR2(22,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 216,
	"LEFT_TOP		= D3DXVECTOR2(22,182)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 216,
	"LEFT_TOP		= D3DXVECTOR2(22,243)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------------------------------  ED


g_pPicture_edbox = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_edbox )

g_pPicture_edbox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_edbox:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_edbox = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_edbox )

g_pPicture_edbox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_edbox:SetPoint
{
     ADD_SIZE_X = 197,
	"LEFT_TOP		= D3DXVECTOR2(31,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_edbox = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_edbox )

g_pPicture_edbox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_edbox:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(229,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_icon1 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_icon1 )

g_pPicture_icon1:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )

g_pPicture_icon1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,86)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_ed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ed )
g_pStatic_ed:SetName( "Static_ED" )

g_pStatic_ed:AddString
{
	-- MSG 			= "9,000,000,000",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["2002L_KOG"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(213,86)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  




---------------exp




g_pPicture_exp = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_exp )

g_pPicture_exp:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_exp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_exp = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_exp )

g_pPicture_exp:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_exp:SetPoint
{
     ADD_SIZE_X = 197,
	"LEFT_TOP		= D3DXVECTOR2(31,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_exp = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_exp )

g_pPicture_exp:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_exp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(229,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_icon2 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_icon2 )

g_pPicture_icon2:SetTex( "DLG_UI_Common_Texture02.TGA", "exp" )

g_pPicture_icon2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_ed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ed )
g_pStatic_ed:SetName( "Static_Exp" )

g_pStatic_ed:AddString
{
	-- MSG 			= "9,000,000,000",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["2002L_KOG"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(213,120)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  


-------------------------VP




g_pPicture_vp = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_vp )

g_pPicture_vp:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_vp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_vp = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_vp )

g_pPicture_vp:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_vp:SetPoint
{
     ADD_SIZE_X = 197,
	"LEFT_TOP		= D3DXVECTOR2(31,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_vp = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_vp )

g_pPicture_vp:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_vp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(229,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_icon3 = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_icon3 )

g_pPicture_icon3:SetTex( "DLG_UI_Common_Texture02.TGA", "vp" )

g_pPicture_icon3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,157)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_ed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ed )
g_pStatic_ed:SetName( "Static_SP" )

g_pStatic_ed:AddString
{
	-- MSG 			= "9,000,000,000",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["2002L_KOG"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(213,155)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  



-------------------- 일반보상
g_pStatic_usual = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_usual )
g_pStatic_usual:SetName( "usual" )

g_pStatic_usual:AddString
{
	MSG 			= STR_ID_1361,
	FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(25,191)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  


---------------------------------------    SLOT

g_pStaticReward = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticReward )
g_pStaticReward:SetName( "Static_RewardSlot" )

g_pPicture_slot1 = g_pUIDialog:CreatePicture()
g_pStaticReward:AddPicture( g_pPicture_slot1 )

g_pPicture_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(80,189)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot2 = g_pUIDialog:CreatePicture()
g_pStaticReward:AddPicture( g_pPicture_slot2 )

g_pPicture_slot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(132,189)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot3 = g_pUIDialog:CreatePicture()
g_pStaticReward:AddPicture( g_pPicture_slot3 )

g_pPicture_slot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(184,189)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------- 선택보상
g_pStatic_usual = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_usual )
g_pStatic_usual:SetName( "usual" )

g_pStatic_usual:AddString
{
	MSG 			= STR_ID_1362,
	FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(23,251)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  


---------------------------------------    SLOT

g_pStaticSelectionReward = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSelectionReward )
g_pStaticSelectionReward:SetName( "Static_SelectionRewardSlot" )

g_pPicture_slot1 = g_pUIDialog:CreatePicture()
g_pStaticSelectionReward:AddPicture( g_pPicture_slot1 )

g_pPicture_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(80,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot2 = g_pUIDialog:CreatePicture()
g_pStaticSelectionReward:AddPicture( g_pPicture_slot2 )

g_pPicture_slot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(132,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot3 = g_pUIDialog:CreatePicture()
g_pStaticSelectionReward:AddPicture( g_pPicture_slot3 )

g_pPicture_slot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(184,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------- 투명 버튼

--- 일반보상

g_pButtonQuest_Slot_Light1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonQuest_Slot_Light1 )
g_pButtonQuest_Slot_Light1:SetName( "Reward_Slot_1" )
g_pButtonQuest_Slot_Light1:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )
g_pButtonQuest_Slot_Light1:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButtonQuest_Slot_Light1:SetDownTex( "DLG_UI_Button04.tga", "pay_selec" )

g_pButtonQuest_Slot_Light1:SetNormalPoint
{
	ADD_SIZE_X = 49,
	ADD_SIZE_Y = 49,
	"LEFT_TOP		= D3DXVECTOR2(80,189)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Slot_Light1:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(79,188)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Slot_Light1:SetDownPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(79,188)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Slot_Light1:SetEnableClick( false )
g_pButtonQuest_Slot_Light1:SetCustomMsgMouseOver( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OVER"] )
g_pButtonQuest_Slot_Light1:SetCustomMsgMouseOut( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OUT"] ) 



g_pButtonQuest_Slot_Light2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonQuest_Slot_Light2 )
g_pButtonQuest_Slot_Light2:SetName( "Reward_Slot_2" )
g_pButtonQuest_Slot_Light2:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

g_pButtonQuest_Slot_Light2:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )

g_pButtonQuest_Slot_Light2:SetDownTex( "DLG_UI_Button04.tga", "pay_selec" )

g_pButtonQuest_Slot_Light2:SetNormalPoint
{
     ADD_SIZE_X = 49,
     ADD_SIZE_Y = 49,

 	"LEFT_TOP		= D3DXVECTOR2(132,189)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Slot_Light2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(131,188)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Slot_Light2:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(131,188)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Slot_Light2:SetEnableClick( false )
g_pButtonQuest_Slot_Light2:SetCustomMsgMouseOver(  UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OVER"] )
g_pButtonQuest_Slot_Light2:SetCustomMsgMouseOut( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OUT"] )




g_pButtonQuest_Slot_Light3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonQuest_Slot_Light3 )
g_pButtonQuest_Slot_Light3:SetName( "Reward_Slot_3" )
g_pButtonQuest_Slot_Light3:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

g_pButtonQuest_Slot_Light3:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )

g_pButtonQuest_Slot_Light3:SetDownTex( "DLG_UI_Button04.tga", "pay_selec" )

g_pButtonQuest_Slot_Light3:SetNormalPoint
{
     ADD_SIZE_X = 49,
     ADD_SIZE_Y = 49,

 	"LEFT_TOP		= D3DXVECTOR2(184,188)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Slot_Light3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(183,188)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Slot_Light3:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(183,188)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonQuest_Slot_Light3:SetEnableClick( false )
g_pButtonQuest_Slot_Light3:SetCustomMsgMouseOver( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OVER"] )
g_pButtonQuest_Slot_Light3:SetCustomMsgMouseOut( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OUT"] )


--- 선택보상 

g_pRadioButtonopacity_slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonopacity_slot )

g_pRadioButtonopacity_slot:SetFixOverByCheck( true )
g_pRadioButtonopacity_slot:SetShowOffBGByCheck( true )

g_pRadioButtonopacity_slot:SetName( "Selection_Reward_Slot_1" )

g_pRadioButtonopacity_slot:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )


g_pRadioButtonopacity_slot:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )


g_pRadioButtonopacity_slot:SetCheckedTex( "DLG_UI_Button04.tga", "pay_selec" )


g_pRadioButtonopacity_slot:SetBGPoint
{
    ADD_SIZE_X = 49,
	ADD_SIZE_Y = 49,
	"LEFT_TOP		= D3DXVECTOR2(80,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonopacity_slot:SetBGMouseOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(79,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonopacity_slot:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(79,248)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(79+49,248+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonopacity_slot:SetCheckPoint
{
    ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(79+1,248+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonopacity_slot:SetGroupID( 1 )

g_pRadioButtonopacity_slot:SetCustomMsgChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_CHECK_ITEM"] )
g_pRadioButtonopacity_slot:SetCustomMsgUnChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_UNCHECK_ITEM"] )
g_pRadioButtonopacity_slot:SetCustomMsgMouseOver( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OVER"] )
g_pRadioButtonopacity_slot:SetCustomMsgMouseOut( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OUT"] )




g_pRadioButtonopacity_slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonopacity_slot )

g_pRadioButtonopacity_slot:SetFixOverByCheck( true )
g_pRadioButtonopacity_slot:SetShowOffBGByCheck( true )

g_pRadioButtonopacity_slot:SetName( "Selection_Reward_Slot_2" )

g_pRadioButtonopacity_slot:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )


g_pRadioButtonopacity_slot:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )


g_pRadioButtonopacity_slot:SetCheckedTex( "DLG_UI_Button04.tga", "pay_selec" )


g_pRadioButtonopacity_slot:SetBGPoint
{
    ADD_SIZE_X = 49,
	ADD_SIZE_Y = 49,
	"LEFT_TOP		= D3DXVECTOR2(132,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonopacity_slot:SetBGMouseOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(131,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonopacity_slot:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(131,248)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(131+49,248+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonopacity_slot:SetCheckPoint
{
    ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(131+1,248+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonopacity_slot:SetGroupID( 1 )

g_pRadioButtonopacity_slot:SetCustomMsgChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_CHECK_ITEM"] )
g_pRadioButtonopacity_slot:SetCustomMsgUnChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_UNCHECK_ITEM"] )
g_pRadioButtonopacity_slot:SetCustomMsgMouseOver( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OVER"] )
g_pRadioButtonopacity_slot:SetCustomMsgMouseOut( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OUT"] )






g_pRadioButtonopacity_slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonopacity_slot )

g_pRadioButtonopacity_slot:SetFixOverByCheck( true )
g_pRadioButtonopacity_slot:SetShowOffBGByCheck( true )

g_pRadioButtonopacity_slot:SetName( "Selection_Reward_Slot_3" )

g_pRadioButtonopacity_slot:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )


g_pRadioButtonopacity_slot:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )


g_pRadioButtonopacity_slot:SetCheckedTex( "DLG_UI_Button04.tga", "pay_selec" )


g_pRadioButtonopacity_slot:SetBGPoint
{
    ADD_SIZE_X = 49,
	ADD_SIZE_Y = 49,
	"LEFT_TOP		= D3DXVECTOR2(184,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonopacity_slot:SetBGMouseOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(183,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonopacity_slot:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(183,248)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(183+49,248+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonopacity_slot:SetCheckPoint
{
    ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(183+1,248+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonopacity_slot:SetGroupID( 1 )

g_pRadioButtonopacity_slot:SetCustomMsgChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_CHECK_ITEM"] )
g_pRadioButtonopacity_slot:SetCustomMsgUnChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_UNCHECK_ITEM"] )
g_pRadioButtonopacity_slot:SetCustomMsgMouseOver( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OVER"] )
g_pRadioButtonopacity_slot:SetCustomMsgMouseOut( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_REWARD_MOUSE_OUT"] )




--------------------P.S


g_pPicture_ps = g_pUIDialog:CreatePicture()
g_pStaticclear:AddPicture( g_pPicture_ps )

g_pPicture_ps:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_ps:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(79,302)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_ps = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ps )
g_pStatic_ps:SetName( "ps" )

g_pStatic_ps:AddString
{
	MSG 			= STR_ID_1363,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(102-3,305)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	--"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  



--------------------- 확인


g_pButtoncheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncheck )
g_pButtoncheck:SetName( "Button_Check" )
g_pButtoncheck:SetNormalTex( "DLG_UI_BUTTON05.tga", "ok_button_NORMAL" )

g_pButtoncheck:SetOverTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )

g_pButtoncheck:SetDownTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )


g_pButtoncheck:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(90,338)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(87,335)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(87+1,335+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )
g_pButtoncheck:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUESTCLEAR_OK"] )
g_pButtoncheck:RequestFocus()
