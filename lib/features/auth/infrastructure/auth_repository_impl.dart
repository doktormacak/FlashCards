import 'package:flash_cards/app/api_client.dart';
import 'package:flash_cards/app/api_config.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:flash_cards/features/auth/infrastructure/auth_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepositoryImpl(ref));

class AuthRepositoryImpl implements AuthRepository {
  final Ref ref;

  AuthRepositoryImpl(this.ref);

  @override
  Future<AuthToken> logIn({required LoginCredentials credentials}) async {
    return AuthToken.fromJson(
        (await ref.read(apiClientProvider).post(ApiConfig.login, credentials))
            .data);
  }
}
