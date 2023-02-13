import 'package:flash_cards/features/folders/domain/interactors/folders_interactor.dart';
import 'package:flash_cards/features/folders/domain/interactors/folders_interactor_impl.dart';
import 'package:flash_cards/features/folders/infrastructure/folders_repository.dart';
import 'package:flash_cards/features/folders/infrastructure/folders_repository_impl.dart';
import 'package:get_it/get_it.dart';

void injectDependencies(GetIt getIt) {
  getIt.registerLazySingleton<FoldersRepository>(
    () => FoldersRepositoryImpl(
      getIt.get(),
    ),
  );

  getIt.registerLazySingleton<FoldersInteractor>(
    () => FoldersIntractorImpl(
      getIt.get(),
    ),
  );
}
