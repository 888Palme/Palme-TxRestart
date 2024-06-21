RegisterNetEvent('888Palme:txrestartcl')
AddEventHandler('888Palme:txrestartcl', function()
    if not Config.Settings.AutoKick then
        NetworkOverrideClockTime(00, 00, 0)
        SetWeatherTypeNow(Config.Settings.WeatherType, 0)
    end
end)