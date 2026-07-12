--- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_LOCAL_MAP" )
g_pUIDialog:SetPos( 214+2, 122+10 )
--g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetEnableMoveByDrag( true )
--g_pUIDialog:SetCloseCustomUIEventID( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_CLOSE_WINDOW"] )

--[[오현빈//로컬맵 열려 있을 때 , 메인메뉴들 열지 못하도록 막기 위해 만든 빈 버튼
			모달로 하면 던전도구 창도 막히기 때문에 편법 사용.
--]]
g_pButton_Background = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Background  )
g_pButton_Background:SetName( "ClickDislabe" )
g_pButton_Background:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_Background:SetOverTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_Background:SetDownTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_Background:SetNormalPoint
{
	ADD_SIZE_X = 1024,
	ADD_SIZE_Y = 768,
	"LEFT_TOP		= D3DXVECTOR2(-216,405)  ",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Background :SetOverPoint
{
	ADD_SIZE_X = 1024,
	ADD_SIZE_Y = 768,
	"LEFT_TOP		= D3DXVECTOR2(-216,405)  ",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Background :SetDownPoint
{
	ADD_SIZE_X = 1024,
	ADD_SIZE_Y = 768,
	"LEFT_TOP		= D3DXVECTOR2(-216,405)  ",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}


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
g_pStaticlocal:SetOffsetPos(-6, -36)

----------Back Ground
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_TOP" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_TOP" )
g_pPicture_bg:SetPoint
{
        ADD_SIZE_X = 500,
	"LEFT_TOP		= D3DXVECTOR2(0+31,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_TOP" )
g_pPicture_bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0+551,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----------------------------------------------------------------------------------
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_MIDDLE" )
g_pPicture_bg:SetPoint
{
            ADD_SIZE_Y = 329+26+18,
	"LEFT_TOP		= D3DXVECTOR2(0,0+47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_MIDDLE" )
g_pPicture_bg:SetPoint
{
            ADD_SIZE_X = 510,
			ADD_SIZE_Y = 329+26+18,
	"LEFT_TOP		= D3DXVECTOR2(0+31,0+47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_MIDDLE" )
g_pPicture_bg:SetPoint
{
			ADD_SIZE_Y = 329+26+18,
	"LEFT_TOP		= D3DXVECTOR2(0+551,0+47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------------------------------------------------------------------------------
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_BOTTOM" )
g_pPicture_bg:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0,0+385+27+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_BOTTOM" )
g_pPicture_bg:SetPoint
{
             ADD_SIZE_X = 500,
	"LEFT_TOP		= D3DXVECTOR2(0+31,0+385+27+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal :AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_BOTTOM" )
g_pPicture_bg:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0+551,0+385+27+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------------------------------------------------------------------
----------EXIT
--[[
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetOffsetPos(-6, -36)
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "X_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "X_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "X_OVER" )
g_pButtonX:SetNormalPoint
{      
    "LEFT_TOP		= D3DXVECTOR2(558,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(558,10)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(559,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_CLOSE_WINDOW"] )
--]]
----------------------------------------------------기본 UI

----------------------------------------------------지역 버튼
----------루벤외각
g_pRadioButtonruben = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonruben )
g_pRadioButtonruben:SetFixOverByCheck( true )
g_pRadioButtonruben:SetShowOffBGByCheck( true )
g_pRadioButtonruben:SetName( "ruben" )
g_pRadioButtonruben:SetOffsetPos(-6, -36)
g_pRadioButtonruben:SetNormalTex( "DLG_UI_Button20_NEW.tga", "RUBEN_BTN_NORMAL" )
g_pRadioButtonruben:SetOverTex( "DLG_UI_Button20_NEW.tga", "RUBEN_BTN_OVER" )
g_pRadioButtonruben:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "RUBEN_BTN_DOWN" )

g_pRadioButtonruben:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(8,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(8,10-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(8,9)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(64,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(8,7)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonruben:SetGroupID( 1 )
g_pRadioButtonruben:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonruben:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_NORTH"] )
----------루벤외각

----------엘더
g_pRadioButtonruben = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonruben )
g_pRadioButtonruben:SetFixOverByCheck( true )
g_pRadioButtonruben:SetShowOffBGByCheck( true )
g_pRadioButtonruben:SetName( "ruben" )
g_pRadioButtonruben:SetOffsetPos(-6, -36)
g_pRadioButtonruben:SetNormalTex( "DLG_UI_Button20_NEW.tga", "ELDER_BTN_NORMAL" )
g_pRadioButtonruben:SetOverTex( "DLG_UI_Button20_NEW.tga", "ELDER_BTN_OVER" )
g_pRadioButtonruben:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "ELDER_BTN_DOWN" )

g_pRadioButtonruben:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(73,9)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(73+64,9+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(73,7)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonruben:SetGroupID( 1 )
g_pRadioButtonruben:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonruben:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
----------엘더

----------베스마
g_pRadioButtonruben = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonruben )
g_pRadioButtonruben:SetFixOverByCheck( true )
g_pRadioButtonruben:SetShowOffBGByCheck( true )
g_pRadioButtonruben:SetName( "ruben" )
g_pRadioButtonruben:SetOffsetPos(-6, -36)
g_pRadioButtonruben:SetNormalTex( "DLG_UI_Button20_NEW.tga", "BESMA_BTN_NORMAL" )
g_pRadioButtonruben:SetOverTex( "DLG_UI_Button20_NEW.tga", "BESMA_BTN_OVER" )
g_pRadioButtonruben:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "BESMA_BTN_DOWN" )

