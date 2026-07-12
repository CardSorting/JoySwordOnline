-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_MAKE_PET_NAME" )
--g_pUIDialog:SetPos( -200, -100 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( PET_CUSTOM_UI_MSG["PCUM_MAKE_NAME_CLOSE"] )

--Static
g_pStatic_Pat_Name_Make = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Name_Make )
g_pStatic_Pat_Name_Make:SetName( "g_pStatic_Pat_Name_Make" )



-----BG
g_pPicture_Pat_Name_Make_Bg_Top = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_Bg_Top )
g_pPicture_Pat_Name_Make_Bg_Top:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_NAME_MAKE_BG_TOP" )
g_pPicture_Pat_Name_Make_Bg_Top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(390,180)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Pat_Name_Make_Bg_Middle = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_Bg_Middle )
g_pPicture_Pat_Name_Make_Bg_Middle:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_NAME_MAKE_BG_MIDDLE" )
g_pPicture_Pat_Name_Make_Bg_Middle:SetPoint
{
     ADD_SIZE_Y = 240,
	"LEFT_TOP		= D3DXVECTOR2(390,196)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Name_Make_Bg_Bottom = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_Bg_Bottom )
g_pPicture_Pat_Name_Make_Bg_Bottom:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_NAME_MAKE_BG_BOTTOM" )
g_pPicture_Pat_Name_Make_Bg_Bottom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(390,437)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----bg_b

g_pPicture_Pat_Name_Make_Black_Bg_Top = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_Black_Bg_Top )
g_pPicture_Pat_Name_Make_Black_Bg_Top:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_NAME_MAKE_GRAY_TOP" )

g_pPicture_Pat_Name_Make_Black_Bg_Top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(407,230)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Name_Make_Black_Bg_Middle = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_Black_Bg_Middle )
g_pPicture_Pat_Name_Make_Black_Bg_Middle:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_NAME_MAKE_GRAY_MIDDLE" )

g_pPicture_Pat_Name_Make_Black_Bg_Middle:SetPoint
{
     ADD_SIZE_Y = 131,
	"LEFT_TOP		= D3DXVECTOR2(407,240)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Name_Make_Black_Bg_Bottom = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_Black_Bg_Bottom )
g_pPicture_Pat_Name_Make_Black_Bg_Bottom:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_NAME_MAKE_GRAY_BOTTOM" )

g_pPicture_Pat_Name_Make_Black_Bg_Bottom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(407,374)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-----펫 이름 창

g_pPicture_Pat_Name_Make_Win_Top = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_Win_Top )

g_pPicture_Pat_Name_Make_Win_Top:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_NAME_MAKE_WIN_TOP" )
g_pPicture_Pat_Name_Make_Win_Top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(408,232)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Name_Make_Win_Middle = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_Win_Middle )
g_pPicture_Pat_Name_Make_Win_Middle:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_NAME_MAKE_WIN_MIDDLE" )

g_pPicture_Pat_Name_Make_Win_Middle:SetPoint
{
    ADD_SIZE_Y = 130,
	"LEFT_TOP		= D3DXVECTOR2(408-1,235+9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Name_Make_Win_Bottom = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_Win_Bottom )
g_pPicture_Pat_Name_Make_Win_Bottom:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_NAME_MAKE_WIN_BOTTOM" )

g_pPicture_Pat_Name_Make_Win_Bottom:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(408,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----EXIT 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )

g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(635,198)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(631,194)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(631+1,194+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_MAKE_NAME_CLOSE"] )



----- 타이틀

g_pStatic_Pat_Name_Make_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Name_Make_Title )
g_pStatic_Pat_Name_Make_Title:SetName( "Pat_Name_Make_Title" )

g_pStatic_Pat_Name_Make_Title:AddString
{
	MSG 			= STR_ID_5335, --"펫 이름을 지어주세요.",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(485,200)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


	

	
------ 주의사항(내용) 느낌표
g_pPicture_Pat_Name_Make_Mark = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_Mark )
g_pPicture_Pat_Name_Make_Mark:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_EXCLA_MARK" )

g_pPicture_Pat_Name_Make_Mark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(416,240)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

	
	

----- 주의해 주세요

g_pStatic_Pat_Name_Make_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Name_Make_Title )
g_pStatic_Pat_Name_Make_Title:SetName( "Pat_Name_Make_Title" )

g_pStatic_Pat_Name_Make_Title:AddString
{
	MSG 			= STR_ID_5336, --"주의해 주세요.",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(438,243)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}



g_pStatic_Pat_Name_Make_Cont01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Name_Make_Cont01 )
g_pStatic_Pat_Name_Make_Cont01:SetName( "Pat_Name_Make_Cont01" )

