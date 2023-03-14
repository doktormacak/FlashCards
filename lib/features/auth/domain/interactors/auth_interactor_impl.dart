import 'dart:async';
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
  );
}

class AuthInteractorImpl implements AuthInteractor {
  AuthInteractorImpl({required this.authRepository});

  final AuthRepository authRepository;

  @override
  Future<void> logIn({required LoginCredentials credentials}) async {
    await authRepository.logIn(credentials: credentials);
  }
}
