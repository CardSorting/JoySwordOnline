-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[	kimhc // 2010-11-16
		캐릭터 생성창에서 캐릭터를 선택하면 나오는
		캐릭터의 이름, 성별 등 특징을 설명하는 부분
--]]

------------------------------------------여기서 부터 엘소드-----------------------------------------------
g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticUnit_Create_Unit0" )
g_pStaticUnit_Create:SetShow( false )

g_pPictureCharacter_Create_Image_Elsword = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Image_Elsword )
g_pPictureCharacter_Create_Image_Elsword:SetTex( "DLG_Common_Texture08.tga", "Elsword_Cartoon_Image" )
g_pPictureCharacter_Create_Image_Elsword:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(74,74)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox1 )
g_pPictureCharacter_Create_TalkBox1:SetTex( "DLG_Common_Texture01.tga", "Talk_Box1" )
g_pPictureCharacter_Create_TalkBox1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox2 )
g_pPictureCharacter_Create_TalkBox2:SetTex( "DLG_Common_Texture01.tga", "Talk_Box2" )
g_pPictureCharacter_Create_TalkBox2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox3 )
g_pPictureCharacter_Create_TalkBox3:SetTex( "DLG_Common_Texture01.tga", "Talk_Box3" )
g_pPictureCharacter_Create_TalkBox3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox4 )
g_pPictureCharacter_Create_TalkBox4:SetTex( "DLG_Common_Texture01.tga", "Talk_Box4" )
g_pPictureCharacter_Create_TalkBox4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox5 )
g_pPictureCharacter_Create_TalkBox5:SetTex( "DLG_Common_Texture01.tga", "Talk_Box5" )
g_pPictureCharacter_Create_TalkBox5:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(496,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox6 )
g_pPictureCharacter_Create_TalkBox6:SetTex( "DLG_Common_Texture01.tga", "Talk_Box6" )
g_pPictureCharacter_Create_TalkBox6:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(986,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox7 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox7 )
g_pPictureCharacter_Create_TalkBox7:SetTex( "DLG_Common_Texture01.tga", "Talk_Box8" )
g_pPictureCharacter_Create_TalkBox7:SetPoint
{
	ADD_SIZE_X	= 473,
    "LEFT_TOP	= D3DXVECTOR2(512,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox8 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox8 )
g_pPictureCharacter_Create_TalkBox8:SetTex( "DLG_Common_Texture01.tga", "Talk_Box9" )
g_pPictureCharacter_Create_TalkBox8:SetPoint
{
	ADD_SIZE_X = 473,
	"LEFT_TOP		= D3DXVECTOR2(512,523)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCharacter_Create_TalkBox9 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox9 )
g_pPictureCharacter_Create_TalkBox9:SetTex( "DLG_Common_Texture01.tga", "Talk_Box7" )
g_pPictureCharacter_Create_TalkBox9:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(440,300)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 491,
	ADD_SIZE_Y	= 466,
	"LEFT_TOP	= D3DXVECTOR2(500,57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 485,
	ADD_SIZE_Y	= 1,
	"LEFT_TOP	= D3DXVECTOR2(505,120)",
	"COLOR		= D3DXCOLOR(0.9,0.9,0.9,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Info_BG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Info_BG )
g_pPictureUnit_Info_BG:SetTex( "DLG_Common_Texture04.tga", "Info_BG" )
g_pPictureUnit_Info_BG:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(502,319)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(993,529)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME			= 0.0,
}
g_pPictureUnit_Elsword = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Elsword )
g_pPictureUnit_Elsword:SetTex( "DLG_Common_Texture05.tga", "Elsword" )
g_pPictureUnit_Elsword:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(684,45)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line1 )
g_pPictureElsword_Info_Line1:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,133)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line2 )
g_pPictureElsword_Info_Line2:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,155)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line3 )
g_pPictureElsword_Info_Line3:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,177)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line4 )
g_pPictureElsword_Info_Line4:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,199)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line5 )
g_pPictureElsword_Info_Line5:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,280)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line6 )
g_pPictureElsword_Info_Line6:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line6:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,333)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_Font_Elsword = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Font_Elsword )
g_pPictureCharacter_Create_Font_Elsword:SetTex( "DLG_UI_Common_Texture69_NEW.tga", "ELSWORD_NAME" )
g_pPictureCharacter_Create_Font_Elsword:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(508,58)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1195,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,131)",
	"COLOR			= D3DXCOLOR(0.9,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1196,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,153)",
	"COLOR			= D3DXCOLOR(0.9,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_270,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,175)",
	"COLOR			= D3DXCOLOR(0.9,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1197,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,197)",
	"COLOR			= D3DXCOLOR(0.9,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1198,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,279)",
	"COLOR			= D3DXCOLOR(0.9,0.0,0.0,1.0)",
	"OUTLINE_COLOR	 = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1199,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,331)",
	"COLOR			= D3DXCOLOR(0.9,0.0,0.0,1.0)",
	"OUTLINE_COLOR	 = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_535,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,131)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1200,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,153)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1201,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,175)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1202,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,197)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1203,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,279)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1204,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,331)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------------------------------------------여기서 부터 아이샤-----------------------------------------------
