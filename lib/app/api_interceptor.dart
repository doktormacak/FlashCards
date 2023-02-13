import 'package:dio/dio.dart';
import 'package:flash_cards/app/api_config.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["apiKey"] = ApiConfig.apiKey;
    super.onRequest(options, handler);
  }
}
