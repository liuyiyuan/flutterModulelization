import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_moduleb/page2.dart';
import 'package:injectable/injectable.dart';

@Named("routesBImpl")
@Injectable(as: IRouter)
class ITest2RoutesImpl implements IRouter {
  @override
  Map<String, Function> initRouters() {
    return {
      RouteName.home2: (context, {arguments}) =>
          const MyHomePage2(title: '我是模块2'),
    };
  }

  @override
  Map<String, IService> initService() {
    return {
      RouteName.testProvider2: Test2Service(),
    };
  }
}

@Named("serviceBImpl")
@Injectable(as: ITest2ModelService)
class Test2Service implements ITest2ModelService {
  @override
  void init() {}

  @override
  String getText() {
    return "hi,我是模块2";
  }
}
