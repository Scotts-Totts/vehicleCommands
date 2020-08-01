RegisterCommand("open", function(source,args)
    openSesame(tonumber(args[1])-1)
    notify("Door opened.")
end, false)
