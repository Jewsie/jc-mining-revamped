if Config.Framework == 'RSG' then
    local RSGCore = exports['rsg-core']:GetCoreObject()

    RSGCore.Functions.CreateUseableItem(Config.Goldpan, function(source, item)
        local src = source
        print('Triggered')
        TriggerClientEvent('jc-mining:client:StartPanning', src)
    end)
    
    RSGCore.Functions.CreateUseableItem(Config.CommonItems, function(source, item)
        local src = source
        TriggerClientEvent('jc-mining:client:StartWashing', src)
    end)
    
    RSGCore.Functions.CreateUseableItem(Config.Pickaxe, function(source, item)
        local src = source
        print('Triggered')
        TriggerClientEvent('jc-mining:client:StartMining', src)
    end)
    
    RegisterNetEvent('jc-mining:server:giveFlakes', function(amount)
        local src = source
        local Player = RSGCore.Functions.GetPlayer(src)
    
        Player.Functions.AddItem(Config.GoldpanItem, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[Config.GoldpanItem], 'add')
    end)
    
    RegisterNetEvent('jc-mining:server:washStones', function()
        local src = source
        local Player = RSGCore.Functions.GetPlayer(src)
        local item = Config.WashingItems[math.random(1, #Config.WashingItems)]
        local chance = math.random(1, 100)
    
        if chance <= 15 then
            Player.Functions.AddItem(Config.GoldItems, amount)
            riggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[Config.GoldItems], 'add')
            return
        end
    
        Player.Functions.AddItem(item, 1)
        Player.Functions.RemoveItem('rock', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[item], 'add')
    end)
    
    RegisterNetEvent('jc-mining:server:giveitems', function(mineType)
        local src = source
        local Player = RSGCore.Functions.GetPlayer(src)
        local chance = math.random(1, 100)
    
        if mineType == 'common' then
            if chance <= Config.CommonChance then
                Player.Functions.AddItem(Config.CommonItems, math.random(2, 6))
                TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[Config.CommonItems], 'add')
            else
                RSGCore.Functions.Notify(src, 'You didn\'t get anything!', 'error', 3000)
            end
        elseif mineType == 'rare' then
            if chance <= Config.RareChance then
                local item = Config.RareItems[math.random(1, #Config.RareItems)]
                Player.Functions.AddItem(item, math.random(1, 3))
                TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[item], 'add')
            else
                RSGCore.Functions.Notify(src, 'You didn\'t get anything!', 'error', 3000)
            end
        elseif mineType == 'gems' then
            if chance <= Config.GemsChance then
                local item = Config.GemItems[math.random(1, #Config.GemItems)]
                Player.Functions.AddItem(item, math.random(1, 3))
            else
                RSGCore.Functions.Notify(src, 'You didn\'t get anything!', 'error', 3000)
            end
            TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[item], 'add')
        elseif mineType == 'gold' then
            if chance <= Config.GoldChance then
                Player.Functions.AddItem(Config.GoldItems, math.random(1, 5))
                TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[Config.GoldItems], 'add')
            else
                RSGCore.Functions.Notify(src, 'You didn\'t get anything!', 'error', 3000)
            end
        end
    end)
    
    RegisterNetEvent('jc-mining:server:removepickaxe', function()
        local src = source
        local Player = RSGCore.Functions.GetPlayer(src)
    
        Player.Functions.AddItem(Config.Pickaxe, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[Config.Pickaxe], 'add')
    end)
end