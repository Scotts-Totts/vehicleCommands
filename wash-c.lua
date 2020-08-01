RegisterCommand("wash", function(source)
    if isTargetDriving() then
        SetVehicleDirtLevel(pedVehicle, 0)
        notify("~g~Vehicle has been cleaned!")
    else 
        notify("~r~You must be driving a vehicle to use this command.")
    end
end, false)