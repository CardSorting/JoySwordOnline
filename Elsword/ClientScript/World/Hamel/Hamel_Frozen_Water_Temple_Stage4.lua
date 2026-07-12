-- Hamel_Frozen_Water_Temple_Stage4.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Hamel_Frozen_Water_Temple_Stage4_LineMap.lua" )
g_pWorld:SetBGM( "Music048_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_WallyCastle_Wind.ogg" ) --지속되는 바람소리
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaCanyon.ogg" ) --지속되는 바람소리


g_pWorld:SetFogWorld( 0, 24800, 0, 0, 0, D3DXCOLOR( 0.129412, 0.6, 1, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "SNOW_FOG.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0, 0.0666667, 0.466667, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_2"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "snow1.dds" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1.5, 1.5)
g_pWorldLayer:SetColor(D3DXCOLOR(0.854902, 1, 1, 1))
g_pWorldLayer:SetTexUV(0.7, -0.7)

g_pWorldLayer:SetFeedBackUV(1300, 1300)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_2"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "snow1.dds" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 3.5, 3.5)
g_pWorldLayer:SetColor(D3DXCOLOR(0.913726, 1, 1, 1))
g_pWorldLayer:SetTexUV(0.5, -0.3)

g_pWorldLayer:SetFeedBackUV(1300, 1300)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_2"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "snow1.dds" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 6, 6)
g_pWorldLayer:SetColor(D3DXCOLOR(1, 1, 1, 1))
g_pWorldLayer:SetTexUV(0.4, -0.2)

g_pWorldLayer:SetFeedBackUV(1300, 1300)

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_back.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_gr1.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_gr1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_gr2.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_gr2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_gr3.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_gr3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_gr4.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_gr4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_gr5.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_gr5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_gr6.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_gr6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_gr7.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_gr7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_gr8.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_gr8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_gr9.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_gr9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_ice1.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_ice1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_ice10.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_ice10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_ice2.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_ice2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_ice3.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_ice3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_ice4.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_ice4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_ice5.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_ice5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_ice6.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_ice6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_ice7.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_ice7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_ice8.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_ice8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_ice9.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_ice9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_icestart.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_icestart.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_icestartmini.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_icestartmini.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_mt.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_mt.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_shadow.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_shadow.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.623529, 0.788235, 0.835294, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_temple.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_temple.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_S4_temple2.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_S4_temple2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "TRIGGER_HAMEL_FROZEN_WATER_TEMPLE_S4_BRIDGE.X" )
g_pObjectSkinMesh:AddXSkinModel( "TRIGGER_HAMEL_FROZEN_WATER_TEMPLE_S4_BRIDGE.X" )
g_pObjectSkinMesh:AddAnim( "Wait" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 0, 24800, 0, 0, D3DXCOLOR(0.129412, 0.6, 1, 1), 0 )
g_pObjectSkinMesh:SetForceShow( 1)


-- PARTICLE -- 
