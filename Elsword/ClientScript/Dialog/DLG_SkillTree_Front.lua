-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Skill_Tree_Front" )
g_pUIDialog:SetPos( 0, 0  )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_CLOSE_SKILL_WINDOW"] )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_3"] )






g_pStaticSkill_Tree = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree )
g_pStaticSkill_Tree:SetName( "StaticSkill_Tree" )



----(하단 스킬트리 각종정보창바탕)-------- 






g_pPicture_SkillTree_MainBar1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree:AddPicture( g_pPicture_SkillTree_MainBar1 )

g_pPicture_SkillTree_MainBar1:SetTex( "DLG_Common_New_Texture15.TGA", "SkillTree_Window2" )

g_pPicture_SkillTree_MainBar1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(500+87,499)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPicture_SkillTree_MainBar2 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree:AddPicture( g_pPicture_SkillTree_MainBar2 )

g_pPicture_SkillTree_MainBar2:SetTex( "DLG_Common_New_Texture15.TGA", "SkillTree_Window1" )

g_pPicture_SkillTree_MainBar2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(12,499)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_SkillTree_MainBar3 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree:AddPicture( g_pPicture_SkillTree_MainBar3 )

g_pPicture_SkillTree_MainBar3:SetTex( "DLG_Common_New_Texture15.TGA", "SkillTree_Window3" )

g_pPicture_SkillTree_MainBar3:SetPoint
{
		 ADD_SIZE_X=67,
	"LEFT_TOP		= D3DXVECTOR2(523,499)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







--[[
g_pPictureSkillTree_Title_ElMark = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree:AddPicture( g_pPictureSkillTree_Title_ElMark )

g_pPictureSkillTree_Title_ElMark:SetTex( "DLG_Common_New_Texture10.TGA", "ElMark" )

g_pPictureSkillTree_Title_ElMark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


g_pPictureSkillTree_Title_SkillTree = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree:AddPicture( g_pPictureSkillTree_Title_SkillTree )

g_pPictureSkillTree_Title_SkillTree:SetTex( "DLG_Common_New_Texture26.TGA", "Skill_Tree_Title_Text" )

g_pPictureSkillTree_Title_SkillTree:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(8,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






----(취소 버튼)-------- 

g_pStaticSkill_Cancel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Cancel )
g_pStaticSkill_Cancel:SetName( "g_pStaticSkill_Cancel" )




g_pPicture_SkillTree_Cancel1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Cancel:AddPicture( g_pPicture_SkillTree_Cancel1 )

g_pPicture_SkillTree_Cancel1:SetTex( "DLG_Common_New_Texture55.TGA", "RESET_BUTTON_BOX" )

g_pPicture_SkillTree_Cancel1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(740+87,415)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






--------- A슬롯 비활성화

g_pStaticSkillTree_Slot_Unselect1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkillTree_Slot_Unselect1 )
g_pStaticSkillTree_Slot_Unselect1:SetName( "SkillTree_Slot_Unselect1" )



g_pPicture_SkillTree_Slot_Unselect1 = g_pUIDialog:CreatePicture()
g_pStaticSkillTree_Slot_Unselect1:AddPicture( g_pPicture_SkillTree_Slot_Unselect1 )

g_pPicture_SkillTree_Slot_Unselect1:SetTex( "DLG_Common_New_Texture55.TGA", "Skill_slot" )

g_pPicture_SkillTree_Slot_Unselect1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(500+87+7,567)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_SkillTree_Slot_Unselect1_Button = g_pUIDialog:CreatePicture()
g_pStaticSkillTree_Slot_Unselect1:AddPicture( g_pPicture_SkillTree_Slot_Unselect1_Button )

g_pPicture_SkillTree_Slot_Unselect1_Button:SetTex( "DLG_Common_New_Texture01.TGA", "Skill_A_Normal" )

g_pPicture_SkillTree_Slot_Unselect1_Button:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(518,576-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}





---------B 슬롯 바활성화

g_pStaticSkillTree_Slot_Unselect2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkillTree_Slot_Unselect2 )
g_pStaticSkillTree_Slot_Unselect2:SetName( "SkillTree_Slot_Unselect2" )



g_pPicture_SkillTree_Slot_Unselect2 = g_pUIDialog:CreatePicture()
g_pStaticSkillTree_Slot_Unselect2:AddPicture( g_pPicture_SkillTree_Slot_Unselect2 )

g_pPicture_SkillTree_Slot_Unselect2:SetTex( "DLG_Common_New_Texture55.TGA", "Skill_slot" )

g_pPicture_SkillTree_Slot_Unselect2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(500+87+7,627)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_SkillTree_Slot_Unselect2_Button = g_pUIDialog:CreatePicture()
g_pStaticSkillTree_Slot_Unselect2:AddPicture( g_pPicture_SkillTree_Slot_Unselect2_Button )

g_pPicture_SkillTree_Slot_Unselect2_Button:SetTex( "DLG_Common_New_Texture01.TGA", "Skill_B_Normal" )

g_pPicture_SkillTree_Slot_Unselect2_Button:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(518,636-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}







---------A 슬롯 활성화

g_pStaticSkillTree_Slot_select1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkillTree_Slot_select1 )
g_pStaticSkillTree_Slot_select1:SetName( "SkillTree_Slot_select1" )



g_pPicture_SkillTree_Slot_select1 = g_pUIDialog:CreatePicture()
g_pStaticSkillTree_Slot_select1:AddPicture( g_pPicture_SkillTree_Slot_select1 )

g_pPicture_SkillTree_Slot_select1:SetTex( "DLG_Common_New_Texture55.TGA", "Skill_slot" )

g_pPicture_SkillTree_Slot_select1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(500+87+7,567)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------B 슬롯 활성화

g_pStaticSkillTree_Slot_select2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkillTree_Slot_select2 )
g_pStaticSkillTree_Slot_select2:SetName( "SkillTree_Slot_select2" )



g_pPicture_SkillTree_Slot_select2 = g_pUIDialog:CreatePicture()
g_pStaticSkillTree_Slot_select2:AddPicture( g_pPicture_SkillTree_Slot_select2 )

g_pPicture_SkillTree_Slot_select2:SetTex( "DLG_Common_New_Texture55.TGA", "Skill_slot" )

g_pPicture_SkillTree_Slot_select2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(500+87+7,627)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











g_pButtonSkill_Reset = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill_Reset )
g_pButtonSkill_Reset:SetName( "g_pButtonSkill_Reset" )
g_pButtonSkill_Reset:SetNormalTex( "DLG_Common_New_Texture55.tga", "reset_button_normal" )

g_pButtonSkill_Reset:SetOverTex( "DLG_Common_New_Texture55.tga", "reset_button_over" )

g_pButtonSkill_Reset:SetDownTex( "DLG_Common_New_Texture55.tga", "reset_button_over" )

g_pButtonSkill_Reset:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(836,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(836,446)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(837,447)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_TREE_REMOVE_MODE_ON"] )



g_pButtonSkill_Reset_cancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill_Reset_cancel )
g_pButtonSkill_Reset_cancel:SetName( "g_pButtonSkill_Reset_cancel" )
g_pButtonSkill_Reset_cancel:SetNormalTex( "DLG_Common_New_Texture55.tga", "reset_cancel_button_normal" )

g_pButtonSkill_Reset_cancel:SetOverTex( "DLG_Common_New_Texture55.tga", "reset_cancel_button_over" )

g_pButtonSkill_Reset_cancel:SetDownTex( "DLG_Common_New_Texture55.tga", "reset_cancel_button_over" )

