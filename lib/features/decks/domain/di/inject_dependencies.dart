import 'package:flash_cards/features/decks/domain/interactors/decks_interactor.dart';
import 'package:flash_cards/features/decks/domain/interactors/decks_interactor_impl.dart';
import 'package:flash_cards/features/decks/infrastructure/decks_repository.dart';
import 'package:flash_cards/features/decks/infrastructure/decks_repository_impl.dart';
import 'package:get_it/get_it.dart';

void injectDependencies(GetIt getIt) {
  getIt.registerLazySingleton<DecksRepository>(
    () => DecksRepositoryImpl(
      getIt.get(),
    ),
  );

  getIt.registerLazySingleton<DecksInteractor>(
    () => DecksIntractorImpl(
      getIt.get(),
    ),
  );
}
