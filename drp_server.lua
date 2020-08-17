-- RECURSO MODIFICADO PARA EL SERVIDOR RP DESPERADOSRP.COM --
-- Implementado por Mapachito --
RegisterCommand('chinchin', function(source, args, rawCommand)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local playerName = user.firstname..' '..user.lastname
        TriggerClientEvent('drp_chin:sendProximityMessage', -1, _source, "["..playerName.."] salud!")
    end)
end, false)