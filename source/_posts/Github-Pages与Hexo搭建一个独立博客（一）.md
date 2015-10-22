title: GitHub Pages与Hexo搭建一个独立博客（一）
date: 2015-10-11 23:33:34
tags: [Hexo,GitHub,博客]
categories: 教程 #分类
---
>*Hexo 是一个快速、简洁且高效的博客框架。Hexo 使用 Markdown（或其他渲染引擎）解析文章，在几秒内，即可利用靓丽的主题生成静态网页。
>*Hexo 是一个基于 Node.js 的静态博客程序, 可以方便的生成静态网页托管在 github 和 Heroku 上。

## 为什么要用静态博客？
1.跨平台同步文件
2.系统简单易懂, 毫不臃肿, 方便改版
3.众多第三方应用, 容易做自定义功能扩展
4.纯静态, 极低的服务器压力
5.最重要使用 Markdown 标记语法, 迁移什么的都非常方便
6.能够托管在 Github 上

## 环境配置
什么是环境变量？
为什么要配置环境变量呢？
简单的说吧，就比如说你要写篇日记那么问题是你首先得准备好一个笔记本一样。更深层次请自行谷歌或度娘科普。
[环境变量](http://baike.baidu.com/view/95930.htm)

### 安装node.js

Windows下的Node.js 安装配置
#### 下载node.js安装包
[node.js官网](https://nodejs.org/en/)
[node.js下载地址](https://nodejs.org/dist/v4.2.1/)

#### 安装（最新安装包默认配置好path变量，无需自行配置）
##### 安装步骤：
步骤 1 : 双击下载后的安装包 node-v4.1.2-x64.msi，如下所示：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022install-node-msi-version-on-windows-step1.png)

步骤 2 : 点击以上的Run(运行)，将出现如下界面：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022install-node-msi-version-on-windows-step2.png)

步骤 3 : 勾选接受协议选项，点击 next（下一步） 按钮 :
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022install-node-msi-version-on-windows-step3.png)

步骤 4 : Node.js默认安装目录为 "C:\Program Files\nodejs\" , 你可以修改目录，并点击 next（下一步）
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022install-node-msi-version-on-windows-step4.png)

步骤 5 : 点击树形图标来选择你需要的安装模式 , 然后点击下一步 next（下一步）
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022install-node-msi-version-on-windows-step5.png)

步骤 6 :点击 Install（安装） 开始安装Node.js。你也可以点击 Back（返回）来修改先前的配置。 然后并点击 next（下一步）：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022install-node-msi-version-on-windows-step5.png)

安装过程：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022install-node-msi-version-on-windows-step7.png)

点击 Finish（完成）按钮退出安装向导。
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022install-node-msi-version-on-windows-step8.png)

#### 检查版本
打开cmd运行
```bash
 node -v
```
### 安装hexo
[Hexo](https://hexo.io/zh-cn/)
#### 打开cmd运行
```bash
 npm install -g hexo-cli
```
#### 检查版本
打开cmd运行
```bash
 hexo -v
```
## 注册GitHub账户

### 进入gitHub官网
[https://github.com/](https://github.com/)

![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022sign-up-github-1.png)

### 注册帐号(按步骤进行)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022sign-up-github-2.png)

### 登录GitHub
关于GitHub请自行科普。
[如何高效利用GitHub](http://www.yangzhiping.com/tech/github.html)