g_pRadioButtonruben:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(73+65,9)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(73+65+64,9+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(73+65,7)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonruben:SetGroupID( 1 )
g_pRadioButtonruben:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonruben:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
----------베스마

----------페이타
g_pRadioButtonruben = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonruben )
g_pRadioButtonruben:SetFixOverByCheck( true )
g_pRadioButtonruben:SetShowOffBGByCheck( true )
g_pRadioButtonruben:SetName( "ruben" )
g_pRadioButtonruben:SetOffsetPos(-6, -36)
g_pRadioButtonruben:SetNormalTex( "DLG_UI_Button20_NEW.tga", "PEITA_BTN_NORMAL" )
g_pRadioButtonruben:SetOverTex( "DLG_UI_Button20_NEW.tga", "PEITA_BTN_OVER" )
g_pRadioButtonruben:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "PEITA_BTN_DOWN" )

g_pRadioButtonruben:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65*3,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65*3,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(73+65*3,9)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(73+65*3+64,9+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(73+65*3,7)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonruben:SetGroupID( 1 )
g_pRadioButtonruben:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonruben:AddDummyInt( LOCAL_MAP_ID["LMI_PEITA"] )
----------페이타

----------알테라
g_pRadioButtonruben = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonruben )
g_pRadioButtonruben:SetFixOverByCheck( true )
g_pRadioButtonruben:SetShowOffBGByCheck( true )
g_pRadioButtonruben:SetName( "ruben" )
g_pRadioButtonruben:SetOffsetPos(-6, -36)
g_pRadioButtonruben:SetNormalTex( "DLG_UI_Button20_NEW.tga", "ALTERA_BTN_NORMAL" )
g_pRadioButtonruben:SetOverTex( "DLG_UI_Button20_NEW.tga", "ALTERA_BTN_OVER" )
g_pRadioButtonruben:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "ALTERA_BTN_DOWN" )

g_pRadioButtonruben:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65*2,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65*2,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(73+65*2,9)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(73+65*2+64,9+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(73+65*2,7)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonruben:SetGroupID( 1 )
g_pRadioButtonruben:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonruben:AddDummyInt( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
----------알테라

----------벨더
g_pRadioButtonruben = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonruben )
g_pRadioButtonruben:SetFixOverByCheck( true )
g_pRadioButtonruben:SetShowOffBGByCheck( true )
g_pRadioButtonruben:SetName( "ruben" )
g_pRadioButtonruben:SetOffsetPos(-6, -36)
g_pRadioButtonruben:SetNormalTex( "DLG_UI_Button20_NEW.tga", "VELDER_BTN_NORMAL" )
g_pRadioButtonruben:SetOverTex( "DLG_UI_Button20_NEW.tga", "VELDER_BTN_OVER" )
g_pRadioButtonruben:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "VELDER_BTN_DOWN" )

g_pRadioButtonruben:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65*4,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65*4,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(73+65*4,9)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(73+65*4+64,9+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(73+65*4,7)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonruben:SetGroupID( 1 )
g_pRadioButtonruben:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonruben:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER"] )
----------벨더

----------하멜
g_pRadioButtonruben = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonruben )
g_pRadioButtonruben:SetFixOverByCheck( true )
g_pRadioButtonruben:SetShowOffBGByCheck( true )
g_pRadioButtonruben:SetName( "ruben" )
g_pRadioButtonruben:SetOffsetPos(-6, -36)
g_pRadioButtonruben:SetNormalTex( "DLG_UI_Button20_NEW.tga", "HAMEL_BTN_NORMAL" )
g_pRadioButtonruben:SetOverTex( "DLG_UI_Button20_NEW.tga", "HAMEL_BTN_OVER" )
g_pRadioButtonruben:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "HAMEL_BTN_DOWN" )

g_pRadioButtonruben:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65*5,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65*5,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(73+65*5,9)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(73+65*5+64,9+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(73+65*5,7)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonruben:SetGroupID( 1 )
g_pRadioButtonruben:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonruben:AddDummyInt( LOCAL_MAP_ID["LMI_HAMEL"] )
----------하멜

----------샌더
g_pRadioButtonruben = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonruben )
g_pRadioButtonruben:SetFixOverByCheck( true )
g_pRadioButtonruben:SetShowOffBGByCheck( true )
g_pRadioButtonruben:SetName( "ruben" )
g_pRadioButtonruben:SetOffsetPos(-6, -36)
g_pRadioButtonruben:SetNormalTex( "DLG_UI_Button20_NEW.tga", "SANDER_BTN_NORMAL" )
g_pRadioButtonruben:SetOverTex( "DLG_UI_Button20_NEW.tga", "SANDER_BTN_OVER" )
g_pRadioButtonruben:SetCheckedTex( "DLG_UI_Button20_NEW.tga", "SANDER_BTN_DOWN" )

