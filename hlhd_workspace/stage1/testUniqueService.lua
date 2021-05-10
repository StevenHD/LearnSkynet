local skynet = require "skynet"

local args = {...}
local serviceName

skynet.start(function()
    local us
    skynet.error("start unique skynet service")

    if #args == 2 then
        serviceName = args[2]
        us = skynet.uniqueservice(true, serviceName)
        skynet.error("true", skynet.address(us))
    else
        serviceName = args[1]
        us = skynet.uniqueservice(serviceName)
        skynet.error("false", skynet.address(us))
    end

    skynet.error("end unique skynet service")
end)