g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticUnit_Create_Unit1" )
g_pStaticUnit_Create:SetShow( false )

g_pPictureCharacter_Create_Image_Aisha = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Image_Aisha )
g_pPictureCharacter_Create_Image_Aisha:SetTex( "DLG_Common_Texture12.tga", "Aisha_Cartoon_Image" )
g_pPictureCharacter_Create_Image_Aisha:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(74,74)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


g_pPictureCharacter_Create_TalkBox1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox1 )
g_pPictureCharacter_Create_TalkBox1:SetTex( "DLG_Common_Texture01.tga", "Talk_Box1" )
g_pPictureCharacter_Create_TalkBox1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox2 )
g_pPictureCharacter_Create_TalkBox2:SetTex( "DLG_Common_Texture01.tga", "Talk_Box2" )
g_pPictureCharacter_Create_TalkBox2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox3 )
g_pPictureCharacter_Create_TalkBox3:SetTex( "DLG_Common_Texture01.tga", "Talk_Box3" )
g_pPictureCharacter_Create_TalkBox3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox4 )
g_pPictureCharacter_Create_TalkBox4:SetTex( "DLG_Common_Texture01.tga", "Talk_Box4" )
g_pPictureCharacter_Create_TalkBox4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox5 )
g_pPictureCharacter_Create_TalkBox5:SetTex( "DLG_Common_Texture01.tga", "Talk_Box5" )
g_pPictureCharacter_Create_TalkBox5:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(496,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox6 )
g_pPictureCharacter_Create_TalkBox6:SetTex( "DLG_Common_Texture01.tga", "Talk_Box6" )
g_pPictureCharacter_Create_TalkBox6:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(986,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox7 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox7 )
g_pPictureCharacter_Create_TalkBox7:SetTex( "DLG_Common_Texture01.tga", "Talk_Box8" )
g_pPictureCharacter_Create_TalkBox7:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox8 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox8 )
g_pPictureCharacter_Create_TalkBox8:SetTex( "DLG_Common_Texture01.tga", "Talk_Box9" )
g_pPictureCharacter_Create_TalkBox8:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox9 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox9 )
g_pPictureCharacter_Create_TalkBox9:SetTex( "DLG_Common_Texture01.tga", "Talk_Box7" )
g_pPictureCharacter_Create_TalkBox9:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(440,300)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 491,
	ADD_SIZE_Y	= 466,
	"LEFT_TOP	= D3DXVECTOR2(500,57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 485,
	ADD_SIZE_Y	= 1,
	"LEFT_TOP	= D3DXVECTOR2(505,120)",
	"COLOR		= D3DXCOLOR(0.9,0.9,0.9,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Info_BG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Info_BG )
g_pPictureUnit_Info_BG:SetTex( "DLG_Common_Texture04.tga", "Info_BG" )
g_pPictureUnit_Info_BG:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(502,319)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(993,529)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME			= 0.0,
}

g_pPictureUnit_Aisha = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Aisha )
g_pPictureUnit_Aisha:SetTex( "DLG_Common_Texture06.tga", "Aisha" )
g_pPictureUnit_Aisha:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(703,57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureAisha_Info_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureAisha_Info_Line1 )
g_pPictureAisha_Info_Line1:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureAisha_Info_Line1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,133)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureAisha_Info_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureAisha_Info_Line2 )
g_pPictureAisha_Info_Line2:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureAisha_Info_Line2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,155)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureAisha_Info_Line3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureAisha_Info_Line3 )
g_pPictureAisha_Info_Line3:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureAisha_Info_Line3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,177)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureAisha_Info_Line4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureAisha_Info_Line4 )
g_pPictureAisha_Info_Line4:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureAisha_Info_Line4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,199)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureAisha_Info_Line5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureAisha_Info_Line5 )
g_pPictureAisha_Info_Line5:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureAisha_Info_Line5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,235)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureAisha_Info_Line6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureAisha_Info_Line6 )
g_pPictureAisha_Info_Line6:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureAisha_Info_Line6:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,317)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPictureCharacter_Create_Font_Aisha = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Font_Aisha )
g_pPictureCharacter_Create_Font_Aisha:SetTex( "DLG_UI_Common_Texture69_NEW.tga", "AISHA_NAME" )
g_pPictureCharacter_Create_Font_Aisha:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(508,58)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStaticUnit_Create:AddString
{
	MSG= STR_ID_1195,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,132)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.9,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1196,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,154)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.9,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_270,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,176)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.9,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1197,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,198)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.9,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1198,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,234)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.9,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1199,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,316)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.9,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----------아이샤 상세 설명----
