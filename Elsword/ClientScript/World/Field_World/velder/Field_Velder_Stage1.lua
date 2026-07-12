-- Field_Velder_Stage1.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  0.470588, 0.666667, 0.980392 ) 
g_pWorld:SetOriginColor_LUA(  0.411765, 0.596078, 0.87451 ) 
g_pWorld:SetLineMap( "Field_Velder_Stage1_LineMap.lua" )
g_pWorld:SetBGM( "Field_Velder002.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Velder_Gate_Night.ogg" )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Velder_Field_Insect01.ogg", -21700, 660, 10574, 3400  )  -- 벌레
g_pWorld:Add3DEffectBGM_LUA( "Amb_Velder_Field_Insect02.ogg", -22790, 969, 21069, 3000  )  -- 벌레
g_pWorld:Add3DEffectBGM_LUA( "Amb_Velder_Field_Insect03.ogg", -15330, 660, 22223, 3400  )  -- 벌레




g_pWorld:SetFogWorld( 2600, 31400, 0, 0, 0.16, D3DXCOLOR( 0.129412, 0.0156863, 0.00392157, 1.0 ) )
g_pWorld:SetProjection( 15, 500000, 4, 300, 0, 0, 0 )

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_Cloud_1.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_Cloud_1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.160784, 0.203922, 0.258824, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_Cloud_2.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_Cloud_2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.133333, 0.223529, 0.278431, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_G01.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_G01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 2600, 31400, 0, 0, D3DXCOLOR(0.129412, 0.0156863, 0.00392157, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_G02.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_G02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 2600, 31400, 0, 0, D3DXCOLOR(0.129412, 0.0156863, 0.00392157, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_G03.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_G03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pRenderParam.cullMode = D3DCULL["D3DCULL_NONE"]
g_pObjectMesh:SetFog( 2600, 31400, 0, 0, D3DXCOLOR(0.129412, 0.0156863, 0.00392157, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_G03_Back.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_G03_Back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.541176, 0.67451, 0.729412, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 31400, 0, 0, D3DXCOLOR(0.129412, 0.0156863, 0.00392157, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_G03_Back_Fire.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_G03_Back_Fire.Y" )
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
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_G03_H.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_G03_H.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 2600, 31400, 0, 0, D3DXCOLOR(0.129412, 0.0156863, 0.00392157, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_G04.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_G04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 2600, 31400, 0, 0, D3DXCOLOR(0.129412, 0.0156863, 0.00392157, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_G05.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_G05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 2600, 31400, 0, 0, D3DXCOLOR(0.129412, 0.0156863, 0.00392157, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_G05_H.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_G05_H.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 31400, 0, 0, D3DXCOLOR(0.129412, 0.0156863, 0.00392157, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_Light.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_Light.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_Moon.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_Moon.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_Navi1.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_Navi1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetForceShow( true )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_Navi2.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_Navi2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetForceShow( true )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.356863, 0.529412, 0.733333, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 31400, 0, 0, D3DXCOLOR(0.129412, 0.0156863, 0.00392157, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Field_Velder_Stage1_G06.Y" )
g_pObjectMesh:SetXMeshLOD( "Field_Velder_Stage1_G06.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 2600, 31400, 0, 0, D3DXCOLOR(0.129412, 0.0156863, 0.00392157, 1), 0.16 )


-- SKIN MESH -- 
-- PARTICLE -- 





g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -14697.792 ,  2228.871 ,  25351.195 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )





g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -14697.792 ,  2228.871 ,  25906.979 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )





g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -15909.916 ,  1933.721 ,  27509.232 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )





g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -16408.375 ,  1933.721 ,  27509.232 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )





g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -16900.83 ,  1933.721 ,  27509.232 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )





g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -17689.443 ,  1933.721 ,  27509.232 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )






g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -18231.449 ,  1933.721 ,  27509.232 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )



