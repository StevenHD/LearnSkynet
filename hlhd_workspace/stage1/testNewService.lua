local skynet = require "skynet"
require "skynet.manager"

skynet.start(function()
    -- newservice()中传入的参数类型必须是string类型
    local handeler1 = skynet.newservice("testPassArgs", "1", "false", "helianhaodong")   -- test这个服务不执行完，newservice()就会一直阻塞在这里
    skynet.error("handler1", skynet.address(handeler1))

    local handeler2 = skynet.newservice("testPassArgs", "1", "true", "helianhaodong")   -- test这个服务不执行完，newservice()就会一直阻塞在这里
    skynet.error("handeler2", skynet.address(handeler2))

    skynet.kill(handeler2)
end)