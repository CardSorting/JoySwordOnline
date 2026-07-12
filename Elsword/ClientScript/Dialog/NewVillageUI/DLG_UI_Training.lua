-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticTraining = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTraining )
g_pStaticTraining:SetName( "Training" )

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( TRAINING_SCHOOL_UI_CUSTOM_MESSAGE["TSUCM_EXIT"] )
g_pUIDialog:AddDummyInt(5)			-- 한 페이지에 훈련 몇 개 들어가남여
g_pUIDialog:AddDummyInt(3)			-- 보상 슬롯은 몇개인가요



g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_top" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 515-12-49,
	"LEFT_TOP		= D3DXVECTOR2(0,54-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_bottom" )

g_pPicture_bg1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,571-40-12-49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 


-----------------------퀘스트 타이틀

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "training" )

g_pPicture_title:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31-15,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------설명
g_pPicture_explain = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_explain )

g_pPicture_explain:SetTex( "DLG_UI_Title01.TGA", "explain" )

g_pPicture_explain:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(23,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------설명 bg

g_pPicture_explain_bg = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_explain_bg )

g_pPicture_explain_bg:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_explain_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_explain_bg = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_explain_bg )

g_pPicture_explain_bg:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_explain_bg:SetPoint
{
    ADD_SIZE_Y = 86,
	"LEFT_TOP		= D3DXVECTOR2(14,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_explain_bg = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_explain_bg )

g_pPicture_explain_bg:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_explain_bg:SetPoint
{ 
    
	"LEFT_TOP		= D3DXVECTOR2(14,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------훈련이미지          
g_pStaticTrainingImage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTrainingImage )
g_pStaticTrainingImage:SetName( "Static_Image" )

g_pPicture_training_image = g_pUIDialog:CreatePicture()
g_pStaticTrainingImage:AddPicture( g_pPicture_training_image )

g_pPicture_training_image:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPicture_training_image:SetPoint
{ 
    ADD_SIZE_X = 127,
	ADD_SIZE_Y = 97,
	"LEFT_TOP		= D3DXVECTOR2(18,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------훈련 이미지 설명

g_pPicture_image_explain_bg = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_image_explain_bg )

g_pPicture_image_explain_bg:SetTex( "DLG_UI_Common_Texture01.TGA", "training_bg_left" )

g_pPicture_image_explain_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(151,78)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_image_explain_bg = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_image_explain_bg )

g_pPicture_image_explain_bg:SetTex( "DLG_UI_Common_Texture01.TGA", "training_bg_middle" )

