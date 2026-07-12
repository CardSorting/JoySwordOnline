-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetPos(50,0)
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_BINGO_CUSTOM_MSG["UBCM_CLOSE"] )

-------------------------------------------------------------------------------------
--배경 레이아웃
g_pStatic_BackLayout = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BackLayout )
	
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_BackLayout:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pPicture:SetPoint
{	
	ADD_SIZE_X = 1074,
	ADD_SIZE_Y = 768,
	--"LEFT_TOP		= D3DXVECTOR2(-1024, -768)",
	"LEFT_TOP		= D3DXVECTOR2( -50, 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

---------빙고 BG(회색 배경)--추후에 수정

g_pStatic_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Background )
g_pStatic_Background:SetShow(true)

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_03.TGA", "BG_MAINBACK_LT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(137,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_03.TGA", "BG_MAINBACK_MT" )
g_pPicture_bg1:SetPoint
{  
     ADD_SIZE_X = 590,
	"LEFT_TOP		= D3DXVECTOR2(137+18,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_03.TGA", "BG_MAINBACK_RT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(764,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_03.TGA", "BG_MAINBACK_LB" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(136,589)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_03.TGA", "BG_MAINBACK_RB" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(765,589)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_03.TGA", "BG_MAINBACK_MB" )
g_pPicture_bg1:SetPoint
{  
     ADD_SIZE_X = 592,
	"LEFT_TOP		= D3DXVECTOR2(136+18,589)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--아리엘 텍스쳐
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_01.TGA", "BG_BINGO_RULE_TEXT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(350,113)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--규칙 가이드
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_ARIEL_RULE" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(158,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--규칙 가이드_그래픽
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_01.TGA", "BG_RULE_TEXT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(398,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------------------------------------------------------------------------
--Exit 버튼
g_pButton_Exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Exit )
g_pButton_Exit:SetNormalTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_EXIT_NORMAL" )
g_pButton_Exit:SetOverTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_EXIT_OVER" )
g_pButton_Exit:SetDownTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_EXIT_OVER" )
g_pButton_Exit:SetShow(true)
g_pButton_Exit:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(748,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exit:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(748-3,90-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exit:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(748-2,90-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exit:SetCustomMsgMouseUp( UI_BINGO_CUSTOM_MSG["UBCM_CLOSE"] )

-------------------------------------------------------------------------------------
--오른쪽 상단 정보표시( 기회, 빙고줄 정보)
g_pStatic_Info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Info )
g_pStatic_Info:SetName( "Bingo_Info" )
g_pStatic_Info:SetShow(true)

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Info:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_INFO" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(544,266)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----------String
---숫자뽑기 기회
g_pStatic_Info:AddString
{
	MSG 			= STR_ID_5001,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(728, 297)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
---사용한 숫자 기회
g_pStatic_Info:AddString
{
	MSG 			= STR_ID_5001,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(728, 297+50)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
---완성 빙고줄
g_pStatic_Info:AddString
{
	MSG 			= STR_ID_5001,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(728, 297+100)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
---남은 빙고줄
g_pStatic_Info:AddString
{
	MSG 			= STR_ID_5001,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(728, 297+150)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-------------------------------------------------------------------------------------
--오른쪽 하단 특수 기능 버튼 (초기화, 뒤섞기)
--bg_초기화
g_pStatic_FucntionBack = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_FucntionBack )
g_pStatic_FucntionBack:SetName( "Bingo_Function" )
g_pStatic_FucntionBack:SetShow(true)

----------String
---초기화
g_pStatic_FucntionBack:AddString
{
	MSG 			= STR_ID_5001,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(627, 612)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
---뒤섞기
g_pStatic_FucntionBack:AddString
{
	MSG 			= STR_ID_5001,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(672, 612)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_FucntionBack:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_RESET" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(551,484)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--bg_뒤섞기
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_FucntionBack:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_MIX" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(652,484)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--빙고 버튼 백판
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_FucntionBack:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_03.TGA", "BG_MAINBINGO_BACK" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(541,564 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------------------------------------------------------------------------------
----기능 버튼
--초기화 버튼
g_pButton_Initialize = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Initialize )
g_pButton_Initialize:SetName( "Bingo_Initialize" )
g_pButton_Initialize:SetNormalTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_RESET_NORMAL" )
g_pButton_Initialize:SetOverTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_RESET_OVER" )
g_pButton_Initialize:SetDownTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_RESET_OVER" )
g_pButton_Initialize:SetDisableTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_BINGO_DISABLE" )
g_pButton_Initialize:SetShow(true)
g_pButton_Initialize:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(563,504)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Initialize:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(563-3-12,504-3-12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Initialize:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(563-2-12,504-2-12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Initialize:SetDisablePoint
{	
	"LEFT_TOP		= D3DXVECTOR2(563-4,504)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Initialize:SetCustomMsgMouseUp( UI_BINGO_CUSTOM_MSG["UBCM_INITIALIZE"] )

--뒤섞기 버튼
g_pButton_ValueMix = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ValueMix )
g_pButton_ValueMix:SetName( "Bingo_ValueMix" )
g_pButton_ValueMix:SetNormalTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_MIX_NORMAL" )
g_pButton_ValueMix:SetOverTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_MIX_OVER" )
g_pButton_ValueMix:SetDownTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_MIX_OVER" )
g_pButton_ValueMix:SetDisableTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_BINGO_DISABLE" )
g_pButton_ValueMix:SetShow(true)
g_pButton_ValueMix:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(563+101,504)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ValueMix:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(563-3-12+102,504-3-13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ValueMix:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(563-2-12+102,504-2-13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ValueMix:SetDisablePoint
{
	"LEFT_TOP		= D3DXVECTOR2(563+101-4,504)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ValueMix:SetCustomMsgMouseUp( UI_BINGO_CUSTOM_MSG["UBCM_VALUE_MIX"] )

--빙고 돌리기 버튼
g_pButton_Lottery = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Lottery )
g_pButton_Lottery:SetName( "Bingo_Lottery" )
g_pButton_Lottery:SetNormalTex( "DLG_UI_Common_Texture_Event_03.tga", "BT_MAIN_BINGO_NORMAL" )
g_pButton_Lottery:SetOverTex( "DLG_UI_Common_Texture_Event_03.tga", "BT_MAIN_BINGO_OVER" )
g_pButton_Lottery:SetDownTex( "DLG_UI_Common_Texture_Event_03.tga", "BT_MAIN_BINGO_DOWN" )
g_pButton_Lottery:SetDisableTex( "DLG_UI_Common_Texture_Event_03.tga", "BT_MAIN_BINGO_DISABLE" )
g_pButton_Lottery:SetShow(true)
g_pButton_Lottery:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(744,612)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Lottery:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(744,612)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Lottery:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,
	"LEFT_TOP		= D3DXVECTOR2(744+2,612+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Lottery:SetDisablePoint
{	
	"LEFT_TOP		= D3DXVECTOR2(744+5,612+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Lottery:SetCustomMsgMouseUp( UI_BINGO_CUSTOM_MSG["UBCM_LOTTERY"] )

-------------------------------------------------------------------------------------
--빙고판
---------BG_BINGO_BACK-1
g_pStatic_BingoBack = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BingoBack )
g_pStatic_BingoBack:SetShow(true)

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_BingoBack:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_03.TGA", "BG_BINGO_1_LEFT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(147,266)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_BingoBack:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_03.TGA", "BG_BINGO_1_MIDDLE" )
g_pPicture_bg1:SetPoint
{  
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(157,266)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(502,686)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_BingoBack:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_03.TGA", "BG_BINGO_1_RIGHT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(502,266)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------BG_BINGO_BACK-2
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_BingoBack:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_01.TGA", "BG_BINGO_2_LEFT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(158,337)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_BingoBack:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_01.TGA", "BG_BINGO_2_MIDDLE" )

g_pPicture_bg1:SetPoint
{  
	USE_TEXTURE_SIZE	= FALSE,
    "LEFT_TOP		= D3DXVECTOR2(168,337)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(426,614)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_BingoBack:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_01.TGA", "BG_BINGO_2_RIGHT" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(426,337)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------------------------------------------------------------------------
--빙고판 성공여부 알림
g_pStatic_BingoResultNotice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BingoResultNotice )
g_pStatic_BingoResultNotice:SetShow(true)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_BingoResultNotice:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "BG_TEXT_BAR" )
g_pPicture:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(156,269)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_BingoResultNoticeText = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BingoResultNoticeText )
g_pStatic_BingoResultNoticeText:SetShow(true)
g_pStatic_BingoResultNoticeText:SetName("Bingo_Result")

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_BingoResultNoticeText:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Event_02.TGA", "TEXT_GOOD_1" )
g_pPicture:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(245,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--이번에 얻은 숫자
g_pStatic_BingoResultNoticeText:AddString
{
	MSG 			= STR_ID_5001,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(208, 294)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
-------------------------------------------------------------------------------------
IncludeLua("DLG_UI_Event_Bingo_Number.lua") --빙고 숫자
IncludeLua("DLG_UI_Event_Bingo_Premium.lua") --상품