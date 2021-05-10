local skynet = require "skynet"

skynet.init(function ()
    skynet.error("skynet init")
end)

skynet.start(function ()
    skynet.error("skynet start")
end)