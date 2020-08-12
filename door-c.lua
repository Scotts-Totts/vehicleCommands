RegisterCommand("door", function(source, args)
    if args[1] == nil then 
        notify("~r~Incorrect useage /door (1-6)")
    else
        toggleDoor(tonumber(args[1])-1)
    end
end,false)