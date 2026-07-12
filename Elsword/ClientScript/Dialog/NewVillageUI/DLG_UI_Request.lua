-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticQust = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQust )
g_pStaticQust:SetName( "Qust" )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 436, 503, 0 ) ) -- Size

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_EXIT"] )
g_pUIDialog:AddDummyInt(5)			-- 한 페이지에 퀘스트 몇 개 들어가남여
g_pUIDialog:AddDummyInt(3)			-- 보상 슬롯은 몇개인가요

g_pUIDialog:AddDummyInt( 390-24 ) -- 퀘스트 설명이 나오는 영역의 width (글자영역만)
g_pUIDialog:AddDummyInt( 323-278 ) -- 퀘스트 설명이 나오는 영역의 height (글자영역만) 


-------------bg

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_top" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 376+84,
	"LEFT_TOP		= D3DXVECTOR2(0,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_bottom" )

g_pPicture_bg1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,392+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------퀘스트의뢰 타이틀

g_pPicture_title1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_title1 )

g_pPicture_title1:SetTex( "DLG_UI_Title01.TGA", "Qust" )

g_pPicture_title1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(477-461,55-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_title2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_title2 )

g_pPicture_title2:SetTex( "DLG_UI_Title01.TGA", "Requst" )

g_pPicture_title2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(539-461,55-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------목록


g_pPicture_catalog = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_catalog )

g_pPicture_catalog:SetTex( "DLG_UI_Title01.TGA", "catalog" )

