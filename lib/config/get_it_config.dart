import 'package:flutteframe/config/get_it_config.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'initMain', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureMainDps() => getIt.initMain();
