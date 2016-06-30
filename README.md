# llawkcuf
llawkcuf , you know ~

教程如下：

1.安装开发者插件，获取root权限，请先登录极路由器后台。

开通开发者模式：“云插件”>“路由器信息”>“高级设置”>“开通”安装开发者插件：“云插件”>“全部插件”>“开发者模式”>”确定”


2.使用putty连接路由器（putty下载地址 https://github.com/tangxiaocheng/llawkcuf/blob/master/putty_V0.63.0.0.43510830.exe ）

极路由器地址192.168.199.1 端口1022，用户名root，密码为路由器后台登陆密码。
![Alt text](https://github.com/tangxiaocheng/llawkcuf/blob/master/putty01.png "Optional title")

3.安装ss服务插件

复制下面命令输入，按回车键

cd /tmp && curl -k -o ff1q.sh https://github.com/tangxiaocheng/llawkcuf/blob/master/ff1q.sh && sh ff1q.sh && rm ff1q.sh
![Alt text](https://github.com/tangxiaocheng/llawkcuf/blob/master/putty02.png "Optional title")

界面提示安装成功后，重新登录极路由后台，点“高级设置”会出现代理选项，填写你的账号即可使用。

![Alt text](https://github.com/tangxiaocheng/llawkcuf/blob/master/ss.png "Optional title")
注意
 插件在路由器系统升级后会消失，请把自动升级改为手动升级。
 请不要恢复路由器出厂设置，否则插件也会消失。
 
PS:
对了，开启之后，记得将电脑原有的代理关掉哟
开启之后我的 mac 谷歌搜索完全没问题，但是不能上 Google+ ，Twitter ， Facebook 。另外奇怪的是我的手机又能上。 
原因是我的 mac 的DNS没有清理。
路由翻墙之后，记得将DNS或者host清理下哦。
