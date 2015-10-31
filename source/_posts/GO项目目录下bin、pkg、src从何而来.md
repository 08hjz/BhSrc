title: GO项目目录下bin,pkg,src从何而来
date: 2015-10-28 00:16:41
tags: [Go,GO项目,GoPath]
categories: Go #分类
---
**之前有学过一段时间Go语言，前几天忽然发现我的GoPath目录下居然只有src，pkg两个文件夹,那么我的bin文件夹去哪里了呢，仔细看了一下终于发现问题之所在，以下简单介绍一下解决办法。**

>|-- bin 放编译后的可执行文件，可执行文件名字与源代码文件名字一样
|-- pkg 放编译后的包文件，包文件名字与所在目录一样，注意：名字与 package 无关
|-- src 放源代码文件


## GoPath文件结构如下
D:.
├─bin
│      test.exe
│
├─pkg
│  └─windows_amd64
│          mymath.a
│
└─src
    ├─mymath
    │      mymath.go
    │
    └─test
            test.go

### src目录
此目录是自己在` GoPath `目录下手动创建的，用于放源代码文件。

* 手动在` GoPtah `目录下添加` src `目录，如图：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1027gopath1.png)
* 新建两个文件夹` mymath `,` test `,分别添加` mymath.go `,` test.go `.
结构如下：
├─mymath
│      mymath.go
│
└─test
test.go

```golang
//mymath.go

package math
func Mymath(a int,b int) int {
     return a * b
}
```
```golang
//test.go

package main

import(
     "fmt"
     "mymath"
)

func main() {
     a := 100
     b := 200
     fmt.Println(math.Mymath(a,b))
}
```
### pkg目录
此目录是在` src `的源文件目录下对` .go `文件通过` go install `之后自动生成的，放编译后的包文件。由于在尝试过程中我暂时没有发现` pkg `录出现像` bin `目录那样不会自动生成的情况，所以这步暂时没有问题。
* 在` src/maymath `目录下打开` cmder `运行` go install `命令，可以发现 ` GoPath `目录下自动生成了` pkg `目录。如图
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1027cdpkg.png)

* 在` src/test `目录下打开 ` cmder `运行` go build `命令，可以发现 ` GoPath `目录下并没有自动生成了` bin `目录，而是在当前目录下生成了` test.exe `。如图
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1027nohavebin.png)

### bin目录
此目录是在` src `的源文件目录下对 ` .go `文件通过` go build `和` go install `之后自动生成的，` .go `文件要调用` pkg `下的包文件。那么问题来了，` bin `目录有时候就不会生成，最后我才发现是环境变量` GOBIN `的原因。废话不多说直接上图。

* 查看` GO `环境变量
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1027havegobin.png)

* 找到` GOBIN `环境变量删除
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1027deletegobin.png)

* 查看修改后的` GO `环境变量
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1027nogobin.png)

* 删除test/test.exe,在当前目录下打开` cmder `运行
` go install `,查看` GoPath `目录结构即可发现` bin `已自动生成，如图：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1027havebin.png)

## Go环境变量配置
* GOROOT：Go的安装目录
* GOPATH：用于存放Go语言Package的目录，这个目录不能在Go的安装目录中
* GOBIN：Go二进制文件存放目录，写成%GOROOT%\bin就好
* GOOS：操作系统
* GOARCH：指定系统环境，i386表示x86，amd64表示x64
* PATH：需要将%GOBIN%加在PATH变量的最后，方便在命令行下运行Go
* 其他` GO `环境变量可以用` cmd `命令查询
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1027havegobin.png)

## 更多资料
[Golang项目目录结构组织](http://www.cnblogs.com/wlts/archive/2013/06/01/3112004.html)
[GO环境配置](https://github.com/astaxie/build-web-application-with-golang/blob/master/zh/01.0.md)

>注：以上提到的cmder是一个cmd工具，详细请查看前面的文章