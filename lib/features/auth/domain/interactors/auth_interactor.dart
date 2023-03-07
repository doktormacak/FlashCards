import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';

abstract class AuthInteractor {
  Future<AuthToken?> logIn({required LoginCredentials credentials});
}
