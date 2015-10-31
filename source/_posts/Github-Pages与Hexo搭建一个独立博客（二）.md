title: GitHub Pages与Hexo搭建一个独立博客（二）
date: 2015-10-15 22:28:54
tags: [Hexo,GitHub,博客]
categories: 教程 #分类
---
刚刚使用了一下hexo，并用hexo搭建了自己的博客，感觉到了hexo的强大之处。

>*快捷方便
>*容易上手，网上有很好的博客教程
## 注册GitHub账户

### 进入gitHub官网
[https://github.com/](https://github.com/)

![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022sign-up-github-1.png)

### 注册帐号
(按步骤进行)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1022sign-up-github-2.png)

### 登录GitHub
关于GitHub如何使用请自行科普。
[如何高效利用GitHub](http://www.yangzhiping.com/tech/github.html)
## 配置和使用Github
以下教程主要参考[如何搭建一个独立博客——简明Github Pages与Hexo教程](http://www.jianshu.com/p/05289a4bc8b2)写成。

### 配置` SSH keys `
我们如何让本地git项目与远程的github建立联系呢？用` SSH keys `

#### 检查` SSH keys `的设置
首先我们需要检查你电脑上现有的` ssh key `
```bash
 cd ~/. ssh 检查本机的ssh密钥
```
如果提示：` No such file or directory ` 说明你是第一次使用git。

#### 生成新的SSH Key：
```bash
 ssh-keygen -t rsa -C "邮件地址@youremail.com"
```
一直回车。。。
>注意: 此处的邮箱地址，你可以输入自己的邮箱地址；注意2: 此处的「-C」的是大写的「C」
最后看到这样的界面，就成功设置` ssh key `了：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1031ssh.png)

#### 添加` SSH Key `到` GitHub `
在本机设置` SSH Key `之后，需要添加到 ` GitHub `上，以完成SSH链接的设置。

1.打开本地` C:\Users\用户名\.ssh\id_rsa.pub `文件，用文本方式打开不建议用windows自带的文本编辑器。此文件里面内容为刚才生成的密钥。如果看不到这个文件，你需要设置显示隐藏文件。准确的复制这个文件的内容，才能保证设置的成功。

2.登陆GitHub系统。点击右上角的` Account Settings--->SSH Public keys ---> add another public keys `

3.把你本地生成的密钥复制到里面（key文本框中）， 点击 add key 就ok了
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1031ssh2.jpg)


#### 测试
可以输入下面的命令，看看设置是否成功，` git@github.com `的部分不要修改：
```bash
 ssh -T git@github.com
```
如果是下面的反馈：
```bash
The authenticity of host 'github.com (207.97.227.239)' can't be established.
RSA key fingerprint is 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48.
Are you sure you want to continue connecting (yes/no)?
```
不要紧张，输入` yes `就好，然后会看到：
```bash
Hi cnfeat! You've successfully authenticated, but GitHub does not provide shell access.
```
### 设置用户信息
现在你已经可以通过` SSH `链接到` GitHub `了，还有一些个人信息需要完善的。

