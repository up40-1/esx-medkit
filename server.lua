ESX.RegisterUsableItem('medkit', function(source)
    TriggerClientEvent('check_medkit_use', source)
end)

RegisterNetEvent('remove_medkit')
AddEventHandler('remove_medkit', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.removeInventoryItem('medkit', 1)
    end
end)
