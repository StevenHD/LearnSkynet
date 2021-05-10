## ![skynet logo](https://github.com/cloudwu/skynet/wiki/image/skynet_metro.jpg)

Skynet is a lightweight online game framework which can be used in many other fields.

---

## 学习Skynet的配置

当前环境&IDE: MacOS, Clion

## Build

```
git clone --recursive https://github.com/cloudwu/skynet.git
cd skynet/3rd/lua/
make 'macosx'     // 得到lua(虚拟机)和luac

// 回到skynet根目录
make 'macosx'     // 得到skynet(可执行文件)
```

## Test

Run these in different ITerm2:

```
./skynet examples/config	# Launch first skynet node  (Gate server) and a skynet-master (see config for standalone option)
./3rd/lua/lua examples/client.lua 	# Launch a client, and try to input hello.
```

---
---

## Stage 1
在readme中记录学习的经过，也算做个笔记，后面复习方便，也便于读者阅读。
本仓库是基于云风的skynet框架学习的，我个人写的demo代码存于hlhd_workspace文件夹中，其他的均是原先框架中的内容
1. test.lua：通过getenv()获取环境变量(可以在config文件中修改)，也可以通过setenv()来设置。注意：环境变量不能"二次修改"，而且error()的报错，会导致当前服务报错，调用该服务的服务(testNewService)也会报错。
2. testInit.lua: 学习下init()函数，执行在start()的前面。
3. testNewService.lua: 使用newservice()来启动一个新的服务，如果启动的这个服务不执行完，newservice()就会一直阻塞在这里，也不会返回。传参数要传“字符串”。
4. testPassArgs.lua: 通过可变参数来传参数，`local args = {...}`，得到的args是一张表，所以通过`k, v`来获取。
5. testQueryUS.lua: queryservice()是询问当前的服务，比如我们建立了一个全局唯一服务，可以通过queryservice()来查询它。
6. testUniqueService.lua: 当前节点唯一服务和全局唯一服务，和单例是比较像的。
7. config1, config2, config3: 可以同时启动3个节点，一个主节点，2个从节点，注意主节点中的cmaster，harbor对应的address，以及cslave与cmaster和其他cslave之间连接时，端口号的对应。
