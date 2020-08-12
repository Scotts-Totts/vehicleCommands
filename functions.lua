function updateInfo()
    ped = GetPlayerPed(GetPlayerID)
    pedVehicle = GetVehiclePedIsIn(ped, false) -- returns 0 if ped is not in vehicle
end

function isTargetDriving() -- checks if global var ped is driving the vehicle 
    updateInfo()
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
    updateInfo()
    if isTargetDriving() then 
        SetVehicleDoorOpen(pedVehicle, door, false, false) 
        notify("~g~Door opened.")
        return 
    else
        notify("~r~You must be the driver of a vehicle to toggle doors")
    end
end

function openAll() -- open all doors
    updateInfo()
    if isTargetDriving() then 
        openSesame(0)
        openSesame(1)
        openSesame(2)
        openSesame(3)
        openSesame(4)
        openSesame(5)
        openSesame(6)
        openSesame(7)
        notify("~g~Doors opened.")
        return
    else
        notify("~r~You must be the driver of a vehicle to toggle doors") 
    end
end

function closeDoor(door) -- function to close door
    updateInfo()
    if isTargetDriving() then 
        SetVehicleDoorShut(pedVehicle, door, false) 
        notify("~g~Door closed.")
        return
    else
        notify("~r~You must be the driver of a vehicle to toggle doors") 
    end
end

function closeAll() -- close all doors
    updateInfo()
    if isTargetDriving() then 
        closeDoor(0)
        closeDoor(1)
        closeDoor(2)
        closeDoor(3)
        closeDoor(4)
        closeDoor(5)
        closeDoor(6)
        closeDoor(7)
        notify("~g~Doors closed.")
        return
    else
        notify("~r~You must be the driver of a vehicle to toggle doors") 
    end
end

function toggleDoor(door)
    updateInfo()
    if isTargetDriving() then
        if GetVehicleDoorAngleRatio(pedVehicle, door) == 0 then 
            openSesame(door)
        else 
            closeDoor(door)
        end
    else 
        notify("~r~You must be the driver of a vehicle to toggle doors")
    end
    
end

function notify(msg) -- create text message above the map
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end
