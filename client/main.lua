local RSGCore = exports['rsg-core']:GetCoreObject()
local inHotZone = false
local mineType = nil
local goldpan = nil

Citizen.CreateThread(function()
    for _, zones in pairs(Config.Hotspots) do
        local hotspot = PolyZone:Create(zones.coords, {
            name = zones.id,
            minZ = zones.minZ,
            maxZ = zones.maxZ,
            debugPoly = false,
        })

        hotspot:onPlayerInOut(function(onInsideOut)
            if onInsideOut then
                inHotZone = true
            else
                inHotZone = false
            end
        end)
    end
end)

Citizen.CreateThread(function()
    for _, mines in pairs(Config.Mines) do
        if mines.showBlip then
            local MiningBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, mines.blip)
            SetBlipSprite(MiningBlip, 1220803671)
            SetBlipScale(MiningBlip)
            Citizen.InvokeNative(0x9CB1A1623062F402, MiningBlip, mines.label)
        end

        local mineZone = PolyZone:Create(mines.coords, {
            name = mines.id,
            minZ = mines.minZ,
            maxZ = mines.maxZ,
            debugPoly = false,
        })

        mineZone:onPlayerInOut(function(onInsideOut)
            if onInsideOut then
                print('Inside')
                mineType = mines.type
            else
                print('Outside')
                mineType = nil
            end
        end)
    end
end)

RegisterNetEvent('jc-mining:client:StartMining', function()
    if mineType then
        local coords = GetEntityCoords(PlayerPedId())
        local boneIndex = GetEntityBoneIndexByName(PlayerPedId(), "SKEL_R_Finger00")
        local pickaxe = CreateObject(GetHashKey("p_pickaxe01x"), coords, true, true, true)
        isMining = true

        SetCurrentPedWeapon(PlayerPedId(), "WEAPON_UNARMED", true)
        ClearPedTasksImmediately(PlayerPedId())
        AttachEntityToEntity(pickaxe, PlayerPedId(), boneIndex, -0.35, -0.21, -0.39, -8.0, 47.0, 11.0, true, false, true, false, 0, true)
        local chance = math.random(1, 100)
        RequestAnimDict('amb_work@world_human_pickaxe@wall@male_d@base')
        while not HasAnimDictLoaded('amb_work@world_human_pickaxe@wall@male_d@base') do
            Wait(10)
        end
        TaskPlayAnim(PlayerPedId(), 'amb_work@world_human_pickaxe@wall@male_d@base', 'base', 3.0, 3.0, -1, 1, 0, false, false, false)
        Wait(10000)
        ClearPedTasksImmediately(PlayerPedId())
        TriggerServerEvent('jc-mining:server:giveitems', mineType)
        SetEntityAsNoLongerNeeded(pickaxe)
        DeleteEntity(pickaxe)
        DeleteObject(pickaxe)

        if Config.PickaxeBreak then
            if chance <= Config.BreakChance then
                TriggerServerEvent('jc-mining:server:removepickaxe')
                RSGCore.Functions.Notify('You destroyed your pickaxe!', 'error', 3000)
            end
        end
    else
        RSGCore.Functions.Notify('You\'re not inside a mine!', 'error', 3000)
    end
end)

RegisterNetEvent('jc-mining:client:StartPanning', function()
    local x,y,z =  table.unpack(GetEntityCoords(PlayerPedId()))
  	local current_district = Citizen.InvokeNative(0x43AD8FC02B429D33, x, y, z, 3)
  	if current_district then
        if not IsEntityInWater(PlayerPedId()) then RSGCore.Functions.Notify('You\'re not in any river!', 'error', 3000) return end
        RequestAnimDict('script_rc@cldn@ig@rsc2_ig1_questionshopkeeper')
        RequestAnimDict('script_re@gold_panner@gold_success')
        
        while not HasAnimDictLoaded('script_rc@cldn@ig@rsc2_ig1_questionshopkeeper') do
            Wait(10)
        end

        while not HasAnimDictLoaded('script_re@gold_panner@gold_success') do
            Wait(10)
        end 
        TaskPlayAnim(PlayerPedId(), 'script_rc@cldn@ig@rsc2_ig1_questionshopkeeper', "inspectfloor_player", 0.5, 8.0, -1, 1, 0, false, false, false)
        RSGCore.Functions.Progressbar('gold_panning', 'Panning for Gold', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true
            }, {}, {}, {}, function()
                ClearPedTasks(PlayerPedId())
                Wait(500)
                if not DoesEntityExist(goldpan) then
                    local coords = GetEntityCoords(PlayerPedId())
                    local model = GetHashKey("P_CS_MININGPAN01X")
                    while not HasModelLoaded(model) do
                        RequestModel(model)
                        Wait(1)
                    end
                    goldpan = CreateObject(model, coords.x+0.30, coords.y+0.10,coords.z, true, false, false)
                    SetEntityVisible(goldpan, true)
                    SetEntityAlpha(goldpan, 255, false)
                    Citizen.InvokeNative(0x283978A15512B2FE, goldpan, true)   
                    local boneIndex = GetEntityBoneIndexByName(PlayerPedId(), "SKEL_R_HAND")
                    AttachEntityToEntity(goldpan, PlayerPedId(), boneIndex, 0.2, 0.0, -0.20, -100.0, -50.0, 0.0, false, false, false, true, 2, true)
                    SetModelAsNoLongerNeeded(model)
                end
                TaskPlayAnim(PlayerPedId(), 'script_re@gold_panner@gold_success', "SEARCH02", 1.0, 8.0, -1, 1, 0, false, false, false)
                Wait(5000)
                ClearPedTasks(PlayerPedId())
                DeleteObject(goldpan)
                goldpan = nil
                if inHotZone then
                    if math.random(1, 100) >= 50 then
                        local amount = math.random(2, 8)
                        TriggerServerEvent('jc-mining:server:giveFlakes', amount)
                    else
                        RSGCore.Functions.Notify('You didn\'t find anything!', 'error', 3000)
                    end
                else
                    if math.random(1, 100) >= 15 then
                        local amount = math.random(1, 3)
                        TriggerServerEvent('jc-mining:server:giveFlakes', amount)
                    else
                        RSGCore.Functions.Notify('You didn\'t find anything!', 'error', 3000)
                    end
                end
            end, function()
        end)
    else
        RSGCore.Functions.Notify('You\'re not at any river!', 'error', 3000)
  	end
end)

RegisterNetEvent('jc-mining:client:StartWashing', function()
    local x,y,z =  table.unpack(GetEntityCoords(PlayerPedId()))
  	local current_district = Citizen.InvokeNative(0x43AD8FC02B429D33, x, y, z, 3)
  	if current_district then
        if not IsEntityInWater(PlayerPedId()) then RSGCore.Functions.Notify('You\'re not in any river!', 'error', 3000) return end
        RequestAnimDict('script_rc@cldn@ig@rsc2_ig1_questionshopkeeper')
        while not HasAnimDictLoaded('script_rc@cldn@ig@rsc2_ig1_questionshopkeeper') do
            Wait(10)
        end
        TaskPlayAnim(PlayerPedId(), 'script_rc@cldn@ig@rsc2_ig1_questionshopkeeper', "inspectfloor_player", 0.5, 8.0, -1, 1, 0, false, false, false)
        RSGCore.Functions.Progressbar('washing_stone', 'Washing Rocks', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true
            }, {}, {}, {}, function()
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent('jc-mining:server:washStones')
            end, function()
        end)
    else
        RSGCore.Functions.Notify('You\'re not at any river!', 'error', 3000)
  	end
end)