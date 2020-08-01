ped = GetPlayerPed(-1)
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
        notify("~r~You must be the driver of a vehicle to toggle doors")
    end
end

function openAll() -- opem all doors
    if isTargetDriving() then 
        openSesame(0)
        openSesame(1)
        openSesame(2)
        openSesame(3)
        openSesame(4)
        openSesame(5)
        openSesame(6)
        openSesame(7)
        return
    else
        notify("~r~You must be the driver of a vehicle to toggle doors") 
    end
end

function closeDoor(door) -- function to close door
    if isTargetDriving() then 
        SetVehicleDoorShut(pedVehicle, door, false) 
        return
    else
        notify("~r~You must be the driver of a vehicle to toggle doors") 
    end
end

function closeAll() -- close all doors
    if isTargetDriving() then 
        closeDoor(0)
        closeDoor(1)
        closeDoor(2)
        closeDoor(3)
        closeDoor(4)
        closeDoor(5)
        closeDoor(6)
        closeDoor(7)
        return
    else
        notify("~r~You must be the driver of a vehicle to toggle doors") 
    end
end

function notify(msg) -- create text message above the map
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end
