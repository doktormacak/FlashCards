import 'package:dio/dio.dart';
import 'package:flash_cards/app/api_config.dart';
import 'package:flash_cards/app/api_interceptor.dart';
import 'package:flash_cards/app/secure_storage.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
Future<ApiClient> apiClient(ref) async {
  return ApiClient(dio: await ref.watch(dioProvider.future));
}

class ApiClient {
  ApiClient({required this.dio});
  final Dio dio;

  Future<Response> get(String path) async {
    return await dio.get(path);
  }

  dynamic post(String path, LoginCredentials data) async {
    return await dio.post(path, data: data);
  }

  dynamic put(String path) async {
    return await dio.put(path);
  }

  dynamic delete(String path) async {
    return await dio.delete(path);
  }
}

@Riverpod(keepAlive: true)
Future<Dio> dio(ref) async {
  final tokenStorage =
      await ref.watch(secureLocalStorageProvider).value!.getTokensFromStorage();

  final authToken = AuthToken.fromJson(tokenStorage);
  print(authToken);

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: 5000,
    ),
  )
    ..interceptors.add(LoggyDioInterceptor())
    ..interceptors.add(ApiInterceptor(AuthToken(
        accessToken: authToken.accessToken,
        refreshToken: authToken.refreshToken)));

  return dio;
}
