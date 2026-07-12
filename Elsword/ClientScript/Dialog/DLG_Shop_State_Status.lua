-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticUser_Equip_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Equip_Window )
g_pStaticUser_Equip_Window:SetName( "Status_Window" )

----(스테이터스 정보창) 



----(스테이터스 정보창) 



g_pPictureState_Info_Window0 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window0 )

g_pPictureState_Info_Window0:SetTex( "DLG_Common_Texture01.TGA", "Box" )

g_pPictureState_Info_Window0:SetPoint
{
    ADD_SIZE_X = 466,
    ADD_SIZE_Y = 103+5,
	"LEFT_TOP		= D3DXVECTOR2(34,462-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Window1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window1 )

g_pPictureState_Info_Window1:SetTex( "DLG_Common_Texture01.TGA", "Round_Window1" )

g_pPictureState_Info_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(519-489,58+399-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Window2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window2 )

g_pPictureState_Info_Window2:SetTex( "DLG_Common_Texture01.TGA", "Round_Window2" )

g_pPictureState_Info_Window2:SetPoint
{
    ADD_SIZE_X = 459,
	"LEFT_TOP		= D3DXVECTOR2(528-489,58+399-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Window3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window3 )

g_pPictureState_Info_Window3:SetTex( "DLG_Common_Texture01.TGA", "Round_Window3" )

g_pPictureState_Info_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(988-490,58+399-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Window4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window4 )

g_pPictureState_Info_Window4:SetTex( "DLG_Common_Texture01.TGA", "Round_Window4" )

g_pPictureState_Info_Window4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(519-489,284+278)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Window5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window5 )

g_pPictureState_Info_Window5:SetTex( "DLG_Common_Texture01.TGA", "Round_Window5" )

g_pPictureState_Info_Window5:SetPoint
{
    ADD_SIZE_X = 459,
	"LEFT_TOP		= D3DXVECTOR2(528-489,284+278)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Window6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window6 )

g_pPictureState_Info_Window6:SetTex( "DLG_Common_Texture01.TGA", "Round_Window6" )

g_pPictureState_Info_Window6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(988-490,284+278)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Window7 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window7 )

g_pPictureState_Info_Window7:SetTex( "DLG_Common_Texture01.TGA", "Round_Window7" )

g_pPictureState_Info_Window7:SetPoint
{
    ADD_SIZE_Y = 97+5,
	"LEFT_TOP		= D3DXVECTOR2(519-489,66+399-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Window8 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window8 )

g_pPictureState_Info_Window8:SetTex( "DLG_Common_Texture01.TGA", "Round_Window8" )

g_pPictureState_Info_Window8:SetPoint
{
    ADD_SIZE_Y = 97+5,
	"LEFT_TOP		= D3DXVECTOR2(988-490,66+399-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----(스테이터스 정보 라인)

g_pPictureState_Info_Window_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line1 )

g_pPictureState_Info_Window_Line1:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box1" )

g_pPictureState_Info_Window_Line1:SetPoint
{
    ADD_SIZE_X = 199,
    ADD_SIZE_Y = 81,
    
	"LEFT_TOP		= D3DXVECTOR2(37,480)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Window_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line2 )

g_pPictureState_Info_Window_Line2:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line2:SetPoint
{
    ADD_SIZE_X = 199,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(39,480)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Window_Line3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line3 )

g_pPictureState_Info_Window_Line3:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line3:SetPoint
{
    ADD_SIZE_X = 199,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(39,501)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Window_Line4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line4 )

g_pPictureState_Info_Window_Line4:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line4:SetPoint
{
    ADD_SIZE_X = 199,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(39,522)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Window_Line5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line5 )

g_pPictureState_Info_Window_Line5:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line5:SetPoint
{
    ADD_SIZE_X = 199,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(39,543)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Window_Line5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line5 )

g_pPictureState_Info_Window_Line5:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line5:SetPoint
{
    ADD_SIZE_X = 199,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(39,459)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------속성 status

g_pPictureState_Info_Window_Line6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line6 )

g_pPictureState_Info_Window_Line6:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line6:SetPoint
{
    ADD_SIZE_X = 127,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(241,480)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureState_Info_Window_Line7 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line7 )

g_pPictureState_Info_Window_Line7:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line7:SetPoint
{
    ADD_SIZE_X = 127,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(370,480)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Window_Line8 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line8 )

g_pPictureState_Info_Window_Line8:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line8:SetPoint
{
    ADD_SIZE_X = 127,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(241,501)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Window_Line9 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line9 )

g_pPictureState_Info_Window_Line9:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line9:SetPoint
{
    ADD_SIZE_X = 127,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(370,501)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Window_Line10 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line10 )

g_pPictureState_Info_Window_Line10:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line10:SetPoint
{
    ADD_SIZE_X = 127,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(241,522)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureState_Info_Window_Line11 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Window_Line11 )

g_pPictureState_Info_Window_Line11:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box2" )

g_pPictureState_Info_Window_Line11:SetPoint
{
    ADD_SIZE_X = 127,
    ADD_SIZE_Y = 18,
    
	"LEFT_TOP		= D3DXVECTOR2(370,522)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_HP = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_HP )

g_pPictureState_Info_HP:SetTex( "DLG_Common_Texture01.TGA", "HP" )

g_pPictureState_Info_HP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(42,483-21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Attack = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Attack )

g_pPictureState_Info_Attack:SetTex( "DLG_Common_Texture01.TGA", "Attack_Font" )

g_pPictureState_Info_Attack:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(42,503-21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Magic = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Magic )

g_pPictureState_Info_Magic:SetTex( "DLG_Common_Texture01.TGA", "Magic_Font" )

g_pPictureState_Info_Magic:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(42,524-21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Defense = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Defense )

g_pPictureState_Info_Defense:SetTex( "DLG_Common_Texture17.TGA", "Defense" )

g_pPictureState_Info_Defense:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(42,545-21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Magic_Defense = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Magic_Defense )

g_pPictureState_Info_Magic_Defense:SetTex( "DLG_Common_Texture17.TGA", "mDefense" )

g_pPictureState_Info_Magic_Defense:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(42,545)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----속성방어력

g_pPictureState_Info_Resist_defense = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Resist_defense )

g_pPictureState_Info_Resist_defense:SetTex( "DLG_Common_New_Texture66.TGA", "Resist_depense" )

g_pPictureState_Info_Resist_defense:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(336,460)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---속성명

g_pPictureState_Info_Resist_fire = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Resist_fire )

g_pPictureState_Info_Resist_fire:SetTex( "DLG_Common_New_Texture66.TGA", "Resist_fire" )

g_pPictureState_Info_Resist_fire:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(268,484)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Resist_water = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Resist_water )

g_pPictureState_Info_Resist_water:SetTex( "DLG_Common_New_Texture66.TGA", "Resist_water" )

g_pPictureState_Info_Resist_water:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(268,505)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Resist_nature = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Resist_nature )

