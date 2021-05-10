local skynet = require "skynet"
local args   = {...}

skynet.start(function ()
    for _, v in ipairs(args) do
        skynet.error(v, type(v))
    end
end)