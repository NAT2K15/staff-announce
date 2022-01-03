RegisterCommand("announce", function(source, args, message) 
    local src = source
    local player = exports[config.frameworkName]:getdept(src)
    if(player == nil or player[src].dept ~= config.deptName) then
        TriggerClientEvent('chatMessage', -1, "^1Access Denied.")
    else 
        local length = string.len(table.concat(args, " "));
        if(length > 0) then
            TriggerClientEvent('NAT2K15:STAFFANNOUNCE', -1, table.concat(args, " "))
        end
    end
end)