if Config.Framework == 'VORP' then
    local VORPcore = exports['vorp_core']:GetCore()

    Citizen.CreateThread(function()
        exports['vorp_inventory']:registerUsableItem(Config.Pickaxe, function(data)
            local src = data.source
            TriggerClientEvent('jc-mining:client:startminingvorp', src)
        end)

        exports['vorp_inventory']:registerUsableItem(Config.Goldpan, function(data)
            local src = data.source
            TriggerClientEvent('jc-mining:client:StartPanningVORP', src)
        end)

        exports['vorp_inventory']:registerUsableItem(Config.CommonItems, function(data)
            local src = data.source
            TriggerClientEvent('jc-mining:client:StartWashingVORP', src)
        end)
    end)

    RegisterNetEvent('jc-mining:server:giveitems', function(mineType)
        local src = source
        local chance = math.random(1, 100)

        if mineType == 'common' then
            exports['vorp_inventory']:addItem(src, Config.CommonItems, math.random(2, 6))
        elseif mineType == 'rare' then
            if chance <= Config.RareChance then
                local item = Config.RareItems[math.random(1, #Config.RareItems)]
                exports['vorp_inventory']:addItem(src, item, math.random(1, 3))
            else
                VORPcore.NotifyCenter(src, "You didn\'t get anything!", 3000)
            end
        elseif mineType == 'rare' then
            if chance <= Config.RareChance then
                local item = Config.RareItems[math.random(1, #Config.RareItems)]
                exports['vorp_inventory']:addItem(src, item, math.random(1, 3))
            else
                VORPcore.NotifyCenter(src, "You didn\'t get anything!", 3000)
            end
        elseif mineType == 'gems' then
            if chance <= Config.GemsChance then
                local item = Config.GemItems[math.random(1, #Config.GemItems)]
                exports['vorp_inventory']:addItem(src, item, math.random(1, 3))
            else
                VORPcore.NotifyCenter(src, "You didn\'t get anything!", 3000)
            end
        elseif mineType == 'gold' then
            if chance <= Config.GoldChance then
                exports['vorp_inventory']:addItem(src, Config.GoldItems, math.random(1, 5))
            else
                VORPcore.NotifyCenter(src, "You didn\'t get anything!", 3000)
            end
        end
    end)

    RegisterNetEvent('jc-mining:server:washStonesVorp', function()
        local src = source
        local item = Config.WashingItems[math.random(1, #Config.WashingItems)]
        local chance = math.random(1, 100)
    
        exports['vorp_inventory']:subItem(src, Config.CommonItems, 1)
        if chance <= 15 then
            exports['vorp_inventory']:addItem(src, Config.GoldItems, math.random(1, 5))
            return
        end
        exports['vorp_inventory']:addItem(src, item, 1)
    end)

    RegisterNetEvent('jc-mining:server:giveFlakes', function(amount)
        local src = source
        exports['vorp_inventory']:addItem(src, item, 1)
    end)

    RegisterNetEvent('jc-mining:server:removepickaxevorp', function()
        local src = source
        exports['vorp_inventory']:subItem(src, Config.Pickaxe, 1)
    end)
end