import 'package:flutter_modulea/config/config_ma.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'initMa', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureModuleADps() => getIt.initMa();