` Git `会根据用户的名字和邮箱来记录提交。` GitHub `也是用这些信息来做权限的处理，输入下面的代码进行个人信息的设置，把名称和邮箱替换成你自己的，名字必须是你的真名，而不是` GitHub `的昵称。
```bash
git config --global user.name "08hjz"//用户名
git config --global user.email  "08hjz@gmail.com"//填写自己的注册邮箱
```
### ` SSH Key `配置成功
本机已成功连接到` GitHub `
常见错误请参考：
[1]  [Generating SSH keys](https://help.github.com/articles/generating-ssh-keys/)
[2]  [Error: Permission denied (publickey)](https://help.github.com/articles/error-permission-denied-publickey/)
## 建立仓库
#### 自定义用户名
登录GitHub，注册自定义用户名如08hjz
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1031github4.png)
#### 创建New repository
在主页右下角创建New repository，name必须和用户名一致如08hjz.github.io
首次创建耐心等待10分钟左右审核，之后即可访问静态主页如http://08hjz.github.io
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1031github1.png)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1031github2.png)
## hexo使用
### hexo主题
#### 查看主题
[1]  [有那些好看的hexo主题？](http://www.zhihu.com/question/24422335)
[2]  [Themes](https://github.com/hexojs/hexo/wiki/Themes)
[3]  [hexoThemes](https://hexo.io/themes/)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1031github5.png)

#### 克隆主题到本地
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1031github6.png)
复制ssh，切换到本地博客文件` hexo\themes `目录下，克隆主题如图
```bash
git clone git@github.com:reee/hexo-theme-flat.git
```
### hexo配置
修改站点配置文件:` hexo/_config.yml `
[配置](https://hexo.io/zh-cn/docs/configuration.html)
我的配置文件：
```bash
# Hexo Configuration
## Docs: http://hexo.io/docs/configuration.html
## Source: https://github.com/hexojs/hexo/

# Site
title: xxx Blog        #博客名
subtitle: xxxxx        #小标题
description: xxxxxx    #描述
author: xxxx           #作者
language: zh-CN        #语言
#timezone: "UTC+08:00" #时区

# URL
## If your site is put in a subdirectory, set url as 'http://yoursite.com/child' and root as '/child/'
url: http://yoursite.com
root: /
permalink: :year/:month/:day/:title/
permalink_defaults:

# Directory
source_dir: source
public_dir: public
tag_dir: tags
archive_dir: archives
category_dir: categories
code_dir: downloads/code
i18n_dir: :lang
skip_render:

# Writing
new_post_name: :title.md # File name of new posts
default_layout: post
titlecase: false # Transform title into titlecase
external_link: true # Open external links in new tab
filename_case: 0
render_drafts: false
post_asset_folder: false
relative_link: false
future: true
highlight:
  enable: true
  line_number: true
  auto_detect: true
  tab_replace:

# Category & Tag
default_category: uncategorized
category_map:
tag_map:

# Date / Time format
## Hexo uses Moment.js to parse and display date
## You can customize the date format as defined in
## http://momentjs.com/docs/#/displaying/format/
date_format: YYYY-MM-DD  #日期格式
time_format: HH:mm:ss   #时间格式

# Pagination
## Set per_page to 0 to disable pagination
per_page: 10          #每页显示多少文章
pagination_dir: page

# Extensions
## Plugins: http://hexo.io/plugins/
## Themes: http://hexo.io/themes/
theme: hexo-theme-next  #自定义题
swiftype_key: "xxxxxx"  #swiftype搜索服务
baidu_analytics: xxxxxxxx #百度统计
#duoshuo
duoshuo_shortname: xxx   #多说评论
# JiaThis 分享服务
#jiathis: true

# 多说分享服务
duoshuo_share: true
since: 2015

###这个deploy配置比较重要提交到github全靠它，切记一定要配置这个
# Deployment
## Docs: http://hexo.io/docs/deployment.html
deploy:
  type: git
  repo: https://github.com/yourname/yourname.github.io.git #用自己的用户名
  branch: master
#touxiang
avatar: /images/avatar.png #头像
# Social links
social: #其他链接自定义
  github: xxxxx
  weibo: xxxxx
  douban: xxxxxxx
  zhihu: xxxxxx
  # 等等
  # title, chinese available
links_title: Links
# links
links: #链接
  MacTalk: http://theme-next.iissnan.com/
```
#### 网站
|参数|	描述|
|:----:|:-----:|
|title|网站标题|
|subtitle|网站副标题|
|description|网站描述|
|author|您的名字|
|language|	网站使用的语言|
|timezone|网站时区。Hexo 预设使用您电脑的时区。|

#### 网址
|参数|描述|默认值|
|:-----:|:-----:|:----:|
|url|网址|	|
|root|	网站根目录	|   |
|permalink_default| 永久链接中各部分的默认值  |       |
|permalink|	文章的永久链接 |格式	:year/:month/:day/:title/ |
---
>网站存放在子目录
如果您的网站存放在子目录中，例如 ` http://yoursite.com/blog `，则请将您的` url `设为 ` http://yoursite.com/blog `并把` root `设为`  /  blog/ `。

#### 目录
|参数	|描述	|默认值|
|:-----:|:-----:|:----:|
|source_dir	|资源文件夹，这个文件夹用来存放内容。|	source|
|public_dir	|公共文件夹，这个文件夹用于存放生成的站点文件。|	public|
|tag_dir	|标签文件夹|	tags|
|archive_dir	|归档文件夹|	archives|
|category_dir	|分类文件夹	|categories|
|code_dir	|Include code 文件夹|	downloads/code|
|skip_render  |跳过指定文件的渲染，您可使用 glob 来配置路径。 |        |
|i18n_dir	|国际化（i18n）文件夹	|:lang|


#### 文章
|参数	|描述	|默认值|
|:-----:|:-----:|:----:|
|new_post_name	|新文章的文件名称|	:title.md|
|default_layout|	预设布局	post||
|auto_spacing	|在中文和英文之间加入空格|	false|
|titlecase	|把标题转换为 title case|	false|
|external_link	|在新标签中打开链接|	true|
|filename_case|	把文件名称转换为 (1) 小写或 (2) 大写|	0|
|render_drafts|显示草稿|	false|
|post_asset_folder|	启动 Asset 文件夹|	false|
|relative_link	|把链接改为与根目录的相对位址|	false|
|highlight| 代码块的设置  |     |
|future|	显示未来的文章|	true|


#### 分类 & 标签
|参数	|描述	|默认值|
|:-----:|:-----:|:----:|
|category_map|  分类别名| |
|tag_map  |标签别名 |     |
|default_category	|默认分类|	uncategorized|


#### 日期时间格式
Hexo 使用 ` Moment.js ` 来解析和显示时间

|参数 |描述 |默认值|
|:-----:|:-----:|:----:|
|date_format	|日期格式|	MMM D YYYY|
|time_format|	时间格式	|H:mm:ss|

#### 分页
|参数	|描述	|默认值|
|:-----:|:-----:|:----:|
|per_page|每页显示的文章量 (0 = 关闭分页功能)|	10|
|pagination_dir	|分页目录|	page|

#### 扩展
|参数	|描述	|
|:-----:|:-----:|
|theme|	当前主题名称|
|deploy	|部署|


>**特别注意**：如：` duoshuo_shortname: xxx   #多说评论 `,`duoshuo_shortname: `和` xxx `中间是有一个空格的，修改的时候请认真检查此处最容易出错。

#### 主题配置文件
修改站点配置文件:` hexo/themes/你的主题/_config.yml `,请根据自己的喜好修改。
我的配置文件：
```bash
# when running hexo in a subdirectory (e.g. domain.tld/blog), remove leading slashes ( "/archives" -> "archives" )
menu:
  home: /
  categories: /categories #10.14
  archives: /archives
  tags: /tags
  books: /books
  #commonweal: /404.html
  tools: /tools #10.14
  about: /about #10.14

# Place your favicon.ico to /source directory.
favicon: /favicon.ico

# Set default keywords (Use a comma to separate)
keywords: "Hexo,next"

# Set rss to false to disable feed link.
# Leave rss as empty to use site's feed link.
# Set rss to specific value if you have burned your feed already.
rss:

# Icon fonts
# Place your font into next/source/fonts, specify directory-name and font-name here
# Avialable: default | linecons | fifty-shades | feather
icon_font: default
#icon_font: fifty-shades
#icon_font: feather
#icon_font: linecons
#icon_font: icomoon

# Code Highlight theme
# Available value: normal | night | night eighties | night blue | night bright
# https://github.com/chriskempson/tomorrow-theme
highlight_theme: night eighties


# MathJax Support
mathjax: true


# Schemes
scheme: Mist


# Sidebar, available value:
#  - post    expand on posts automatically. Default.
#  - always  expand for all pages automatically
#  - hide    expand only when click on the sidebar toggle icon.
sidebar: post
#sidebar: always
#sidebar: hide


# Automatically scroll page to section which is under <!-- more --> mark.
scroll_to_more: true


# Automatically add list number to toc.
toc_list_number: true

# Automatically Excerpt
auto_excerpt:
  enable: false
  length: 150

# Use Lato font
# Note: this option is avialable only when the language is not `zh-Hans`
use_font_lato: true

# Make duoshuo show UA
# user_id must NOT be null when admin_enable is true!
# you can visit http://dev.duoshuo.com get duoshuo user id.
duoshuo_info:
  ua_enable: true
  admin_enable: false

  user_id: 0
  duoshuo_hotartical: true
  #admin_nickname: ROOT

## DO NOT EDIT THE FOLLOWING SETTINGS
## UNLESS YOU KNOW WHAT YOU ARE DOING

# Use velocity to animate everything.
use_motion: true

# Fancybox
fancybox: true

# Static files
vendors: vendors
css: css
js: js
images: images

# Theme version
version: 0.4.5.1
# JiaThis 分享服务
#jiathis: true
# 多说分享服务
duoshuo_share: true
```
#### 导航栏添加自定义页面
1.命令手动生成自定义页面` hexo n page "about" `
2.编辑` hexo/source/about/index.md `内容
3.修改` themes/jacman/_config.yml `文件
```bash
 menu:
  关于: /about
```

#### 发表文章
1. ` hexo new "my new post" `
2. 在` hexo\source\_posts `中打开这个文件（打开方式用“记事本”即可），配置开头再写文章。
```bash
title: my new post #可以改成中文的，如“新文章”
date: 2013-05-29 07:56:29 #发表日期，一般不改动
categories: blog #文章文类
tags: [博客，文章] #文章标签，多于一项时用这种格式
---
#这里是正文，用markdown写，使用方法参照我原来的博客[Introduction to markdown](http://zipperary.com/2013/05/22/introduction-to-markdown/)

```
3.`hexo clean `清除文件之后再` hexo g #hexo generate`生成文件。
4.` hexo s #hexo server `，访问` localhost:4000 `(也可以用` 127.0.0.1 `)预览效果,退出server用Ctrl+c.
5.` hexo d #hexo deploy `同步到github，期间可能需要输入用户名和密码，访问网站看看效果。
>注意：以后每次发表文章就是按照这个1-5的步骤。




----
参考资料：
[1]  [hexo你的博客](http://ibruce.info/2013/11/22/hexo-your-blog/)
[2]  [如何搭建一个独立博客——简明Github Pages与Hexo教程](http://www.jianshu.com/p/05289a4bc8b2)

