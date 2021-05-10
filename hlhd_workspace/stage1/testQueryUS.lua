local skynet = require "skynet"
local args = {...}
local serviceName

skynet.start(function ()
    local qs
    skynet.error("Query Unique Service")

    if #args == 2 then
        serviceName = args[2]
        qs = skynet.queryservice(true, serviceName) -- 如果此时全局唯一服务没有创建，
        -- 则queryservice()不会返回，而是阻塞在这里
    else
        serviceName = args[1]
        qs = skynet.queryservice(serviceName)
    end

    skynet.error("Query end and handler is:", skynet.address(qs))
    skynet.exit()
end)