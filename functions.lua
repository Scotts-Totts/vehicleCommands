ped = GetPlayerPed(GetPlayerFromServerId(source))
pedVehicle = GetVehiclePedIsIn(ped, false) 

function isTargetDriving()
    if pedVehicle == 0 then
        return false
    else 
        if ped == GetPedInVehicleSeat(pedVehicle, -1) then
            return true 
        else
            return false
        end 
    end 
end

function openSesame(door)
    if isTargetDriving() then 
        SetVehicleDoorOpen(pedVehicle, door, false, false) 
        return 
    else
        notify("You must be the driver of a vehicle to toggle doors")
    end
end
function closeDoor(door)
    if isTargetDriving() then 
        SetVehicleDoorShut(pedVehicle, door, false) 
        return
    else
        notify("You must be the driver of a vehicle to toggle doors") 
    end
end

function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end
