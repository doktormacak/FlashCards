import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/interactors/auth_interactor.dart';
import 'package:flash_cards/features/auth/domain/interactors/auth_interactor_impl.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginPresenterProvider =
    AsyncNotifierProvider<LoginPresenter, AuthToken?>(() {
  return LoginPresenter();
});

class LoginPresenter extends AsyncNotifier<AuthToken?> {
  @override
  build() {
    return ref.watch(authTokenNotifierProvider);
  }

// return authToken or Error - login failed(reason)
  Future<AuthToken?> logIn(LoginCredentials credentials) async {
    final authInteractor = ref.read(authInteractorProvider);
    print(credentials);
    return await authInteractor.logIn(credentials: credentials);
  }
}
