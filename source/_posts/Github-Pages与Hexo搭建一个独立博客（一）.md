title: GitHub Pages与Hexo搭建一个独立博客（一）
date: 2015-10-11 23:33:34
tags: [Hexo,GitHub,博客]
categories: 教程 #分类
---
>*Hexo 是一个快速、简洁且高效的博客框架。Hexo 使用 Markdown（或其他渲染引擎）解析文章，在几秒内，即可利用靓丽的主题生成静态网页。
>*Hexo 是一个基于 Node.js 的静态博客程序, 可以方便的生成静态网页托管在 github 和 Heroku 上。

## 为什么要用静态博客？
>1.跨平台同步文件
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


### 安装Git服务

#### 关于Git服务，推荐两个不错的教程
* [Git教程- 廖雪峰的官方网站](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CBwQFjAAahUKEwjekZeasNvIAhXTbY4KHT1wB58&url=http%3A%2F%2Fwww.liaoxuefeng.com%2Fwiki%2F0013739516305929606dd18361248578c67b8067c8c017b000&usg=AFQjCNE35ZvBdCzmGRClI_qKkO_sYatr4A)
*  [git - 简明指南](http://rogerdudler.github.io/git-guide/index.zh.html)

#### Windows：下载并安装git
推荐使用cmder，因为cmderer自带了msysgit使用更加方便.
* [cmder官网下载地址](http://cmderer.net/)
- [cmder百度云下载地址](http://pan.baidu.com/s/1FjZum) 访问密码: `` qfdi ``

+ 添加右键cmder [cmder简单介绍及配置](http://bg.biedalian.com/2014/09/11/cmderer.html)
##### 检查git版本
打开cmder运行
```bash
 git
```
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1024git.png)


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
打开cmder运行
```bash
 node -v
```
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1024nodejs.png)

### 安装hexo
[Hexo](https://hexo.io/zh-cn/)
#### 打开cmder运行
```bash
 npm install -g hexo-cli
```
#### 检查版本
打开cmder运行
```bash
 hexo -v
```
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1024hexo.png)

#### Hexo建站
安装 Hexo 完成后，请执行下列命令，Hexo 将会在指定文件夹中新建所需要的文件,如果没有设置 folder ，Hexo 默认在目前的文件夹建立网站。
```bash
 hexo init <folder>
 npm install
```
新建完成后，指定文件夹的目录如下：
```bash
.
├── _config.yml
├── package.json
├── scaffolds
├── scripts
├── source
|   ├── _drafts
|   └── _posts
└── themes
```
* **_config.yml**
网站的 配置 信息，您可以在此配置大部分的参数。

* **package.json**
应用程序的信息。EJS, Stylus 和 Markdown renderer 已默认安装，您可以自由移除。
```bash
package.json
{
  "name": "hexo-site",
  "version": "",
  "private": true,
  "hexo": {
    "version": ""
  },
  "dependencies": {
    "hexo-renderer-ejs": "*",
    "hexo-renderer-stylus": "*",
    "hexo-renderer-marked": "*"
  }
}
```
* **scaffolds**
模版 文件夹。当您新建文章时，Hexo 会根据 scaffold 来建立文件。

* **scripts**
脚本 文件夹。脚本是扩展 Hexo 最简易的方式，在此文件夹内的 JavaScript 文件会被自动执行。

* **source**
资源文件夹是存放用户资源的地方。除 _posts 文件夹之外，开头命名为 _ (下划线)的文件 / 文件夹和隐藏的文件将会被忽略。Markdown 和 HTML 文件会被解析并放到 public 文件夹，而其他文件会被拷贝过去。

* **themes**
主题 文件夹。Hexo 会根据主题来生成静态页面。
#### 配置
[参见hexo配置](https://hexo.io/zh-cn/docs/configuration.html)
您可以在 `_config.yml ` 中修改大部份的配置。
#### 常用命令
* **init**
```bash
 hexo init [folder]
 ```
新建一个网站。如果没有设置 folder ，Hexo 默认在目前的文件夹建立网站。

* **new**
```bash
 hexo new [layout] <title>
 ```
新建一篇文章。如果没有设置 layout 的话，默认使用 _config.yml 中的 default_layout 参数代替。如果标题包含空格的话，请使用引号括起来。

* **generate**
```bash
 hexo generate
 hexo g #缩写
```
生成静态文件。

|选项|描述|
|:---:|:---:|
|` -d, --deploy `| 文件生成后立即部署网站 | 
|` -w, --watch `| 监视文件变动| 

* **server**
```bash
  hexo server
  hexo s #缩写
```
启动服务器。

|选项 |描述|
|:------:|:----:|
|` -p, --port ` |重设端口|
|` -s,--static `|只使用静态文件|
|` -l, --log `|启动日记记录，或覆盖记录格式|


* **deploy**
```bash
 hexo deploy
```
部署网站。

|参数|	描述|
|:------:|:------:|
|` -g, --generate `|	部署网站前，需要预先生成静态文件|

* **clean**
```bash
 hexo clean
 ```
清除缓存文件 (` db.json `) 和已生成的静态文件 (` public `)。

#### 本地运行
* **新建目录**` ...\Hexo--test`
* **在当前目录下打开cmder，运行**` hexo init `
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1026hexo_init.png)
返回当前目录查看文件目录，如下：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1026tree.png)

* **在cmder运行**` hexo g `
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1026hexo_g.png)
返回当前目录查看文件目录，如下(` public `目录为` hexo g `生成)：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1026g.png)

* **在cmder运行**` hexo s `
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1026hexos.png)

* **打开浏览器输入**` 127.0.0.1:4000 `
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1026hexo.png)

* **至此本地文件建立完成**