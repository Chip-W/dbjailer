local cJ = false
local eJE = false


--ESX base

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent("PBJP1")
AddEventHandler("PBJP1", function(jT)
	Citizen.Trace('Sent To County Jail Cell 1')
	if cJ == true then
		return
	end
	local pP = GetPlayerPed(-1)
	if DoesEntityExist(pP) then
			
		Citizen.CreateThread(function()
			local playerOldLoc = GetEntityCoords(pP, true)
			SetEntityCoords(pP, 1793.2720947266, 2476.4338378906, -122.69934844971)--{x = 459.5500793457,y = -994.46508789063,z = 23.914855957031 },
			cJ = true
			eJE = false
			while jT > 0 and not eJE do
				timecheck(jT)
				pP = GetPlayerPed(-1)
				RemoveAllPedWeapons(pP, true)
				SetEntityInvincible(pP, true)
				if IsPedInAnyVehicle(pP, false) then
					ClearPedTasksImmediately(pP)
				end
				if jT % 60 == 0 then
				exports.pNotify:SetQueueMax("left", 1)
			        exports.pNotify:SendNotification({
			            text = "You have " .. jT / 60 .. " months left until release." ,
			            type = "error",
			            timeout = math.random(1000, 10000),
			            layout = "centerLeft",
			            queue = "left"
			        })
				end
				Citizen.Wait(500)
				local pL = GetEntityCoords(pP, true)
				local D = Vdist(1793.2720947266, 2476.4338378906, -122.69934844971, pL['x'], pL['y'], pL['z'])
				if D > 2 then -- distance#######################################################################################
					
					SetEntityCoords(pP, 1793.2720947266, 2476.4338378906, -122.69934844971)
					if D > 4 then
						jT = jT + 60
						if jT > 1500 then
							jT = 1500
						end
						Citizen.Trace('GUESS I TRIED ESCAPING')
						TriggerEvent('chatMessage', 'COURT', { 255, 0, 0 }, "Jail time increased for attempted escape!")
					end
				end
				jT = jT - 0.5
			end
			Citizen.Trace('IM FREE')
			TriggerServerEvent('JailReleaseTime') -- UDPATE DB TO RELESE PLAYER
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 255, 0, 0 }, GetPlayerName(PlayerId()) .." was released from jail.")
			SetEntityCoords(pP, -442.31372070313, 6017.1875, 31.71284866333)--{x = 432.95864868164,y = -981.41455078125,z = 29.710334777832 },
			cJ = false
			SetEntityInvincible(pP, false)
		end)
	end
end)

RegisterNetEvent("PBJP2")
AddEventHandler("PBJP2", function(jT)
	if cJ == true then
		return
	end
	local pP = GetPlayerPed(-1)
	if DoesEntityExist(pP) then
		
		Citizen.CreateThread(function()
			local playerOldLoc = GetEntityCoords(pP, true)
			SetEntityCoords(pP, 1790.4149169922, 2489.5703125, -122.69613647461)-- {x = 458.41693115234,y = -997.93572998047,z = 23.914854049683 },
			cJ = true
			eJE = false
			while jT > 0 and not eJE do
				timecheck(jT)
				pP = GetPlayerPed(-1)
				RemoveAllPedWeapons(pP, true)
				SetEntityInvincible(pP, true)
				if IsPedInAnyVehicle(pP, false) then
					ClearPedTasksImmediately(pP)
				end
				if jT % 30 == 0 then
					TriggerEvent('chatMessage', 'SYSTEM', { 255, 0, 0 }, jT .." seconds until release.")
				end
				Citizen.Wait(500)
				local pL = GetEntityCoords(pP, true)
				local D = Vdist(1790.4149169922, 2489.5703125, -122.69613647461, pL['x'], pL['y'], pL['z'])
				if D > 2 then
					SetEntityCoords(pP, 1790.4149169922, 2489.5703125, -122.69613647461)
					if D > 4 then
						jT = jT + 60
						if jT > 1500 then
							jT = 1500
						end
						TriggerEvent('chatMessage', 'COURT', { 255, 0, 0 }, "Your time has been increased for attempted escape!")
					end
				end
				jT = jT - 0.5
			end
			TriggerServerEvent('JailReleaseTime') -- UDPATE DB TO RELESE PLAYER
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 255, 0, 0 }, GetPlayerName(PlayerId()) .." was released from prison.")
			SetEntityCoords(pP, -442.31372070313, 6017.1875, 31.71284866333)
			cJ = false
			SetEntityInvincible(pP, false)
		end)
	end
end)


RegisterNetEvent("PBJP3")
AddEventHandler("PBJP3", function(jT)
	if cJ == true then
		return
	end
	local pP = GetPlayerPed(-1)
	if DoesEntityExist(pP) then
		
		Citizen.CreateThread(function()
			local playerOldLoc = GetEntityCoords(pP, true)
			SetEntityCoords(pP, 1799.7370605469, 2489.8354492188, -122.69339752197)-- {x = 458.29275512695,y = -1001.5576782227,z = 23.914852142334 },
			cJ = true
			eJE = false
			while jT > 0 and not eJE do
				timecheck(jT)
				pP = GetPlayerPed(-1)
				RemoveAllPedWeapons(pP, true)
				SetEntityInvincible(pP, true)
				if IsPedInAnyVehicle(pP, false) then
					ClearPedTasksImmediately(pP)
				end
				if jT % 30 == 0 then
					TriggerEvent('chatMessage', 'SYSTEM', { 255, 0, 0 }, jT .." seconds until release.")
				end
				Citizen.Wait(500)
				local pL = GetEntityCoords(pP, true)
				local D = Vdist(1799.7370605469, 2489.8354492188, -122.69339752197, pL['x'], pL['y'], pL['z'])
				if D > 2 then
					SetEntityCoords(pP, 1799.7370605469, 2489.8354492188, -122.69339752197)
					if D > 4 then
						jT = jT + 60
						if jT > 1500 then
							jT = 1500
						end
						TriggerEvent('chatMessage', 'COURT', { 255, 0, 0 }, "Your time has increased for attempted escape!")
					end
				end
				jT = jT - 0.5
			end
			TriggerServerEvent('JailReleaseTime') -- UDPATE DB TO RELESE PLAYER
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 255, 0, 0 }, GetPlayerName(PlayerId()) .." has been released from jail.")
			SetEntityCoords(pP, -442.31372070313, 6017.1875, 31.71284866333)
			cJ = false
			SetEntityInvincible(pP, false)
		end)
	end
end)

RegisterNetEvent("UnJP")
AddEventHandler("UnJP", function()
	eJE = true
end)

AddEventHandler('playerSpawned', function(spawn)
	Citizen.Trace('Check For If I am Jailed')
    TriggerServerEvent('JailCheck')
end)

function timecheck(Time)
	if Time % 5 == 0 then
		TriggerServerEvent('JailUpdate', Time)
	elseif Time == 1 then
                TriggerServerEvent('JailReleaseTime')
                TriggerServerEvent('JailUpdate', 0)
	end
end
