title: 大白菜U盘安装原版Windows系统
date: 2015-10-31 13:17:03
tags: [Windows,系统安装,大白菜]
categories: Windows #分类
---
应朋友的邀请帮忙解释一下怎么安装windows系统，所以才找了几篇不错的教程合成了这篇，希望能够有用。

## 大白菜U盘启动盘制作V5.1
>参考资料：[大白菜5.1版 制作启动U盘](http://www.winbaicai.com//help_434.html)
>准备工作：U盘一个，建议8G左右

### 下载大白菜V5.1
从[大白菜U盘工具官方网站下载中心](http://www.winbaicai.com/u.html)下载大白菜U盘启动制作工具V5.1
### 安装大白菜V5.1
按平常安装软件的方式安装没有什么特别注意的，建议尽量不要安装在C盘，安装的时候尽量看清楚不要勾选一些附带的东西（如果有的话），安装位置醒目一点以便于我们用完之后卸载删除（我一般都是用完就删除的卸载的，因为之后并没有什么用处）。
###  运行大白菜V5.1
安装完成后桌面按理来说应该是有快捷方式的，运行程序之前请尽量关闭杀毒软件和安全类软件（本软件涉及对可移动磁盘的读写操作，部分杀软的误报可能会导致制作失败！）Windows XP系统下直接双击运行即可，Windows Vista或Windows7/8系统请点右键以管理员身份运行。  
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029zz_1.png)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029zz_2.png)

### U盘准备 
打开主程序，插入U盘/SD卡等可移动设备，在磁盘列表里会自动列出当前电脑中所有的可移动磁盘的盘符、型号、容量等信息。
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029zz_3.png)

### 制作U盘 
选择你要制作启动的可移动磁盘，启动模式USB-HDD或USB-ZIP可选，默认采用USB-HDD模式。（chs模式主要针对某些不能检测的Bios，一般不需要勾选此项！如果你想把U盘剩余部分转成NTFS格式可以勾选NTFS选项，注意：格式化成NTFS会影响U盘启动部分功能的使用，除非需要存储超过4G的单文件，否则不建议勾选此项！）
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029zz_4.png)

### 注意事项 
尽量退出杀毒软件和安全类软件以免制作失败，点击[](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029zz_8.png)按钮，程序会提示是否继续，确认所选U盘无重要数据后点是开始制作.
(注意：使用之前版本制作过的U盘如果制作失败请尝试先执行初始化U盘再进行制作。)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029zz_5.png)

### 等待一会 
制作过程根据电脑配置和U盘芯片的不同耗时长短也不同，请耐心等待。制作完成后正确设置电脑BIOS（设置方法请参照设置U盘启动教程）即可U盘启动了。为了验证U盘启动制作是否成功，可以运行模拟启动。
注：模拟启动仅供测试U盘启动是否制作成功，不可用于测试内部DOS和PE系统。
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029zz_5.png)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029zz_7.png)

## Windows系统镜像下载
(不推荐使用别人的GHOST,最好使用纯净版没烦恼)
### [MSDN, 我告诉你](http://www.itellyou.cn/)
**下载步骤**
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029tellyou1.png)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029tellyou2.png)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029tellyou3.png)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029tellyou4.png)