g_pPicture_catalog:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(483-461,92-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------목록 bg

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(476-461,113-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 150,
	"LEFT_TOP		= D3DXVECTOR2(476-461,123-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(476-461,274-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------완료조건

g_pPicture_end_condition= g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_end_condition)

g_pPicture_end_condition:SetTex( "DLG_UI_Title01.TGA", "end_condition" )

g_pPicture_end_condition:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(21,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------완료조건 BG

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(15,272)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg4:SetPoint
{
    ADD_SIZE_Y = 51-15,
	"LEFT_TOP		= D3DXVECTOR2(15,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(15,334-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_condition1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_condition1 )
g_pStatic_condition1:SetName( "Static_Clearcondition1" )

g_pStatic_condition1:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(25,278)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--[[
			g_pStatic_condition2 = g_pUIDialog:CreateStatic()
			g_pUIDialog:AddControl( g_pStatic_condition2 )
			g_pStatic_condition2:SetName( "_condition2" )

			g_pStatic_condition2:AddString
			{
				-- MSG 			= "●자쿠 36기를 부서라 4/36",
				FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
				--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
				SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
				"POS 			= D3DXVECTOR2(25,294)",
				"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
				"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
			}

			g_pStatic_condition3 = g_pUIDialog:CreateStatic()
			g_pUIDialog:AddControl( g_pStatic_condition3 )
			g_pStatic_condition3:SetName( "_condition3" )

			g_pStatic_condition3:AddString
			{
				-- MSG 			= "●내친김에 데스스타도 부숴부려라!",
				FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
				--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
				SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
				"POS 			= D3DXVECTOR2(25,310)",
				"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
				"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
			}

			g_pStatic_condition4 = g_pUIDialog:CreateStatic()
			g_pUIDialog:AddControl( g_pStatic_condition4 )
			g_pStatic_condition4:SetName( "_condition4" )

			g_pStatic_condition4:AddString
			{
				-- MSG 			= "●분리수거하기!",
				FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
				--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
				SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
				"POS 			= D3DXVECTOR2(25,326)",
				"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
				"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
			}
--]]

-------보상

g_pPicture_salary= g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_salary)

g_pPicture_salary:SetTex( "DLG_UI_Title01.TGA", "salary" )

g_pPicture_salary:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,249+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------보상 bg


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(476-461,311-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 59,
	"LEFT_TOP		= D3DXVECTOR2(476-461,321-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(476-461,381-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------목록 리스트 버튼

-------------------------  좌측상단 위치 -->  480, 117
--------- 버튼 간격  ---> 32



LEFT_TOP_X = 19
LEFT_TOP_Y = 77

DISTANCE_Y = 32

ListID = 0
tempX = 0
tempY = 0


for i = 0, 4 do

	tempX = LEFT_TOP_X
	tempY = LEFT_TOP_Y + (i * DISTANCE_Y)
	
	-- 퀘 버튼
	g_pRadioButtoncatalog = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButtoncatalog )

	g_pRadioButtoncatalog:SetFixOverByCheck( true )
	g_pRadioButtoncatalog:SetShowOffBGByCheck( true )
	
	ButtonName = string.format( "RadioButton_List%d", ListID )
	g_pRadioButtoncatalog:SetName( ButtonName )

    g_pRadioButtoncatalog:SetNormalTex( "DLG_UI_BUTTON01.tga", "requst_list_NORMAL" )
    g_pRadioButtoncatalog:SetOverTex( "DLG_UI_BUTTON01.tga", "requst_list_over" )
    g_pRadioButtoncatalog:SetCheckedTex( "DLG_UI_BUTTON01.tga", "requst_list_over" )


	g_pRadioButtoncatalog:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(tempX,tempY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtoncatalog:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(tempX,tempY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtoncatalog:SetRBPoint
	{

	 	USE_TEXTURE_SIZE	= FALSE,

	 	"LEFT_TOP		= D3DXVECTOR2(tempX, tempY)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(tempX + 378,tempY + 31)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtoncatalog:SetCheckPoint
	{

	 	"LEFT_TOP		= D3DXVECTOR2(tempX, tempY)",
	 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pRadioButtoncatalog:SetGroupID( 1 )
 	g_pRadioButtoncatalog:AddDummyInt(ListID)
 	g_pRadioButtoncatalog:SetCustomMsgChecked( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_QUEST_SELECT"] )



	------------ 목록 퀘스트 제목
	
	g_pStaticSub_catalog = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticSub_catalog )

 	StaticName = string.format( "Static_QuestList%d", ListID )
	g_pStaticSub_catalog:SetName( StaticName )

	g_pStaticSub_catalog:AddString
	{
		MSG 			= STR_ID_1364,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(tempX + 63, tempY + 8)",
		--"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		
		FONT_STYLE		= FONT_STYLE["FS_SHELL"],
		"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	
	}



	------퀘스트 종류
	--------------일반

	--Pic 0
	g_pPicture_usual = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_usual )

	g_pPicture_usual:SetTex( "DLG_UI_Common_Texture02.TGA", "usual" )

	g_pPicture_usual:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(tempX +4, tempY + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

    --Pic 1
	g_pPicture_change_class = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_change_class )

	g_pPicture_change_class:SetTex( "DLG_UI_Common_Texture02.TGA", "change_class" )

	g_pPicture_change_class:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(tempX +4, tempY + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

    --Pic 2
	g_pPicture_event = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_event )

	g_pPicture_event:SetTex( "DLG_UI_Common_Texture02.TGA", "event" )

	g_pPicture_event:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(tempX +4, tempY + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

    --Pic 3
	g_pPicture_again = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_again )

	g_pPicture_again:SetTex( "DLG_UI_Common_Texture02.TGA", "again" )

	g_pPicture_again:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(tempX +4, tempY + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0, 
	}

--[[
			g_pPicture_again = g_pUIDialog:CreatePicture()
			g_pStaticSub_catalog:AddPicture( g_pPicture_again )

			g_pPicture_again:SetTex( "DLG_UI_Common_Texture02.TGA", "again" )

			g_pPicture_again:SetPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(tempX +4, tempY + 3)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
--]]

	--Pic 4
	g_pPicture_complete = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_complete )
	
	g_pPicture_complete:SetTex( "DLG_Common_New_Texture25.TGA", "quest_complete" )
	
	g_pPicture_complete:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 338, tempY +5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	--Pic 5
	g_pPicture_progress = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_progress )
	
	g_pPicture_progress:SetTex( "DLG_Common_New_Texture25.TGA", "quest_progress" )
	
	g_pPicture_progress:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 328, tempY +5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	--Pic 6
    g_pPicture_new = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_new )
	
	g_pPicture_new:SetTex( "DLG_UI_Common_Texture02.TGA", "quest_list_new" )
	
	g_pPicture_new:SetPoint
	{
	    
		ADD_SIZE_X = -22,
		ADD_SIZE_Y = -11,
		
        "LEFT_TOP		= D3DXVECTOR2(tempX + 328, tempY +6)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	--Pic 7, skill //kimhc // 2009-08-03 ( 임시 )
    g_pPicture_new = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_new )
	
	g_pPicture_new:SetTex( "DLG_UI_Common_Texture02.TGA", "SKILL" )
	
	g_pPicture_new:SetPoint
	{		
        "LEFT_TOP		= D3DXVECTOR2(tempX +4, tempY + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0, 
	}
	
	--Pic 8, PC방 //kimhc // 2010-02-01 
    g_pPicture_new = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_new )
	
	g_pPicture_new:SetTex( "DLG_UI_Common_Texture05.tga", "PC_Room" )
	
	g_pPicture_new:SetPoint
	{		
        "LEFT_TOP		= D3DXVECTOR2(tempX +4, tempY + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0, 
	}
	
	--Pic 9, 일일퀘스트 //kimhc // 2010-04-27
	g_pPicture_new = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_new )
	
	g_pPicture_new:SetTex( "DLG_UI_Common_Texture09.tga", "Daily" )
	
	g_pPicture_new:SetPoint
	{		
		"LEFT_TOP		= D3DXVECTOR2(tempX +4, tempY + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0, 
	}
	
	
	ListID = ListID + 1

