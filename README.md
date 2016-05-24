# <center> python脚本实现多渠道打包</center> #

源码请到我的github[下载](https://github.com/yangzaiCN/packByPython "github链接")（记得start哦！）
----------

## 1. 原理： ##
之前用gradle的多渠道打包，gradle都会重新编译、打包、签名。感觉非常耗时，如果能直接修改apk的渠道号，再重新签名就会快了很多。而签名文件是存在META-INF下，那我们直接删除该文件夹，再重新生成apk。


## 2. 文件说明： ##
channels放渠道列表
----> keystores放需要的签名key，我这里使用的debuykey
----> scripts放置的是核心的python脚本
----> tools需要的工具
----> AndroidManifest.xml 替换渠道名时需要的临时文件
----> runpython  运行python脚本，并传参
----> test.apk 测试用的apk   

## 3. 使用方法： ##

- 1. 前提：有python环境(最好是ipython有交互)
- 2. 提供一个特定渠道号的包例如我的是QD_test_placeholder渠道，到时候会替换该渠道
- 2. 在runpython中设置你的key的 storeFile 、storePassword 、keyAlias、keyPassword ，特定渠道、渠道列表文件夹、输出包名前缀
- 3.需要一个无签名的apk（vivame.apk） 
- 4.修改runpython.bat中输出名称（最后一个参数），包括zipalign的参数必须与输出包名一致
- 5.执行runpython.bat。生成对齐的文件在zipaligned文件夹下






