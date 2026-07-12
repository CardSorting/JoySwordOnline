-- Field_Peita_Villeage.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  0.745098, 0.745098, 0.784314 ) 
g_pWorld:SetOriginColor_LUA(  0.694118, 0.690196, 0.745098 ) 
g_pWorld:SetLineMap( "Field_Peita_Villeage_LineMap.lua" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Field_Rest_Night01.ogg" )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Peita_Field_Rest_Water01.ogg", -7414, 337, -4000, 2100  )  -- 물떨어짐 1
g_pWorld:Add3DEffectBGM_LUA( "Amb_Peita_Field_Rest_Water02.ogg", -10150, 377, -4000, 2100  )  -- 물떨어짐 2
g_pWorld:Add3DEffectBGM_LUA( "Amb_Peita_Field_Rest_Water03.ogg", -11795, 1200, -5500, 2500  )  -- 물흐름 1
g_pWorld:Add3DEffectBGM_LUA( "Amb_Peita_Field_Rest_Fire01.ogg", -8252, 437, -6600, 2000  )  -- 모닥불1
g_pWorld:Add3DEffectBGM_LUA( "Amb_Peita_Field_Rest_Fire02.ogg", -6725, 1777, -874, 2000  )  -- 모닥불2
g_pWorld:SetBGM( "Field_Rest_Peita001.ogg" )



g_pWorld:SetFogWorld( 22400, 40000, 2600, 4067, 0, D3DXCOLOR( 0.254902, 0.4, 0.564706, 1.0 ) )
g_pWorld:SetProjection( 15, 500000, 4, 0, 0, 0, 0 )

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_01.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_02.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_03.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_alpha_01_1.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_alpha_01_1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_alpha_01_2.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_alpha_01_2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_alpha_01_3.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_alpha_01_3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_alpha_02.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_alpha_02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 22400, 40000, 2600, 4067, D3DXCOLOR(0.254902, 0.4, 0.568627, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_alpha_03.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_alpha_03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_back.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.305882, 0.439216, 0.819608, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 22400, 40000, 2600, 4067, D3DXCOLOR(0.254902, 0.4, 0.568627, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_back_1.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_back_1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.301961, 0.47451, 0.819608, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_Cloud_01.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_Cloud_01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.266667, 0.411765, 0.529412, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_Cloud_01_1.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_Cloud_01_1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.215686, 0.364706, 0.521569, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_Cloud_02.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_Cloud_02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.254902, 0.384314, 0.564706, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_Cloud_02_1.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_Cloud_02_1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.239216, 0.396078, 0.541176, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_Cloud_03.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_Cloud_03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.133333, 0.305882, 0.443137, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_mist_001.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_mist_001.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_3"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_mist_001_1.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_mist_001_1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_3"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_mist_001_2.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_mist_001_2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_3"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_mist_002.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_mist_002.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_moon.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_moon.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.443137, 0.396078, 0.568627, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.231373, 0.490196, 0.635294, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_water_001.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_water_001.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.3, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 22400, 40000, 2600, 4067, D3DXCOLOR(0.254902, 0.4, 0.568627, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_water_002.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_water_002.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.2, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 22400, 40000, 2600, 4067, D3DXCOLOR(0.254902, 0.4, 0.568627, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_water_003.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_water_003.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 0.3 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 22400, 40000, 2600, 4067, D3DXCOLOR(0.254902, 0.4, 0.568627, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_water_004.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_water_004.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 0.4 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 22400, 40000, 2600, 4067, D3DXCOLOR(0.254902, 0.4, 0.568627, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_water_005.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_water_005.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 0.6 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 22400, 40000, 2600, 4067, D3DXCOLOR(0.254902, 0.4, 0.568627, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_water_006.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_water_006.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 0.4 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_water_007.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_water_007.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 0.4 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Peita_Villeage_sign.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Peita_Villeage_sign.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetForceShow( true )


-- SKIN MESH -- 
-- PARTICLE -- 




g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-13835.056   ,     1622.505 ,   -2071.724  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )




g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-12907.774   ,     1677.73 ,   -960.446  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )





g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-12147.416   ,     1584.358 ,   -718.751  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )




g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-11201.432   ,     1690.913 ,   -1036.088  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )




g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-6747.163   ,     1500.214 ,   -957.705  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )




g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-5295.736   ,     1599.826 ,   -1107.487  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )




g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-2941.41   ,     1249.951 ,   -712.714  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )





g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-1325.288   ,     1203.64 ,   -1598.584  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )





g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-8470.039   ,     863.084 ,   -1935.102  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )




g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-9334.106   ,     863.084 ,   -1935.102  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )







g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-8258.695   ,    530.089 ,   -3321.872  ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )