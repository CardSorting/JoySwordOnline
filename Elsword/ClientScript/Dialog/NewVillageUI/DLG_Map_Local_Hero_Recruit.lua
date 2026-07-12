-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 212+2, 120 )
g_pUIDialog:SetFront( true )

--=====================================================================================
--루벤
--=====================================================================================
---엘의 나무
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_2825 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(305,228)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(305,228)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(305,228)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_NORTH"] )
---숲속의 폐허
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_5185 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(415,130)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(415,130)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(415,130)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_NORTH"] )
---하얀 안개 습지
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_5186 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(218,157)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(218,157)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(218,157)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_NORTH"] )
--=====================================================================================
--엘더
--=====================================================================================
---어둠의 숲
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_2983 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(235,300)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(235,300)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(235,300)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
---벤더스의 동굴
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3035 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+260,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+260,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+260,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
---지하수로
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3061 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(320,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(320,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(320,200)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
----월리의 성 외곽
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3089 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(170,205)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(170,205)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(170,205)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
----월리의 성
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3118 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(245,158-48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,158-48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(245,158-48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
----월리의 지하연구실
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3146 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(385,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(385,260)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(385,260)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
--[[
	---발렌타인 이벤트 던전
	g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_HERO_ICON )
	g_pButton_HERO_ICON:SetName( "월리와 초콜릿 공장" )
	g_pButton_HERO_ICON:SetShow(false)
	g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
	g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
	g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
	g_pButton_HERO_ICON:SetNormalPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(376,60)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_HERO_ICON:SetOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(376,60)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_HERO_ICON:SetDownPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(376,60)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
--]]
--=====================================================================================
--베스마
--=====================================================================================

---용의 길
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3167 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(125,132)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(125,132)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(125,132)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
---베스마 호수
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3197 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+120,187)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+120,187)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+120,187)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
---베스마호수 밤
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3224 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+245,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+245,305)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+245,305)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
----용의둥지
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3276 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(255,267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(255,267)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(255,267)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
----리치광산
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3331 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+180,158-75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+180,158-75)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+180,158-75)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
----수송비공정
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3355 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(242,158-105)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(242,158-105)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(242,158-105)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
----용의 둥지 나락
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3501 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(170,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(170,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{    
    "LEFT_TOP		= D3DXVECTOR2(170,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
--=====================================================================================
--페이타
--=====================================================================================

---봉헌의신전 입구
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3572 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(165,230)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,230)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(165,230)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_PEITA"] )
---나선화랑
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3592 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(268,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(268,293)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(268,293)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_PEITA"] )
---지하예배당
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3609 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+260,240)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+260,240)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+260,240)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_PEITA"] )
----지하정원
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3631 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(352,190)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(352,190)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(352,190)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_PEITA"] )
----첨탑의 심장부
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3724 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(270,135)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(270,135)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(270,135)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_PEITA"] )
----봉헌의 제단
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3725 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+150,158-82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+150,158-82)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+150,158-82)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_PEITA"] )

--=====================================================================================
--알테라
--=====================================================================================

---블랙 크로우 호
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3399 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(93,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(93,65)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(93,65)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
---회귀의 평온
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3417 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(185,158-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185,158-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(185,158-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
---운송터널
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3438 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(185+112,157)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+112,157)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(185+112,157)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
----알테라 평원
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3456 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(185+215,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+215,140)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(185+215,140)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
----나소드 생산기지
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3474 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(185+320,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+320,217)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(185+320,217)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
----알테라 코어
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3526 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(185+164,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+164,293)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(185+164,293)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
----운송터널 오염구역
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_3550 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(185+80,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+80,280)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(185+80,280)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
--=====================================================================================
--벨더
--=====================================================================================

---제3거주지구
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_4619 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206-33,260-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206-33,260-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206-33,260-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER"] )
---희망의 다리
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_4620 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+53,260-115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+53,260-115)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+53,260-115)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER"] )
---왕궁진입로
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_5235 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+168,260-148)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+168,260-148)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+168,260-148)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER"] )
----불타는 희망의 다리
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_5275 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+280,158+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+280,158+25)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+280,158+25)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER"] )
----제1상업지구
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_5298 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+213,158+107)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+213,158+107)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+213,158+107)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER"] )
----남쪽 게이트
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_5318 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+87,158+138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+87,158+138)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+87,158+138)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER"] )

---환각의 벨더
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_13861 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(90,62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90,62)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(90,62)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER"] )
--=====================================================================================
--하멜
--=====================================================================================

---레시암 외곽
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_11048 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206-12,260-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206-12,260-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206-12,260-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_HAMEL"] )
---가라앉은 레시암
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_11049 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+130-23,260+7-12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+130-23,260+7-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+130-23,260+7-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_HAMEL"] )

---고대수로
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_11050 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+220-5,260-13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+220-5,260-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+220-5,260-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_HAMEL"] )

----고대 수로 중심부
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_11051 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+280-27,158-12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+280-27,158-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+280-27,158-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_HAMEL"] )

----마그만타의 동굴
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_13415 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+184-19,158-48-13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+184-19,158-48-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+184-19,158-48-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_HAMEL"] )

----얼어붙은 물의 신전
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_13416 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+88-20,158-70-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+88-20,158-70-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+88-20,158-70-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_HAMEL"] )

----물의 전당
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_13417 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206-30,158-67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206-30,158-67)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206-30,158-67)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_HAMEL"] )
--=====================================================================================
--샌더
--=====================================================================================

---메마른 샌더
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_21696 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+39,260+23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+39,260+23)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+39,260+23)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_SANDER"] )
---가르파이 기암지대
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_21697 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(206+223,260+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206+223,260+15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(206+223,260+15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_SANDER"] )

---트락소굴
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_22490 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(383,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(383,181)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(383,181)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_SANDER"] )

---칼루소 부족 마을
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_22491 )
g_pButton_HERO_ICON:SetShow(false)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(181,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,181)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(181,181)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_SANDER"] )

----------------------------------------------------------------------
--[[
---어둠의 문
g_pButton_HERO_ICON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HERO_ICON )
g_pButton_HERO_ICON:SetNameStrID( STR_ID_11495 )
g_pButton_HERO_ICON:SetShow(true)
g_pButton_HERO_ICON:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "HERO_ICON" )
g_pButton_HERO_ICON:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(89,313)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(89,313)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:SetDownPoint
{
    
 	"LEFT_TOP		= D3DXVECTOR2(89,313)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HERO_ICON:AddDummyInt( LOCAL_MAP_ID["LMI_DARKNESS"] )
--]]