g_pButtonSkill_Reset_cancel:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(836,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset_cancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(836,446)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset_cancel:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(837,447)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Reset_cancel:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_TREE_REMOVE_MODE_OFF"] )



  g_pStaticItem_Num = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticItem_Num )
	g_pStaticItem_Num:SetName( "g_pStaticItem_Num" )

	g_pStaticItem_Num:AddString
	{
		-- MSG 			= "999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(960,426)",
  "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}












-----HP,물리공격,마법공격,방어력-------- 

  g_pStatic_HP_Point = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_HP_Point )
	g_pStatic_HP_Point:SetName( "HP_Point" )

	g_pStatic_HP_Point:AddString
	{
		-- MSG 			= "999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(141+20,605-18-16)",
        "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	

	  g_pStatic_HP_Point_add = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_HP_Point_add )
	g_pStatic_HP_Point_add:SetName( "HP_Point_add" )

	g_pStatic_HP_Point_add:AddString
	{
		-- MSG 			= "+999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(141+20+15,605-18-16)",
  "COLOR			= D3DXCOLOR(0.1,0.55,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}


 g_pStaticAttack_Point = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticAttack_Point)
	g_pStaticAttack_Point:SetName( "Attack_Point" )

	g_pStaticAttack_Point:AddString
	{
		-- MSG 			= "999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(141+20,628-18-16)",
  "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}


	 g_pStaticAttack_Point_add = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticAttack_Point_add )
	g_pStaticAttack_Point_add:SetName( "Attack_Point_add" )

	g_pStaticAttack_Point_add:AddString
	{
		-- MSG 			= "+999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(141+20+15,628-18-16)",
  "COLOR			= D3DXCOLOR(0.1,0.55,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

	g_pStaticMagic_Point = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticMagic_Point )
	g_pStaticMagic_Point:SetName( "Magic_Point" )

	g_pStaticMagic_Point:AddString
	{
		-- MSG 			= "999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(141+20,651-18-16)",
  "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

		g_pStaticMagic_Point_add = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticMagic_Point_add )
	g_pStaticMagic_Point_add:SetName( "Magic_Point_add" )

	g_pStaticMagic_Point_add:AddString
	{
		-- MSG 			= "+999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(141+20+15,651-18-16)",
  "COLOR			= D3DXCOLOR(0.1,0.55,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	
 g_pStaticDefense_Point = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticDefense_Point )
	g_pStaticDefense_Point:SetName( "Defense_Point" )

	g_pStaticDefense_Point:AddString
	{
		-- MSG 			= "999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(141+20,674-18-16)",
  "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

	 g_pStaticDefense_Point_add = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticDefense_Point_add )
	g_pStaticDefense_Point_add:SetName( "Defense_Point_add" )

	g_pStaticDefense_Point_add:AddString
	{
		-- MSG 			= "+999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(141+20+15,674-18-16)",
  "COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

	g_pStaticMagic_Defense_Point= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticMagic_Defense_Point )
	g_pStaticMagic_Defense_Point:SetName( "Magic_Defense_Point" )

	g_pStaticMagic_Defense_Point:AddString
	{
		-- MSG 			= "999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(141+20,674+23-18-16)",
  "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

	g_pStaticMagic_Defense_Point_add = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticMagic_Defense_Point_add )
	g_pStaticMagic_Defense_Point_add:SetName( "Magic_Defense_Point_add" )

	g_pStaticMagic_Defense_Point_add:AddString
	{
		-- MSG 			= "+999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(141+20+15,674+23-18-16)",
  "COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

----------------------
	
	  g_pStatic_HP_Point_NoEquip = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_HP_Point_NoEquip )
	g_pStatic_HP_Point_NoEquip:SetName( "HP_Point_NoEquip" )

	g_pStatic_HP_Point_NoEquip:AddString
	{
		-- MSG 			= "999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(141+20+16,605-18-16)",
        "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	 g_pStaticAttack_Point_NoEquip = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticAttack_Point_NoEquip )
	g_pStaticAttack_Point_NoEquip:SetName( "Attack_Point_NoEquip" )

	g_pStaticAttack_Point_NoEquip:AddString
	{
		-- MSG 			= "999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(141+20+16,628-18-16)",
  "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	g_pStaticMagic_Point_NoEquip = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticMagic_Point_NoEquip )
	g_pStaticMagic_Point_NoEquip:SetName( "Magic_Point_NoEquip" )

	g_pStaticMagic_Point_NoEquip:AddString
	{
		-- MSG 			= "999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(141+20+16,651-18-16)",
  "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}




 g_pStaticDefense_Point_NoEquip = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticDefense_Point_NoEquip )
	g_pStaticDefense_Point_NoEquip:SetName( "Defense_Point_NoEquip" )

	g_pStaticDefense_Point_NoEquip:AddString
	{
		-- MSG 			= "999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(141+20+16,674-18-16)",
  "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
		


	g_pStaticMagic_Defense_Point_NoEquip= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticMagic_Defense_Point_NoEquip )
	g_pStaticMagic_Defense_Point_NoEquip:SetName( "Magic_Defense_Point_NoEquip" )

	g_pStaticMagic_Defense_Point_NoEquip:AddString
	{
		-- MSG 			= "999999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(141+20+16,674+23-18-16)",
  "COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

		------------속성 방어력--------------
	
	


    g_pStatic_FireResist = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_FireResist )
	g_pStatic_FireResist:SetName( "Fire_Resist" )

	g_pStatic_FireResist:AddString
	{
		-- MSG 			= "300/300",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(309+12+20,628-18)",
        "COLOR			= D3DXCOLOR(0.1,0.55,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	g_pStatic_IceResist= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_IceResist )
	g_pStatic_IceResist:SetName( "Ice_Resist" )

	g_pStatic_IceResist:AddString
	{
		-- MSG 			= "300/300",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(309+12+20,651-18)",
 		 "COLOR			= D3DXCOLOR(0.1,0.55,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	g_pStatic_NatureResist = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_NatureResist)
	g_pStatic_NatureResist:SetName( "Nature_Resist" )

	g_pStatic_NatureResist:AddString
	{
		-- MSG 			= "300/300",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(309+12+20,674-18)",
  "COLOR			= D3DXCOLOR(0.1,0.55,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	


    g_pStatic_WindResist = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_WindResist )
	g_pStatic_WindResist:SetName( "Wind_Resist" )

	g_pStatic_WindResist:AddString
	{
		-- MSG 			= "300/300",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(419+12+22+12,628-18)",
  "COLOR			= D3DXCOLOR(0.1,0.55,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	g_pStatic_LightResist = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_LightResist )
	g_pStatic_LightResist:SetName( "Light_Resist" )

	g_pStatic_LightResist:AddString
	{
		-- MSG 			= "300/300",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(419+12+22+12,651-18)",
  "COLOR			= D3DXCOLOR(0.1,0.55,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	g_pStatic_DarkResist = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_DarkResist )
	g_pStatic_DarkResist:SetName( "Dark_Resist" )

	g_pStatic_DarkResist:AddString
	{
		-- MSG 			= "300/300",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(419+12+22+12,674-18)",
  "COLOR			= D3DXCOLOR(0.1,0.55,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
		
	
----
	
	g_pStaticSP = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticSP )
	g_pStaticSP:SetName( "SP" )

	g_pStaticSP:AddString
	{
		-- MSG 			= "99999",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(767-40,517+4)",
  "COLOR			= D3DXCOLOR(0.35,0.4,0.35,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	

	
	---------(스킬버튼 라디오 버튼)

g_pRadioButtonSkill_A = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonSkill_A )

g_pRadioButtonSkill_A:SetFixOverByCheck( true )
g_pRadioButtonSkill_A:SetShowOffBGByCheck( true )

g_pRadioButtonSkill_A:SetName( "RadioButtonSkill_A" )

g_pRadioButtonSkill_A:SetNormalTex( "DLG_Common_New_Texture01.TGA", "Skill_A_Normal" )


g_pRadioButtonSkill_A:SetOverTex( "DLG_Common_New_Texture01.TGA", "Skill_A_Over" )


g_pRadioButtonSkill_A:SetCheckedTex( "DLG_Common_New_Texture01.TGA", "Skill_A_down" )


g_pRadioButtonSkill_A:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(518,576-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_A:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(518,576-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_A:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(518,576-8)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(518+66,576+57-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonSkill_A:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(518,576-8)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_A:SetGroupID( 1 )
--g_pRadioButtonSkill_A:SetChecked( true )
g_pRadioButtonSkill_A:SetCustomMsgChecked( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_TREE_SLOT_A"] ) 




g_pRadioButtonSkill_B = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonSkill_B )

g_pRadioButtonSkill_B:SetFixOverByCheck( true )
g_pRadioButtonSkill_B:SetShowOffBGByCheck( true )

g_pRadioButtonSkill_B:SetName( "RadioButtonSkill_B" )

g_pRadioButtonSkill_B:SetNormalTex( "DLG_Common_New_Texture01.TGA", "Skill_B_Normal" )


g_pRadioButtonSkill_B:SetOverTex( "DLG_Common_New_Texture01.TGA", "SKILL_B_OVER" )


g_pRadioButtonSkill_B:SetCheckedTex( "DLG_Common_New_Texture01.TGA", "SKILL_B_down" )


g_pRadioButtonSkill_B:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(518,636-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_B:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(518,636-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_B:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(518,636-8)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(518+66,636+57-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonSkill_B:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(518,636-8)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_B:SetGroupID( 1 )
g_pRadioButtonSkill_B:SetCustomMsgChecked( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_TREE_SLOT_B"] ) 














g_pStaticSkill_Tree_Navigation_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_Navigation_Window )
g_pStaticSkill_Tree_Navigation_Window:SetName( "StaticSkill_Tree_Navigation_Window" )



----(네비게이션 창) -------------



g_pPicture_SkillTree_Navigation_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Navigation_Window:AddPicture( g_pPicture_SkillTree_Navigation_Bg1 )

g_pPicture_SkillTree_Navigation_Bg1:SetTex( "DLG_Common_New_Texture15.TGA", "SkillTree_Window4" )

g_pPicture_SkillTree_Navigation_Bg1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(798+6,499)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------(네비게이션창 위에 투명창)-------- 
g_pPicture_SkillTree_Navigation_Glass1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Navigation_Window:AddPicture( g_pPicture_SkillTree_Navigation_Glass1 )

g_pPicture_SkillTree_Navigation_Glass1:SetTex( "DLG_Common_New_Texture15.TGA", "Navigation_Glass1" )

g_pPicture_SkillTree_Navigation_Glass1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(817+5,541)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_SkillTree_Navigation_Glass2 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Navigation_Window:AddPicture( g_pPicture_SkillTree_Navigation_Glass2 )

g_pPicture_SkillTree_Navigation_Glass2:SetTex( "DLG_Common_New_Texture15.TGA", "Navigation_Glass2" )

g_pPicture_SkillTree_Navigation_Glass2:SetPoint
{

			ADD_SIZE_X=145,
	"LEFT_TOP		= D3DXVECTOR2(822+5,541)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_SkillTree_Navigation_Glass2 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Navigation_Window:AddPicture( g_pPicture_SkillTree_Navigation_Glass2 )

g_pPicture_SkillTree_Navigation_Glass2:SetTex( "DLG_Common_New_Texture15.TGA", "Navigation_Glass3" )

g_pPicture_SkillTree_Navigation_Glass2:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(822+5+145,541)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}














g_pStaticSkill_Tree_Sword_Man = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_Sword_Man )
g_pStaticSkill_Tree_Sword_Man:SetName( "StaticSkill_Tree_Sword_Man" )



----(검사) -------------



g_pPicture_Skill_Tree_Sword_Man = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Sword_Man:AddPicture( g_pPicture_Skill_Tree_Sword_Man )

g_pPicture_Skill_Tree_Sword_Man:SetTex( "DLG_Common_New_Texture15.TGA", "Sword_Man" )

g_pPicture_Skill_Tree_Sword_Man:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(194-63,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









g_pStaticSkill_Tree_Night = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_Night )
g_pStaticSkill_Tree_Night:SetName( "StaticSkill_Tree_Night" )



----(나이트) -------------

g_pPicture_Skill_Tree_Night = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Night:AddPicture( g_pPicture_Skill_Tree_Night )
g_pPicture_Skill_Tree_Night:SetTex( "DLG_Common_New_Texture36.TGA", "Sword_Knight" )
g_pPicture_Skill_Tree_Night:SetPoint
{
 "LEFT_TOP  = D3DXVECTOR2(160-63,512)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}










g_pStaticSkill_Tree_Magic_Night = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_Magic_Night )
g_pStaticSkill_Tree_Magic_Night:SetName( "StaticSkill_Tree_Magic_Night" )



----(매직나이트) -------------



g_pPicture_Skill_Tree_Magic_Night = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Magic_Night:AddPicture( g_pPicture_Skill_Tree_Magic_Night )

g_pPicture_Skill_Tree_Magic_Night:SetTex( "DLG_Common_New_Texture15.TGA", "Magic_Night" )

g_pPicture_Skill_Tree_Magic_Night:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(160-63,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pStaticSkill_Tree_Magic_User = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_Magic_User )
g_pStaticSkill_Tree_Magic_User:SetName( "StaticSkill_Tree_Magic_User" )



----(법사) -------------



g_pPicture_Skill_Tree_Magic_User = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Magic_User:AddPicture( g_pPicture_Skill_Tree_Magic_User )

g_pPicture_Skill_Tree_Magic_User:SetTex( "DLG_Common_New_Texture27.TGA", "Magic_User" )

g_pPicture_Skill_Tree_Magic_User:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(189-63,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pStaticSkill_Tree_Archer = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_Archer )
g_pStaticSkill_Tree_Archer:SetName( "StaticSkill_Tree_Archer" )



----(궁수) -------------



g_pPicture_Skill_Tree_Archer = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Archer:AddPicture( g_pPicture_Skill_Tree_Archer )

g_pPicture_Skill_Tree_Archer:SetTex( "DLG_Common_New_Texture27.TGA", "Archer" )

g_pPicture_Skill_Tree_Archer:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticSkill_Tree_Combat_Ranger = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_Combat_Ranger )
g_pStaticSkill_Tree_Combat_Ranger:SetName( "StaticSkill_Tree_Combat_Ranger" )



----(궁수) -------------



g_pPicture_Skill_Tree_Combat_Ranger = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Combat_Ranger:AddPicture( g_pPicture_Skill_Tree_Combat_Ranger )

g_pPicture_Skill_Tree_Combat_Ranger:SetTex( "DLG_Common_New_Texture48.TGA", "Combat_Ranger" )

g_pPicture_Skill_Tree_Combat_Ranger:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63-45,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pStaticSkill_Tree_Sniping_Ranger = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_Sniping_Ranger )
g_pStaticSkill_Tree_Sniping_Ranger:SetName( "StaticSkill_Tree_Sniping_Ranger" )



----(궁수) -------------



g_pPicture_Skill_Tree_Sniping_Ranger = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Sniping_Ranger:AddPicture( g_pPicture_Skill_Tree_Sniping_Ranger )

g_pPicture_Skill_Tree_Sniping_Ranger:SetTex( "DLG_Common_New_Texture48.TGA", "Sniping_Ranger" )

g_pPicture_Skill_Tree_Sniping_Ranger:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63-45-16,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pStaticSkill_Tree_Dark_Magician = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_Dark_Magician )
g_pStaticSkill_Tree_Dark_Magician:SetName( "StaticSkill_Tree_Dark_Magician" )


----(다크매지션) -------------



g_pPicture_Skill_Tree_Dark_Magician = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_Dark_Magician:AddPicture( g_pPicture_Skill_Tree_Dark_Magician )

g_pPicture_Skill_Tree_Dark_Magician:SetTex( "DLG_Common_New_Texture48.TGA", "Dark_Magician" )

g_pPicture_Skill_Tree_Dark_Magician:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63-45-16,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pStaticSkill_Tree_High_Magician = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_High_Magician )
g_pStaticSkill_Tree_High_Magician:SetName( "StaticSkill_Tree_High_Magician" )


----(하이매지션) -------------



g_pPicture_Skill_Tree_High_Magician = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_High_Magician:AddPicture( g_pPicture_Skill_Tree_High_Magician )

g_pPicture_Skill_Tree_High_Magician:SetTex( "DLG_Common_New_Texture48.TGA", "High_Magician" )

g_pPicture_Skill_Tree_High_Magician:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63-45-16,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----(나소드헌터) -------------

g_pStaticSkill_Tree_NASOD_HUNTER = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_NASOD_HUNTER )
g_pStaticSkill_Tree_NASOD_HUNTER:SetName( "StaticSkill_Tree_NASOD_HUNTER" )




g_pPicture_Skill_Tree_NASOD_HUNTER = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_NASOD_HUNTER:AddPicture( g_pPicture_Skill_Tree_NASOD_HUNTER )

g_pPicture_Skill_Tree_NASOD_HUNTER:SetTex( "DLG_Common_New_Texture48.TGA", "NASOD_HUNTER" )

g_pPicture_Skill_Tree_NASOD_HUNTER:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63-45-16,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----(소드테이커)-----------

g_pStaticSkill_Tree_SWORD_TAKER = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_SWORD_TAKER )
g_pStaticSkill_Tree_SWORD_TAKER:SetName( "StaticSkill_Tree_SWORD_TAKER" )




g_pPicture_Skill_Tree_SWORD_TAKER = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_SWORD_TAKER:AddPicture( g_pPicture_Skill_Tree_SWORD_TAKER )

g_pPicture_Skill_Tree_SWORD_TAKER:SetTex( "DLG_Common_New_Texture48.TGA", "Sword_Taker" )

g_pPicture_Skill_Tree_SWORD_TAKER:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63-45-16,514)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----(오버테이커)-----------

g_pStaticSkill_Tree_OVER_TAKER = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_OVER_TAKER )
g_pStaticSkill_Tree_OVER_TAKER:SetName( "StaticSkill_Tree_OVER_TAKER" )




g_pPicture_Skill_Tree_OVER_TAKER = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_OVER_TAKER:AddPicture( g_pPicture_Skill_Tree_OVER_TAKER )

g_pPicture_Skill_Tree_OVER_TAKER:SetTex( "DLG_Common_New_Texture48.TGA", "OVER_Taker" )

g_pPicture_Skill_Tree_OVER_TAKER:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63-45-16,514)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------  (  이브  )  -------------


g_pStaticSkill_Tree_NASOD = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_NASOD )
g_pStaticSkill_Tree_NASOD:SetName( "StaticSkill_Tree_NASOD" )




g_pPicture_Skill_Tree_NASOD = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_NASOD:AddPicture( g_pPicture_Skill_Tree_NASOD )

g_pPicture_Skill_Tree_NASOD:SetTex( "DLG_UI_Character02.TGA", "NASOD" )

g_pPicture_Skill_Tree_NASOD:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63-45-16,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----(코드 엑조틱)-----------

g_pStaticSkill_Tree_CODE_EXOTIC = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_CODE_EXOTIC )
g_pStaticSkill_Tree_CODE_EXOTIC:SetName( "StaticSkill_Tree_CODE_EXOTIC" )




