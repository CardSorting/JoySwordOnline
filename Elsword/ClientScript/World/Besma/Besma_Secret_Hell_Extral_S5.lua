-- Besma_Secret_Hell_S4.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  1, 0.784314, 0.313726 ) 
g_pWorld:SetLineMap( "Besma_Secret_Hell_Extral_S5_Linemap.lua" )
g_pWorld:SetBGM( "Music033_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Besma_Hell_Extra_Stage_Drone2.ogg" )



g_pWorld:SetFogWorld( 200, 5400, 10000, 200, -0.01, D3DXCOLOR( 0.968628, 0.639216, 0.0941177, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "besma_secret_red.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.592157, 1, 1, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Back.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr10.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr11.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr11.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr7.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr8.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Gr9.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Gr9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Uv1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Uv1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.1 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Secret_Hell_S4_Uv2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Secret_Hell_S4_Uv2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.1 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 200, 5400, 10000, 200, D3DXCOLOR(0.968628, 0.643137, 0.0941177, 1), -0.01 )


-- SKIN MESH -- 
-- PARTICLE -- 