## 大白菜U盘安装Windows
>参考资料[大白菜5.1版 安装原版Win7或Win8教程](http://www.winbaicai.com//help_429.html)

### 视频教程
<embed src="http://player.youku.com/player.php/sid/XNjgyMTc3NzQ0/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>

<embed src="http://player.youku.com/player.php/sid/XODkxMDQ1ODYw/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>

### 利用快捷键设置Bois从U盘启动
总的来讲，设置电脑从U盘启动一共有两种方法，第一种是开机时候按快捷键然后选择U盘启动，第二种进Bios然后设置U盘为第一启动项（点击查看）。本文介绍下利用快捷键来设置U盘启动，利用快捷键启动相对来说比较简单快捷，推荐大家使用（但是如果你的电脑是没有热键选择启动项功能的，建议你第二种方法来设置了。）(重要提醒：选择热键前，请先插入U盘)

**附表**

|主板品牌|启动按键| 笔记本品牌|启动按键|台式机品牌|启动按键|
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
|华硕主板|	F8|	联想笔记本|	F12	|联想台式机|	F12|
|技嘉主板|	F12|	宏基笔记本|	F12|	惠普台式机|	F12|
|微星主板|	F11|	华硕笔记本|	ESC|	宏基台式机|	F12|
|映泰主板|	F9|	惠普笔记本|	F9|	戴尔台式机|	ESC|
|梅捷主板|	ESC或F12|	联想Thinkpad|	F12|	神舟台式机|	F12|
|七彩虹主板|	ESC或F11|	戴尔笔记本|	F12|	华硕台式机|	F8|
|华擎主板|	F11|	神舟笔记本|	F12|	方正台式机|	F12|
|斯巴达卡主板|	ESC|	东芝笔记本|	F12|	清华同方台式机|	F12|
|昂达主板|	F11|	三星笔记本|	F12|	海尔台式机|	F12|
|双敏主板|	ESC|	IBM笔记本|	F12|	明基台式机|	F8|
|翔升主板|	F10|富士通笔记本|	F12|	 	 
|精英主板|	ESC或F11|	海尔笔记本|	F12	| 	 
|冠盟主板|	F11或F12|	方正笔记本|	F12	| 	 
|富士康主板|	ESC或F12|	清华同方笔记本|	F12|	 	 
|顶星主板|	F11或F12|	微星笔记本|	F11|	 	 
|铭瑄主板|	ESC|	明基笔记本|	F9|	 	 
|盈通主板|	F8|	技嘉笔记本|	F12	 	 
|捷波主板|	ESC|	Gateway笔记本|	F12	 |	 
|Intel主板|	F12|eMachines笔记本|	F12	| 	 
|杰微主板|	ESC或F8|	索尼笔记本|	ESC|	 	 
|致铭主板|	F12	 |	 	 	 
|磐英主板|	ESC	| 	 	 	 
|磐正主板|	ESC|	 	 	 	 
|冠铭主板|	F9|	 	 	 	 
>注意：其它机型请尝试百度解决或参考以上品牌常用启动热键
**下图是按快捷键之后进入bios后的状态（下图只是个例子，不同电脑不同主板进入后的界面也是不同的）如果对英文不是很了解无法确定各个选项代表什么，可以通过一个单词来快速选择U盘启动，也就是在出现的启动项列表里找到一项带USB字样的就可以了。**
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_1029pic40.jpg)

### 安装
#### 准备工作
确保准备好**大白菜U盘**，下载**windows安装镜像**到**本地除C盘外的盘符**，可以直接放在电脑中也可以解压到U盘中**推荐放在电脑中方便**。

#### 进入U盘启动界面
**重启**电脑，**长按热键**（开机的同时一直按着直到选择界面出来），进入U盘启动界面，选择运行**大白菜Win8PEx64正式版**进入Win8PE，操作使用回车键和方向键。如图：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_10311.png)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_10312.png)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_10313.png)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_10314.png)

#### Win8PE基本操作
##### 分区工具使用
安装之前要先格式化C盘，请确保C盘重要文件已备份。。
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_10315.png)

##### 引导修复使用
使用过程中若出现不能进入引导请用此工具修复。
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_10316.png)

##### 一键装机
这才是重点我们就是用这个装机，这也是PE最重要的核心功能。
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_10317.png)

##### 登录密码清除
顾名思义九十清楚当前系统用户的登录密码，以备忘记密码时使用，友情提示别用此工具用作非法用途。
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_10318.png)

#### 安装系统
点击一键装机进入如图界面：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_10317.png)
* 选择还原分区
* 选择本地镜像，系统会自动检索
* 点击确定键进入，按默认操作进入最后操作界面，耐心等待至安装完毕。

#### 其他方式
##### Win03PE
与Win8PE操作雷同，进入如下所示的界面：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_103110.png)
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_103111.png)

##### 安装原版Win7/Win8系统
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_10319.png)
可以看到有几个进入安装的选项，如下：
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_103112.png)
>注：【1】【2】【3】与进入Win8PE操作一样，以上已有说明。
【4】Win8PE。
【5】【6】需要解压ISO文件到U盘，才能操作，如果U盘中没有解压文件的话会报错，请尝试其他方式。

##### 大白菜U盘其他功能
请在确保安全的前提下自行尝试。
![](http://7xnkw3.com1.z0.glb.clouddn.com/hexo_103115.png)

