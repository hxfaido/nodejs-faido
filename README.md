轻量级nodejs server框架，可用于游戏服务器，web后台开发  

安装：  
chmod +x setup.sh  
./setup.sh  

第三方依赖说明：  
bin/node  nodejs linux x86-64 官方v0.10.22编译  
lib/node_modules/express http框架  
lib/node_modules/ejs 页面渲染引擎  
lib/node_modules/express-xml-bodyparser xml处理中间件  
lib/node_modules/mongodb	mongodb driver  

mongodb-linux-x86_64-2.4.6.tar.gz mongodb官方版本  

框架内容  
lib/node_modules/main   
启服停服工具  
bin/node-cmd  
bin/node-daemon  

## 关于版本说明 ##  
1.nodejs版本和mongodb以及driver关系 https://docs.mongodb.com/drivers/node/  
2.由于本框架开发时较早，不确保能完全匹配 高版本nodejs以及mongodb  
3.目前版本对于卡牌，休闲，回合等游戏已足够（作者多款游戏已稳定运行多年），不推荐及时性要求较高的mmo，moba游戏使用  


## 项目模板 ##
1.空模板     https://github.com/hxfaido/server-template  
2.Launch    https://github.com/hxfaido/launch-server  
#todo  
3.Login   可以处理登录，常用支付校验等  
4.Game    游戏逻辑服务器  
5.Stat    数据统计，后台管理  

遇到什么问题，欢迎一起交流  
QQ	  1324549904  
Email	faido@163.com  
