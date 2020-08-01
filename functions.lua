ped = GetPlayerPed(GetPlayerFromServerId(source))
pedVehicle = GetVehiclePedIsIn(ped, false) -- returns 0 if ped is not in vehicle

function isTargetDriving() -- checks if global var ped is driving the vehicle 
    if pedVehicle == 0 then -- is ped in vehicle
        return false
    else 
        if ped == GetPedInVehicleSeat(pedVehicle, -1) then  -- is ped in driver's seat
            return true 
        else
            return false
        end 
    end 
end

function openSesame(door) -- function to open door
    if isTargetDriving() then 
        SetVehicleDoorOpen(pedVehicle, door, false, false) 
        return 
    else
        notify("You must be the driver of a vehicle to toggle doors")
    end
end
function closeDoor(door) -- function to close door
    if isTargetDriving() then 
        SetVehicleDoorShut(pedVehicle, door, false) 
        return
    else
        notify("You must be the driver of a vehicle to toggle doors") 
    end
end

function notify(msg) -- create text message above the map
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end
