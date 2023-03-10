import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/interactors/auth_interactor.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_interactor_impl.g.dart';

@riverpod
class AuthInteractorImpl extends _$AuthInteractorImpl
    implements AuthInteractor {
  @override
  Future<AuthToken?> logIn({required LoginCredentials credentials}) async {
    //case authtoken != null, authtoken(), isLogged = true
    final authRepository = await ref.read(authRepositoryProvider.future);
    final authToken = ref.watch(authTokenNotifierProvider.notifier);
    try {
      final AuthToken authResponse =
          await authRepository.logIn(credentials: credentials);
      authToken.setToken(authResponse);
      return authResponse;
    } on DioError {
      return null;
    }
  }

  @override
  FutureOr build() {
    AuthInteractorImpl();
  }
}
