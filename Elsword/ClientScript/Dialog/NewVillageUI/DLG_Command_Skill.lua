-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





g_pUIDialog:SetName( "DLG_Command_Skill" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_3"] )
g_pUIDialog:SetCloseCustomUIEventID( COMBO_TREE_UI_CUSTOM_MSG["CTUCM_CLOSE_COMBO_TREE"] )

--g_pUIDialog:SetColor( D3DXCOLOR( 1, 1, 1, 0.7 ) )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) )		-- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 452, 610, 0 ) )	-- Size 





g_pStaticSkill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill )
g_pStaticSkill:SetName( "COMBO_TREE_BG" )

-----BG
g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPictureInfo_BG1 )

g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )

g_pPictureInfo_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )

g_pPictureInfo_BG2:SetPoint
{
    ADD_SIZE_Y = 535+31,
	"LEFT_TOP		= D3DXVECTOR2(0,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_BG3 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPictureInfo_BG3 )

g_pPictureInfo_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )

g_pPictureInfo_BG3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,560+31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----BG2 ---- 

g_pPictureInfo_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG13 )

g_pPictureInfo_BG13:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_top" )

g_pPictureInfo_BG13:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	
	

g_pPictureInfo_BG14 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG14 )

g_pPictureInfo_BG14:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_MIDDLE" )

g_pPictureInfo_BG14:SetPoint
{
   ADD_SIZE_Y = 498 ,
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		
	

g_pPictureInfo_BG15 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG15 )

g_pPictureInfo_BG15:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_bottom" )

g_pPictureInfo_BG15:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,588)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		


-------------------------------------------------------------------------------------------------------------------------------------------------------------	
	
g_pPictureInfo_BG15 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG15 )

g_pPictureInfo_BG15:SetTex( "DLG_UI_Common_Texture18.TGA", "Command_BG" )

g_pPictureInfo_BG15:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(23,86)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
	
	}		


---TITLE

g_pStaticText = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticText )
g_pStaticText:SetName( "g_pStaticText" )


g_pPictureText_title = g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_title )

g_pPictureText_title:SetTex( "DLG_UI_Title02_A.TGA", "Title_Skill" )

g_pPictureText_title:SetPoint 
{

	"LEFT_TOP		= D3DXVECTOR2(15,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



	
---------BAR

g_pPictureBar = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBar )

g_pPictureBar:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPictureBar:SetPoint
{
   ADD_SIZE_X = 434,
	"LEFT_TOP		= D3DXVECTOR2(8,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


	

---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(412,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(408,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(408+1,11+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_exit:SetCustomMsgMouseUp( COMBO_TREE_UI_CUSTOM_MSG["CTUCM_CLOSE_COMBO_TREE"] )







-----------------------------------스킬트리 버튼 ----------------------------------
---통상기 보기 버튼
g_pButton_Skill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Skill )
g_pButton_Skill:SetName( "CommandSkill" )
g_pButton_Skill:SetNormalTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Skill_View_Normal" )
g_pButton_Skill:SetOverTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Skill_View_Over" )
g_pButton_Skill:SetDownTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Skill_View_Over" )

g_pButton_Skill:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(298+26,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Skill:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(298+26,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Skill:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(298+1+26,15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Skill:SetCustomMsgMouseUp( COMBO_TREE_UI_CUSTOM_MSG["CTUCM_OPEN_SKILL_TREE"] )


-- g_pRadioButton_Skill = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButton_Skill )
-- g_pRadioButton_Skill:SetName( "RadioButton_Skill" )

-- g_pRadioButton_Skill:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )
-- g_pRadioButton_Skill:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )
-- g_pRadioButton_Skill:SetCheckedTex( "DLG_UI_BUTTON13.tga", "BTN_BG_DOWN" )


-- g_pRadioButton_Skill:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(224,16)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButton_Skill:SetBGMouseOverPoint
-- {   
     -- ADD_SIZE_X = -2,
     -- ADD_SIZE_Y = -2,
	-- "LEFT_TOP		= D3DXVECTOR2(224-1,16-1)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButton_Skill:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(224,16)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(224+80,16+26)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButton_Skill:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(224-4,16-4)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButton_Skill:SetGroupID( 2 )
-- g_pRadioButton_Skill:SetCustomMsgChecked( COMBO_TREE_UI_CUSTOM_MSG["CTUCM_OPEN_SKILL_TREE"] ) 




-- ----------------- 버튼이름

-- g_pStatic_BTN_SKILL= g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic_BTN_SKILL )
-- g_pStatic_BTN_SKILL:SetName( "Static_BTN_SKILL" )

-- g_pStatic_BTN_SKILL:AddString
-- {
	-- MSG 			= STR_ID_4769,
	-- FONT_INDEX		= XUF_DODUM_11_NORMAL,
    -- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	-- "POS 			= D3DXVECTOR2(224+38,16+4)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	-- "OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
-- }



-- -----------------------------------커맨드스킬 버튼 ----------------------------------
-- g_pRadioButton_Command = g_pUIDialog:CreateRadioButton()
-- g_pUIDialog:AddControl( g_pRadioButton_Command )
-- g_pRadioButton_Command:SetName( "RadioButton_Command" )

-- g_pRadioButton_Command:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )
-- g_pRadioButton_Command:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )
-- g_pRadioButton_Command:SetCheckedTex( "DLG_UI_BUTTON13.tga", "BTN_BG_DOWN" )


-- g_pRadioButton_Command:SetBGPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(305,16)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButton_Command:SetBGMouseOverPoint
-- {   
     -- ADD_SIZE_X = -2,
     -- ADD_SIZE_Y = -2,
	-- "LEFT_TOP		= D3DXVECTOR2(305-1,16-1)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButton_Command:SetRBPoint
-- {
 	-- USE_TEXTURE_SIZE	= FALSE,
 	-- "LEFT_TOP		= D3DXVECTOR2(305,16)",
	-- "RIGHT_BOTTOM	= D3DXVECTOR2(305+80,16+26)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pRadioButton_Command:SetCheckPoint
-- {
 	-- "LEFT_TOP		= D3DXVECTOR2(305-4,16-4)",
 	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pRadioButton_Command:SetGroupID( 2 )

-- ----------------- 버튼이름

-- g_pStatic_BTN_Command= g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic_BTN_Command )
-- g_pStatic_BTN_Command:SetName( "Static_BTN_Command" )

-- g_pStatic_BTN_Command:AddString
-- {
	-- MSG 			= STR_ID_4770,
	-- FONT_INDEX		= XUF_DODUM_11_NORMAL,
    -- FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	-- SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	-- "POS 			= D3DXVECTOR2(305+38,16+4)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	-- "OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
-- }




----------------------------------------------------------------------------------------
--------------------------------         분류버튼         -------------------------------
----------------------------------------------------------------------------------------
-----------------                     일반                ----------------------
g_pRadioButton_Basic = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Basic )
g_pRadioButton_Basic:SetName( "RadioButton_Basic" )

g_pRadioButton_Basic:SetNormalTex( "DLG_UI_Button14.tga", "Basic_Normal" )
g_pRadioButton_Basic:SetOverTex( "DLG_UI_Button14.tga", "Basic_Over" )
g_pRadioButton_Basic:SetCheckedTex( "DLG_UI_Button14.tga", "Basic_Over" )


g_pRadioButton_Basic:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(20,54-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Basic:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(20-1,54-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Basic:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(20,54)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(20+40,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Basic:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(20-1,54-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Basic:SetCustomMsgChecked( COMBO_TREE_UI_CUSTOM_MSG["CTUCM_CATEGORY_NORMAL_COMBO"] ) 
g_pRadioButton_Basic:SetChecked( true )
g_pRadioButton_Basic:SetGroupID( 3 )




-----------------                     점프                ----------------------
g_pRadioButton_Jump = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Jump )
g_pRadioButton_Jump:SetName( "RadioButton_Jump" )

g_pRadioButton_Jump:SetNormalTex( "DLG_UI_Button14.tga", "Jump_Normal" )
g_pRadioButton_Jump:SetOverTex( "DLG_UI_Button14.tga", "Jump_Over" )
g_pRadioButton_Jump:SetCheckedTex( "DLG_UI_Button14.tga", "Jump_Over" )


g_pRadioButton_Jump:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(59+15,54-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Jump:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(59-1+14,54-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Jump:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(59+15,54)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(59+33+15,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Jump:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(59-1+14,54-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Jump:SetCustomMsgChecked( COMBO_TREE_UI_CUSTOM_MSG["CTUCM_CATEGORY_JUMP_COMBO"] ) 
g_pRadioButton_Jump:SetGroupID( 3 )


-----------------                     대시               ----------------------
g_pRadioButton_Dash = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Dash )
g_pRadioButton_Dash:SetName( "RadioButton_Dash" )

g_pRadioButton_Dash:SetNormalTex( "DLG_UI_Button14.tga", "Dash_Normal" )
g_pRadioButton_Dash:SetOverTex( "DLG_UI_Button14.tga", "Dash_Over" )
g_pRadioButton_Dash:SetCheckedTex( "DLG_UI_Button14.tga", "Dash_Over" )


g_pRadioButton_Dash:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(98+15+3,54+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Dash:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(98-1+16+3,54-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Dash:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(98+15+3,54+1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(98+33+15+3,80+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Dash:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(98-1+16+3,54-1+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Dash:SetCustomMsgChecked( COMBO_TREE_UI_CUSTOM_MSG["CTUCM_CATEGORY_DASH_COMBO"] ) 
g_pRadioButton_Dash:SetGroupID( 3 )


-----------------                     대시점프               ----------------------
g_pRadioButton_Dash_Jump = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Dash_Jump )
g_pRadioButton_Dash_Jump:SetName( "RadioButton_Dash_Jump" )

g_pRadioButton_Dash_Jump:SetNormalTex( "DLG_UI_Button14.tga", "Dash_Jump_Normal" )
g_pRadioButton_Dash_Jump:SetOverTex( "DLG_UI_Button14.tga", "Dash_Jump_Over" )
g_pRadioButton_Dash_Jump:SetCheckedTex( "DLG_UI_Button14.tga", "Dash_Jump_Over" )


g_pRadioButton_Dash_Jump:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(137+15+6+4,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Dash_Jump:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(137-1+15+7+4,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Dash_Jump:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(137+15+6+4,54)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(137+59+15+6+4,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Dash_Jump:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(137-1+15+7+4,54)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Dash_Jump:SetCustomMsgChecked( COMBO_TREE_UI_CUSTOM_MSG["CTUCM_CATEGORY_DASH_JUMP_COMBO"] ) 
g_pRadioButton_Dash_Jump:SetGroupID( 3 )












  
g_pStatic_Opacity = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Opacity )
g_pStatic_Opacity:SetName( "g_pStatic_Opacity" )
  
g_pPicture_Opacity_BG = g_pUIDialog:CreatePicture() 
g_pStatic_Opacity:AddPicture( g_pPicture_Opacity_BG )

g_pPicture_Opacity_BG:SetTex( "DLG_UI_Common_Texture11.TGA", "Opacity_BG" )

g_pPicture_Opacity_BG:SetPoint
{
	   
	"LEFT_TOP  = D3DXVECTOR2(353,52)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME  = 0.0,
	 
 }  

g_pSliderOpacity = g_pUIDialog:CreateSlider()
g_pUIDialog:AddControl( g_pSliderOpacity )
g_pSliderOpacity:SetName( "Slider_Opacity" )

g_pSliderOpacity:SetBGTex( "DLG_Common_Button00.tga", "invisible" )
g_pSliderOpacity:SetButtonTex( "DLG_UI_Common_Texture11.tga", "Opacity_Controler" )

g_pSliderOpacity:SetPos( 369,52 )
g_pSliderOpacity:SetSize( 55, 24 ) 
g_pSliderOpacity:SetButtonSize( 18, 24 ) 

g_pSliderOpacity:SetRange( 50, 255 )
g_pSliderOpacity:SetValue( 255 )
g_pSliderOpacity:SetCustomMsgValueChanged( COMBO_TREE_UI_CUSTOM_MSG["CTUCM_SLIDE_OPACITY"] )


