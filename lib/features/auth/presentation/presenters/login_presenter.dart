import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/interactors/auth_interactor.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginPresenterProvider =
    AsyncNotifierProvider<LoginPresenter, AuthToken>(() {
  return LoginPresenter(GetIt.instance.get());
});

class LoginPresenter extends AsyncNotifier<AuthToken> {
  final AuthInteractor authInteractor;

  LoginPresenter(this.authInteractor);

  @override
  Future<AuthToken> build() async {
    return const AuthToken(accessToken: '', refreshToken: '');
  }

  Future<AuthToken> logIn(LoginCredentials credentials) async {
    print(credentials);
    return await authInteractor.logIn(data: credentials);
  }
}
