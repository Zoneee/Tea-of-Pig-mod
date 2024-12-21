local assets =
{
    Asset("ANIM", "anim/pidan.zip"),  -- Path to the graphics asset for the prefab
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("pidan")
    inst.AnimState:SetBuild("pidan")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")
    
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "pidan"
    inst.components.inventoryitem.atlasname = "images/pidan.xml"

    return inst
end

return Prefab("pidan", fn, assets)
