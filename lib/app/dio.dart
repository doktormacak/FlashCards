import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@riverpod
class HttpClient extends _$HttpClient {
  @override
  build() {
    return Dio();
  }
}


//         ..interceptors.add(ApiInterceptor()),
//         ..interceptors.add(LoggyDioInterceptor())
