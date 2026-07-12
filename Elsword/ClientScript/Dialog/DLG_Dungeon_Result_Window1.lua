-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.






g_pStaticResult_Info= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Info)
g_pStaticResult_Info:SetName( "Dungeon_Info" )
g_pStaticResult_Info:SetShow( false )


--------던전정보--------------
g_pPictureDungeon_Info_Window = g_pUIDialog:CreatePicture()
g_pStaticResult_Info:AddPicture( g_pPictureDungeon_Info_Window )

g_pPictureDungeon_Info_Window:SetTex( "DLG_Common_New_Texture18.tga", "Dungeon_Result_Bg1" )

g_pPictureDungeon_Info_Window:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(459,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Info_Window2 = g_pUIDialog:CreatePicture()
g_pStaticResult_Info:AddPicture( g_pPictureDungeon_Info_Window2 )

g_pPictureDungeon_Info_Window2:SetTex( "DLG_Common_New_Texture18.tga", "Dungeon_Result_BgArrow" )

g_pPictureDungeon_Info_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(406,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------던전이미지와 적정레벨, 적정인원------------

g_pPictureBG3= g_pUIDialog:CreatePicture()
g_pStaticResult_Info:AddPicture( g_pPictureBG3)

g_pPictureBG3:SetTex( "DLG_UI_Dungeon_Image01.dds", "Dungeon_Image_Beginner_Forest"  )
g_pPictureBG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 17+470,43+17+64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureDungeon_Result_Info_Clear= g_pUIDialog:CreatePicture()
g_pStaticResult_Info:AddPicture( g_pPictureDungeon_Result_Info_Clear)

g_pPictureDungeon_Result_Info_Clear:SetTex( "DLG_Common_New_Texture16.tga", "Clear_Mark"  )
g_pPictureDungeon_Result_Info_Clear:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(615,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureDungeon_Result_Info_Failure= g_pUIDialog:CreatePicture()
g_pStaticResult_Info:AddPicture( g_pPictureDungeon_Result_Info_Failure)

g_pPictureDungeon_Result_Info_Failure:SetTex( "DLG_Common_New_Texture16.tga", "Failure_Mark"  )
g_pPictureDungeon_Result_Info_Failure:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(615,172+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









g_pPictureDungeon_Info_Window3= g_pUIDialog:CreatePicture()
g_pStaticResult_Info:AddPicture( g_pPictureDungeon_Info_Window3)

g_pPictureDungeon_Info_Window3:SetTex( "DLG_Common_New_Texture10.tga", "MAKING_DUNGEON_BG2"  )
g_pPictureDungeon_Info_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 21+471,74+17+64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

    g_pStaticResult_Info:AddString
    {
 	 MSG    		 = STR_ID_982,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(30-5+471,80+17+64)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }





     g_pStaticResult_Info:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(30-5+471,94+17+64)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }



	 
	 
	 
	 

     g_pStaticResult_Info:AddString
    {
 	 MSG    		 = STR_ID_983,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(30-5+471,94+17+64)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 


     g_pStaticResult_Info:AddString
    {
 	 MSG    		 = STR_ID_984,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(93-5+471,94+17+64)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }






     g_pStaticResult_Info:AddString
    {
 	 -- MSG    		 = " 매우어려움 ",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(89+471,128+17+64)",
 	 "COLOR          = D3DXCOLOR(1.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }














 



 


