g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_536,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(540,132)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1205,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(540,154)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1206,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(540,176)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1207,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(540,198)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1208,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(540,234)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1209,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS            = D3DXVECTOR2(540,316)",
	"COLOR          = D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------------------------------------------여기서 부터 레나-----------------------------------------------
g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticUnit_Create_Unit2" )
g_pStaticUnit_Create:SetShow( false )

g_pPictureCharacter_Create_Image_Rena = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Image_Rena )
g_pPictureCharacter_Create_Image_Rena:SetTex( "DLG_Common_Texture13.tga", "Rena_Cartoon_Image" )
g_pPictureCharacter_Create_Image_Rena:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(74,74)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


g_pPictureCharacter_Create_TalkBox1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox1 )
g_pPictureCharacter_Create_TalkBox1:SetTex( "DLG_Common_Texture01.tga", "Talk_Box1" )
g_pPictureCharacter_Create_TalkBox1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox2 )
g_pPictureCharacter_Create_TalkBox2:SetTex( "DLG_Common_Texture01.tga", "Talk_Box2" )
g_pPictureCharacter_Create_TalkBox2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox3 )
g_pPictureCharacter_Create_TalkBox3:SetTex( "DLG_Common_Texture01.tga", "Talk_Box3" )
g_pPictureCharacter_Create_TalkBox3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox4 )
g_pPictureCharacter_Create_TalkBox4:SetTex( "DLG_Common_Texture01.tga", "Talk_Box4" )
g_pPictureCharacter_Create_TalkBox4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox5 )
g_pPictureCharacter_Create_TalkBox5:SetTex( "DLG_Common_Texture01.tga", "Talk_Box5" )
g_pPictureCharacter_Create_TalkBox5:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(496,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox6 )
g_pPictureCharacter_Create_TalkBox6:SetTex( "DLG_Common_Texture01.tga", "Talk_Box6" )
g_pPictureCharacter_Create_TalkBox6:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(986,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox7 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox7 )
g_pPictureCharacter_Create_TalkBox7:SetTex( "DLG_Common_Texture01.tga", "Talk_Box8" )
g_pPictureCharacter_Create_TalkBox7:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox8 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox8 )
g_pPictureCharacter_Create_TalkBox8:SetTex( "DLG_Common_Texture01.tga", "Talk_Box9" )
g_pPictureCharacter_Create_TalkBox8:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox9 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox9 )
g_pPictureCharacter_Create_TalkBox9:SetTex( "DLG_Common_Texture01.tga", "Talk_Box7" )
g_pPictureCharacter_Create_TalkBox9:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(440,300)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 491,
	ADD_SIZE_Y	= 466,
	"LEFT_TOP	= D3DXVECTOR2(500,57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 485,
	ADD_SIZE_Y	= 1,
	"LEFT_TOP	= D3DXVECTOR2(505,120)",
	"COLOR		= D3DXCOLOR(0.9,0.9,0.9,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Info_BG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Info_BG )
g_pPictureUnit_Info_BG:SetTex( "DLG_Common_Texture04.tga", "Info_BG" )
g_pPictureUnit_Info_BG:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(502,319)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(993,529)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME			= 0.0,
}
g_pPictureUnit_Rena = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Rena )
g_pPictureUnit_Rena:SetTex( "DLG_Common_Texture07.tga", "Rena" )
g_pPictureUnit_Rena:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(703,68)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRena_Info_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRena_Info_Line1 )
g_pPictureRena_Info_Line1:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRena_Info_Line1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,133)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRena_Info_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRena_Info_Line2 )
g_pPictureRena_Info_Line2:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRena_Info_Line2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,155)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRena_Info_Line3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRena_Info_Line3 )
g_pPictureRena_Info_Line3:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRena_Info_Line3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,177)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRena_Info_Line4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRena_Info_Line4 )
g_pPictureRena_Info_Line4:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRena_Info_Line4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,199)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRena_Info_Line5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRena_Info_Line5 )
g_pPictureRena_Info_Line5:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRena_Info_Line5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,245)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRena_Info_Line6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRena_Info_Line6 )
g_pPictureRena_Info_Line6:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRena_Info_Line6:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,347)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_Font_Rena = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Font_Rena )
g_pPictureCharacter_Create_Font_Rena:SetTex( "DLG_UI_Common_Texture69_NEW.tga", "LENA_NAME" )
g_pPictureCharacter_Create_Font_Rena:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(508,58)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1195,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,131)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1196,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,153)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_270,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,175)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1197,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,197)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1198,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,244)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1199,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,346)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_536,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,131)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_773,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,153)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1210,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,175)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1211,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,197)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1212,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,244)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1213,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,346)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------------------------------------------여기서 부터 레이븐-----------------------------------------------
g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticUnit_Create_Unit3" )
g_pStaticUnit_Create:SetShow( false )

