RegisterNetEvent('check_medkit_use')
AddEventHandler('check_medkit_use', function()
    local playerPed = PlayerPedId()

    -- Load animations
    local kneelDict = "amb@medic@standing@kneel@base"
    local treatDict = "amb@medic@standing@tendtodead@idle_a"
    local exitDict = "amb@medic@standing@kneel@exit"

    RequestAnimDict(kneelDict)
    RequestAnimDict(treatDict)
    RequestAnimDict(exitDict)

    while not HasAnimDictLoaded(kneelDict) or not HasAnimDictLoaded(treatDict) or not HasAnimDictLoaded(exitDict) do
        Wait(10)
    end

    -- Show progress bar
    SendNUIMessage({ action = "showProgress" })

    -- Play kneel animation
    TaskPlayAnim(playerPed, kneelDict, "base", 8.0, -8.0, 1000, 1, 0, false, false, false)
    Wait(1000)

    -- Play healing animation
    TaskPlayAnim(playerPed, treatDict, "idle_a", 8.0, -8.0, 5000, 1, 0, false, false, false)
    FreezeEntityPosition(playerPed, true)

    Wait(5000)

    -- Stand up animation
    TaskPlayAnim(playerPed, exitDict, "exit", 8.0, -8.0, 1000, 0, 0, false, false, false)
    Wait(1000)

    -- Cleanup
    ClearPedTasks(playerPed)
    FreezeEntityPosition(playerPed, false)

    -- Hide progress bar
    SendNUIMessage({ action = "hideProgress" })

    -- Heal the player
    SetEntityHealth(playerPed, 200)
    TriggerServerEvent('remove_medkit')
    ESX.ShowNotification("~g~Du hast dich erfolgreich geheilt.")
end)
