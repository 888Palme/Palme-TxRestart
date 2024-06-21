ESX = exports["es_extended"]:getSharedObject()

AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == Config.Settings.secondsRemaining then
        if Config.Settings.AutoKick then
            for _, playerId in ipairs(GetPlayers()) do
                DropPlayer(playerId, Config.Settings.ServerName..'\n'.. Config.Settings.KickMSG)
            end
        end
        Citizen.CreateThread(function()
            TriggerClientEvent('888Palme:txrestartcl', -1)
        end)
    end
end)