g_pPictureCharacter_Create_Image_RAVEN = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Image_RAVEN )
g_pPictureCharacter_Create_Image_RAVEN:SetTex( "DLG_Common_New_Texture59.tga", "RAVEN_Cartoon_Image" )
g_pPictureCharacter_Create_Image_RAVEN:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(74,74)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox1 )
g_pPictureCharacter_Create_TalkBox1:SetTex( "DLG_Common_Texture01.tga", "Talk_Box1" )
g_pPictureCharacter_Create_TalkBox1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox2 )
g_pPictureCharacter_Create_TalkBox2:SetTex( "DLG_Common_Texture01.tga", "Talk_Box2" )
g_pPictureCharacter_Create_TalkBox2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox3 )
g_pPictureCharacter_Create_TalkBox3:SetTex( "DLG_Common_Texture01.tga", "Talk_Box3" )
g_pPictureCharacter_Create_TalkBox3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox4 )
g_pPictureCharacter_Create_TalkBox4:SetTex( "DLG_Common_Texture01.tga", "Talk_Box4" )
g_pPictureCharacter_Create_TalkBox4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox5 )
g_pPictureCharacter_Create_TalkBox5:SetTex( "DLG_Common_Texture01.tga", "Talk_Box5" )
g_pPictureCharacter_Create_TalkBox5:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(496,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox6 )
g_pPictureCharacter_Create_TalkBox6:SetTex( "DLG_Common_Texture01.tga", "Talk_Box6" )
g_pPictureCharacter_Create_TalkBox6:SetPoint
{
	ADD_SIZE_Y		= 462,
	"LEFT_TOP		= D3DXVECTOR2(986,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCharacter_Create_TalkBox7 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox7 )
g_pPictureCharacter_Create_TalkBox7:SetTex( "DLG_Common_Texture01.tga", "Talk_Box8" )
g_pPictureCharacter_Create_TalkBox7:SetPoint
{
	ADD_SIZE_X		= 473,
	"LEFT_TOP		= D3DXVECTOR2(512,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCharacter_Create_TalkBox8 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox8 )
g_pPictureCharacter_Create_TalkBox8:SetTex( "DLG_Common_Texture01.tga", "Talk_Box9" )
g_pPictureCharacter_Create_TalkBox8:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox9 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox9 )
g_pPictureCharacter_Create_TalkBox9:SetTex( "DLG_Common_Texture01.tga", "Talk_Box7" )
g_pPictureCharacter_Create_TalkBox9:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(440,300)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 491,
	ADD_SIZE_Y	= 466,
	"LEFT_TOP	= D3DXVECTOR2(500,57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 485,
	ADD_SIZE_Y	= 1,
	"LEFT_TOP	= D3DXVECTOR2(505,120)",
	"COLOR		= D3DXCOLOR(0.9,0.9,0.9,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Info_BG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Info_BG )
g_pPictureUnit_Info_BG:SetTex( "DLG_Common_Texture04.tga", "Info_BG" )
g_pPictureUnit_Info_BG:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(502,319)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(993,529)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME			= 0.0,
}

--[[
g_pPictureRAVEN_Title = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRAVEN_Title )
g_pPictureRAVEN_Title:SetTex( "DLG_Common_Texture04.tga", "Dispassionate" )
g_pPictureRAVEN_Title:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(513,59)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
--]]

g_pPictureRAVEN_Info_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRAVEN_Info_Line1 )
g_pPictureRAVEN_Info_Line1:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRAVEN_Info_Line1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,133)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRAVEN_Info_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRAVEN_Info_Line2 )
g_pPictureRAVEN_Info_Line2:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRAVEN_Info_Line2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,155)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRAVEN_Info_Line3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRAVEN_Info_Line3 )
g_pPictureRAVEN_Info_Line3:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRAVEN_Info_Line3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,177)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRAVEN_Info_Line4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRAVEN_Info_Line4 )
g_pPictureRAVEN_Info_Line4:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRAVEN_Info_Line4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,199)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRAVEN_Info_Line5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRAVEN_Info_Line5 )
g_pPictureRAVEN_Info_Line5:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRAVEN_Info_Line5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,245)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureRAVEN_Info_Line6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureRAVEN_Info_Line6 )
g_pPictureRAVEN_Info_Line6:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureRAVEN_Info_Line6:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,347)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


g_pPictureCharacter_Create_Font_RAVEN = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Font_RAVEN )
g_pPictureCharacter_Create_Font_RAVEN:SetTex( "DLG_UI_Common_Texture69_NEW.tga", "RAVEN_NAME" )
g_pPictureCharacter_Create_Font_RAVEN:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(508,58)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1195,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,131)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1196,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,153)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_270,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,175)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1197,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,197)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1198,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,244)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1199,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,346)",
	"COLOR			= D3DXCOLOR(0.3,0.4,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_535,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,131)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1214,	-- 24세
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,153)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1215,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,175)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1216,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,197)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1217,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,244)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1218,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,346)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pPictureUnit_RAVEN = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_RAVEN )
g_pPictureUnit_RAVEN:SetTex( "DLG_Common_New_Texture60.tga", "RAVEN" )
g_pPictureUnit_RAVEN:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(703,68)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
------------------------------------------여기서 부터 이브-----------------------------------------------
g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticUnit_Create_Unit4" )
g_pStaticUnit_Create:SetShow( false )

