import 'package:flash_cards/app/api_client.dart';
import 'package:flash_cards/app/api_config.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_impl.g.dart';

@riverpod
Future<AuthRepository> authRepository(AuthRepositoryRef ref) async {
  return AuthRepositoryImpl(
    apiClient: await ref.watch(apiClientProvider.future),
    authTokenNotifier: ref.watch(authTokenNotifierProvider.notifier),
  );
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this.apiClient,
    required this.authTokenNotifier,
  });

  final ApiClient apiClient;
  final AuthTokenNotifier authTokenNotifier;

  @override
  Future<void> logIn({required LoginCredentials credentials}) async {
    await apiClient.post(ApiConfig.login, credentials);
  }
}
