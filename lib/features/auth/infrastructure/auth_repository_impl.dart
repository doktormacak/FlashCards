import 'package:flash_cards/app/api_client.dart';
import 'package:flash_cards/app/api_config.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiClient _apiClient;

  AuthRepositoryImpl(this._apiClient);

  @override
  Future<AuthToken> logIn({required LoginCredentials data}) async {
    return AuthToken.fromJson(
        (await _apiClient.post(ApiConfig.login, data)).data);
  }
}
