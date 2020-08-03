RegisterCommand("open", function(source,args) --  open door, usage /open (1-8)
    if args[1] == nil then 
        openAll()
    else
        openSesame(tonumber(args[1])-1)
    end
end, false)