end





----------------ed


g_pPicture_ed = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_ed )

g_pPicture_ed:SetTex( "DLG_UI_Title01.TGA", "ed_1" )

g_pPicture_ed:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(485-461,320-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----exp

g_pPicture_exp = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_exp )

g_pPicture_exp:SetTex( "DLG_UI_Title01.TGA", "exp" )

g_pPicture_exp:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(485-461,344-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------sp

g_pPicture_sp = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_sp )

g_pPicture_sp:SetTex( "DLG_UI_Title01.TGA", "sp" )

g_pPicture_sp:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(485-461,367-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------일반보상

g_pPicture_salary1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_salary1 )

g_pPicture_salary1:SetTex( "DLG_UI_Title01.TGA", "USUAL_SALARY" )

g_pPicture_salary1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(647-461,321-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----선택보상

g_pPicture_salary2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_salary2 )

g_pPicture_salary2:SetTex( "DLG_UI_Title01.TGA", "CHOIS_SALARY" )

g_pPicture_salary2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(784-461,321-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------- 보상 슬롯
                         

g_pPicture_slot1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot1 )

g_pPicture_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(607-461,343-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot2 )

g_pPicture_slot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(650-461,343-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot3 )

g_pPicture_slot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(693-461,343-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 0,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 607-461,343-40+84 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 1,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 650-461,343-40+84)",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 2,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 693-461,343-40+84 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}
 

--------- 선택보상 슬롯 

g_pPicture_slot4 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot4 )

g_pPicture_slot4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(745-461,343-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot5 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot5 )

g_pPicture_slot5:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(788-461,343-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot6 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot6 )

g_pPicture_slot6:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(788+43-461,343-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 3,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 745-461,343-40+84 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 4,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 788-461,343-40+84 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 5,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 788+43-461,343-40+84 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}



------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPicture_line1:SetPoint
{
    ADD_SIZE_X = 412,
	"LEFT_TOP		= D3DXVECTOR2(471-461,87-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR2" )

