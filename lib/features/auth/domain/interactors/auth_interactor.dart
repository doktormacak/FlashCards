import 'package:flash_cards/features/auth/domain/login_credentials.dart';

abstract class AuthInteractor {
  Future<void> logIn({required LoginCredentials credentials});
}
