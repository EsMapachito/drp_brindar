-- RECURSO MODIFICADO PARA EL SERVIDOR RP DESPERADOSRP.COM --
-- Implementado por Mapachito --

RegisterNetEvent('drp_chin:sendProximityMessage')
AddEventHandler('drp_chin:sendProximityMessage', function(playerId, title, message, color)
	local player = PlayerId()
	local target = GetPlayerFromServerId(playerId)

	local playerPed, targetPed = PlayerPedId(), GetPlayerPed(target)
	local playerCoords, targetCoords = GetEntityCoords(playerPed), GetEntityCoords(targetPed)

    if target == player or #(playerCoords - targetCoords) < 20 then
        TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_PLAYER_CHAMPAGNE_PICKUP_TRAY'), -1, true, false, false, false)
        Wait(2500)
        TriggerEvent('chat:addMessage', {args = {title, message}, color = color})
	end
end)