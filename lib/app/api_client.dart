import 'package:dio/dio.dart';
import 'package:flash_cards/app/api_config.dart';
import 'package:flash_cards/app/api_interceptor.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';

part 'api_client.g.dart';

@riverpod
class ApiClient extends _$ApiClient {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: 5000,
    ),
  )
    ..interceptors.add(LoggyDioInterceptor())
    ..interceptors.add(ApiInterceptor());

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

  @override
  build() {
    ApiClient();
  }
}
