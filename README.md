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
