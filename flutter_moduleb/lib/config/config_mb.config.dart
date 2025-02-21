// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_common/flutter_common.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../IRoutesImpl.dart' as _i4;
import '../my_repo.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initMb({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.IRouter>(
      () => _i4.ITest2RoutesImpl(),
      instanceName: 'routesBImpl',
    );
    gh.factory<_i3.ITest2ModelService>(
      () => _i4.Test2Service(),
      instanceName: 'serviceBImpl',
    );
    gh.factory<_i5.MyRepo>(() => _i5.MyRepo(
          gh<_i3.ITestModelService>(instanceName: 'serviceAImpl'),
          gh<_i3.ITest2ModelService>(instanceName: 'serviceBImpl'),
        ));
    return this;
  }
}
