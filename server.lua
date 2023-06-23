local QBCore = exports['qb-core']:GetCoreObject()


QBCore.Commands.Add("kucakla", "Yakındaki Oyuncuyu Kucakla", {}, false, function(source, args) -- name, help, arguments, argsrequired,  end sonuna persmission
    TriggerClientEvent("mcdTasi:kontrol", source, "kucak")
end)

QBCore.Commands.Add("rehinal", "Yakındaki Oyuncuyu Rehin Al", {}, false, function(source, args) -- name, help, arguments, argsrequired,  end sonuna persmission
TriggerClientEvent("mcdTasi:kontrol", source, "rehin")
end)

RegisterServerEvent('mcdTasi:server:oyuncu-2-anim')
AddEventHandler('mcdTasi:server:oyuncu-2-anim', function(targetSource, tip)
    TriggerClientEvent("mcdTasi:client:oyuncu-2-anim", targetSource, tip, source)
end)

RegisterServerEvent('mcdTasi:server:anim-iptal')
AddEventHandler('mcdTasi:server:anim-iptal', function(targetSource)
    TriggerClientEvent("mcdTasi:client:anim-iptal", targetSource)
end)

RegisterServerEvent('mcdTasi:server:rehin-birak')
AddEventHandler('mcdTasi:server:rehin-birak', function(targetSource, tip)
    TriggerClientEvent("mcdTasi:client:rehin-birak", targetSource, tip)
end)
