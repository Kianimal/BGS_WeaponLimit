CreateThread(function()
	if Config.OneShoulderWeapon then
		while true do
			Wait(1)
			local ped = PlayerPedId()
			local currentHeldWeapon = Citizen.InvokeNative(0x8425C5F057012DAB, ped)
			local hasWeapon, attachedWeapon = GetCurrentPedWeapon(ped, true, 10, true)
			local attachPoint = Citizen.InvokeNative(0xCAD4FE9398820D24, ped, 10)
			if hasWeapon and currentHeldWeapon ~= attachedWeapon and attachPoint == 10 and Citizen.InvokeNative(0x0556E9D2ECF39D01, currentHeldWeapon) then
				RemoveWeaponFromPed(ped, currentHeldWeapon)
			end
		end
	end
end)