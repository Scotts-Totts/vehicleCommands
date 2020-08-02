RegisterCommand("door", function(source, args)
    if args[1] == nil then 
        notify("~r~Incorrect syntax. Usage /door (1-5)")
    else
        toggleDoor(tonumber(args[1])-1)
        notify("~g~Door toggled.")
    end
end,false)