g_pPicture_Skill_Tree_CODE_EXOTIC = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_CODE_EXOTIC:AddPicture( g_pPicture_Skill_Tree_CODE_EXOTIC )

g_pPicture_Skill_Tree_CODE_EXOTIC:SetTex( "DLG_Common_New_Texture48.TGA", "CODE_EXOTIC" )

g_pPicture_Skill_Tree_CODE_EXOTIC:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63-45-16,514)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----(코드 아키텍쳐)-----------

g_pStaticSkill_Tree_CODE_ARCHITECTURE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Tree_CODE_ARCHITECTURE )
g_pStaticSkill_Tree_CODE_ARCHITECTURE:SetName( "StaticSkill_Tree_CODE_ARCHITECTURE" )




g_pPicture_Skill_Tree_CODE_ARCHITECTURE = g_pUIDialog:CreatePicture()
g_pStaticSkill_Tree_CODE_ARCHITECTURE:AddPicture( g_pPicture_Skill_Tree_CODE_ARCHITECTURE )

g_pPicture_Skill_Tree_CODE_ARCHITECTURE:SetTex( "DLG_Common_New_Texture48.TGA", "CODE_ARCHITECTURE" )

g_pPicture_Skill_Tree_CODE_ARCHITECTURE:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(211-63-45-16,514)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








