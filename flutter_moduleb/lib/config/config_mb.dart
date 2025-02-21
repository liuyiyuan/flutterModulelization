import 'package:flutter_moduleb/config/config_mb.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'initMb', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureModulBDps() => getIt.initMb();
