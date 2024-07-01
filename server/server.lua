Framework = exports[config.frameworkName]:getServerFunctions()
Framework.RegisterCommand(config.command, config.deptLevel, nil, function(source, args, message, player) 
    local length = string.len(table.concat(args, " "));
    if(length > 0) then
        TriggerClientEvent('NAT2K15:STAFFANNOUNCE', -1, table.concat(args, " "))
    end
end)

