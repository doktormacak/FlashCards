import 'package:flash_cards/features/auth/domain/interactors/auth_interactor.dart';
import 'package:flash_cards/features/auth/domain/interactors/auth_interactor_impl.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository_impl.dart';
import 'package:get_it/get_it.dart';

void injectDependencies(GetIt getIt) {
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      getIt.get(),
    ),
  );

  getIt.registerLazySingleton<AuthInteractor>(
    () => AuthInteractorImpl(
      getIt.get(),
    ),
  );
}
