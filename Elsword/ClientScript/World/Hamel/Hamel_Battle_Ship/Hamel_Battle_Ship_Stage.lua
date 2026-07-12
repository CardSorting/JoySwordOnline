-- Hamel_Battle_Ship_Stage



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Hamel_Battle_Ship_Stage_LineMap.lua" )
g_pWorld:SetBGM( "Ship01.ogg" )



g_pWorld:SetWorldCamera( "Hamel_Battle_Ship_Stage_Camera.lua" )
g_pWorld:SetFogWorld( 2600, 7200, 2200, -5000, 0.2, D3DXCOLOR( 0.784314, 0.556863, 1, 1.0 ) )
g_pWorld:SetProjection( 10, 50000, 4, 300, 0, 0, 0 )

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pSkyDome:SetDomeMesh( "HAMEL_SHIP_STAGE_CLOUD_BACK.Y" )
g_pSkyDome:SetPos( 0, 1500, 0 )
g_pSkyDome:SetRotationSpeed( 3 )
g_pSkyDome:SetUseWorldColor( true )
g_pSkyDome:SetSkyDomeColor( D3DXCOLOR(1, 1, 1, 1))
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pSkyDome:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pSkyDome:SetDomeMesh( "HAMEL_SHIP_STAGE_CLOUD_FRONT.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 5 )
g_pSkyDome:SetUseWorldColor( true )
g_pSkyDome:SetSkyDomeColor( D3DXCOLOR(1, 1, 1, 1))
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pSkyDome:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), -0.3 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "HAMEL_SHIP_STAGE_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetUseWorldColor( true )
g_pSkyDome:SetSkyDomeColor( D3DXCOLOR(1, 1, 1, 1))
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pSkyDome:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pSkyDome:SetDomeMesh( "HAMEL_SHIP_STAGE_SKY_AURA.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0.5 )
g_pSkyDome:SetTex0UVSpeed( -0.1, 0 )
g_pSkyDome:SetUseWorldColor( true )
g_pSkyDome:SetSkyDomeColor( D3DXCOLOR(1, 1, 1, 1))
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pSkyDome:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part01.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part01_A.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part01_A.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part02.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part02_flag.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part02_flag.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part02_H.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part02_H.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part03.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part03_flag.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part03_flag.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part03_H.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part03_H.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part03_Nangan_H.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part03_Nangan_H.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part04.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part04_A.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part04_A.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Ship_Part04_flag.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Ship_Part04_flag.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART01_BLUE.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART01_BLUE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0, 1 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART01_ENGINE.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART01_ENGINE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART01_WONTONG.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART01_WONTONG.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART02_BLUE.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART02_BLUE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0, 1 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART02_ENGINE.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART02_ENGINE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART02_SPRING01.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART02_SPRING01.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART02_SPRING02.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART02_SPRING02.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART02_WONTONG.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART02_WONTONG.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART03_BLUE.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART03_BLUE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0, 1 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART03_ENGINE.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART03_ENGINE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART03_SPRING01.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART03_SPRING01.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART03_SPRING02.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART03_SPRING02.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART03_WONTONG.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART03_WONTONG.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART04_SPRING03.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART04_SPRING03.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_PART04_SPRING04.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_PART04_SPRING04.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_SHIP_STAGE_SEA.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_SHIP_STAGE_SEA.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1, 1) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.3, 0.5 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.666667, 1, 0.713726, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.bAlphaTestEnable = false
g_pRenderParam.renderType = RENDER_TYPE["RT_REAL_COLOR"]
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_INVSRCALPHA"]
g_pObjectSkinMesh:SetFog( 2600, 7200, 2200, -5000, D3DXCOLOR(0.788235, 0.560784, 1, 1), 0.2 )


-- PARTICLE -- 
