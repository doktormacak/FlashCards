import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/interactors/auth_interactor_impl.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_presenter.g.dart';

@riverpod
class LoginPresenter extends _$LoginPresenter {
// return authToken or Error - login failed(reason)
  Future<AuthToken?> logIn(LoginCredentials credentials) async {
    final authInteractor = ref.read(authInteractorImplProvider.notifier);
    return await authInteractor.logIn(credentials: credentials);
  }

  @override
  build() {}
}
