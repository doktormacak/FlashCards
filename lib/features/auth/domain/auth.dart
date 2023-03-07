import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class AuthToken with _$AuthToken {
  const factory AuthToken({
    required String accessToken,
    required String refreshToken,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, Object?> json) =>
      _$AuthTokenFromJson(json);
}

final authTokenNotifierProvider =
    NotifierProvider<AuthTokenNotifier, AuthToken?>(() => AuthTokenNotifier());

class AuthTokenNotifier extends Notifier<AuthToken?> {
  @override
  AuthToken? build() {
    return const AuthToken(accessToken: '', refreshToken: '');
  }

  void setToken(AuthToken authToken) {
    state = authToken.copyWith(
        accessToken: authToken.accessToken,
        refreshToken: authToken.refreshToken);
  }

  AuthToken? getToken() {
    if (state != null) {
      return state;
    } else {
      return null;
    }
  }
}