g_pPictureCharacter_Create_Font_Eve = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Font_Eve )
g_pPictureCharacter_Create_Font_Eve:SetTex( "DLG_UI_Cartoon01.tga", "EVE_Cartoon_Image" )
g_pPictureCharacter_Create_Font_Eve:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(74,74)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


g_pPictureEve_SubTitle = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureEve_SubTitle )
g_pPictureEve_SubTitle:SetTex( "dlg_ui_character01.tga", "EVE" )
g_pPictureEve_SubTitle:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(514,93)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox1 )
g_pPictureCharacter_Create_TalkBox1:SetTex( "DLG_Common_Texture01.tga", "Talk_Box1" )
g_pPictureCharacter_Create_TalkBox1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox2 )
g_pPictureCharacter_Create_TalkBox2:SetTex( "DLG_Common_Texture01.tga", "Talk_Box2" )
g_pPictureCharacter_Create_TalkBox2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox3 )
g_pPictureCharacter_Create_TalkBox3:SetTex( "DLG_Common_Texture01.tga", "Talk_Box3" )
g_pPictureCharacter_Create_TalkBox3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox4 )
g_pPictureCharacter_Create_TalkBox4:SetTex( "DLG_Common_Texture01.tga", "Talk_Box4" )
g_pPictureCharacter_Create_TalkBox4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox5 )
g_pPictureCharacter_Create_TalkBox5:SetTex( "DLG_Common_Texture01.tga", "Talk_Box5" )
g_pPictureCharacter_Create_TalkBox5:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(496,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox6 )
g_pPictureCharacter_Create_TalkBox6:SetTex( "DLG_Common_Texture01.tga", "Talk_Box6" )
g_pPictureCharacter_Create_TalkBox6:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(986,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox7 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox7 )
g_pPictureCharacter_Create_TalkBox7:SetTex( "DLG_Common_Texture01.tga", "Talk_Box8" )
g_pPictureCharacter_Create_TalkBox7:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox8 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox8 )
g_pPictureCharacter_Create_TalkBox8:SetTex( "DLG_Common_Texture01.tga", "Talk_Box9" )
g_pPictureCharacter_Create_TalkBox8:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox9 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox9 )
g_pPictureCharacter_Create_TalkBox9:SetTex( "DLG_Common_Texture01.tga", "Talk_Box7" )
g_pPictureCharacter_Create_TalkBox9:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(440,300)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 491,
	ADD_SIZE_Y	= 466,
	"LEFT_TOP	= D3DXVECTOR2(500,57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 485,
	ADD_SIZE_Y	= 1,
	"LEFT_TOP	= D3DXVECTOR2(505,120)",
	"COLOR		= D3DXCOLOR(0.9,0.9,0.9,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Info_BG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Info_BG )
g_pPictureUnit_Info_BG:SetTex( "DLG_Common_Texture04.tga", "Info_BG" )
g_pPictureUnit_Info_BG:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(502,319)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(993,529)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME			= 0.0,
}

g_pPictureUnit_Eve = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Eve )
g_pPictureUnit_Eve:SetTex( "DLG_UI_Character02.tga", "Eve" )
g_pPictureUnit_Eve:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(689,39)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line1 )
g_pPictureElsword_Info_Line1:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,133)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line2 )
g_pPictureElsword_Info_Line2:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,155)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line3 )
g_pPictureElsword_Info_Line3:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,177)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line4 )
g_pPictureElsword_Info_Line4:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,199)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line5 )
g_pPictureElsword_Info_Line5:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,280)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line6 )
g_pPictureElsword_Info_Line6:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line6:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,333)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPictureCharacter_Create_Font_Eve = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Font_Eve )
g_pPictureCharacter_Create_Font_Eve:SetTex( "DLG_UI_Common_Texture69_NEW.tga", "EVE_NAME" )
g_pPictureCharacter_Create_Font_Eve:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(508,58)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1195,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,131)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1196,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,153)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_270,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,175)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1197,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,197)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1198,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,279)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1199,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,331)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1219,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,131)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_2602,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,153)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1220,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,175)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1221,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,197)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1222,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,279)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1223,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,331)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------------------------------------여기서 부터 청-------------------------------------------------
g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticUnit_Create_Unit5" )
g_pStaticUnit_Create:SetShow(false)

g_pPictureCharacter_Create_Image_Chung = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Image_Chung )
g_pPictureCharacter_Create_Image_Chung:SetTex( "DLG_UI_Cartoon02.tga", "CHUNG_Cartoon_Image" )
g_pPictureCharacter_Create_Image_Chung:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(74,74)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


