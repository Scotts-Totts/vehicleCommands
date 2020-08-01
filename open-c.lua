RegisterCommand("open", function(source,args)--  open door, usage /open (1-5)
    openSesame(tonumber(args[1])-1)
    notify("Door opened.")
end, false)
