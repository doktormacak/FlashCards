import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/interactors/auth_interactor_impl.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_presenter.g.dart';

@riverpod
class LoginPresenter extends _$LoginPresenter {
  Future<void> logIn(LoginCredentials credentials) async {
    final authInteractor = await ref.read(authInteractorProvider.future);
    await authInteractor.logIn(credentials: credentials);
  }

  @override
  build() {}
}