g_pPictureCharacter_Create_TalkBox1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox1 )
g_pPictureCharacter_Create_TalkBox1:SetTex( "DLG_Common_Texture01.tga", "Talk_Box1" )
g_pPictureCharacter_Create_TalkBox1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox2 )
g_pPictureCharacter_Create_TalkBox2:SetTex( "DLG_Common_Texture01.tga", "Talk_Box2" )
g_pPictureCharacter_Create_TalkBox2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox3 )
g_pPictureCharacter_Create_TalkBox3:SetTex( "DLG_Common_Texture01.tga", "Talk_Box3" )
g_pPictureCharacter_Create_TalkBox3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox4 )
g_pPictureCharacter_Create_TalkBox4:SetTex( "DLG_Common_Texture01.tga", "Talk_Box4" )
g_pPictureCharacter_Create_TalkBox4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox5 )
g_pPictureCharacter_Create_TalkBox5:SetTex( "DLG_Common_Texture01.tga", "Talk_Box5" )
g_pPictureCharacter_Create_TalkBox5:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(496,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox6 )
g_pPictureCharacter_Create_TalkBox6:SetTex( "DLG_Common_Texture01.tga", "Talk_Box6" )
g_pPictureCharacter_Create_TalkBox6:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(986,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox7 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox7 )
g_pPictureCharacter_Create_TalkBox7:SetTex( "DLG_Common_Texture01.tga", "Talk_Box8" )
g_pPictureCharacter_Create_TalkBox7:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox8 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox8 )
g_pPictureCharacter_Create_TalkBox8:SetTex( "DLG_Common_Texture01.tga", "Talk_Box9" )
g_pPictureCharacter_Create_TalkBox8:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox9 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox9 )
g_pPictureCharacter_Create_TalkBox9:SetTex( "DLG_Common_Texture01.tga", "Talk_Box7" )
g_pPictureCharacter_Create_TalkBox9:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(440,300)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 491,
	ADD_SIZE_Y	= 466,
	"LEFT_TOP	= D3DXVECTOR2(500,57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 485,
	ADD_SIZE_Y	= 1,
	"LEFT_TOP	= D3DXVECTOR2(505,120)",
	"COLOR		= D3DXCOLOR(0.9,0.9,0.9,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Info_BG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Info_BG )
g_pPictureUnit_Info_BG:SetTex( "DLG_Common_Texture04.tga", "Info_BG" )
g_pPictureUnit_Info_BG:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(502,319)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(993,529)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME			= 0.0,
}

g_pPictureUnit_Chung = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Chung )
g_pPictureUnit_Chung:SetTex( "DLG_Common_Texture23.tga", "Chung" )
g_pPictureUnit_Chung:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(623,31)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureChung_Info_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureChung_Info_Line1 )
g_pPictureChung_Info_Line1:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureChung_Info_Line1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,133)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureChung_Info_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureChung_Info_Line2 )
g_pPictureChung_Info_Line2:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureChung_Info_Line2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,155)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureChung_Info_Line3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureChung_Info_Line3 )
g_pPictureChung_Info_Line3:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureChung_Info_Line3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,177)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureChung_Info_Line4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureChung_Info_Line4 )
g_pPictureChung_Info_Line4:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureChung_Info_Line4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,199)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureChung_Info_Line5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureChung_Info_Line5 )
g_pPictureChung_Info_Line5:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureChung_Info_Line5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,280+10)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureChung_Info_Line6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureChung_Info_Line6 )
g_pPictureChung_Info_Line6:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureChung_Info_Line6:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,333+35)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPictureCharacter_Create_Font_Chung = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Font_Chung )
g_pPictureCharacter_Create_Font_Chung:SetTex( "DLG_UI_Common_Texture69_NEW.tga", "CHUNG_NAME" )
g_pPictureCharacter_Create_Font_Chung:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(508,58)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1195,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,131)",
	"COLOR			= D3DXCOLOR(0.1,0.5,0.7,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1196,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,153)",
	"COLOR			= D3DXCOLOR(0.1,0.5,0.7,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_270,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,175)",
	"COLOR			= D3DXCOLOR(0.1,0.5,0.7,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1197,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,197)",
	"COLOR			= D3DXCOLOR(0.1,0.5,0.7,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1198,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,279+10)",
	"COLOR			= D3DXCOLOR(0.1,0.5,0.7,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1199,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,331+35)",
	"COLOR			= D3DXCOLOR(0.1,0.5,0.7,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_535,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,131)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1200,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,153)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_10208,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,175)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_10209,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,197)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_10210,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,279+10)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_10211,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,331+35)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------------------------------------여기서 부터 아라-------------------------------------------------
g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticUnit_Create_Unit6" )
g_pStaticUnit_Create:SetShow( false )

