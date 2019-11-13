# beeShop
# beeShop

## 书城项目演示文档(可做毕设，需要请留言~)

商城网站。前台：jsp，javascript，jtsl  + 后台：java ，mvc 框架，bootstrap + 数据库：mysql +tomcat7.0

## 项目的开发环境：
* 硬件环境：
1. CPU：英特尔 i7
2. 内存：8g
3. 	硬盘：500g
* 软件环境：
1. 操作系统：Windows系统
2. 开发工具：eclipse
3. 数据库系统：MySQL

## 	系统功能设计
要实现用户对该商品网站的正常使用，需要将用户的基本信息和本网站的信息整合起来，并为所有已注册的用户建立一张关系网。

### 4-1 首页
1.	功能描述
用户进入网站，可以浏览到商城的信息。
2.	功能实现
*	展示商城信息  
![图4-1 首页](https://github.com/alienYalien/beeShop/blob/master/Results/img/4-1.png)  
图4-1 首页

### 4-2	商品展示  
![图4-1-1 商品展示1](https://github.com/alienYalien/beeShop/blob/master/Results/img/4-1-1.png)  
图4-1-1 商品展示1  
![图4-1-4 商品展示2](https://github.com/alienYalien/beeShop/blob/master/Results/img/4-1-4.png)  
图4-1-4 商品展示2

### 4-3	用户登入
1.	功能描述
已注册的用户可以根据注册的账号和密码登入系统，如果信息有误，系统提示用户输入有误。
2.	功能实现
*	用户填写登入信息。
*	信息无误，点击提交，完成登入。
*	进入用户首页。  
![图4-3 用户登入](https://github.com/alienYalien/beeShop/blob/master/Results/img/4-3.png)  
图4-3 用户登入

### 4-4 详情界面
1.	功能描述
用户进入商品详情页，可以浏览到商品的详细信息。
2.	功能实现
*	展示商品信息  
![图4-4 详情界面](https://github.com/alienYalien/beeShop/blob/master/Results/img/4-4.png)  
图4-4 详情界面

### 4-5 购物车
1.	功能描述
用户可以将商品添加到购物车，并可以对购物车里的商品进行删除、添加等的操作。
2.	功能实现
*	可以通过数量的改变来改变价格
*	当购物车商品数量为0时，商品从购物车中消失。  
![图4-5 购物车](https://github.com/alienYalien/beeShop/blob/master/Results/img/4-5.png)  
图4-5 购物车

### 4-6	用户订单
1.	功能描述
用户可以在订单页面查看自己的订单信息，并对订单进行修改、删除等操作。
2.	功能实现
*	用户查看订单
*	若没有订单则显示为空，若有订单则可以对订单进行修改和删除，当数量为0时商品从订单中消失。  
![图4-6 用户订单](https://github.com/alienYalien/beeShop/blob/master/Results/img/4-6.png)  
图4-6 用户订单

### 4-7	搜索商品
### 4-8	用户中心

## 	后台管理系统
后台管理模块主要实现管理员对于商品和用户的管理，比如商品的上架与下架、商品信息的修改、类别的修改以及用户的增删改查等。  
![图4-0 后台](https://github.com/alienYalien/beeShop/blob/master/Results/img/4-0.png)  
图4-0 后台

##	系统运行
本系统为JAVA编写的B/S结构的WEB项目，运行步骤如下。
1.运行windows操作系统。
2.由于本系统是由JAVA编写所以需要安装JDK1.6JAVA虚拟机器，安装方法为：运行JDK1.6安装文件，选择路径进行安装。
3.运行tomcat安装文件，选择安装路径，选择第2步已经安装好的JRE路径，进行tomcat的安装。
4.部署程序至tomcat。
5.安装MySQL数据库，导入表结构的SQL脚本，启动数据库实例服务。
6.启动tomcat。
7.打开浏览器并且输入如下网址。
http://localhost:8080/myWeb/home
系统需也要一些日常管理：包括日志的查看，服务器的维护等。
