import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/interactors/auth_interactor.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authInteractorProvider = Provider<AuthInteractor>((ref) {
  return AuthInteractorImpl();
});

class AuthInteractorImpl extends AsyncNotifier implements AuthInteractor {
  @override
  Future<AuthToken?> logIn({required LoginCredentials credentials}) async {
    //case authtoken != null, authtoken(), isLogged = true
    try {
      AuthToken? authToken = await ref
          .read(authRepositoryProvider)
          .logIn(credentials: credentials);
      return authToken;
    } on DioError {
      return null;
    }
  }

  @override
  FutureOr build() {
    AuthInteractorImpl();
  }
}
