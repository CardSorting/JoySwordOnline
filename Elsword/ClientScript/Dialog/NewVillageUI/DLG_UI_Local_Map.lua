-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_LOCAL_MAP" )
g_pUIDialog:SetPos( 80, 15 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_CLOSE_WINDOW"] )

function IconAni( button, FileName, Key )
	button:SetOverAnimTex
	{		
		FileName		= FileName,
		KeyName			= Key,
	
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1.05,0.95)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 0,
		fShowTime		= 0.1,
	}
	button:SetOverAnimTex
	{		
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(0.95,1.05)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 1,
		fShowTime		= 0.1,
	}
	button:SetOverAnimTex
	{		
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1,1)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 2,
		fShowTime		= 0.2,
		
		bEndTexChange	= TRUE,
	}

end

g_pStaticlocal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticlocal )
g_pStaticlocal:SetName( "local" )

----------Back Ground
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg1_top1" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg1_top2" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(388,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg1_middle1" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 643,
	"LEFT_TOP		= D3DXVECTOR2(0,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg1_middle2" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 643,
	"LEFT_TOP		= D3DXVECTOR2(388,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg1_bottom1" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,656)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg1_bottom2" )
g_pPicture_bg:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(388,656)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------Back Ground2
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg2_top1" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(14,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg2_top2" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(388,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg2_middle1" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 582,
	"LEFT_TOP		= D3DXVECTOR2(14,62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg2_middle2" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 582,
	"LEFT_TOP		= D3DXVECTOR2(388,62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg2_bottom1" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(14,645)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg2_bottom2" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(388,645)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----------Back Ground3
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg3_top1" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(17,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg3_top2" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(388,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg3_middle1" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 546,
	"LEFT_TOP		= D3DXVECTOR2(17,97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg3_middle2" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 546,
	"LEFT_TOP		= D3DXVECTOR2(388,97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg3_bottom1" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(17,644)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg3_bottom2" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(388,644)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------Back Ground4
g_pStaticmap = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticmap )
g_pStaticmap:SetName( "map" )

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticmap:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg4_top1" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(27,97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticmap:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg4_top2" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(388,97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticmap:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg4_middle1" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 533,
	"LEFT_TOP		= D3DXVECTOR2(27,103)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticmap:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg4_middle2" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 533,
	"LEFT_TOP		= D3DXVECTOR2(388,103)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticmap:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg4_bottom1" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(27,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticmap:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "local_map_bg4_bottom2" )
g_pPicture_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(388,637)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicturemark = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicturemark )
g_pPicturemark:SetTex( "DLG_UI_Common_Texture02.tga", "feel" )
g_pPicturemark:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(15,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
----------
----------메시지
Static_message = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( Static_message )
Static_message:SetName( "Static_message" )

Static_message:AddString
{
	MSG 			= STR_ID_1300, 
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(36 + 29 + 5 , 20 + 29 + 3 )",
	"COLOR			= D3DXCOLOR(1.0,0.7,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--
g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticlocal:AddPicture( g_pPicturebar )
g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicturebar:SetPoint
{
	ADD_SIZE_X = 756,
	"LEFT_TOP		= D3DXVECTOR2(9,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
----------
----------EXIT
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(737,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(733,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(733+1,11 +1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_CLOSE_WINDOW"] )
----------------------------------------------------기본 UI

----------------------------------------------------지역 버튼
----------루벤외각
g_pRadioButtonruben = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonruben )
g_pRadioButtonruben:SetFixOverByCheck( true )
g_pRadioButtonruben:SetShowOffBGByCheck( true )
g_pRadioButtonruben:SetName( "ruben" )
g_pRadioButtonruben:SetNormalTex( "DLG_UI_Button07.tga", "ruben_outer_normal" )
g_pRadioButtonruben:SetOverTex( "DLG_UI_Button07.tga", "ruben_outer_over" )
g_pRadioButtonruben:SetCheckedTex( "DLG_UI_Button07.tga", "ruben_outer_down" )

g_pRadioButtonruben:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(24,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(24,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(24,60)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(105,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(27,57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonruben:SetGroupID( 1 )
g_pRadioButtonruben:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonruben:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_NORTH"] )
----------루벤외각

----------엘더외곽
g_pRadioButtoneldu = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtoneldu )
g_pRadioButtonruben:SetFixOverByCheck( true )
g_pRadioButtonruben:SetShowOffBGByCheck( true )
g_pRadioButtoneldu:SetName( "eldu" )
g_pRadioButtoneldu:SetNormalTex( "DLG_UI_Button07.tga", "eldu_outer_normal" )
g_pRadioButtoneldu:SetOverTex( "DLG_UI_Button07.tga", "eldu_outer_over" )
g_pRadioButtoneldu:SetCheckedTex( "DLG_UI_Button07.tga", "eldu_outer_down" )
g_pRadioButtoneldu:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(103,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtoneldu:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(103,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtoneldu:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(106,60)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(185,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtoneldu:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(106,57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoneldu:SetGroupID( 1 )
g_pRadioButtoneldu:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtoneldu:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
----------엘더외곽

----------베스마 산맥
g_pRadioButtonbesma= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonbesma)
g_pRadioButtonbesma:SetFixOverByCheck( true )
g_pRadioButtonbesma:SetShowOffBGByCheck( true )
g_pRadioButtonbesma:SetName( "besma" )
g_pRadioButtonbesma:SetNormalTex( "DLG_UI_Button07.tga", "besma_mt_normal" )
g_pRadioButtonbesma:SetOverTex( "DLG_UI_Button07.tga", "besma_mt_over" )
g_pRadioButtonbesma:SetCheckedTex( "DLG_UI_Button07.tga", "besma_mt_down" )

g_pRadioButtonbesma:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(183,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonbesma:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(183,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonbesma:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(186,60)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(265,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonbesma:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(186,57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonbesma:SetGroupID( 1 )
g_pRadioButtonbesma:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonbesma:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
----------베스마 산맥

----------페이타
g_pRadioButtonpeita= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonpeita)
g_pRadioButtonpeita:SetFixOverByCheck( true )
g_pRadioButtonpeita:SetShowOffBGByCheck( true )
g_pRadioButtonpeita:SetName( "peita" )
g_pRadioButtonpeita:SetNormalTex( "DLG_UI_Button07.tga", "peita_normal" )
g_pRadioButtonpeita:SetOverTex( "DLG_UI_Button07.tga", "peita_over" )
g_pRadioButtonpeita:SetCheckedTex( "DLG_UI_Button07.tga", "peita_down" )
g_pRadioButtonpeita:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(263,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonpeita:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(263,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonpeita:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(263,60)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(345,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonpeita:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(266,57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonpeita:SetGroupID( 1 )
g_pRadioButtonpeita:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonpeita:AddDummyInt( LOCAL_MAP_ID["LMI_PEITA"] )
----------페이타

----------알테라 섬
g_pRadioButtonaltera= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonaltera)
g_pRadioButtonaltera:SetFixOverByCheck( true )
g_pRadioButtonaltera:SetShowOffBGByCheck( true )
g_pRadioButtonaltera:SetName( "altera" )
g_pRadioButtonaltera:SetNormalTex( "DLG_UI_Button07.tga", "altera_island_normal" )
g_pRadioButtonaltera:SetOverTex( "DLG_UI_Button07.tga", "altera_island_over" )
g_pRadioButtonaltera:SetCheckedTex( "DLG_UI_Button07.tga", "altera_island_down" )
g_pRadioButtonaltera:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(343,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonaltera:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(343,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonaltera:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(346,60)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(425,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonaltera:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(346,57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonaltera:SetGroupID( 1 )
g_pRadioButtonaltera:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonaltera:AddDummyInt( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
----------알테라 섬

----------벨더
g_pRadioButtonvelder= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonvelder)
g_pRadioButtonvelder:SetFixOverByCheck( true )
g_pRadioButtonvelder:SetShowOffBGByCheck( true )
g_pRadioButtonvelder:SetName( "velder" )
g_pRadioButtonvelder:SetNormalTex( "DLG_UI_Button14.tga", "VELDER_CAPITAL_NORMAL" )
g_pRadioButtonvelder:SetOverTex( "DLG_UI_Button14.tga", "VELDER_CAPITAL_OVER" )
g_pRadioButtonvelder:SetCheckedTex( "DLG_UI_Button14.tga", "VELDER_CAPITAL_DOWN" )
g_pRadioButtonvelder:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(423,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonvelder:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(423,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonvelder:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(423,60)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(505,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonvelder:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(426,57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonvelder:SetGroupID( 1 )
g_pRadioButtonvelder:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonvelder:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER"] )
----------벨더

----------하멜
g_pRadioButtonhamel= g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonhamel)
g_pRadioButtonhamel:SetFixOverByCheck( true )
g_pRadioButtonhamel:SetShowOffBGByCheck( true )
g_pRadioButtonhamel:SetName( "hamel" )
g_pRadioButtonhamel:SetNormalTex( "DLG_UI_Button15.tga", "HAMEL_OUT_NORMAL" )
g_pRadioButtonhamel:SetOverTex( "DLG_UI_Button15.tga", "HAMEL_OUT_OVER" )
g_pRadioButtonhamel:SetCheckedTex( "DLG_UI_Button15.tga", "HAMEL_OUT_DOWN" )
g_pRadioButtonhamel:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(503+3,60+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonhamel:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(503+3,60+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonhamel:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(506+3,60+3)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(558+3,92+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonhamel:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(506,57+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonhamel:SetGroupID( 1 )
g_pRadioButtonhamel:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonhamel:AddDummyInt( LOCAL_MAP_ID["LMI_HAMEL"] )
----------하멜
----------------------------------------------------지역 버튼