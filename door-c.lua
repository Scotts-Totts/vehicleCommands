RegisterCommand("door", function(source, args)
    if args[1] == nil then 
        notify("~r~You must be the driver of the vehicle to use this command. Usage /door (1-5)")
    else
        toggleDoor(tonumber(args[1])-1)
        notify("~g~Door toggled.")
    end
end,false)
