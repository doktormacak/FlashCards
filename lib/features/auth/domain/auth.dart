import 'package:flash_cards/app/secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class AuthToken with _$AuthToken {
  const factory AuthToken({
    required String? accessToken,
    required String? refreshToken,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, Object?> json) =>
      _$AuthTokenFromJson(json);
}

@riverpod
class AuthTokenNotifier extends _$AuthTokenNotifier {
  void setToken(AuthToken authToken) {
    final secureStorage = ref.read(secureLocalStorageProvider);
    state = authToken.copyWith(
        accessToken: authToken.accessToken,
        refreshToken: authToken.refreshToken);
    secureStorage.value!.setTokenInStorage(
        key: "authToken", value: authToken.toJson().toString());
  }

  AuthToken? getToken() {
    return state;
  }

  @override
  build() {
    return null;
  }
}
