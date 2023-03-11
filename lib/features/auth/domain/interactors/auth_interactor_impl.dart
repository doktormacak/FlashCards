import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/interactors/auth_interactor.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_interactor_impl.g.dart';

@riverpod
Future<AuthInteractor> authInteractor(AuthInteractorRef ref) async {
  return AuthInteractorImpl(
      authRepository: await ref.watch(authRepositoryProvider.future),
      authToken: await ref.watch(authTokenNotifierProvider.notifier));
}

class AuthInteractorImpl implements AuthInteractor {
  AuthInteractorImpl({required this.authRepository, required this.authToken});

  final AuthRepository authRepository;
  final AuthTokenNotifier authToken;

  @override
  Future<AuthToken?> logIn({required LoginCredentials credentials}) async {
    //case authtoken != null, authtoken(), isLogged = true
    try {
      final AuthToken authResponse =
          await authRepository.logIn(credentials: credentials);
      authToken.setToken(authResponse);
      return authResponse;
    } on DioError {
      return null;
    }
  }
}
