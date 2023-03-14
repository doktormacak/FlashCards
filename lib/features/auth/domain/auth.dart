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

@Riverpod(keepAlive: true)
class AuthTokenNotifier extends _$AuthTokenNotifier {
  void setToken(AuthToken authToken) async {
    final secureStorage = await ref.watch(secureLocalStorageProvider.future);
    state = authToken.copyWith(
        accessToken: authToken.accessToken,
        refreshToken: authToken.refreshToken);
    await secureStorage.setTokenInStorage(
        key: "authToken", value: authToken.toJson().toString());
  }

  Future<AuthToken?> getToken() async {
    final secureStorage = await ref.watch(secureLocalStorageProvider.future);
    final tokenFromStorage =
        await secureStorage.getTokenFromStorage(key: "authToken");
    return AuthToken(
        accessToken: tokenFromStorage![0], refreshToken: tokenFromStorage[1]);
  }

  @override
  build() {
    return null;
  }
}
