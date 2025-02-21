import 'package:flutter_common/flutter_common.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyRepo {
  final ITestModelService serviceA;

  final ITest2ModelService serviceB;

  MyRepo(@Named("serviceAImpl") this.serviceA,
      @Named("serviceBImpl") this.serviceB);
}
