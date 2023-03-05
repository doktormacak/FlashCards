import 'package:get_it/get_it.dart';
import 'package:flash_cards/features/folders/infrastructure/di/inject_dependencies.dart'
    as folders_remote;
import 'package:flash_cards/features/folders/domain/di/inject_dependencies.dart'
    as folders_domain;
import 'package:flash_cards/features/auth/domain/di/inject_deoendencies.dart'
    as auth_domain;

void injectDependencies() {
  var getIt = GetIt.instance;
  folders_remote.injectDependencies(getIt);
  folders_domain.injectDependencies(getIt);
  auth_domain.injectDependencies(getIt);
}