g_pPictureState_Info_Resist_nature:SetTex( "DLG_Common_New_Texture66.TGA", "Resist_nature" )

g_pPictureState_Info_Resist_nature:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(265,526)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Resist_wind = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Resist_wind )

g_pPictureState_Info_Resist_wind:SetTex( "DLG_Common_New_Texture66.TGA", "Resist_wind" )

g_pPictureState_Info_Resist_wind:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(394,485)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_Resist_light = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Resist_light )

g_pPictureState_Info_Resist_light:SetTex( "DLG_Common_New_Texture66.TGA", "Resist_light" )

g_pPictureState_Info_Resist_light:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(399,505)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Resist_dark = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Resist_dark )

g_pPictureState_Info_Resist_dark:SetTex( "DLG_Common_New_Texture66.TGA", "Resist_dark" )

g_pPictureState_Info_Resist_dark:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(393,526)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureState_Info_Fire = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Fire )

g_pPictureState_Info_Fire:SetTex( "DLG_UI_Common_Texture02.TGA", "Fire_Mark" )

g_pPictureState_Info_Fire:SetPoint
{
    ADD_SIZE_X = -3,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(244.3,481)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_Ice = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_Ice )

g_pPictureState_Info_Ice:SetTex( "DLG_UI_Common_Texture02.TGA", "WATER_Mark" )

g_pPictureState_Info_Ice:SetPoint
{
     ADD_SIZE_X = -3,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(245,502)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_nature = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_nature )

g_pPictureState_Info_nature:SetTex( "DLG_UI_Common_Texture02.TGA", "nature_Mark" )

g_pPictureState_Info_nature:SetPoint
{
      ADD_SIZE_X = -3,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(245,523)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureState_Info_wind = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_wind )

g_pPictureState_Info_wind:SetTex( "DLG_UI_Common_Texture02.TGA", "wind_Mark" )

g_pPictureState_Info_wind:SetPoint
{
          ADD_SIZE_X = -3,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(373,480)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_light = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_light )

g_pPictureState_Info_light:SetTex( "DLG_UI_Common_Texture02.TGA", "light_Mark" )

g_pPictureState_Info_light:SetPoint
{
          ADD_SIZE_X = -3,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(373,501)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureState_Info_dark = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureState_Info_dark )

g_pPictureState_Info_dark:SetTex( "DLG_UI_Common_Texture02.TGA", "dark_Mark" )

g_pPictureState_Info_dark:SetPoint
{
          ADD_SIZE_X = -3,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(373,522)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



