RegisterCommand("close", function(source,args) --  close door, usage /close (1-4)
    if args[1] == nil then 
        closeAll()
        notify("~g~Doors closed.")
    else
        closeDoor(tonumber(args[1])-1)
        notify("~g~Door closed.")
    end
end, false)