g_pPicture_line2:SetPoint
{
    ADD_SIZE_Y = 70,
	"LEFT_TOP		= D3DXVECTOR2(134,275+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "gray_bar" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 19,
	 ADD_SIZE_Y = 127,
	"LEFT_TOP		= D3DXVECTOR2(861-461,134-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------------------목록 리스트버튼 --------------------------------------------------------


g_pButtonup = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonup )
g_pButtonup:SetName( "Button_up" )
g_pButtonup:SetNormalTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pButtonup:SetOverTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup:SetDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(861-461,113-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(861-1-461,113-1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(861-461,113-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup:SetCustomMsgMouseUp( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_SCROOL_UP"] )



g_pButtondown = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondown )
g_pButtondown:SetName( "Button_down" )
g_pButtondown:SetNormalTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Normal" )

g_pButtondown:SetOverTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown:SetDownTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(861-461,261-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(861-1-461,261-1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(861-461,261-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown:SetCustomMsgMouseUp( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_SCROOL_DOWN"] )


-- 네비게이션 바

g_pNavi = g_pUIDialog:CreateNavigation()
g_pUIDialog:AddControl( g_pNavi )
g_pNavi:SetName( "Navi_QuestList" )
g_pNavi:SetBGTex_LUA( "DLG_Room_Button0.tga", "Invisible" )
g_pNavi:SetWindowTex_LUA( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

-- 스크롤 범위
g_pNavi:SetBGPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"LEFT_TOP		= D3DXVECTOR2(398,95)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(421,221)",
	CHANGE_TIME		= 0.0,
}

-- 스크롤 바 최초 위치+범위
g_pNavi:SetWindowPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(398,95)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(398+23,95+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNavi:SetCustomMsgLButtonDown( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_NAVI_LCLICKED"] )
g_pNavi:SetCustomMsgMouseDragging( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_NAVI_DRAGGING"] )




-------------------------------완료조건 목록버튼


-------------------------------- 24, 278            390  ,323     <---------------------  퀘스트 내용 들어갈 크기


g_pButtonup = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonup )
g_pButtonup:SetName( "Button_QuestDesc_Up" )
g_pButtonup:SetNormalTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pButtonup:SetOverTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup:SetDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(400,273)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(400-1,273-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(400,273)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup:SetCustomMsgMouseUp( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_QUEST_DESC_UP"] )




g_pButtondown = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondown )
g_pButtondown:SetName( "Button_QuestDesc_Down" )
g_pButtondown:SetNormalTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Normal" )

g_pButtondown:SetOverTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown:SetDownTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(400,307)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(400-1,307-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(400,307)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown:SetCustomMsgMouseUp( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_QUEST_DESC_DOWN"] )
--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(858-461,56-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(854-461,52-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(854+1-461,52+1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_EXIT"] )




----------------ed 수치

g_pStaticed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticed )
g_pStaticed:SetName( "Static_ED" )

g_pStaticed:AddString
{
	-- MSG 			= "99999999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(576-461,321-40+84)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------EXP  수치

g_pStaticexp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticexp )
g_pStaticexp:SetName( "Static_Exp" )

g_pStaticexp:AddString
{
	-- MSG 			= "99999999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(576-461,344-40+84)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

---------------SP 수치

g_pStaticsp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticsp )
g_pStaticsp:SetName( "Static_SP" )

g_pStaticsp:AddString
{
	-- MSG 			= "99999999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(576-461,368-40+84)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--[[
----------퀘스트 포기 비활성

g_pPicture_giveup = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_giveup )

g_pPicture_giveup:SetTex( "DLG_UI_Common_Texture09.TGA", "quest_giveup_noactive" )

g_pPicture_giveup:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(607,398+104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------퀘스트 완료비활성

g_pPicture_complete = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_complete )

g_pPicture_complete:SetTex( "DLG_UI_Common_Texture09.TGA", "quest_complete_noactive" )

g_pPicture_complete:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(607,398+104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------퀘스트 수락비활성

g_pPicture_accept = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_accept )

g_pPicture_accept:SetTex( "DLG_UI_Common_Texture09.TGA", "quest_accept_noactive" )

g_pPicture_accept:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]




----------퀘스트 포기버튼

g_pButtongiveup = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtongiveup )
g_pButtongiveup:SetName( "Button_Giveup" )
g_pButtongiveup:SetNormalTex( "DLG_UI_BUTTON01.tga", "giveup_normal" )

g_pButtongiveup:SetOverTex( "DLG_UI_BUTTON01.tga", "giveup_OVER" )

g_pButtongiveup:SetDownTex( "DLG_UI_BUTTON01.tga", "giveup_OVER" )

g_pButtongiveup:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongiveup:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(603-461,394-40+84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongiveup:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(603+1-461,394+1-40+84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongiveup:SetCustomMsgMouseUp( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_QUEST_GIVE_UP"] )
g_pButtongiveup:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )



----------퀘스트 수락버튼

g_pButtonaccept = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonaccept )
g_pButtonaccept:SetName( "Button_Accept" )
g_pButtonaccept:SetNormalTex( "DLG_UI_BUTTON09.tga", "quest_accept_normal" )

g_pButtonaccept:SetOverTex( "DLG_UI_BUTTON09.tga", "quest_accept_OVER" )

g_pButtonaccept:SetDownTex( "DLG_UI_BUTTON09.tga", "quest_accept_OVER" )

g_pButtonaccept:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonaccept:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(604-461,395-40+84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonaccept:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(604+1-461,395+1-40+84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonaccept:SetCustomMsgMouseUp( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_QUEST_ACCEPT"] )
g_pButtonaccept:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )


----------퀘스트 완료버튼

g_pButtoncomplete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncomplete )
g_pButtoncomplete:SetName( "Button_Complete" )
g_pButtoncomplete:SetNormalTex( "DLG_UI_BUTTON09.tga", "quest_complete_normal" )

g_pButtoncomplete:SetOverTex( "DLG_UI_BUTTON09.tga", "quest_complete_OVER" )

g_pButtoncomplete:SetDownTex( "DLG_UI_BUTTON09.tga", "quest_complete_OVER" )

g_pButtoncomplete:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomplete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(604-461,395-40+84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomplete:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(604+1-461,395+1-40+84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomplete:SetCustomMsgMouseUp( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_QUEST_COMPLETE"] )
g_pButtoncomplete:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )



----------NEXT버튼

g_pButtonNext = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNext )
g_pButtonNext:SetName( "Button_Next" )
g_pButtonNext:SetNormalTex( "DLG_UI_BUTTON10.tga", "Next_normal" )

g_pButtonNext:SetOverTex( "DLG_UI_BUTTON10.tga", "Next_OVER" )

g_pButtonNext:SetDownTex( "DLG_UI_BUTTON10.tga", "Next_OVER" )

g_pButtonNext:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNext:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(604-461,395-40+84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNext:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(604+1-461,395+1-40+84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNext:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_PASS"] )
g_pButtonNext:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )


-- 개발자용 완료 버튼
g_pButtonComplete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonComplete )
g_pButtonComplete:SetName( "Quest_Admin_Complete" )
g_pButtonComplete:SetNormalTex( "DLG_UI_BUTTON12.TGA", "accept_normal" )
g_pButtonComplete:SetOverTex( "DLG_UI_BUTTON12.TGA", "accept_over" )
g_pButtonComplete:SetDownTex( "DLG_UI_BUTTON12.TGA", "accept_over" )
g_pButtonComplete:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(311,435)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComplete:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(309,433)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComplete:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(309+1,433+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonComplete:SetCustomMsgMouseUp( UI_QUEST_RECEIVE_CUSTOM_MSG["UQRCM_QUEST_ADMIN_COMPLETE"] )
g_pButtonComplete:SetShow(false)
