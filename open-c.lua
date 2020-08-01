RegisterCommand("open", function(source,args) --  open door, usage /open (1-5)
    if args[1] == nil then 
        openAll()
        notify("~g~Doors opened.")
    else
        openSesame(tonumber(args[1])-1)
        notify("~g~Door opened.")
    end
end, false)