g_pPictureCharacter_Create_Font_Ara = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Font_Ara )
g_pPictureCharacter_Create_Font_Ara:SetTex( "DLG_UI_Cartoon03.tga", "ARA_CARTOON_IMAGE" )
g_pPictureCharacter_Create_Font_Ara:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(74,74)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


g_pPictureCharacter_Create_TalkBox1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox1 )
g_pPictureCharacter_Create_TalkBox1:SetTex( "DLG_Common_Texture01.tga", "Talk_Box1" )
g_pPictureCharacter_Create_TalkBox1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox2 )
g_pPictureCharacter_Create_TalkBox2:SetTex( "DLG_Common_Texture01.tga", "Talk_Box2" )
g_pPictureCharacter_Create_TalkBox2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox3 )
g_pPictureCharacter_Create_TalkBox3:SetTex( "DLG_Common_Texture01.tga", "Talk_Box3" )
g_pPictureCharacter_Create_TalkBox3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox4 )
g_pPictureCharacter_Create_TalkBox4:SetTex( "DLG_Common_Texture01.tga", "Talk_Box4" )
g_pPictureCharacter_Create_TalkBox4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox5 )
g_pPictureCharacter_Create_TalkBox5:SetTex( "DLG_Common_Texture01.tga", "Talk_Box5" )
g_pPictureCharacter_Create_TalkBox5:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(496,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox6 )
g_pPictureCharacter_Create_TalkBox6:SetTex( "DLG_Common_Texture01.tga", "Talk_Box6" )
g_pPictureCharacter_Create_TalkBox6:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(986,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox7 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox7 )
g_pPictureCharacter_Create_TalkBox7:SetTex( "DLG_Common_Texture01.tga", "Talk_Box8" )
g_pPictureCharacter_Create_TalkBox7:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox8 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox8 )
g_pPictureCharacter_Create_TalkBox8:SetTex( "DLG_Common_Texture01.tga", "Talk_Box9" )
g_pPictureCharacter_Create_TalkBox8:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox9 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox9 )
g_pPictureCharacter_Create_TalkBox9:SetTex( "DLG_Common_Texture01.tga", "Talk_Box7" )
g_pPictureCharacter_Create_TalkBox9:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(440,300)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 491,
	ADD_SIZE_Y	= 466,
	"LEFT_TOP	= D3DXVECTOR2(500,57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 485,
	ADD_SIZE_Y	= 1,
	"LEFT_TOP	= D3DXVECTOR2(505,120)",
	"COLOR		= D3DXCOLOR(0.9,0.9,0.9,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Info_BG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Info_BG )
g_pPictureUnit_Info_BG:SetTex( "DLG_Common_Texture04.tga", "Info_BG" )
g_pPictureUnit_Info_BG:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(502,319)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(993,529)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME			= 0.0,
}

g_pPictureUnit_Ara = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Ara )
g_pPictureUnit_Ara:SetTex( "DLG_UI_Common_Texture69_NEW.tga", "BG_ARA_INTRODUCE" )
g_pPictureUnit_Ara:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(689,39)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line1 )
g_pPictureElsword_Info_Line1:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,133)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line2 )
g_pPictureElsword_Info_Line2:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,155)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line3 )
g_pPictureElsword_Info_Line3:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,177)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line4 )
g_pPictureElsword_Info_Line4:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,199)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line5 )
g_pPictureElsword_Info_Line5:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,280)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElsword_Info_Line6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElsword_Info_Line6 )
g_pPictureElsword_Info_Line6:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElsword_Info_Line6:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,333)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_Font_Ara = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Font_Ara )
g_pPictureCharacter_Create_Font_Ara:SetTex( "DLG_UI_Common_Texture69_NEW.tga", "ARA_NAME" )
g_pPictureCharacter_Create_Font_Ara:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(508,58)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1195,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,131)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1196,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,153)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_270,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,175)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1197,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,197)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1198,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,279)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1199,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,331)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_536,	-- 여
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,131)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_21506,	-- 17세
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,153)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_21507,	-- 장창
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,175)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_21508,	-- 특징
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,197)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_21509,	-- 성격
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,279)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_21510,	-- 배경
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,331)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------------------------------------여기서 부터 엘리시스-------------------------------------------------
g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticUnit_Create_Unit7" )
g_pStaticUnit_Create:SetShow( false )

g_pPictureCharacter_Create_Font_Ara = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_Font_Ara )
g_pPictureCharacter_Create_Font_Ara:SetTex( "DLG_UI_Cartoon04.tga", "ELESIS_CARTOON_IMAGE" )
g_pPictureCharacter_Create_Font_Ara:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(74,74)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


