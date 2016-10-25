# 初学 Lua 的一些笔记

## 函数

### 函数定义

```
function foo(var)
  print(var)
end
```

### 函数调用

```
-- 函数调用有两种方式，很多 Lua 的代码把 () 省略了，所以刚开始接触到这类代码看不明白。

foo(1)

foo "hello"

foo {}
```

下列几种调用则会报错

```
foo 1 -- 报错

a = "hello"

foo a -- 报错

b = {}

foo b -- 报错
```

注意： 省去 __()__ 的函数调用只能用于`字符串`和`表`的标量，如果是变量则会报错，即使变量的值是`字符串`或`表`。

## 模块
lua 的模块定义非常简单，每一个 `.lua` 文件都可以成为一个模块，只需要在文件的最底部 `return` 一个函数或者表即可。请参考[module](module/)目录下的文件即可，`echo.lua` 返回一个函数，`libs.lua` 返回一个表。

## 协程 coroutine

```
local co = coroutine.create(function()
  print("hi")
end)

-- 创建协程后并不会自动运行
print(coroutine.status(co))

-- 让协程运行起来
coroutine.resume(co)

-- 协程运行完成，进入 dead 状态
print(coroutine.status(co))
```