g_pRadioButtonSkill_Tree_1stPost_Change = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonSkill_Tree_1stPost_Change )

g_pRadioButtonSkill_Tree_1stPost_Change:SetFixOverByCheck( true )
g_pRadioButtonSkill_Tree_1stPost_Change:SetShowOffBGByCheck( true )

g_pRadioButtonSkill_Tree_1stPost_Change:SetName( "RadioButtonSkill_Tree_1stPost_Change" )

g_pRadioButtonSkill_Tree_1stPost_Change:SetNormalTex( "DLG_Common_New_Texture33.TGA", "Skill_Tree_1stPost_Change_Normal" )


g_pRadioButtonSkill_Tree_1stPost_Change:SetOverTex( "DLG_Common_New_Texture33.TGA", "Skill_Tree_1stPost_Change_Over" )


g_pRadioButtonSkill_Tree_1stPost_Change:SetCheckedTex( "DLG_Common_New_Texture33.TGA", "Skill_Tree_1stPost_Change_Over" )


g_pRadioButtonSkill_Tree_1stPost_Change:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(461,514)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_Tree_1stPost_Change:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(461,514)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_Tree_1stPost_Change:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(461,514)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(461+62,514+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonSkill_Tree_1stPost_Change:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(461,514)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_Tree_1stPost_Change:SetGroupID( 2 )
g_pRadioButtonSkill_Tree_1stPost_Change:SetCustomMsgChecked( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_JOB_LEVEL_1"] ) 






g_pRadioButtonSkill_Tree_2ndPost_Change = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonSkill_Tree_2ndPost_Change )

g_pRadioButtonSkill_Tree_2ndPost_Change:SetFixOverByCheck( true )
g_pRadioButtonSkill_Tree_2ndPost_Change:SetShowOffBGByCheck( true )

g_pRadioButtonSkill_Tree_2ndPost_Change:SetName( "RadioButtonSkill_Tree_2ndPost_Change" )

g_pRadioButtonSkill_Tree_2ndPost_Change:SetNormalTex( "DLG_Common_New_Texture33.TGA", "Skill_Tree_2ndPost_Change_Normal" )


g_pRadioButtonSkill_Tree_2ndPost_Change:SetOverTex( "DLG_Common_New_Texture33.TGA", "Skill_Tree_2ndPost_Change_Over" )


g_pRadioButtonSkill_Tree_2ndPost_Change:SetCheckedTex( "DLG_Common_New_Texture33.TGA", "Skill_Tree_2ndPost_Change_Over" )


g_pRadioButtonSkill_Tree_2ndPost_Change:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(526,514)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_Tree_2ndPost_Change:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(526,514)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_Tree_2ndPost_Change:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(526,514)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(526+62,514+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonSkill_Tree_2ndPost_Change:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(526,514)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSkill_Tree_2ndPost_Change:SetGroupID( 2 )
g_pRadioButtonSkill_Tree_2ndPost_Change:SetCustomMsgChecked( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SKILL_JOB_LEVEL_2"] ) 








---------------------   스킬 시전 방식  ---------------------------
--------------------------------------------------------------------





----------                   단축키 방식            ------------



g_pRadioButtonshort_method = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonshort_method )

g_pRadioButtonshort_method:SetFixOverByCheck( true )
g_pRadioButtonshort_method:SetShowOffBGByCheck( true )

g_pRadioButtonshort_method:SetName( "skill_short_method" )

g_pRadioButtonshort_method:SetNormalTex( "DLG_Common_New_Texture70.TGA", "short_Normal" )


g_pRadioButtonshort_method:SetOverTex( "DLG_Common_New_Texture70.TGA", "short_Over" )


g_pRadioButtonshort_method:SetCheckedTex( "DLG_Common_New_Texture70.TGA", "short_Over" )


g_pRadioButtonshort_method:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(566,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonshort_method:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(566,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonshort_method:SetRBPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(566,5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(751,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonshort_method:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(566,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonshort_method:SetGroupID( 3 )
g_pRadioButtonshort_method:SetCustomMsgChecked( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SELECT_SKILL_IMMEDIATE_MODE"] )
g_pRadioButtonshort_method:SetCustomMsgUnChecked( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SELECT_SKILL_IMMEDIATE_MODE"] )







-----------                    홀드 방식            ------------



g_pRadioButtonhold_method = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonhold_method )

g_pRadioButtonhold_method:SetFixOverByCheck( true )
g_pRadioButtonhold_method:SetShowOffBGByCheck( true )

g_pRadioButtonhold_method:SetName( "skill_hold_method" )

g_pRadioButtonhold_method:SetNormalTex( "DLG_Common_New_Texture70.TGA", "hold_Normal" )


g_pRadioButtonhold_method:SetOverTex( "DLG_Common_New_Texture70.TGA", "hold_Over" )


g_pRadioButtonhold_method:SetCheckedTex( "DLG_Common_New_Texture70.TGA", "hold_Over" )


g_pRadioButtonhold_method:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(760,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhold_method:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(760,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhold_method:SetRBPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(760,5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(945,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonhold_method:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(760,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhold_method:SetGroupID( 3 )
g_pRadioButtonhold_method:SetCustomMsgChecked( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SELECT_SKILL_CHARGE_MODE"] )
g_pRadioButtonhold_method:SetCustomMsgUnChecked( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SELECT_SKILL_CHARGE_MODE"] )


---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button13.tga", "dungeon_exit_normal" )

g_pButton_exit:SetOverTex( "DLG_UI_Button13.tga", "dungeon_exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button13.tga", "dungeon_exit_OVER" )

g_pButton_exit:SetNormalPoint
{
     ADD_SIZE_X = -20,
	 ADD_SIZE_Y = -20,
 	"LEFT_TOP		= D3DXVECTOR2(964,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{
     ADD_SIZE_X = -20,
	 ADD_SIZE_Y = -20,
	"LEFT_TOP		= D3DXVECTOR2(964,5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -22 ,
	  ADD_SIZE_Y = -22 ,

 	"LEFT_TOP		= D3DXVECTOR2(964+1,5+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_CLOSE_SKILL_WINDOW"] )