g_pPictureCharacter_Create_TalkBox1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox1 )
g_pPictureCharacter_Create_TalkBox1:SetTex( "DLG_Common_Texture01.tga", "Talk_Box1" )
g_pPictureCharacter_Create_TalkBox1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox2 )
g_pPictureCharacter_Create_TalkBox2:SetTex( "DLG_Common_Texture01.tga", "Talk_Box2" )
g_pPictureCharacter_Create_TalkBox2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox3 )
g_pPictureCharacter_Create_TalkBox3:SetTex( "DLG_Common_Texture01.tga", "Talk_Box3" )
g_pPictureCharacter_Create_TalkBox3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(496,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox4 )
g_pPictureCharacter_Create_TalkBox4:SetTex( "DLG_Common_Texture01.tga", "Talk_Box4" )
g_pPictureCharacter_Create_TalkBox4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(986,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox5 )
g_pPictureCharacter_Create_TalkBox5:SetTex( "DLG_Common_Texture01.tga", "Talk_Box5" )
g_pPictureCharacter_Create_TalkBox5:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(496,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox6 )
g_pPictureCharacter_Create_TalkBox6:SetTex( "DLG_Common_Texture01.tga", "Talk_Box6" )
g_pPictureCharacter_Create_TalkBox6:SetPoint
{
	ADD_SIZE_Y	= 462,
	"LEFT_TOP	= D3DXVECTOR2(986,60)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox7 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox7 )
g_pPictureCharacter_Create_TalkBox7:SetTex( "DLG_Common_Texture01.tga", "Talk_Box8" )
g_pPictureCharacter_Create_TalkBox7:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,47)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox8 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox8 )
g_pPictureCharacter_Create_TalkBox8:SetTex( "DLG_Common_Texture01.tga", "Talk_Box9" )
g_pPictureCharacter_Create_TalkBox8:SetPoint
{
	ADD_SIZE_X	= 473,
	"LEFT_TOP	= D3DXVECTOR2(512,523)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox9 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox9 )
g_pPictureCharacter_Create_TalkBox9:SetTex( "DLG_Common_Texture01.tga", "Talk_Box7" )
g_pPictureCharacter_Create_TalkBox9:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(440,300)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 491,
	ADD_SIZE_Y	= 466,
	"LEFT_TOP	= D3DXVECTOR2(500,57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureCharacter_Create_TalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureCharacter_Create_TalkBox10 )
g_pPictureCharacter_Create_TalkBox10:SetTex( "DLG_Common_Texture01.tga", "White" )
g_pPictureCharacter_Create_TalkBox10:SetPoint
{
	ADD_SIZE_X	= 485,
	ADD_SIZE_Y	= 1,
	"LEFT_TOP	= D3DXVECTOR2(505,120)",
	"COLOR		= D3DXCOLOR(0.9,0.9,0.9,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Info_BG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Info_BG )
g_pPictureUnit_Info_BG:SetTex( "DLG_Common_Texture04.tga", "Info_BG" )
g_pPictureUnit_Info_BG:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(502,319)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(993,529)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME			= 0.0,
}

g_pPictureUnit_Elesis = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Elesis )
g_pPictureUnit_Elesis:SetTex( "DLG_UI_Common_Texture75_NEW.tga", "BG_ELESIS_INTRODUCE" )
g_pPictureUnit_Elesis:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(689,39)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElesis_Info_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElesis_Info_Line1 )
g_pPictureElesis_Info_Line1:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElesis_Info_Line1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,133)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElesis_Info_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElesis_Info_Line2 )
g_pPictureElesis_Info_Line2:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElesis_Info_Line2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,155)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElesis_Info_Line3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElesis_Info_Line3 )
g_pPictureElesis_Info_Line3:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElesis_Info_Line3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,177)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElesis_Info_Line4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElesis_Info_Line4 )
g_pPictureElesis_Info_Line4:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElesis_Info_Line4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,199)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElesis_Info_Line5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElesis_Info_Line5 )
g_pPictureElesis_Info_Line5:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElesis_Info_Line5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,280)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElesis_Info_Line6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElesis_Info_Line6 )
g_pPictureElesis_Info_Line6:SetTex( "DLG_Common_Texture01.tga", "Info_Line" )
g_pPictureElesis_Info_Line6:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(537,333)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureElesis_Create_Font_Ara = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureElesis_Create_Font_Ara )
g_pPictureElesis_Create_Font_Ara:SetTex( "DLG_UI_Common_Texture69_NEW.tga", "ELESIS_NAME" )
g_pPictureElesis_Create_Font_Ara:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(508,58)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1195,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,131)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1196,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,153)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_270,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,175)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1197,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,197)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1198,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,279)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_1199,
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(508,331)",
	"COLOR			= D3DXCOLOR(0.86,0.39,0.40,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_536,	-- 여
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,131)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_25746,	-- 16세
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,153)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_25747,	-- 중검
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,175)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_25748,	-- 특징
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,197)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_25749,	-- 성격
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,279)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticUnit_Create:AddString
{
	MSG				= STR_ID_25750,	-- 배경
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(545,331)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.6,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}