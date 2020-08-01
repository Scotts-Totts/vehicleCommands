RegisterCommand("close", function(source,args)--  close door, usage /close (1-4)
    closeDoor(tonumber(args[1])-1)
    notify("Door closed.")
end, false)
