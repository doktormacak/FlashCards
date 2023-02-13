import 'package:dio/dio.dart';
import 'package:flash_cards/app/api_client.dart';
import 'package:flash_cards/app/api_config.dart';
import 'package:flash_cards/app/api_interceptor.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';
import 'package:get_it/get_it.dart';

void injectDependencies(GetIt getIt) {
  getIt.registerLazySingleton<ApiInterceptor>(
    () => ApiInterceptor(),
  );

  getIt.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: 5000,
      ),
    )
      ..interceptors.add(LoggyDioInterceptor())
      ..interceptors.add(getIt.get<ApiInterceptor>()),
  );

  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(getIt.get()),
  );
}
