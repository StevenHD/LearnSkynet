local skynet = require "skynet"

skynet.start(function()
    skynet.error("unique skynet service")
    -- skynet.exit()
    -- 如果作为"全局唯一服务"，不能在初始化阶段（start）就退出
end)