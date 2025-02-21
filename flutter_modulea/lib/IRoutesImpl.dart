import 'package:flutter/cupertino.dart';
import 'package:flutter_common/flutter_common.dart';

import 'main.dart';

import 'package:injectable/injectable.dart';

@Named("routesAImpl")
@Injectable(as: IRouter)
class ITestRoutesImpl implements IRouter {
  @override
  Map<String, Function> initRouters() {
    return {
      RouteName.home: (context, {arguments}) =>
          const MyModelHomePage(title: '画廊'),
      RouteName.start: (context, {arguments}) =>
          const MyModelHomePage(title: '画廊'),
    };
  }

  @override
  Map<String, IService> initService() {
    return {
      RouteName.testProvider: TestServiceImpl(),
    };
  }
}

///
///使用名称（标签）注册：解决这一问题的一种方法是使用名称（标签）来标识不同的实现。这意味着，在注册实例时，
///可以为每个实例分配一个唯一的名称（或标签），依赖注入框架在解析依赖关系时可以根据这个名称来识别需要使用的具体实现。
///例如，可以注册两个不同的类，分别实现同一接口，并给它们指定不同的名称，如 ServiceA 和 ServiceB。
///这样，开发者在请求服务时只需通过相应的名称就能获得所需的具体实现。
///

@Named("serviceAImpl")
@Injectable(as: ITestModelService)
class TestServiceImpl implements ITestModelService {
  @override
  void init() {}
  @override
  void goPage(BuildContext context) {
    Navigator.of(context).pushNamed(RouteName.home);
  }

  @override
  String getModelId() {
    return "modelA_1688";
  }
}
