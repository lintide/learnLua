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
