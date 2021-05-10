local skynet = require "skynet"
require "skynet.manager"

skynet.start(function()
    skynet.error("first skynet service ", skynet.address(skynet.self()))
    local logPath = skynet.getenv("logpath")
    skynet.error("logpath: ", logPath)

    local name = skynet.getenv("name")
    local age  = skynet.getenv("age")
    skynet.error("name:", name, ",age:", age)

    -- 环境变量不能"二次修改"
    skynet.setenv("newname", "heqian")
    skynet.error("NewName:", skynet.getenv("newname"))

    -- error报错，test这里会报错，testNewService那里也会报错
    -- error("start server error!")
end)