g_pRadioButtonruben:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65*6,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(73+65*6,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(73+65*6,9)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(73+65*6+64,9+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonruben:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(73+65*6,7)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonruben:SetGroupID( 1 )
g_pRadioButtonruben:SetCustomMsgChecked( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_GATE_SELECTED"] )
g_pRadioButtonruben:AddDummyInt( LOCAL_MAP_ID["LMI_SANDER"] )


----------MAIN BAR

g_pStaticlocal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticlocal )
g_pStaticlocal:SetOffsetPos(-6, -36)

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticlocal:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "MAIN_BAR" )
g_pPicture_bg:SetPoint
{
	ADD_SIZE_X = 309,
	"LEFT_TOP		= D3DXVECTOR2(4,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 오현빈 // 2012-07-17 // 퀘스트 가이드 Q마크
g_pStatic_Quest = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Quest )
g_pStatic_Quest:SetName( "QuestGuide" )
g_pStatic_Quest:SetOffsetPos(-6, -36)

g_pPicture = g_pUIDialog:CreatePicture() --0 루벤
g_pStatic_Quest:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.TGA", "Quset_Notice_Small" )
g_pPicture:SetPoint
{
	ADD_SIZE_X = - 10;
	ADD_SIZE_Y = - 10;
	"LEFT_TOP		= D3DXVECTOR2(0,-10)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.7)",
}
g_pPicture:SetIndex( LOCAL_MAP_ID["LMI_VELDER_NORTH"] )
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture() --0 엘더
g_pStatic_Quest:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.TGA", "Quset_Notice_Small" )
g_pPicture:SetPoint
{
	ADD_SIZE_X = - 10;
	ADD_SIZE_Y = - 10;
	"LEFT_TOP		= D3DXVECTOR2(65,-10)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.7)",
}
g_pPicture:SetIndex( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture() --0 베스마
g_pStatic_Quest:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.TGA", "Quset_Notice_Small" )
g_pPicture:SetPoint
{
	ADD_SIZE_X = - 10;
	ADD_SIZE_Y = - 10;
	"LEFT_TOP		= D3DXVECTOR2(65*2,-10)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.7)",
}
g_pPicture:SetIndex( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture() --0 알테라
g_pStatic_Quest:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.TGA", "Quset_Notice_Small" )
g_pPicture:SetPoint
{
	ADD_SIZE_X = - 10;
	ADD_SIZE_Y = - 10;
	"LEFT_TOP		= D3DXVECTOR2(65*3,-10)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.7)",
}
g_pPicture:SetIndex( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture() --0 페이타
g_pStatic_Quest:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.TGA", "Quset_Notice_Small" )
g_pPicture:SetPoint
{
	ADD_SIZE_X = - 10;
	ADD_SIZE_Y = - 10;
	"LEFT_TOP		= D3DXVECTOR2(65*4,-10)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.7)",
}
g_pPicture:SetIndex( LOCAL_MAP_ID["LMI_PEITA"] )
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture() --0 벨더
g_pStatic_Quest:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.TGA", "Quset_Notice_Small" )
g_pPicture:SetPoint
{
	ADD_SIZE_X = - 10;
	ADD_SIZE_Y = - 10;
	"LEFT_TOP		= D3DXVECTOR2(65*5,-10)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.7)",
}
g_pPicture:SetIndex( LOCAL_MAP_ID["LMI_VELDER"] )
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture() --0 하멜
g_pStatic_Quest:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.TGA", "Quset_Notice_Small" )
g_pPicture:SetPoint
{
	ADD_SIZE_X = - 10;
	ADD_SIZE_Y = - 10;
	"LEFT_TOP		= D3DXVECTOR2(65*6,-10)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.7)",
}
g_pPicture:SetIndex( LOCAL_MAP_ID["LMI_HAMEL"] )
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture() --0 샌더
g_pStatic_Quest:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.TGA", "Quset_Notice_Small" )
g_pPicture:SetPoint
{
	ADD_SIZE_X = - 10;
	ADD_SIZE_Y = - 10;
	"LEFT_TOP		= D3DXVECTOR2(65*7,-10)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.7)",
}
g_pPicture:SetIndex( LOCAL_MAP_ID["LMI_SANDER"] )
g_pPicture:SetShow(false)
--}} 오현빈 // 2012-07-17 // 퀘스트 가이드 Q마크


--{{ 전진우_발렌타인 이벤트 마크
-- g_pStatic_Event = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic_Event )
-- g_pStatic_Event:SetShow(true)

-- g_pPicture = g_pUIDialog:CreatePicture()
-- g_pStatic_Event:AddPicture( g_pPicture )
-- g_pPicture:SetTex( "DLG_UI_Common_Texture78_NEW.TGA", "valentine_event" )
-- g_pPicture:SetPoint
-- {
	-- "LEFT_TOP		= D3DXVECTOR2(77-41,-133+11)",
	-- "COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
-- }
-- g_pPicture:SetShow(true)