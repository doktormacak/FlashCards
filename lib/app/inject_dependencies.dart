import 'package:get_it/get_it.dart';
import 'package:flash_cards/features/folders/infrastructure/di/inject_dependencies.dart'
    as remote;
import 'package:flash_cards/features/folders/domain/di/inject_dependencies.dart'
    as domain;

void injectDependencies() {
  var getIt = GetIt.instance;
  remote.injectDependencies(getIt);
  domain.injectDependencies(getIt);
}
