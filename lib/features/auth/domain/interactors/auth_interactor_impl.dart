import 'package:dio/dio.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/interactors/auth_interactor.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository.dart';

class AuthInteractorImpl implements AuthInteractor {
  final AuthRepository authRepository;

  AuthInteractorImpl(this.authRepository);

  @override
  Future<AuthToken> logIn({required LoginCredentials data}) async {
    AuthToken authToken;
    try {
      var response = await authRepository.logIn(data: data);
      authToken = response;
    } on DioError {
      authToken = const AuthToken(accessToken: '', refreshToken: '');
    }
    return authToken;
  }
}
