import 'package:flash_cards/features/auth/domain/auth.dart';
import '../domain/login_credentials.dart';

abstract class AuthRepository {
  Future<void> logIn({required LoginCredentials credentials});
}