g_pStatic_Pat_Name_Make_Cont01:AddString
{
	MSG 			= STR_ID_5337, --"■ 영어는 12자, 한글은 6자까지 가능합니다.\n■ #$%같은 특수문자를 사용할 수 없습니다.\n■ 띄어쓰기를 사용할 수 없습니다.",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(416,262)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}


g_pStatic_Pat_Name_Make_Cont01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Name_Make_Cont01 )
g_pStatic_Pat_Name_Make_Cont01:SetName( "Pat_Name_Make_Cont01" )

g_pStatic_Pat_Name_Make_Cont01:AddString
{
	MSG 			= STR_ID_5338, --"■ 한번 결정하면 다시 변경할 수 없습니다.",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(416,304)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}



-------------- 가로 경계 선
g_pPicture_Bar = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make :AddPicture( g_pPicture_Bar )
g_pPicture_Bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_Bar:SetPoint
{

	ADD_SIZE_X = 235,
	"LEFT_TOP		= D3DXVECTOR2(415,323)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}






----- IME 회색 배경
g_pPicture_Pat_Name_Make_IME_Bg_Left = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_IME_Bg_Left )
g_pPicture_Pat_Name_Make_IME_Bg_Left:SetTex( "DLG_UI_Common_Texture01.TGA", "ED_BOX_LEFT" )

g_pPicture_Pat_Name_Make_IME_Bg_Left:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(417,330)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Pat_Name_Make_IME_Bg_Middle = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_IME_Bg_Middle )
g_pPicture_Pat_Name_Make_IME_Bg_Middle:SetTex( "DLG_UI_Common_Texture01.TGA", "ED_BOX_MIDDLE" )

g_pPicture_Pat_Name_Make_IME_Bg_Middle:SetPoint
{
     ADD_SIZE_X = 220,
	"LEFT_TOP		= D3DXVECTOR2(417+6,330)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Name_Make_IME_Bg_Right= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Name_Make:AddPicture( g_pPicture_Pat_Name_Make_IME_Bg_Right )
g_pPicture_Pat_Name_Make_IME_Bg_Right:SetTex( "DLG_UI_Common_Texture01.TGA", "ED_BOX_RIGHT" )

g_pPicture_Pat_Name_Make_IME_Bg_Right:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(644,330)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-- IME 입력
g_pIME_EditName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_EditName )
g_pIME_EditName:SetName( "MakePetNameEditBox" )
g_pIME_EditName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(422,333)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(422+255,333+17)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_EditName:SetFont( XUF_DODUM_13_SEMIBOL )
g_pIME_EditName:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_EditName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_EditName:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditName:SetByteLimit(12)
--g_pIME_EditName:SetCustomMsgEnter( PET_CUSTOM_UI_MSG["PCUM_MAKE_NAME_CLOSE"] )
g_pIME_EditName:RequestFocus()
	


--[[	
----- 사용할 수 없는 이름입니다.
g_pStatic_Pat_Name_Make_Cont01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Name_Make_Cont01 )
g_pStatic_Pat_Name_Make_Cont01:SetName( "Pat_Name_Make_Cont01" )

g_pStatic_Pat_Name_Make_Cont01:AddString
{
	MSG 			= STR_ID_5339, --"사용할 수 없는 이름입니다.",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(530,355)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
--]]



----------------확인버튼

g_pButtonCheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCheck )
g_pButtonCheck:SetName( "ButtonMsgBoxOK" )

g_pButtonCheck:SetNormalTex( "DLG_UI_Button05.tga", "OK_Button_Normal" )
g_pButtonCheck:SetOverTex( "DLG_UI_Button05.tga", "OK_Button_Over" )
g_pButtonCheck:SetDownTex( "DLG_UI_Button05.tga", "OK_Button_Over" )

g_pButtonCheck:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(445,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(442,392)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetDownPoint
{

     ADD_SIZE_X = -2,
	 ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(442+1,392+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_MAKE_NAME_OK"] )


---------------- 취소 버튼

g_pButton_Btn_Cancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Btn_Cancel )
g_pButton_Btn_Cancel:SetName( "ButtonMsgBoxCancel" )

g_pButton_Btn_Cancel:SetNormalTex( "DLG_UI_Button17.tga", "CANCEL_Button_Normal" )
g_pButton_Btn_Cancel:SetOverTex( "DLG_UI_Button17.tga", "CANCEL_Button_Over" )
g_pButton_Btn_Cancel:SetDownTex( "DLG_UI_Button17.tga", "CANCEL_Button_Over" )

g_pButton_Btn_Cancel:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(535,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Btn_Cancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(535-4,395-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Btn_Cancel:SetDownPoint
{

     ADD_SIZE_X = -2,
	 ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(535-4+1,395-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Btn_Cancel:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_MAKE_NAME_CLOSE"] )

