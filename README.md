**flutterframe**
   
    1.首先实现了flutter模块化； 可以借鉴思路
    2.实现了flutter 模块之间的通讯；模块之间的跳转；
    3.如果你获取某个模块中的内容 你可以这样写：
    
     RouteUtils.navigation<ITestModelService>(RouteName.testProvider).getModelId();
   
    下面是整体的路由设计； 设计思路参考Android ARouter；
    具体可以看代码；
    https://huatu.98youxi.com/markdown/work/uploads/upload_05d3b6a7c962d489882a690dd92276e1.png


**监控模块代码实时动态生成cmd**
1 cd 到模块的目录下(子模块必须cd到自己的目录下)；
2 执行命令：flutter packages pub run build_runner watch

**melos 多模块联合编译指令 **
1 melos run build
 
 
 
