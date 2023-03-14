import 'package:dio/dio.dart';
import 'package:flash_cards/features/auth/domain/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_interceptor.g.dart';

@Riverpod(keepAlive: true)
Future<ApiInterceptor> apiInterceptor(ApiInterceptorRef ref) async {
  return ApiInterceptor(
      authTokenNotifier: ref.watch(authTokenNotifierProvider.notifier));
}

class ApiInterceptor extends Interceptor {
  final AuthTokenNotifier authTokenNotifier;

  ApiInterceptor({required this.authTokenNotifier});
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final AuthToken? token = await authTokenNotifier.getToken();
    options.headers["Authorization"] = 'Bearer ${token!.accessToken}';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 200) {
      /// save token
      AuthToken authToken = AuthToken.fromJson(response.data);
      print('response interceptor $authToken');
      authTokenNotifier.setToken(authToken);
    } else if (response.statusCode == 401) {
      /// delete token
    }
    super.onResponse(response, handler);
  }
}
