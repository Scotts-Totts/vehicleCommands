RegisterCommand("close", function(source,args) --  close door, usage /close (1-8)
    if args[1] == nil then 
        closeAll()
    else
        closeDoor(tonumber(args[1])-1)
    end
end, false)