g_pPicture_image_explain_bg:SetPoint
{
    ADD_SIZE_X = 255,
	"LEFT_TOP		= D3DXVECTOR2(156,78)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_image_explain_bg = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_image_explain_bg )

g_pPicture_image_explain_bg:SetTex( "DLG_UI_Common_Texture01.TGA", "training_bg_right" )

g_pPicture_image_explain_bg:SetPoint
{ 
    
	"LEFT_TOP		= D3DXVECTOR2(412,78)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------목록


g_pPicture_catalog = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_catalog )

g_pPicture_catalog:SetTex( "DLG_UI_Title01.TGA", "catalog" )

g_pPicture_catalog:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(23,289-49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------목록 bg

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,310-49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 149,
	"LEFT_TOP		= D3DXVECTOR2(14,320-49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg2:SetPoint
{ 
    
	"LEFT_TOP		= D3DXVECTOR2(14,470-49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------보상

g_pPicture_salary= g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_salary)

g_pPicture_salary:SetTex( "DLG_UI_Title01.TGA", "salary" )

g_pPicture_salary:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(23,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------보상 bg


g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,206)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg5:SetPoint
{
    ADD_SIZE_Y = 11,
	"LEFT_TOP		= D3DXVECTOR2(14,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,228)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------------------보상 ED박스


g_pPicture_edbox = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_edbox )

g_pPicture_edbox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_left" )

g_pPicture_edbox:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(73,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_edbox = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_edbox )

g_pPicture_edbox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_middle" )

g_pPicture_edbox:SetPoint
{
    ADD_SIZE_X = 118,
	"LEFT_TOP		= D3DXVECTOR2(79,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_edbox = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_edbox )

g_pPicture_edbox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_right" )

g_pPicture_edbox:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(198,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------------보상 EXP 박스



g_pPicture_expbox = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_expbox )

g_pPicture_expbox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_left" )

g_pPicture_expbox:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(278,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_expbox = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_expbox )

g_pPicture_expbox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_middle" )

g_pPicture_expbox:SetPoint
{
    ADD_SIZE_X = 118,
	"LEFT_TOP		= D3DXVECTOR2(284,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_expbox = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_expbox )

g_pPicture_expbox:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_right" )

g_pPicture_expbox:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(403,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










-------목록 리스트 버튼

--[[
--------------초보
g_pButton_catalog = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_catalog )
g_pButton_catalog:SetName( "Catalog_Easy" )
g_pButton_catalog:SetNormalTex( "DLG_UI_BUTTON01.tga", "list_NORMAL" )

g_pButton_catalog:SetOverTex( "DLG_UI_BUTTON01.tga", "list_OVER" )

g_pButton_catalog:SetDownTex( "DLG_UI_BUTTON01.tga", "list_down" )

g_pButton_catalog:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(20,314)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_catalog:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20,314)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_catalog:SetDownPoint
{
        ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(20+1,314+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------중급

g_pButton_catalog = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_catalog )
g_pButton_catalog:SetName( "Catalog_Usual" )
g_pButton_catalog:SetNormalTex( "DLG_UI_BUTTON01.tga", "list_NORMAL" )

g_pButton_catalog:SetOverTex( "DLG_UI_BUTTON01.tga", "list_OVER" )

g_pButton_catalog:SetDownTex( "DLG_UI_BUTTON01.tga", "list_down" )

g_pButton_catalog:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(20,346)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_catalog:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20,346)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_catalog:SetDownPoint
{
        ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(20+1,346+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------상급

g_pButton_catalog = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_catalog )
g_pButton_catalog:SetName( "Catalog_Hard" )
g_pButton_catalog:SetNormalTex( "DLG_UI_BUTTON01.tga", "list_NORMAL" )

g_pButton_catalog:SetOverTex( "DLG_UI_BUTTON01.tga", "list_OVER" )

g_pButton_catalog:SetDownTex( "DLG_UI_BUTTON01.tga", "list_down" )

g_pButton_catalog:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(20,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_catalog:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20,378)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_catalog:SetDownPoint
{
        ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(20+1,378+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------- 
g_pStaticlock = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticlock )
g_pStaticlock:SetName( "lock" )


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticlock:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture02.TGA", "lock" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(26,384)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]




------서브 리스트

--------------좌측상단좌표   -->  20,314 (카데고리 기준)
------ 버튼 간격  -->  33



LEFT_TOP_X = 20-1
LEFT_TOP_Y = 314-49

DISTANCE_Y = 33

ListID = 0
tempX = 0
tempY = 0


for i = 0, 4 do

	tempX = LEFT_TOP_X
	tempY = LEFT_TOP_Y + (i * DISTANCE_Y)

	---- 리스트 버튼
	g_pRadioButtoncatalog = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButtoncatalog )

	g_pRadioButtoncatalog:SetFixOverByCheck( true )
	g_pRadioButtoncatalog:SetShowOffBGByCheck( true )
	
	ButtonName = string.format( "RadioButton_List%d", ListID )
 	g_pRadioButtoncatalog:SetName( ButtonName )
 	g_pRadioButtoncatalog:AddDummyInt(ListID)

	g_pRadioButtoncatalog:SetNormalTex( "DLG_UI_BUTTON01.tga", "Sub_list_NORMAL" )


	g_pRadioButtoncatalog:SetOverTex( "DLG_UI_BUTTON01.tga", "Sub_list_OVER" )


	g_pRadioButtoncatalog:SetCheckedTex( "DLG_UI_BUTTON01.tga", "Sub_list_OVER" )


	g_pRadioButtoncatalog:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(tempX + 16, tempY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtoncatalog:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(tempX + 16, tempY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtoncatalog:SetRBPoint
	{

	 	USE_TEXTURE_SIZE	= FALSE,

	 	"LEFT_TOP		= D3DXVECTOR2(tempX + 16, tempY)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(tempX + 340, tempY + 31)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtoncatalog:SetCheckPoint
	{

	 	"LEFT_TOP		= D3DXVECTOR2(tempX + 16, tempY)",
	 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pRadioButtoncatalog:SetGroupID( 1 )
	g_pRadioButtoncatalog:SetCustomMsgChecked( TRAINING_SCHOOL_UI_CUSTOM_MESSAGE["TSUCM_SELECT_TRAIN"] )


	------훈련소서브 제목


	g_pStaticusual = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticusual )

	StaticName = string.format( "Static_List%d", ListID )
 	g_pStaticusual:SetName( StaticName )

	g_pStaticusual:AddString
	{
		MSG 			= STR_ID_1376,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(tempX + 31, tempY + 8)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	-- pic1

	g_pPicture_complete = g_pUIDialog:CreatePicture()
	g_pStaticusual:AddPicture( g_pPicture_complete )

	g_pPicture_complete:SetTex( "DLG_Common_New_Texture25.TGA", "quest_complete" )

	g_pPicture_complete:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(tempX + 334, tempY +6)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


    ListID = ListID + 1
	
end






----------------ed


g_pPicture_bg16 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg16 )

g_pPicture_bg16:SetTex( "DLG_UI_Title01.TGA", "ed_1" )

g_pPicture_bg16:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(30,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----exp
g_pPicture_bg17 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg17 )

g_pPicture_bg17:SetTex( "DLG_UI_Title01.TGA", "exp" )

g_pPicture_bg17:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(235,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPicture_line1:SetPoint
{
    ADD_SIZE_X = 413,
	"LEFT_TOP		= D3DXVECTOR2(25-15,87-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR2" )

g_pPicture_line2:SetPoint
{
    ADD_SIZE_Y = 23,
	"LEFT_TOP		= D3DXVECTOR2(215,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 




g_pPicture_bg31 = g_pUIDialog:CreatePicture()
g_pStaticTraining:AddPicture( g_pPicture_bg31 )

g_pPicture_bg31:SetTex( "DLG_UI_Common_Texture01.TGA", "gray_bar" )

g_pPicture_bg31:SetPoint
{
     ADD_SIZE_X = 18,
	 ADD_SIZE_Y = 128,
	"LEFT_TOP		= D3DXVECTOR2(401-1,333-49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

 


-------------------------목록 리스트버튼 --------------------------------------------------------


g_pButtonup1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonup1 )
g_pButtonup1:SetName( "Button_up1" )
g_pButtonup1:SetNormalTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pButtonup1:SetOverTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup1:SetDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(400,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup1:SetOverPoint
{
      ADD_SIZE_X = 2,
      ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(400-1,262-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup1:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(400,262)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup1:SetCustomMsgMouseUp( TRAINING_SCHOOL_UI_CUSTOM_MESSAGE["TSUCM_LIST_UP"] )
 

 

g_pButtondown1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondown1 )
g_pButtondown1:SetName( "Button_down1" )
g_pButtondown1:SetNormalTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Normal" )

g_pButtondown1:SetOverTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown1:SetDownTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(400,408)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown1:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(400-1,408-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown1:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(400,408)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown1:SetCustomMsgMouseUp( TRAINING_SCHOOL_UI_CUSTOM_MESSAGE["TSUCM_LIST_DOWN"] )
 
 

-- 네비게이션 바

g_pNavi = g_pUIDialog:CreateNavigation()
g_pUIDialog:AddControl( g_pNavi )
g_pNavi:SetName( "Navi_TrainList" )
g_pNavi:SetBGTex_LUA( "DLG_Room_Button0.tga", "Invisible" )
g_pNavi:SetWindowTex_LUA( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

-- 스크롤 범위
g_pNavi:SetBGPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"LEFT_TOP		= D3DXVECTOR2(398,284)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(421,408)",
	CHANGE_TIME		= 0.0,
}

-- 스크롤 바 최초 위치+범위
g_pNavi:SetWindowPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(398,284)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(399 + 22,333 + 40-49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNavi:SetCustomMsgLButtonDown( TRAINING_SCHOOL_UI_CUSTOM_MESSAGE["TSUCM_LIST_NAVI_LCLICKED"] )
g_pNavi:SetCustomMsgMouseDragging( TRAINING_SCHOOL_UI_CUSTOM_MESSAGE["TSUCM_LIST_NAVI_DRAGGING"] )


--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(412-15,56-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(408-15,52-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(408+1-15,52+1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( TRAINING_SCHOOL_UI_CUSTOM_MESSAGE["TSUCM_EXIT"] )


----------훈련시작


g_pButtonBegin = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBegin )
g_pButtonBegin:SetName( "Button_Begin" )
g_pButtonBegin:SetNormalTex( "DLG_UI_Button10.tga", "training_begin_Normal" )

g_pButtonBegin:SetOverTex( "DLG_UI_Button10.tga", "training_begin_Over" )

g_pButtonBegin:SetDownTex( "DLG_UI_Button10.tga", "training_begin_Over" )

g_pButtonBegin:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(156,437)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBegin:SetOverPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(153,434)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBegin:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2, 
 	"LEFT_TOP		= D3DXVECTOR2(153+1,434+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBegin:SetCustomMsgMouseUp( TRAINING_SCHOOL_UI_CUSTOM_MESSAGE["TSUCM_START_TRAIN"] )


 
 
 

 
 
 
 
---------훈련소 훈련명


g_pStaticTraining_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTraining_name )
g_pStaticTraining_name:SetName( "Static_Title" )

g_pStaticTraining_name:AddString
{
	MSG 			= STR_ID_1377,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(160,85-2)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-------설명
g_pStaticimage_explain = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticimage_explain )
g_pStaticimage_explain:SetName( "Static_Desc" )

g_pStaticimage_explain:AddString
{
	MSG 			= STR_ID_1378,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(164,107-5)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----난이도
g_pStaticTraining_step = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTraining_step )
g_pStaticTraining_step:SetName( "Static_Difficulty" )

g_pStaticTraining_step:AddString
{
	MSG 			= STR_ID_990,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(332-22,84)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----★
g_pStaticTraining_step = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTraining_step )
g_pStaticTraining_step:SetName( "Static_DifficultyStar" )

g_pStaticTraining_step:AddString
{
	-- MSG 			= "★★★★★",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(372-22,82)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}







--[[
-----수행가능한 퀘스트 수

g_pStaticnum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnum )
g_pStaticnum:SetName( "num" )

g_pStaticnum:AddString
{
	-- MSG 			= "15/15",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(407,293)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.27,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]

-------훈련퀘스트 난이도
--[[
g_pStaticEasy = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEasy )
g_pStaticEasy:SetName( "EASY" )

g_pStaticEasy:AddString
{
	MSG 			= STR_ID_1379,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(47,321)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStaticUsual = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUsual )
g_pStaticUsual:SetName( "USUAL" )

g_pStaticUsual:AddString
{
	MSG 			= STR_ID_1380,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(47,353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStaticHard = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHard )
g_pStaticHard:SetName( "HARD" )

g_pStaticHard:AddString
{
	MSG 			= STR_ID_1381,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(47,385)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--]]

---------------ed수치

g_pStaticed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticed )
g_pStaticed:SetName( "Static_ED" )

g_pStaticed:AddString
{
	-- MSG 			= "99999999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(180,215)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




---------------exp 수치

g_pStaticexp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticexp )
g_pStaticexp:SetName( "Static_Exp" )

g_pStaticexp:AddString
{
	-- MSG 			= "99999999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(385,215)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

