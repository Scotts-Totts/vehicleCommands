RegisterCommand("close", function(source,args)
    closeDoor(tonumber(args[1])-1)
    notify("Door closed.")
end, false)