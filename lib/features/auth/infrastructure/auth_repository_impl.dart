import 'package:flash_cards/app/api_client.dart';
import 'package:flash_cards/app/api_config.dart';
import 'package:flash_cards/app/secure_storage.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_impl.g.dart';

@riverpod
Future<AuthRepository> authRepository(AuthRepositoryRef ref) async {
  return AuthRepositoryImpl(
      apiClient: await ref.watch(apiClientProvider.future),
      secureStorage: await ref.watch(secureLocalStorageProvider.future));
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required this.apiClient, required this.secureStorage});

  final ApiClient apiClient;
  final SecureLocalStorage secureStorage;

  @override
  Future<AuthToken> logIn({required LoginCredentials credentials}) async {
    final response = await apiClient.post(ApiConfig.login, credentials);

    AuthToken authToken = AuthToken.fromJson(response.data);
    await secureStorage.setTokenInStorage(
        key: 'authToken', value: authToken.toJson().toString());
    return authToken;
  }
}
