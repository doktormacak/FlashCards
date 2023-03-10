import 'package:dio/dio.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';

class ApiInterceptor extends Interceptor {
  final AuthToken? token;

  ApiInterceptor(this.token);
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Authorization"] = 'Bearer ${token!.accessToken}';
    super.onRequest(options, handler);
  }
}
